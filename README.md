
## Steamworks Jai Bindings

Only uses the `steam_api_flat.h` header.

Also recursively readds dependencies that are required by `steam_api_flat.h` so the values can be directly accessed.

### macOS

Valve distributes the macOS Steam API as `bin/osx/libsteam_api.dylib`; the SDK does not include a static library. The dylib is universal (`i386`, `x86_64`, and `arm64`) and uses the install name `@loader_path/libsteam_api.dylib`, so copy it next to each game or server executable before running it.

`module_macos.jai` retains the compile-time size and member-offset `#run` block emitted by `Bindings_Generator`. It can be commented out after the generated layouts have been reviewed and verified.

Generate macOS bindings into the quarantined `module_macos_new.jai`, review its layout declarations and generated checks, and only then replace `module_macos.jai`. Existing Windows and Linux modules may contain hand-corrected padding and must not be overwritten blindly.

`steam_networking_messages.jai` owns platform-independent SDK constants omitted by `Bindings_Generator`, including send flags, the maximum send-message size, and flat callback IDs. Keep it outside generated platform modules so regenerating one platform cannot remove or change the shared API.
