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

        array_add(*extra_clang_arguments, "-DVALVE_CALLBACK_PACK_LARGE");

        // array_add(*source_files, "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/Llvm/lib/clang/17/include/stdint.h");

        // array_add(*system_include_paths, "C:/Program Files (x86)/Windows Kits/10/Include/10.0.22621.0/ucrt");
        // array_add(*system_include_paths, "C:/Program Files (x86)/Windows Kits/10/Include/10.0.22621.0/um");
        // array_add(*system_include_paths, "C:/Program Files (x86)/Windows Kits/10/Include/10.0.22621.0/shared");
        // array_add(*system_include_paths, "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.31.31103/include");
        array_add(*system_include_paths, "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/Llvm/lib/clang/17/include");
    } else #if OS == .LINUX {
        array_add(*libpaths, "bin/linux");
        array_add(*libnames, "libsteam_api");

        array_add(*extra_clang_arguments, "-DVALVE_CALLBACK_PACK_SMALL");
    } else #if OS == .MACOS {
        array_add(*libpaths, "bin/osx");
        array_add(*libnames, "libsteam_api");

        array_add(*extra_clang_arguments, "-DVALVE_CALLBACK_PACK_SMALL");
    }

    array_add(*extra_clang_arguments, "-DBUILD_SHARED_LIB=ON", "-DBUILD_STATIC_LIB=OFF");
    array_add(*extra_clang_arguments, "-DSTEAMNETWORKINGSOCKETS_FOREXPORT", "-DSTEAMNETWORKINGSOCKETS_STANDALONELIB", "-DSTEAMNETWORKINGSOCKETS_OPENSOURCE");

    array_add(*extra_clang_arguments, "-x", "c++");
    array_add(*include_paths, "steamworks_sdk_160/public");

    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamapps.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamappticket.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamclient.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamcontroller.h");
    // array_add(*source_files, "steamworks_sdk_160/public/steam/isteamdualsense.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamfriends.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamgamecoordinator.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamgameserver.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamgameserverstats.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamhtmlsurface.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamhttp.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteaminput.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteaminventory.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteammatchmaking.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteammusic.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteammusicremote.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamnetworking.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamnetworkingmessages.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamnetworkingsockets.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamnetworkingutils.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamparentalsettings.h");
    // array_add(*source_files, "steamworks_sdk_160/public/steam/isteamps3overlayrenderer.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamremoteplay.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamremotestorage.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamscreenshots.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamtimeline.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamugc.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamuser.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamuserstats.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamutils.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/isteamvideo.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/matchmakingtypes.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steam_api_common.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steam_api_flat.h");
    // array_add(*source_files, "steamworks_sdk_160/public/steam/steam_api_internal.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steam_api.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steam_gameserver.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamclientpublic.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamencryptedappticket.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamhttpenums.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamnetworkingfakeip.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamnetworkingtypes.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamps3params.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamtypes.h");
    array_add(*source_files, "steamworks_sdk_160/public/steam/steamuniverse.h");

    generate_compile_time_struct_checks = true;
    generate_c_style_api_for_vtable = false;
    generate_vtable_helpers = false;

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

        valid_binding := ends_with(decl_filename, "steam_api_flat.h");
        valid_binding = valid_binding || (decl.kind == .ENUM && decl.parent == null);
        valid_binding = valid_binding || (decl.kind == .FUNCTION && decl.parent == null);
        valid_binding = valid_binding || (decl.kind == .STRUCT && decl.parent == null);

        // it doesn't seem to output constants like k_HSteamNetPollGroup_Invalid although I don't know why... just because they're const?

        if !valid_binding {
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
        generate_bindings(opts, "module_windows_new.jai");
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

    if decl.kind == {
        case .STRUCT;
            struct_decl := cast(*Struct) decl;
            for metadata: struct_decl.metadata {
                readd_declarations_recusive(metadata);
            }
            for parents: struct_decl.parents {
                readd_declarations_recusive(parents);
            }
            for virtual_functions: struct_decl.virtual_functions {
                // readd_declarations_recusive(virtual_functions);
            }
            for declarations: struct_decl.declarations {
                readd_declarations_recusive(declarations);
            }
            for template_type_params: struct_decl.template_type_params {
                readd_declarations_recusive(template_type_params);
            }

        case .NAMESPACE;
            namespace_decl := cast(*Namespace) decl;
            for declaration: namespace_decl.declarations {
                readd_declarations_recusive(declaration);
            }
    }
}

visited_decl_values: Table(*Declaration, bool);
old_decl_values: Table(*Declaration, Declaration_Flags);
