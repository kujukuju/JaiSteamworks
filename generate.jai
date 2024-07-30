#import "Bindings_Generator";
#import "Basic";
#import "File";
#import "String";
#import "BuildCpp";
#import "File_Utilities";
#import "Hash_Table";

#run {
    using opts: Generate_Bindings_Options;
    
    #if OS == .WINDOWS {
        array_add(*libpaths, "bin/windows");
        array_add(*libnames, "steam_api64");

        // array_add(*include_paths, "physx/physx-sys/src/generated/x86_64-pc-windows-msvc/");
        // array_add(*system_include_paths, "\"C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/Llvm/lib/clang/17/include\"");
    } else #if OS == .LINUX {
        array_add(*libpaths, "bin/linux");
        array_add(*libnames, "libsteam_api");

        // array_add(*extra_clang_arguments, "-D__clang__");
        // array_add(*extra_clang_arguments, "-std=c++14");

        // array_add(*include_paths, "physx/physx-sys/src/generated/unix/");
        // array_add(*system_include_paths, "/usr/lib/llvm-18/lib/clang/18/include");
        // array_add(*system_include_paths, "/usr/include/c++/14");
    } else #if OS == .MACOS {
        array_add(*libpaths, "bin/osx");
        array_add(*libnames, "libsteam_api");
    }

    array_add(*extra_clang_arguments, "-x", "c++");
    array_add(*include_paths, "steamworks_sdk_160/public");

    array_add(*source_files, "steamworks_sdk_160/public/steam/steam_api_flat.h");

    generate_compile_time_struct_checks = false;
    
    opts.visitor = (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
        decl_filename: string;
        if decl && decl.location.file {
            decl_filename_clang := clang_getFileName(decl.location.file);
            defer clang_disposeString(decl_filename_clang);
            decl_filename = to_lower_copy_new(to_string(clang_getCString(decl_filename_clang)),, temp);
        }

        parent_decl_filename: string;
        if parent_decl && parent_decl.location.file {
            parent_decl_filename_clang := clang_getFileName(parent_decl.location.file);
            defer clang_disposeString(parent_decl_filename_clang);
            parent_decl_filename = to_lower_copy_new(to_string(clang_getCString(parent_decl_filename_clang)),, temp);
        }

        // if decl.output_name == "SteamAPI_ISteamClient_CreateSteamPipe" {
        //     print("\n\nFOUND SteamAPI_ISteamClient_CreateSteamPipe\n\n\n");
        // }
        // if decl.output_name == "ISteamClient" {
        //     print("\n\nFOUND ISteamClient\n\n\n");
        // }

        if !ends_with(decl_filename, "steam_api_flat.h") {
            if !table_contains(*visited_decl_values, decl) {
                table_set(*old_decl_values, decl, decl.decl_flags);
                decl.decl_flags = .OMIT_FROM_OUTPUT;
            }
        } else {
            readd_declarations_recusive(decl);
        }

        return .RECURSE;
    };

    #if OS == .WINDOWS {
        generate_bindings(opts, "module_windows.jai");
    } else #if OS == .LINUX {
        generate_bindings(opts, "module_linux.jai");
    } else #if OS == .MACOS {
        generate_bindings(opts, "module_macos.jai");
    }
}

readd_ctype_recusive :: (type: *CType) {
    if type.pointer_to {
        readd_ctype_recusive(type.pointer_to);
    }
    if type.type_of_enum {
        readd_declarations_recusive(type.type_of_enum);
    }
    if type.type_of_typedef {
        readd_declarations_recusive(type.type_of_typedef);
    }
    if type.type_of_struct {
        readd_declarations_recusive(type.type_of_struct);
    }
    if type.array_element_type {
        readd_ctype_recusive(type.array_element_type);
    }
    if type.type_of_function {
        for argument: type.type_of_function.arguments {
            readd_declarations_recusive(argument);
        }
        readd_ctype_recusive(type.type_of_function.return_type);
    }
}

readd_declarations_recusive :: (decl: *Declaration) {
    if table_contains(*visited_decl_values, decl) {
        return;
    }
    table_set(*visited_decl_values, decl, true);

    flags, found := table_find(*old_decl_values, decl);
    if found {
        decl.decl_flags = flags;
    }

    if decl.type {
        readd_ctype_recusive(decl.type);
    }
    
    if decl.expression {
        if #complete decl.expression.kind == {
            case .NONE;
            case .DECLARATION;
            case .FUNCTION;
            case .ENUM;
            case .TYPEDEF;
            case .STRUCT;
            case .NAMESPACE;
            case .MACRO_DEFINITION;

            case .LITERAL;
                // literal := cast(*Literal) decl.expression;
                // if literal.literal_kind == .IDENTIFIER {
                //     readd_declarations_recusive(literal.identifier);
                // }

            case .UNARY_OPERATOR;
            case .BINARY_OPERATOR;
            case .STRUCT_LITERAL;
            case .PAREN_EXPRESSION;
        }
    }
}

visited_decl_values: Table(*Declaration, bool);
old_decl_values: Table(*Declaration, Declaration_Flags);
