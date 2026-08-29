// Bindings_Generator omits these const int declarations from steamnetworkingtypes.h.
// Keep this common file as their platform-independent binding owner.

k_cbMaxSteamNetworkingSocketsMessageSizeSend : s32 : 512 * 1024;

k_nSteamNetworkingSend_Unreliable               : s32 : 0;
k_nSteamNetworkingSend_NoNagle                  : s32 : 1;
k_nSteamNetworkingSend_UnreliableNoNagle        : s32 : k_nSteamNetworkingSend_Unreliable | k_nSteamNetworkingSend_NoNagle;
k_nSteamNetworkingSend_NoDelay                  : s32 : 4;
k_nSteamNetworkingSend_UnreliableNoDelay        : s32 : k_nSteamNetworkingSend_Unreliable | k_nSteamNetworkingSend_NoDelay | k_nSteamNetworkingSend_NoNagle;
k_nSteamNetworkingSend_Reliable                 : s32 : 8;
k_nSteamNetworkingSend_ReliableNoNagle          : s32 : k_nSteamNetworkingSend_Reliable | k_nSteamNetworkingSend_NoNagle;
k_nSteamNetworkingSend_UseCurrentThread         : s32 : 16;
k_nSteamNetworkingSend_AutoRestartBrokenSession : s32 : 32;

// The generated callback enums have different nesting and signedness by platform.
// These flat IDs mirror each SDK payload type's k_iCallback value.
SteamNetworkingMessagesSessionRequest_t_k_iCallback : s32 : 1251;
SteamNetworkingMessagesSessionFailed_t_k_iCallback  : s32 : 1252;

#run {
    assert(k_cbMaxSteamNetworkingSocketsMessageSizeSend == 524288);

    assert(k_nSteamNetworkingSend_Unreliable == 0);
    assert(k_nSteamNetworkingSend_NoNagle == 1);
    assert(k_nSteamNetworkingSend_UnreliableNoNagle == 1);
    assert(k_nSteamNetworkingSend_NoDelay == 4);
    assert(k_nSteamNetworkingSend_UnreliableNoDelay == 5);
    assert(k_nSteamNetworkingSend_Reliable == 8);
    assert(k_nSteamNetworkingSend_ReliableNoNagle == 9);
    assert(k_nSteamNetworkingSend_UseCurrentThread == 16);
    assert(k_nSteamNetworkingSend_AutoRestartBrokenSession == 32);

    assert(SteamNetworkingMessagesSessionRequest_t_k_iCallback == 1251);
    assert(SteamNetworkingMessagesSessionFailed_t_k_iCallback == 1252);
}
