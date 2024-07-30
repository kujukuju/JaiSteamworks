//
// This file was auto-generated using the following command:
//
// jai ../ ./generate.jai
//



uint8 :: u8;

int16 :: s16;
uint16 :: u16;
int32 :: s32;
uint32 :: u32;
int64 :: s64;
uint64 :: u64;

AppId_t :: uint32;

// AppIds and DepotIDs also presently share the same namespace
DepotId_t :: uint32;

// RTime32.  Seconds elapsed since Jan 1 1970, i.e. unix timestamp.
// It's the same as time_t, but it is always 32-bit and unsigned.
RTime32 :: uint32;

// handle to a Steam API call
SteamAPICall_t :: uint64;

AccountID_t :: uint32;

// Party Beacon ID
PartyBeaconID_t :: uint64;

SteamIPAddress_t :: struct {}

// Steam universes.  Each universe is a self-contained Steam instance.
EUniverse :: enum s32 {
    EUniverseInvalid  :: 0;
    EUniversePublic   :: 1;
    EUniverseBeta     :: 2;
    EUniverseInternal :: 3;
    EUniverseDev      :: 4;

    EUniverseMax      :: 5;

    k_EUniverseInvalid  :: EUniverseInvalid;
    k_EUniversePublic   :: EUniversePublic;
    k_EUniverseBeta     :: EUniverseBeta;
    k_EUniverseInternal :: EUniverseInternal;
    k_EUniverseDev      :: EUniverseDev;

    k_EUniverseMax      :: EUniverseMax;
}

// General result codes
EResult :: enum s32 {
    k_EResultNone                                    :: 0;
    k_EResultOK                                      :: 1;
    k_EResultFail                                    :: 2;
    k_EResultNoConnection                            :: 3;

    k_EResultInvalidPassword                         :: 5;
    k_EResultLoggedInElsewhere                       :: 6;
    k_EResultInvalidProtocolVer                      :: 7;
    k_EResultInvalidParam                            :: 8;
    k_EResultFileNotFound                            :: 9;
    k_EResultBusy                                    :: 10;
    k_EResultInvalidState                            :: 11;
    k_EResultInvalidName                             :: 12;
    k_EResultInvalidEmail                            :: 13;
    k_EResultDuplicateName                           :: 14;
    k_EResultAccessDenied                            :: 15;
    k_EResultTimeout                                 :: 16;
    k_EResultBanned                                  :: 17;
    k_EResultAccountNotFound                         :: 18;
    k_EResultInvalidSteamID                          :: 19;
    k_EResultServiceUnavailable                      :: 20;
    k_EResultNotLoggedOn                             :: 21;
    k_EResultPending                                 :: 22;
    k_EResultEncryptionFailure                       :: 23;
    k_EResultInsufficientPrivilege                   :: 24;
    k_EResultLimitExceeded                           :: 25;
    k_EResultRevoked                                 :: 26;
    k_EResultExpired                                 :: 27;
    k_EResultAlreadyRedeemed                         :: 28;
    k_EResultDuplicateRequest                        :: 29;
    k_EResultAlreadyOwned                            :: 30;
    k_EResultIPNotFound                              :: 31;
    k_EResultPersistFailed                           :: 32;
    k_EResultLockingFailed                           :: 33;
    k_EResultLogonSessionReplaced                    :: 34;
    k_EResultConnectFailed                           :: 35;
    k_EResultHandshakeFailed                         :: 36;
    k_EResultIOFailure                               :: 37;
    k_EResultRemoteDisconnect                        :: 38;
    k_EResultShoppingCartNotFound                    :: 39;
    k_EResultBlocked                                 :: 40;
    k_EResultIgnored                                 :: 41;
    k_EResultNoMatch                                 :: 42;
    k_EResultAccountDisabled                         :: 43;
    k_EResultServiceReadOnly                         :: 44;
    k_EResultAccountNotFeatured                      :: 45;
    k_EResultAdministratorOK                         :: 46;
    k_EResultContentVersion                          :: 47;
    k_EResultTryAnotherCM                            :: 48;
    k_EResultPasswordRequiredToKickSession           :: 49;
    k_EResultAlreadyLoggedInElsewhere                :: 50;
    k_EResultSuspended                               :: 51;
    k_EResultCancelled                               :: 52;
    k_EResultDataCorruption                          :: 53;
    k_EResultDiskFull                                :: 54;
    k_EResultRemoteCallFailed                        :: 55;
    k_EResultPasswordUnset                           :: 56;
    k_EResultExternalAccountUnlinked                 :: 57;
    k_EResultPSNTicketInvalid                        :: 58;
    k_EResultExternalAccountAlreadyLinked            :: 59;
    k_EResultRemoteFileConflict                      :: 60;
    k_EResultIllegalPassword                         :: 61;
    k_EResultSameAsPreviousValue                     :: 62;
    k_EResultAccountLogonDenied                      :: 63;
    k_EResultCannotUseOldPassword                    :: 64;
    k_EResultInvalidLoginAuthCode                    :: 65;
    k_EResultAccountLogonDeniedNoMail                :: 66;
    k_EResultHardwareNotCapableOfIPT                 :: 67;
    k_EResultIPTInitError                            :: 68;
    k_EResultParentalControlRestricted               :: 69;
    k_EResultFacebookQueryError                      :: 70;
    k_EResultExpiredLoginAuthCode                    :: 71;
    k_EResultIPLoginRestrictionFailed                :: 72;
    k_EResultAccountLockedDown                       :: 73;
    k_EResultAccountLogonDeniedVerifiedEmailRequired :: 74;
    k_EResultNoMatchingURL                           :: 75;
    k_EResultBadResponse                             :: 76;
    k_EResultRequirePasswordReEntry                  :: 77;
    k_EResultValueOutOfRange                         :: 78;
    k_EResultUnexpectedError                         :: 79;
    k_EResultDisabled                                :: 80;
    k_EResultInvalidCEGSubmission                    :: 81;
    k_EResultRestrictedDevice                        :: 82;
    k_EResultRegionLocked                            :: 83;
    k_EResultRateLimitExceeded                       :: 84;
    k_EResultAccountLoginDeniedNeedTwoFactor         :: 85;
    k_EResultItemDeleted                             :: 86;
    k_EResultAccountLoginDeniedThrottle              :: 87;
    k_EResultTwoFactorCodeMismatch                   :: 88;
    k_EResultTwoFactorActivationCodeMismatch         :: 89;
    k_EResultAccountAssociatedToMultiplePartners     :: 90;
    k_EResultNotModified                             :: 91;
    k_EResultNoMobileDevice                          :: 92;
    k_EResultTimeNotSynced                           :: 93;
    k_EResultSmsCodeFailed                           :: 94;
    k_EResultAccountLimitExceeded                    :: 95;
    k_EResultAccountActivityLimitExceeded            :: 96;
    k_EResultPhoneActivityLimitExceeded              :: 97;
    k_EResultRefundToWallet                          :: 98;
    k_EResultEmailSendFailure                        :: 99;
    k_EResultNotSettled                              :: 100;
    k_EResultNeedCaptcha                             :: 101;
    k_EResultGSLTDenied                              :: 102;
    k_EResultGSOwnerDenied                           :: 103;
    k_EResultInvalidItemType                         :: 104;
    k_EResultIPBanned                                :: 105;
    k_EResultGSLTExpired                             :: 106;
    k_EResultInsufficientFunds                       :: 107;
    k_EResultTooManyPending                          :: 108;
    k_EResultNoSiteLicensesFound                     :: 109;
    k_EResultWGNetworkSendExceeded                   :: 110;
    k_EResultAccountNotFriends                       :: 111;
    k_EResultLimitedUserAccount                      :: 112;
    k_EResultCantRemoveItem                          :: 113;
    k_EResultAccountDeleted                          :: 114;
    k_EResultExistingUserCancelledLicense            :: 115;
    k_EResultCommunityCooldown                       :: 116;
    k_EResultNoLauncherSpecified                     :: 117;
    k_EResultMustAgreeToSSA                          :: 118;
    k_EResultLauncherMigrated                        :: 119;
    k_EResultSteamRealmMismatch                      :: 120;
    k_EResultInvalidSignature                        :: 121;
    k_EResultParseFailure                            :: 122;
    k_EResultNoVerifiedPhone                         :: 123;
    k_EResultInsufficientBattery                     :: 124;
    k_EResultChargerRequired                         :: 125;
    k_EResultCachedCredentialInvalid                 :: 126;
    K_EResultPhoneNumberIsVOIP                       :: 127;
    k_EResultNotSupported                            :: 128;
    k_EResultFamilySizeLimitExceeded                 :: 129;
}

// Error codes for use with the voice functions
EVoiceResult :: enum s32 {
    EVoiceResultOK                   :: 0;
    EVoiceResultNotInitialized       :: 1;
    EVoiceResultNotRecording         :: 2;
    EVoiceResultNoData               :: 3;
    EVoiceResultBufferTooSmall       :: 4;
    EVoiceResultDataCorrupted        :: 5;
    EVoiceResultRestricted           :: 6;
    EVoiceResultUnsupportedCodec     :: 7;
    EVoiceResultReceiverOutOfDate    :: 8;
    EVoiceResultReceiverDidNotAnswer :: 9;

    k_EVoiceResultOK                   :: EVoiceResultOK;
    k_EVoiceResultNotInitialized       :: EVoiceResultNotInitialized;
    k_EVoiceResultNotRecording         :: EVoiceResultNotRecording;
    k_EVoiceResultNoData               :: EVoiceResultNoData;
    k_EVoiceResultBufferTooSmall       :: EVoiceResultBufferTooSmall;
    k_EVoiceResultDataCorrupted        :: EVoiceResultDataCorrupted;
    k_EVoiceResultRestricted           :: EVoiceResultRestricted;
    k_EVoiceResultUnsupportedCodec     :: EVoiceResultUnsupportedCodec;
    k_EVoiceResultReceiverOutOfDate    :: EVoiceResultReceiverOutOfDate;
    k_EVoiceResultReceiverDidNotAnswer :: EVoiceResultReceiverDidNotAnswer;
}

// return type of GetAuthSessionTicket
HAuthTicket :: uint32;

// results from BeginAuthSession
EBeginAuthSessionResult :: enum s32 {
    EBeginAuthSessionResultOK               :: 0;
    EBeginAuthSessionResultInvalidTicket    :: 1;
    EBeginAuthSessionResultDuplicateRequest :: 2;
    EBeginAuthSessionResultInvalidVersion   :: 3;
    EBeginAuthSessionResultGameMismatch     :: 4;
    EBeginAuthSessionResultExpiredTicket    :: 5;

    k_EBeginAuthSessionResultOK               :: EBeginAuthSessionResultOK;
    k_EBeginAuthSessionResultInvalidTicket    :: EBeginAuthSessionResultInvalidTicket;
    k_EBeginAuthSessionResultDuplicateRequest :: EBeginAuthSessionResultDuplicateRequest;
    k_EBeginAuthSessionResultInvalidVersion   :: EBeginAuthSessionResultInvalidVersion;
    k_EBeginAuthSessionResultGameMismatch     :: EBeginAuthSessionResultGameMismatch;
    k_EBeginAuthSessionResultExpiredTicket    :: EBeginAuthSessionResultExpiredTicket;
}

// results from UserHasLicenseForApp
EUserHasLicenseForAppResult :: enum s32 {
    EUserHasLicenseResultHasLicense         :: 0;
    EUserHasLicenseResultDoesNotHaveLicense :: 1;
    EUserHasLicenseResultNoAuth             :: 2;

    k_EUserHasLicenseResultHasLicense         :: EUserHasLicenseResultHasLicense;
    k_EUserHasLicenseResultDoesNotHaveLicense :: EUserHasLicenseResultDoesNotHaveLicense;
    k_EUserHasLicenseResultNoAuth             :: EUserHasLicenseResultNoAuth;
}

// Steam account types
EAccountType :: enum s32 {
    EAccountTypeInvalid        :: 0;
    EAccountTypeIndividual     :: 1;
    EAccountTypeMultiseat      :: 2;
    EAccountTypeGameServer     :: 3;
    EAccountTypeAnonGameServer :: 4;
    EAccountTypePending        :: 5;
    EAccountTypeContentServer  :: 6;
    EAccountTypeClan           :: 7;
    EAccountTypeChat           :: 8;
    EAccountTypeConsoleUser    :: 9;
    EAccountTypeAnonUser       :: 10;

    EAccountTypeMax            :: 11;

    k_EAccountTypeInvalid        :: EAccountTypeInvalid;
    k_EAccountTypeIndividual     :: EAccountTypeIndividual;
    k_EAccountTypeMultiseat      :: EAccountTypeMultiseat;
    k_EAccountTypeGameServer     :: EAccountTypeGameServer;
    k_EAccountTypeAnonGameServer :: EAccountTypeAnonGameServer;
    k_EAccountTypePending        :: EAccountTypePending;
    k_EAccountTypeContentServer  :: EAccountTypeContentServer;
    k_EAccountTypeClan           :: EAccountTypeClan;
    k_EAccountTypeChat           :: EAccountTypeChat;
    k_EAccountTypeConsoleUser    :: EAccountTypeConsoleUser;
    k_EAccountTypeAnonUser       :: EAccountTypeAnonUser;

    k_EAccountTypeMax            :: EAccountTypeMax;
}

//-----------------------------------------------------------------------------
// Purpose: Chat Entry Types (previously was only friend-to-friend message types)
//-----------------------------------------------------------------------------
EChatEntryType :: enum s32 {
    EChatEntryTypeInvalid          :: 0;
    EChatEntryTypeChatMsg          :: 1;
    EChatEntryTypeTyping           :: 2;
    EChatEntryTypeInviteGame       :: 3;
    EChatEntryTypeEmote            :: 4;

    EChatEntryTypeLeftConversation :: 6;

    EChatEntryTypeEntered          :: 7;
    EChatEntryTypeWasKicked        :: 8;
    EChatEntryTypeWasBanned        :: 9;
    EChatEntryTypeDisconnected     :: 10;
    EChatEntryTypeHistoricalChat   :: 11;

    EChatEntryTypeLinkBlocked      :: 14;

    k_EChatEntryTypeInvalid          :: EChatEntryTypeInvalid;
    k_EChatEntryTypeChatMsg          :: EChatEntryTypeChatMsg;
    k_EChatEntryTypeTyping           :: EChatEntryTypeTyping;
    k_EChatEntryTypeInviteGame       :: EChatEntryTypeInviteGame;
    k_EChatEntryTypeEmote            :: EChatEntryTypeEmote;

    k_EChatEntryTypeLeftConversation :: EChatEntryTypeLeftConversation;

    k_EChatEntryTypeEntered          :: EChatEntryTypeEntered;
    k_EChatEntryTypeWasKicked        :: EChatEntryTypeWasKicked;
    k_EChatEntryTypeWasBanned        :: EChatEntryTypeWasBanned;
    k_EChatEntryTypeDisconnected     :: EChatEntryTypeDisconnected;
    k_EChatEntryTypeHistoricalChat   :: EChatEntryTypeHistoricalChat;

    k_EChatEntryTypeLinkBlocked      :: EChatEntryTypeLinkBlocked;
}

//-----------------------------------------------------------------------------
// Purpose: Possible positions to tell the overlay to show notifications in
//-----------------------------------------------------------------------------
ENotificationPosition :: enum s32 {
    EPositionInvalid     :: -1;
    EPositionTopLeft     :: 0;
    EPositionTopRight    :: 1;
    EPositionBottomLeft  :: 2;
    EPositionBottomRight :: 3;

    k_EPositionInvalid     :: EPositionInvalid;
    k_EPositionTopLeft     :: EPositionTopLeft;
    k_EPositionTopRight    :: EPositionTopRight;
    k_EPositionBottomLeft  :: EPositionBottomLeft;
    k_EPositionBottomRight :: EPositionBottomRight;
}

//
// Specifies a game's online state in relation to duration control
//
EDurationControlOnlineState :: enum s32 {
    Invalid       :: 0;
    Offline       :: 1;
    Online        :: 2;
    OnlineHighPri :: 3;

    k_EDurationControlOnlineState_Invalid       :: Invalid;
    k_EDurationControlOnlineState_Offline       :: Offline;
    k_EDurationControlOnlineState_Online        :: Online;
    k_EDurationControlOnlineState_OnlineHighPri :: OnlineHighPri;
}

// Steam ID structure (64 bits total)
CSteamID :: struct {}

EGameSearchErrorCode_t :: enum s32 {
    OK                                :: 1;
    Failed_Search_Already_In_Progress :: 2;
    Failed_No_Search_In_Progress      :: 3;
    Failed_Not_Lobby_Leader           :: 4;
    Failed_No_Host_Available          :: 5;
    Failed_Search_Params_Invalid      :: 6;
    Failed_Offline                    :: 7;
    Failed_NotAuthorized              :: 8;
    Failed_Unknown_Error              :: 9;

    k_EGameSearchErrorCode_OK                                :: OK;
    k_EGameSearchErrorCode_Failed_Search_Already_In_Progress :: Failed_Search_Already_In_Progress;
    k_EGameSearchErrorCode_Failed_No_Search_In_Progress      :: Failed_No_Search_In_Progress;
    k_EGameSearchErrorCode_Failed_Not_Lobby_Leader           :: Failed_Not_Lobby_Leader;
    k_EGameSearchErrorCode_Failed_No_Host_Available          :: Failed_No_Host_Available;
    k_EGameSearchErrorCode_Failed_Search_Params_Invalid      :: Failed_Search_Params_Invalid;
    k_EGameSearchErrorCode_Failed_Offline                    :: Failed_Offline;
    k_EGameSearchErrorCode_Failed_NotAuthorized              :: Failed_NotAuthorized;
    k_EGameSearchErrorCode_Failed_Unknown_Error              :: Failed_Unknown_Error;
}

EPlayerResult_t :: enum s32 {
    EPlayerResultFailedToConnect :: 1;
    EPlayerResultAbandoned       :: 2;
    EPlayerResultKicked          :: 3;
    EPlayerResultIncomplete      :: 4;
    EPlayerResultCompleted       :: 5;

    k_EPlayerResultFailedToConnect :: EPlayerResultFailedToConnect;
    k_EPlayerResultAbandoned       :: EPlayerResultAbandoned;
    k_EPlayerResultKicked          :: EPlayerResultKicked;
    k_EPlayerResultIncomplete      :: EPlayerResultIncomplete;
    k_EPlayerResultCompleted       :: EPlayerResultCompleted;
}

ESteamIPv6ConnectivityProtocol :: enum s32 {
    Invalid :: 0;
    HTTP    :: 1;
    UDP     :: 2;

    k_ESteamIPv6ConnectivityProtocol_Invalid :: Invalid;
    k_ESteamIPv6ConnectivityProtocol_HTTP    :: HTTP;
    k_ESteamIPv6ConnectivityProtocol_UDP     :: UDP;
}

// For the above transport protocol, what do we think the local machine's connectivity to the internet over ipv6 is like
ESteamIPv6ConnectivityState :: enum s32 {
    Unknown :: 0;
    Good    :: 1;
    Bad     :: 2;

    k_ESteamIPv6ConnectivityState_Unknown :: Unknown;
    k_ESteamIPv6ConnectivityState_Good    :: Good;
    k_ESteamIPv6ConnectivityState_Bad     :: Bad;
}

// handle to a communication pipe to the Steam client
HSteamPipe :: int32;

// handle to single instance of a steam user
HSteamUser :: int32;

// function prototype
SteamAPIWarningMessageHook_t :: #type (unknown0: s32, unknown1: *u8) -> void #c_call;

// Forward declare all of the Steam interfaces.  (Do we really need to do this?)
ISteamClient :: struct {
    vtable: *ISteamClient_VTable;
}
ISteamClient_VTable :: struct #type_info_none {
    CreateSteamPipe: *void;

    BReleaseSteamPipe: *void;

    ConnectToGlobalUser: *void;

    CreateLocalUser: *void;

    ReleaseUser: *void;

    GetISteamUser: *void;

    GetISteamGameServer: *void;

    SetLocalIPBinding: *void;

    GetISteamFriends: *void;

    GetISteamUtils: *void;

    GetISteamMatchmaking: *void;

    GetISteamMatchmakingServers: *void;

    GetISteamGenericInterface: *void;

    GetISteamUserStats: *void;

    GetISteamGameServerStats: *void;

    GetISteamApps: *void;

    GetISteamNetworking: *void;

    GetISteamRemoteStorage: *void;

    GetISteamScreenshots: *void;

    GetISteamGameSearch: *void;

    RunFrame: *void;

    GetIPCCallCount: *void;

    SetWarningMessageHook: *void;

    BShutdownIfAllPipesClosed: *void;

    GetISteamHTTP: *void;

    GetISteamController: *void;

    GetISteamUGC: *void;

    GetISteamMusic: *void;

    GetISteamMusicRemote: *void;

    GetISteamHTMLSurface: *void;

    DEPRECATED_Set_SteamAPI_CPostAPIResultInProcess: *void;
    DEPRECATED_Remove_SteamAPI_CPostAPIResultInProcess: *void;
    Set_SteamAPI_CCheckCallbackRegisteredInProcess: *void;

    GetISteamInventory: *void;

    GetISteamVideo: *void;

    GetISteamParentalSettings: *void;

    GetISteamInput: *void;

    GetISteamParties: *void;

    GetISteamRemotePlay: *void;

    DestroyAllInterfaces: *void;
}

vtable :: (obj: *ISteamClient) -> *ISteamClient_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Functions for accessing and manipulating a steam account
//			associated with one client instance
//-----------------------------------------------------------------------------
ISteamUser :: struct {
    vtable: *ISteamUser_VTable;
}
ISteamUser_VTable :: struct #type_info_none {
    GetHSteamUser: *void;

    BLoggedOn: *void;

    GetSteamID: *void;

    InitiateGameConnection_DEPRECATED: *void;

    TerminateGameConnection_DEPRECATED: *void;

    TrackAppUsageEvent: *void;

    GetUserDataFolder: *void;

    StartVoiceRecording: *void;

    StopVoiceRecording: *void;

    GetAvailableVoice: *void;

    GetVoice: *void;

    DecompressVoice: *void;

    GetVoiceOptimalSampleRate: *void;

    GetAuthSessionTicket: *void;

    GetAuthTicketForWebApi: *void;

    BeginAuthSession: *void;

    EndAuthSession: *void;

    CancelAuthTicket: *void;

    UserHasLicenseForApp: *void;

    BIsBehindNAT: *void;

    AdvertiseGame: *void;

    RequestEncryptedAppTicket: *void;

    GetEncryptedAppTicket: *void;

    GetGameBadgeLevel: *void;

    GetPlayerSteamLevel: *void;

    RequestStoreAuthURL: *void;

    BIsPhoneVerified: *void;

    BIsTwoFactorEnabled: *void;

    BIsPhoneIdentifying: *void;

    BIsPhoneRequiringVerification: *void;

    GetMarketEligibility: *void;

    GetDurationControl: *void;

    BSetDurationControlOnlineState: *void;
}

vtable :: (obj: *ISteamUser) -> *ISteamUser_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: set of relationships to other users
//-----------------------------------------------------------------------------
EFriendRelationship :: enum s32 {
    EFriendRelationshipNone                 :: 0;
    EFriendRelationshipBlocked              :: 1;
    EFriendRelationshipRequestRecipient     :: 2;
    EFriendRelationshipFriend               :: 3;
    EFriendRelationshipRequestInitiator     :: 4;
    EFriendRelationshipIgnored              :: 5;
    EFriendRelationshipIgnoredFriend        :: 6;
    EFriendRelationshipSuggested_DEPRECATED :: 7;

    EFriendRelationshipMax                  :: 8;

    k_EFriendRelationshipNone                 :: EFriendRelationshipNone;
    k_EFriendRelationshipBlocked              :: EFriendRelationshipBlocked;
    k_EFriendRelationshipRequestRecipient     :: EFriendRelationshipRequestRecipient;
    k_EFriendRelationshipFriend               :: EFriendRelationshipFriend;
    k_EFriendRelationshipRequestInitiator     :: EFriendRelationshipRequestInitiator;
    k_EFriendRelationshipIgnored              :: EFriendRelationshipIgnored;
    k_EFriendRelationshipIgnoredFriend        :: EFriendRelationshipIgnoredFriend;
    k_EFriendRelationshipSuggested_DEPRECATED :: EFriendRelationshipSuggested_DEPRECATED;

    k_EFriendRelationshipMax                  :: EFriendRelationshipMax;
}

// friends group identifier type
FriendsGroupID_t :: int16;

//-----------------------------------------------------------------------------
// Purpose: list of states a friend can be in
//-----------------------------------------------------------------------------
EPersonaState :: enum s32 {
    EPersonaStateOffline        :: 0;
    EPersonaStateOnline         :: 1;
    EPersonaStateBusy           :: 2;
    EPersonaStateAway           :: 3;
    EPersonaStateSnooze         :: 4;
    EPersonaStateLookingToTrade :: 5;
    EPersonaStateLookingToPlay  :: 6;
    EPersonaStateInvisible      :: 7;
    EPersonaStateMax            :: 8;

    k_EPersonaStateOffline        :: EPersonaStateOffline;
    k_EPersonaStateOnline         :: EPersonaStateOnline;
    k_EPersonaStateBusy           :: EPersonaStateBusy;
    k_EPersonaStateAway           :: EPersonaStateAway;
    k_EPersonaStateSnooze         :: EPersonaStateSnooze;
    k_EPersonaStateLookingToTrade :: EPersonaStateLookingToTrade;
    k_EPersonaStateLookingToPlay  :: EPersonaStateLookingToPlay;
    k_EPersonaStateInvisible      :: EPersonaStateInvisible;
    k_EPersonaStateMax            :: EPersonaStateMax;
}

FriendGameInfo_t :: struct {}

// These values are passed as parameters to the store
EOverlayToStoreFlag :: enum s32 {
    None             :: 0;
    AddToCart        :: 1;
    AddToCartAndShow :: 2;

    k_EOverlayToStoreFlag_None             :: None;
    k_EOverlayToStoreFlag_AddToCart        :: AddToCart;
    k_EOverlayToStoreFlag_AddToCartAndShow :: AddToCartAndShow;
}

//-----------------------------------------------------------------------------
// Purpose: Tells Steam where to place the browser window inside the overlay
//-----------------------------------------------------------------------------
EActivateGameOverlayToWebPageMode :: enum s32 {
    Default :: 0;

    Modal   :: 1;

    k_EActivateGameOverlayToWebPageMode_Default :: Default;

    k_EActivateGameOverlayToWebPageMode_Modal   :: Modal;
}

//-----------------------------------------------------------------------------
// Purpose: See GetProfileItemPropertyString and GetProfileItemPropertyUint
//-----------------------------------------------------------------------------
ECommunityProfileItemType :: enum s32 {
    AnimatedAvatar        :: 0;
    AvatarFrame           :: 1;
    ProfileModifier       :: 2;
    ProfileBackground     :: 3;
    MiniProfileBackground :: 4;

    k_ECommunityProfileItemType_AnimatedAvatar        :: AnimatedAvatar;
    k_ECommunityProfileItemType_AvatarFrame           :: AvatarFrame;
    k_ECommunityProfileItemType_ProfileModifier       :: ProfileModifier;
    k_ECommunityProfileItemType_ProfileBackground     :: ProfileBackground;
    k_ECommunityProfileItemType_MiniProfileBackground :: MiniProfileBackground;
}

ECommunityProfileItemProperty :: enum s32 {
    ImageSmall     :: 0;
    ImageLarge     :: 1;
    InternalName   :: 2;
    Title          :: 3;
    Description    :: 4;
    AppID          :: 5;
    TypeID         :: 6;
    Class          :: 7;
    MovieWebM      :: 8;
    MovieMP4       :: 9;
    MovieWebMSmall :: 10;
    MovieMP4Small  :: 11;

    k_ECommunityProfileItemProperty_ImageSmall     :: ImageSmall;
    k_ECommunityProfileItemProperty_ImageLarge     :: ImageLarge;
    k_ECommunityProfileItemProperty_InternalName   :: InternalName;
    k_ECommunityProfileItemProperty_Title          :: Title;
    k_ECommunityProfileItemProperty_Description    :: Description;
    k_ECommunityProfileItemProperty_AppID          :: AppID;
    k_ECommunityProfileItemProperty_TypeID         :: TypeID;
    k_ECommunityProfileItemProperty_Class          :: Class;
    k_ECommunityProfileItemProperty_MovieWebM      :: MovieWebM;
    k_ECommunityProfileItemProperty_MovieMP4       :: MovieMP4;
    k_ECommunityProfileItemProperty_MovieWebMSmall :: MovieWebMSmall;
    k_ECommunityProfileItemProperty_MovieMP4Small  :: MovieMP4Small;
}

//-----------------------------------------------------------------------------
// Purpose: interface to accessing information about individual users,
//			that can be a friend, in a group, on a game server or in a lobby with the local user
//-----------------------------------------------------------------------------
ISteamFriends :: struct {
    vtable: *ISteamFriends_VTable;
}
ISteamFriends_VTable :: struct #type_info_none {
    GetPersonaName: *void;

    SetPersonaName: *void;

    GetPersonaState: *void;

    GetFriendCount: *void;

    GetFriendByIndex: *void;

    GetFriendRelationship: *void;

    GetFriendPersonaState: *void;

    GetFriendPersonaName: *void;

    GetFriendGamePlayed: *void;

    GetFriendPersonaNameHistory: *void;

    GetFriendSteamLevel: *void;

    GetPlayerNickname: *void;

    GetFriendsGroupCount: *void;

    GetFriendsGroupIDByIndex: *void;

    GetFriendsGroupName: *void;

    GetFriendsGroupMembersCount: *void;

    GetFriendsGroupMembersList: *void;

    HasFriend: *void;

    GetClanCount: *void;
    GetClanByIndex: *void;
    GetClanName: *void;
    GetClanTag: *void;

    GetClanActivityCounts: *void;

    DownloadClanActivityCounts: *void;

    GetFriendCountFromSource: *void;
    GetFriendFromSourceByIndex: *void;

    IsUserInSource: *void;

    SetInGameVoiceSpeaking: *void;

    ActivateGameOverlay: *void;

    ActivateGameOverlayToUser: *void;

    ActivateGameOverlayToWebPage: *void;

    ActivateGameOverlayToStore: *void;

    SetPlayedWith: *void;

    ActivateGameOverlayInviteDialog: *void;

    GetSmallFriendAvatar: *void;

    GetMediumFriendAvatar: *void;

    GetLargeFriendAvatar: *void;

    RequestUserInformation: *void;

    RequestClanOfficerList: *void;

    GetClanOwner: *void;

    GetClanOfficerCount: *void;

    GetClanOfficerByIndex: *void;

    GetUserRestrictions: *void;

    SetRichPresence: *void;
    ClearRichPresence: *void;
    GetFriendRichPresence: *void;
    GetFriendRichPresenceKeyCount: *void;
    GetFriendRichPresenceKeyByIndex: *void;

    RequestFriendRichPresence: *void;

    InviteUserToGame: *void;

    GetCoplayFriendCount: *void;
    GetCoplayFriend: *void;
    GetFriendCoplayTime: *void;
    GetFriendCoplayGame: *void;

    JoinClanChatRoom: *void;
    LeaveClanChatRoom: *void;
    GetClanChatMemberCount: *void;
    GetChatMemberByIndex: *void;
    SendClanChatMessage: *void;
    GetClanChatMessage: *void;
    IsClanChatAdmin: *void;

    IsClanChatWindowOpenInSteam: *void;
    OpenClanChatWindowInSteam: *void;
    CloseClanChatWindowInSteam: *void;

    SetListenForFriendsMessages: *void;
    ReplyToFriendMessage: *void;
    GetFriendMessage: *void;

    GetFollowerCount: *void;

    IsFollowing: *void;

    EnumerateFollowingList: *void;

    IsClanPublic: *void;
    IsClanOfficialGameGroup: *void;

    GetNumChatsWithUnreadPriorityMessages: *void;

    ActivateGameOverlayRemotePlayTogetherInviteDialog: *void;

    RegisterProtocolInOverlayBrowser: *void;

    ActivateGameOverlayInviteDialogConnectString: *void;

    RequestEquippedProfileItems: *void;
    BHasEquippedProfileItem: *void;
    GetProfileItemPropertyString: *void;
    GetProfileItemPropertyUint: *void;
}

vtable :: (obj: *ISteamFriends) -> *ISteamFriends_VTable { return obj.vtable; }


// Steam API call failure results
ESteamAPICallFailure :: enum s32 {
    ESteamAPICallFailureNone               :: -1;
    ESteamAPICallFailureSteamGone          :: 0;
    ESteamAPICallFailureNetworkFailure     :: 1;

    ESteamAPICallFailureInvalidHandle      :: 2;
    ESteamAPICallFailureMismatchedCallback :: 3;

    k_ESteamAPICallFailureNone               :: ESteamAPICallFailureNone;
    k_ESteamAPICallFailureSteamGone          :: ESteamAPICallFailureSteamGone;
    k_ESteamAPICallFailureNetworkFailure     :: ESteamAPICallFailureNetworkFailure;

    k_ESteamAPICallFailureInvalidHandle      :: ESteamAPICallFailureInvalidHandle;
    k_ESteamAPICallFailureMismatchedCallback :: ESteamAPICallFailureMismatchedCallback;
}

// Input modes for the Big Picture gamepad text entry
EGamepadTextInputMode :: enum s32 {
    EGamepadTextInputModeNormal   :: 0;
    EGamepadTextInputModePassword :: 1;

    k_EGamepadTextInputModeNormal   :: EGamepadTextInputModeNormal;
    k_EGamepadTextInputModePassword :: EGamepadTextInputModePassword;
}

// Controls number of allowed lines for the Big Picture gamepad text entry
EGamepadTextInputLineMode :: enum s32 {
    EGamepadTextInputLineModeSingleLine    :: 0;
    EGamepadTextInputLineModeMultipleLines :: 1;

    k_EGamepadTextInputLineModeSingleLine    :: EGamepadTextInputLineModeSingleLine;
    k_EGamepadTextInputLineModeMultipleLines :: EGamepadTextInputLineModeMultipleLines;
}

EFloatingGamepadTextInputMode :: enum s32 {
    EFloatingGamepadTextInputModeModeSingleLine    :: 0;
    EFloatingGamepadTextInputModeModeMultipleLines :: 1;
    EFloatingGamepadTextInputModeModeEmail         :: 2;
    EFloatingGamepadTextInputModeModeNumeric       :: 3;

    k_EFloatingGamepadTextInputModeModeSingleLine    :: EFloatingGamepadTextInputModeModeSingleLine;
    k_EFloatingGamepadTextInputModeModeMultipleLines :: EFloatingGamepadTextInputModeModeMultipleLines;
    k_EFloatingGamepadTextInputModeModeEmail         :: EFloatingGamepadTextInputModeModeEmail;
    k_EFloatingGamepadTextInputModeModeNumeric       :: EFloatingGamepadTextInputModeModeNumeric;
}

// The context where text filtering is being done
ETextFilteringContext :: enum s32 {
    ETextFilteringContextUnknown     :: 0;
    ETextFilteringContextGameContent :: 1;
    ETextFilteringContextChat        :: 2;
    ETextFilteringContextName        :: 3;

    k_ETextFilteringContextUnknown     :: ETextFilteringContextUnknown;
    k_ETextFilteringContextGameContent :: ETextFilteringContextGameContent;
    k_ETextFilteringContextChat        :: ETextFilteringContextChat;
    k_ETextFilteringContextName        :: ETextFilteringContextName;
}

//-----------------------------------------------------------------------------
// Purpose: interface to user independent utility functions
//-----------------------------------------------------------------------------
ISteamUtils :: struct {
    vtable: *ISteamUtils_VTable;
}
ISteamUtils_VTable :: struct #type_info_none {
    GetSecondsSinceAppActive: *void;
    GetSecondsSinceComputerActive: *void;

    GetConnectedUniverse: *void;

    GetServerRealTime: *void;

    GetIPCountry: *void;

    GetImageSize: *void;

    GetImageRGBA: *void;

    GetCSERIPPort: *void;

    GetCurrentBatteryPower: *void;

    GetAppID: *void;

    SetOverlayNotificationPosition: *void;

    IsAPICallCompleted: *void;
    GetAPICallFailureReason: *void;
    GetAPICallResult: *void;

    RunFrame: *void;

    GetIPCCallCount: *void;

    SetWarningMessageHook: *void;

    IsOverlayEnabled: *void;

    BOverlayNeedsPresent: *void;

    CheckFileSignature: *void;

    ShowGamepadTextInput: *void;

    GetEnteredGamepadTextLength: *void;
    GetEnteredGamepadTextInput: *void;

    GetSteamUILanguage: *void;

    IsSteamRunningInVR: *void;

    SetOverlayNotificationInset: *void;

    IsSteamInBigPictureMode: *void;

    StartVRDashboard: *void;

    IsVRHeadsetStreamingEnabled: *void;

    SetVRHeadsetStreamingEnabled: *void;

    IsSteamChinaLauncher: *void;

    InitFilterText: *void;

    FilterText: *void;

    GetIPv6ConnectivityState: *void;

    IsSteamRunningOnSteamDeck: *void;

    ShowFloatingGamepadTextInput: *void;

    SetGameLauncherMode: *void;

    DismissFloatingGamepadTextInput: *void;

    DismissGamepadTextInput: *void;
}

vtable :: (obj: *ISteamUtils) -> *ISteamUtils_VTable { return obj.vtable; }


/// Store key/value pair used in matchmaking queries.
///
/// Actually, the name Key/Value is a bit misleading.  The "key" is better
/// understood as "filter operation code" and the "value" is the operand to this
/// filter operation.  The meaning of the operand depends upon the filter.
MatchMakingKeyValuePair_t :: struct {}

EMatchMakingServerResponse :: enum s32 {
    ServerResponded               :: 0;
    ServerFailedToRespond         :: 1;
    NoServersListedOnMasterServer :: 2;

    eServerResponded               :: ServerResponded;
    eServerFailedToRespond         :: ServerFailedToRespond;
    eNoServersListedOnMasterServer :: NoServersListedOnMasterServer;
}

// servernetadr_t is all the addressing info the serverbrowser needs to know about a game server,
// namely: its IP, its connection port, and its query port.
servernetadr_t :: struct {}

//-----------------------------------------------------------------------------
// Purpose: Data describing a single server
//-----------------------------------------------------------------------------
gameserveritem_t :: struct {}

// lobby type description
ELobbyType :: enum s32 {
    ELobbyTypePrivate       :: 0;
    ELobbyTypeFriendsOnly   :: 1;
    ELobbyTypePublic        :: 2;
    ELobbyTypeInvisible     :: 3;

    ELobbyTypePrivateUnique :: 4;

    k_ELobbyTypePrivate       :: ELobbyTypePrivate;
    k_ELobbyTypeFriendsOnly   :: ELobbyTypeFriendsOnly;
    k_ELobbyTypePublic        :: ELobbyTypePublic;
    k_ELobbyTypeInvisible     :: ELobbyTypeInvisible;

    k_ELobbyTypePrivateUnique :: ELobbyTypePrivateUnique;
}

// lobby search filter tools
ELobbyComparison :: enum s32 {
    ELobbyComparisonEqualToOrLessThan    :: -2;
    ELobbyComparisonLessThan             :: -1;
    ELobbyComparisonEqual                :: 0;
    ELobbyComparisonGreaterThan          :: 1;
    ELobbyComparisonEqualToOrGreaterThan :: 2;
    ELobbyComparisonNotEqual             :: 3;

    k_ELobbyComparisonEqualToOrLessThan    :: ELobbyComparisonEqualToOrLessThan;
    k_ELobbyComparisonLessThan             :: ELobbyComparisonLessThan;
    k_ELobbyComparisonEqual                :: ELobbyComparisonEqual;
    k_ELobbyComparisonGreaterThan          :: ELobbyComparisonGreaterThan;
    k_ELobbyComparisonEqualToOrGreaterThan :: ELobbyComparisonEqualToOrGreaterThan;
    k_ELobbyComparisonNotEqual             :: ELobbyComparisonNotEqual;
}

// lobby search distance. Lobby results are sorted from closest to farthest.
ELobbyDistanceFilter :: enum s32 {
    ELobbyDistanceFilterClose     :: 0;
    ELobbyDistanceFilterDefault   :: 1;
    ELobbyDistanceFilterFar       :: 2;
    ELobbyDistanceFilterWorldwide :: 3;

    k_ELobbyDistanceFilterClose     :: ELobbyDistanceFilterClose;
    k_ELobbyDistanceFilterDefault   :: ELobbyDistanceFilterDefault;
    k_ELobbyDistanceFilterFar       :: ELobbyDistanceFilterFar;
    k_ELobbyDistanceFilterWorldwide :: ELobbyDistanceFilterWorldwide;
}

//-----------------------------------------------------------------------------
// Purpose: Functions for match making services for clients to get to favorites
//			and to operate on game lobbies.
//-----------------------------------------------------------------------------
ISteamMatchmaking :: struct {
    vtable: *ISteamMatchmaking_VTable;
}
ISteamMatchmaking_VTable :: struct #type_info_none {
    GetFavoriteGameCount: *void;

    GetFavoriteGame: *void;

    AddFavoriteGame: *void;

    RemoveFavoriteGame: *void;

    RequestLobbyList: *void;

    AddRequestLobbyListStringFilter: *void;

    AddRequestLobbyListNumericalFilter: *void;

    AddRequestLobbyListNearValueFilter: *void;

    AddRequestLobbyListFilterSlotsAvailable: *void;

    AddRequestLobbyListDistanceFilter: *void;

    AddRequestLobbyListResultCountFilter: *void;

    AddRequestLobbyListCompatibleMembersFilter: *void;

    GetLobbyByIndex: *void;

    CreateLobby: *void;

    JoinLobby: *void;

    LeaveLobby: *void;

    InviteUserToLobby: *void;

    GetNumLobbyMembers: *void;

    GetLobbyMemberByIndex: *void;

    GetLobbyData: *void;

    SetLobbyData: *void;

    GetLobbyDataCount: *void;

    GetLobbyDataByIndex: *void;

    DeleteLobbyData: *void;

    GetLobbyMemberData: *void;

    SetLobbyMemberData: *void;

    SendLobbyChatMsg: *void;

    GetLobbyChatEntry: *void;

    RequestLobbyData: *void;

    SetLobbyGameServer: *void;

    GetLobbyGameServer: *void;

    SetLobbyMemberLimit: *void;

    GetLobbyMemberLimit: *void;

    SetLobbyType: *void;

    SetLobbyJoinable: *void;

    GetLobbyOwner: *void;

    SetLobbyOwner: *void;

    SetLinkedLobby: *void;
}

vtable :: (obj: *ISteamMatchmaking) -> *ISteamMatchmaking_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Typedef for handle type you will receive when requesting server list.
//-----------------------------------------------------------------------------
HServerListRequest :: *void;

//-----------------------------------------------------------------------------
// Purpose: Callback interface for receiving responses after a server list refresh
// or an individual server update.
//
// Since you get these callbacks after requesting full list refreshes you will
// usually implement this interface inside an object like CServerBrowser.  If that
// object is getting destructed you should use ISteamMatchMakingServers()->CancelQuery()
// to cancel any in-progress queries so you don't get a callback into the destructed
// object and crash.
//-----------------------------------------------------------------------------
ISteamMatchmakingServerListResponse :: struct {
    vtable: *ISteamMatchmakingServerListResponse_VTable;
}
ISteamMatchmakingServerListResponse_VTable :: struct #type_info_none {
    ServerResponded: *void;

    ServerFailedToRespond: *void;

    RefreshComplete: *void;
}

vtable :: (obj: *ISteamMatchmakingServerListResponse) -> *ISteamMatchmakingServerListResponse_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Callback interface for receiving responses after pinging an individual server
//
// These callbacks all occur in response to querying an individual server
// via the ISteamMatchmakingServers()->PingServer() call below.  If you are
// destructing an object that implements this interface then you should call
// ISteamMatchmakingServers()->CancelServerQuery() passing in the handle to the query
// which is in progress.  Failure to cancel in progress queries when destructing
// a callback handler may result in a crash when a callback later occurs.
//-----------------------------------------------------------------------------
ISteamMatchmakingPingResponse :: struct {
    vtable: *ISteamMatchmakingPingResponse_VTable;
}
ISteamMatchmakingPingResponse_VTable :: struct #type_info_none {
    ServerResponded: *void;

    ServerFailedToRespond: *void;
}

vtable :: (obj: *ISteamMatchmakingPingResponse) -> *ISteamMatchmakingPingResponse_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Callback interface for receiving responses after requesting details on
// who is playing on a particular server.
//
// These callbacks all occur in response to querying an individual server
// via the ISteamMatchmakingServers()->PlayerDetails() call below.  If you are
// destructing an object that implements this interface then you should call
// ISteamMatchmakingServers()->CancelServerQuery() passing in the handle to the query
// which is in progress.  Failure to cancel in progress queries when destructing
// a callback handler may result in a crash when a callback later occurs.
//-----------------------------------------------------------------------------
ISteamMatchmakingPlayersResponse :: struct {
    vtable: *ISteamMatchmakingPlayersResponse_VTable;
}
ISteamMatchmakingPlayersResponse_VTable :: struct #type_info_none {
    AddPlayerToList: *void;

    PlayersFailedToRespond: *void;

    PlayersRefreshComplete: *void;
}

vtable :: (obj: *ISteamMatchmakingPlayersResponse) -> *ISteamMatchmakingPlayersResponse_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Callback interface for receiving responses after requesting rules
// details on a particular server.
//
// These callbacks all occur in response to querying an individual server
// via the ISteamMatchmakingServers()->ServerRules() call below.  If you are
// destructing an object that implements this interface then you should call
// ISteamMatchmakingServers()->CancelServerQuery() passing in the handle to the query
// which is in progress.  Failure to cancel in progress queries when destructing
// a callback handler may result in a crash when a callback later occurs.
//-----------------------------------------------------------------------------
ISteamMatchmakingRulesResponse :: struct {
    vtable: *ISteamMatchmakingRulesResponse_VTable;
}
ISteamMatchmakingRulesResponse_VTable :: struct #type_info_none {
    RulesResponded: *void;

    RulesFailedToRespond: *void;

    RulesRefreshComplete: *void;
}

vtable :: (obj: *ISteamMatchmakingRulesResponse) -> *ISteamMatchmakingRulesResponse_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Typedef for handle type you will receive when querying details on an individual server.
//-----------------------------------------------------------------------------
HServerQuery :: s32;

//-----------------------------------------------------------------------------
// Purpose: Functions for match making services for clients to get to game lists and details
//-----------------------------------------------------------------------------
ISteamMatchmakingServers :: struct {
    vtable: *ISteamMatchmakingServers_VTable;
}
ISteamMatchmakingServers_VTable :: struct #type_info_none {
    RequestInternetServerList: *void;
    RequestLANServerList: *void;
    RequestFriendsServerList: *void;
    RequestFavoritesServerList: *void;
    RequestHistoryServerList: *void;
    RequestSpectatorServerList: *void;

    ReleaseRequest: *void;

    GetServerDetails: *void;

    CancelQuery: *void;

    RefreshQuery: *void;

    IsRefreshing: *void;

    GetServerCount: *void;

    RefreshServer: *void;

    PingServer: *void;

    PlayerDetails: *void;

    ServerRules: *void;

    CancelServerQuery: *void;
}

vtable :: (obj: *ISteamMatchmakingServers) -> *ISteamMatchmakingServers_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Functions for match making services for clients to get to favorites
//			and to operate on game lobbies.
//-----------------------------------------------------------------------------
ISteamGameSearch :: struct {
    vtable: *ISteamGameSearch_VTable;
}
ISteamGameSearch_VTable :: struct #type_info_none {
    AddGameSearchParams: *void;

    SearchForGameWithLobby: *void;

    SearchForGameSolo: *void;

    AcceptGame: *void;
    DeclineGame: *void;

    RetrieveConnectionDetails: *void;

    EndGameSearch: *void;

    SetGameHostParams: *void;

    SetConnectionDetails: *void;

    RequestPlayersForGame: *void;

    HostConfirmGameStart: *void;

    CancelRequestPlayersForGame: *void;

    SubmitPlayerResult: *void;

    EndGame: *void;
}

vtable :: (obj: *ISteamGameSearch) -> *ISteamGameSearch_VTable { return obj.vtable; }


SteamPartyBeaconLocation_t :: struct {}

ESteamPartyBeaconLocationData :: enum s32 {
    ESteamPartyBeaconLocationDataInvalid       :: 0;
    ESteamPartyBeaconLocationDataName          :: 1;
    ESteamPartyBeaconLocationDataIconURLSmall  :: 2;
    ESteamPartyBeaconLocationDataIconURLMedium :: 3;
    ESteamPartyBeaconLocationDataIconURLLarge  :: 4;

    k_ESteamPartyBeaconLocationDataInvalid       :: ESteamPartyBeaconLocationDataInvalid;
    k_ESteamPartyBeaconLocationDataName          :: ESteamPartyBeaconLocationDataName;
    k_ESteamPartyBeaconLocationDataIconURLSmall  :: ESteamPartyBeaconLocationDataIconURLSmall;
    k_ESteamPartyBeaconLocationDataIconURLMedium :: ESteamPartyBeaconLocationDataIconURLMedium;
    k_ESteamPartyBeaconLocationDataIconURLLarge  :: ESteamPartyBeaconLocationDataIconURLLarge;
}

ISteamParties :: struct {
    vtable: *ISteamParties_VTable;
}
ISteamParties_VTable :: struct #type_info_none {
    GetNumActiveBeacons: *void;
    GetBeaconByIndex: *void;
    GetBeaconDetails: *void;

    JoinParty: *void;

    GetNumAvailableBeaconLocations: *void;
    GetAvailableBeaconLocations: *void;

    CreateBeacon: *void;

    OnReservationCompleted: *void;

    CancelReservation: *void;

    ChangeNumOpenSlots: *void;

    DestroyBeacon: *void;

    GetBeaconLocationData: *void;
}

vtable :: (obj: *ISteamParties) -> *ISteamParties_VTable { return obj.vtable; }


SteamParamStringArray_t :: struct {}

// A handle to a piece of user generated content
UGCHandle_t :: uint64;
PublishedFileUpdateHandle_t :: uint64;
PublishedFileId_t :: uint64;

// Handle for writing to Steam Cloud
UGCFileWriteStreamHandle_t :: uint64;

ERemoteStoragePlatform :: enum s32 {
    ERemoteStoragePlatformNone    :: 0;
    ERemoteStoragePlatformWindows :: 1;
    ERemoteStoragePlatformOSX     :: 2;
    ERemoteStoragePlatformPS3     :: 4;
    ERemoteStoragePlatformLinux   :: 8;
    ERemoteStoragePlatformSwitch  :: 16;
    ERemoteStoragePlatformAndroid :: 32;
    ERemoteStoragePlatformIOS     :: 64;

    ERemoteStoragePlatformAll     :: -1;

    k_ERemoteStoragePlatformNone    :: ERemoteStoragePlatformNone;
    k_ERemoteStoragePlatformWindows :: ERemoteStoragePlatformWindows;
    k_ERemoteStoragePlatformOSX     :: ERemoteStoragePlatformOSX;
    k_ERemoteStoragePlatformPS3     :: ERemoteStoragePlatformPS3;
    k_ERemoteStoragePlatformLinux   :: ERemoteStoragePlatformLinux;
    k_ERemoteStoragePlatformSwitch  :: ERemoteStoragePlatformSwitch;
    k_ERemoteStoragePlatformAndroid :: ERemoteStoragePlatformAndroid;
    k_ERemoteStoragePlatformIOS     :: ERemoteStoragePlatformIOS;

    k_ERemoteStoragePlatformAll     :: ERemoteStoragePlatformAll;
}

ERemoteStoragePublishedFileVisibility :: enum s32 {
    ERemoteStoragePublishedFileVisibilityPublic      :: 0;
    ERemoteStoragePublishedFileVisibilityFriendsOnly :: 1;
    ERemoteStoragePublishedFileVisibilityPrivate     :: 2;
    ERemoteStoragePublishedFileVisibilityUnlisted    :: 3;

    k_ERemoteStoragePublishedFileVisibilityPublic      :: ERemoteStoragePublishedFileVisibilityPublic;
    k_ERemoteStoragePublishedFileVisibilityFriendsOnly :: ERemoteStoragePublishedFileVisibilityFriendsOnly;
    k_ERemoteStoragePublishedFileVisibilityPrivate     :: ERemoteStoragePublishedFileVisibilityPrivate;
    k_ERemoteStoragePublishedFileVisibilityUnlisted    :: ERemoteStoragePublishedFileVisibilityUnlisted;
}

EWorkshopFileType :: enum s32 {
    EWorkshopFileTypeFirst                  :: 0;

    EWorkshopFileTypeCommunity              :: 0;
    EWorkshopFileTypeMicrotransaction       :: 1;
    EWorkshopFileTypeCollection             :: 2;
    EWorkshopFileTypeArt                    :: 3;
    EWorkshopFileTypeVideo                  :: 4;
    EWorkshopFileTypeScreenshot             :: 5;
    EWorkshopFileTypeGame                   :: 6;
    EWorkshopFileTypeSoftware               :: 7;
    EWorkshopFileTypeConcept                :: 8;
    EWorkshopFileTypeWebGuide               :: 9;
    EWorkshopFileTypeIntegratedGuide        :: 10;
    EWorkshopFileTypeMerch                  :: 11;
    EWorkshopFileTypeControllerBinding      :: 12;
    EWorkshopFileTypeSteamworksAccessInvite :: 13;
    EWorkshopFileTypeSteamVideo             :: 14;
    EWorkshopFileTypeGameManagedItem        :: 15;
    EWorkshopFileTypeClip                   :: 16;

    EWorkshopFileTypeMax                    :: 17;

    k_EWorkshopFileTypeFirst                  :: EWorkshopFileTypeFirst;

    k_EWorkshopFileTypeCommunity              :: EWorkshopFileTypeCommunity;
    k_EWorkshopFileTypeMicrotransaction       :: EWorkshopFileTypeMicrotransaction;
    k_EWorkshopFileTypeCollection             :: EWorkshopFileTypeCollection;
    k_EWorkshopFileTypeArt                    :: EWorkshopFileTypeArt;
    k_EWorkshopFileTypeVideo                  :: EWorkshopFileTypeVideo;
    k_EWorkshopFileTypeScreenshot             :: EWorkshopFileTypeScreenshot;
    k_EWorkshopFileTypeGame                   :: EWorkshopFileTypeGame;
    k_EWorkshopFileTypeSoftware               :: EWorkshopFileTypeSoftware;
    k_EWorkshopFileTypeConcept                :: EWorkshopFileTypeConcept;
    k_EWorkshopFileTypeWebGuide               :: EWorkshopFileTypeWebGuide;
    k_EWorkshopFileTypeIntegratedGuide        :: EWorkshopFileTypeIntegratedGuide;
    k_EWorkshopFileTypeMerch                  :: EWorkshopFileTypeMerch;
    k_EWorkshopFileTypeControllerBinding      :: EWorkshopFileTypeControllerBinding;
    k_EWorkshopFileTypeSteamworksAccessInvite :: EWorkshopFileTypeSteamworksAccessInvite;
    k_EWorkshopFileTypeSteamVideo             :: EWorkshopFileTypeSteamVideo;
    k_EWorkshopFileTypeGameManagedItem        :: EWorkshopFileTypeGameManagedItem;
    k_EWorkshopFileTypeClip                   :: EWorkshopFileTypeClip;

    k_EWorkshopFileTypeMax                    :: EWorkshopFileTypeMax;
}

EWorkshopFileAction :: enum s32 {
    EWorkshopFileActionPlayed    :: 0;
    EWorkshopFileActionCompleted :: 1;

    k_EWorkshopFileActionPlayed    :: EWorkshopFileActionPlayed;
    k_EWorkshopFileActionCompleted :: EWorkshopFileActionCompleted;
}

EWorkshopEnumerationType :: enum s32 {
    EWorkshopEnumerationTypeRankedByVote            :: 0;
    EWorkshopEnumerationTypeRecent                  :: 1;
    EWorkshopEnumerationTypeTrending                :: 2;
    EWorkshopEnumerationTypeFavoritesOfFriends      :: 3;
    EWorkshopEnumerationTypeVotedByFriends          :: 4;
    EWorkshopEnumerationTypeContentByFriends        :: 5;
    EWorkshopEnumerationTypeRecentFromFollowedUsers :: 6;

    k_EWorkshopEnumerationTypeRankedByVote            :: EWorkshopEnumerationTypeRankedByVote;
    k_EWorkshopEnumerationTypeRecent                  :: EWorkshopEnumerationTypeRecent;
    k_EWorkshopEnumerationTypeTrending                :: EWorkshopEnumerationTypeTrending;
    k_EWorkshopEnumerationTypeFavoritesOfFriends      :: EWorkshopEnumerationTypeFavoritesOfFriends;
    k_EWorkshopEnumerationTypeVotedByFriends          :: EWorkshopEnumerationTypeVotedByFriends;
    k_EWorkshopEnumerationTypeContentByFriends        :: EWorkshopEnumerationTypeContentByFriends;
    k_EWorkshopEnumerationTypeRecentFromFollowedUsers :: EWorkshopEnumerationTypeRecentFromFollowedUsers;
}

EWorkshopVideoProvider :: enum s32 {
    EWorkshopVideoProviderNone    :: 0;
    EWorkshopVideoProviderYoutube :: 1;

    k_EWorkshopVideoProviderNone    :: EWorkshopVideoProviderNone;
    k_EWorkshopVideoProviderYoutube :: EWorkshopVideoProviderYoutube;
}

EUGCReadAction :: enum s32 {
    ContinueReadingUntilFinished :: 0;

    ContinueReading              :: 1;

    Close                        :: 2;

    k_EUGCRead_ContinueReadingUntilFinished :: ContinueReadingUntilFinished;

    k_EUGCRead_ContinueReading              :: ContinueReading;

    k_EUGCRead_Close                        :: Close;
}

ERemoteStorageLocalFileChange :: enum s32 {
    Invalid     :: 0;

    FileUpdated :: 1;

    FileDeleted :: 2;

    k_ERemoteStorageLocalFileChange_Invalid     :: Invalid;

    k_ERemoteStorageLocalFileChange_FileUpdated :: FileUpdated;

    k_ERemoteStorageLocalFileChange_FileDeleted :: FileDeleted;
}

ERemoteStorageFilePathType :: enum s32 {
    Invalid     :: 0;

    Absolute    :: 1;

    APIFilename :: 2;

    k_ERemoteStorageFilePathType_Invalid     :: Invalid;

    k_ERemoteStorageFilePathType_Absolute    :: Absolute;

    k_ERemoteStorageFilePathType_APIFilename :: APIFilename;
}

//-----------------------------------------------------------------------------
// Purpose: Functions for accessing, reading and writing files stored remotely
//			and cached locally
//-----------------------------------------------------------------------------
ISteamRemoteStorage :: struct {
    vtable: *ISteamRemoteStorage_VTable;
}
ISteamRemoteStorage_VTable :: struct #type_info_none {
    FileWrite: *void;
    FileRead: *void;

    FileWriteAsync: *void;

    FileReadAsync: *void;
    FileReadAsyncComplete: *void;

    FileForget: *void;
    FileDelete: *void;

    FileShare: *void;
    SetSyncPlatforms: *void;

    FileWriteStreamOpen: *void;
    FileWriteStreamWriteChunk: *void;
    FileWriteStreamClose: *void;
    FileWriteStreamCancel: *void;

    FileExists: *void;
    FilePersisted: *void;
    GetFileSize: *void;
    GetFileTimestamp: *void;
    GetSyncPlatforms: *void;

    GetFileCount: *void;
    GetFileNameAndSize: *void;

    GetQuota: *void;
    IsCloudEnabledForAccount: *void;
    IsCloudEnabledForApp: *void;
    SetCloudEnabledForApp: *void;

    UGCDownload: *void;

    GetUGCDownloadProgress: *void;

    GetUGCDetails: *void;

    UGCRead: *void;

    GetCachedUGCCount: *void;
    GetCachedUGCHandle: *void;

    PublishWorkshopFile: *void;
    CreatePublishedFileUpdateRequest: *void;
    UpdatePublishedFileFile: *void;
    UpdatePublishedFilePreviewFile: *void;
    UpdatePublishedFileTitle: *void;
    UpdatePublishedFileDescription: *void;
    UpdatePublishedFileVisibility: *void;
    UpdatePublishedFileTags: *void;

    CommitPublishedFileUpdate: *void;

    GetPublishedFileDetails: *void;

    DeletePublishedFile: *void;

    EnumerateUserPublishedFiles: *void;

    SubscribePublishedFile: *void;

    EnumerateUserSubscribedFiles: *void;

    UnsubscribePublishedFile: *void;
    UpdatePublishedFileSetChangeDescription: *void;

    GetPublishedItemVoteDetails: *void;

    UpdateUserPublishedItemVote: *void;

    GetUserPublishedItemVoteDetails: *void;

    EnumerateUserSharedWorkshopFiles: *void;

    PublishVideo: *void;

    SetUserPublishedFileAction: *void;

    EnumeratePublishedFilesByUserAction: *void;

    EnumeratePublishedWorkshopFiles: *void;

    UGCDownloadToLocation: *void;

    GetLocalFileChangeCount: *void;
    GetLocalFileChange: *void;

    BeginFileWriteBatch: *void;
    EndFileWriteBatch: *void;
}

vtable :: (obj: *ISteamRemoteStorage) -> *ISteamRemoteStorage_VTable { return obj.vtable; }


// handle to a single leaderboard
SteamLeaderboard_t :: uint64;

// handle to a set of downloaded entries in a leaderboard
SteamLeaderboardEntries_t :: uint64;

// type of data request, when downloading leaderboard entries
ELeaderboardDataRequest :: enum s32 {
    ELeaderboardDataRequestGlobal           :: 0;
    ELeaderboardDataRequestGlobalAroundUser :: 1;
    ELeaderboardDataRequestFriends          :: 2;
    ELeaderboardDataRequestUsers            :: 3;

    k_ELeaderboardDataRequestGlobal           :: ELeaderboardDataRequestGlobal;
    k_ELeaderboardDataRequestGlobalAroundUser :: ELeaderboardDataRequestGlobalAroundUser;
    k_ELeaderboardDataRequestFriends          :: ELeaderboardDataRequestFriends;
    k_ELeaderboardDataRequestUsers            :: ELeaderboardDataRequestUsers;
}

// the sort order of a leaderboard
ELeaderboardSortMethod :: enum s32 {
    ELeaderboardSortMethodNone       :: 0;
    ELeaderboardSortMethodAscending  :: 1;
    ELeaderboardSortMethodDescending :: 2;

    k_ELeaderboardSortMethodNone       :: ELeaderboardSortMethodNone;
    k_ELeaderboardSortMethodAscending  :: ELeaderboardSortMethodAscending;
    k_ELeaderboardSortMethodDescending :: ELeaderboardSortMethodDescending;
}

// the display type (used by the Steam Community web site) for a leaderboard
ELeaderboardDisplayType :: enum s32 {
    ELeaderboardDisplayTypeNone             :: 0;
    ELeaderboardDisplayTypeNumeric          :: 1;
    ELeaderboardDisplayTypeTimeSeconds      :: 2;
    ELeaderboardDisplayTypeTimeMilliSeconds :: 3;

    k_ELeaderboardDisplayTypeNone             :: ELeaderboardDisplayTypeNone;
    k_ELeaderboardDisplayTypeNumeric          :: ELeaderboardDisplayTypeNumeric;
    k_ELeaderboardDisplayTypeTimeSeconds      :: ELeaderboardDisplayTypeTimeSeconds;
    k_ELeaderboardDisplayTypeTimeMilliSeconds :: ELeaderboardDisplayTypeTimeMilliSeconds;
}

ELeaderboardUploadScoreMethod :: enum s32 {
    ELeaderboardUploadScoreMethodNone        :: 0;
    ELeaderboardUploadScoreMethodKeepBest    :: 1;
    ELeaderboardUploadScoreMethodForceUpdate :: 2;

    k_ELeaderboardUploadScoreMethodNone        :: ELeaderboardUploadScoreMethodNone;
    k_ELeaderboardUploadScoreMethodKeepBest    :: ELeaderboardUploadScoreMethodKeepBest;
    k_ELeaderboardUploadScoreMethodForceUpdate :: ELeaderboardUploadScoreMethodForceUpdate;
}

LeaderboardEntry_t :: struct {}

//-----------------------------------------------------------------------------
// Purpose: Functions for accessing stats, achievements, and leaderboard information
//-----------------------------------------------------------------------------
ISteamUserStats :: struct {
    vtable: *ISteamUserStats_VTable;
}
ISteamUserStats_VTable :: struct #type_info_none {
    RequestCurrentStats: *void;

    GetStat: *void;

    GetStat_1: *void;

    SetStat: *void;

    SetStat_1: *void;

    UpdateAvgRateStat: *void;

    GetAchievement: *void;
    SetAchievement: *void;
    ClearAchievement: *void;

    GetAchievementAndUnlockTime: *void;

    StoreStats: *void;

    GetAchievementIcon: *void;

    GetAchievementDisplayAttribute: *void;

    IndicateAchievementProgress: *void;

    GetNumAchievements: *void;

    GetAchievementName: *void;

    RequestUserStats: *void;

    GetUserStat: *void;

    GetUserStat_1: *void;

    GetUserAchievement: *void;

    GetUserAchievementAndUnlockTime: *void;

    ResetAllStats: *void;

    FindOrCreateLeaderboard: *void;

    FindLeaderboard: *void;

    GetLeaderboardName: *void;

    GetLeaderboardEntryCount: *void;

    GetLeaderboardSortMethod: *void;

    GetLeaderboardDisplayType: *void;

    DownloadLeaderboardEntries: *void;

    DownloadLeaderboardEntriesForUsers: *void;

    GetDownloadedLeaderboardEntry: *void;

    UploadLeaderboardScore: *void;

    AttachLeaderboardUGC: *void;

    GetNumberOfCurrentPlayers: *void;

    RequestGlobalAchievementPercentages: *void;

    GetMostAchievedAchievementInfo: *void;

    GetNextMostAchievedAchievementInfo: *void;

    GetAchievementAchievedPercent: *void;

    RequestGlobalStats: *void;

    GetGlobalStat: *void;

    GetGlobalStat_1: *void;

    GetGlobalStatHistory: *void;

    GetGlobalStatHistory_1: *void;

    GetAchievementProgressLimits: *void;

    GetAchievementProgressLimits_1: *void;
}

vtable :: (obj: *ISteamUserStats) -> *ISteamUserStats_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: interface to app data
//-----------------------------------------------------------------------------
ISteamApps :: struct {
    vtable: *ISteamApps_VTable;
}
ISteamApps_VTable :: struct #type_info_none {
    BIsSubscribed: *void;
    BIsLowViolence: *void;
    BIsCybercafe: *void;
    BIsVACBanned: *void;
    GetCurrentGameLanguage: *void;
    GetAvailableGameLanguages: *void;

    BIsSubscribedApp: *void;

    BIsDlcInstalled: *void;

    GetEarliestPurchaseUnixTime: *void;

    BIsSubscribedFromFreeWeekend: *void;

    GetDLCCount: *void;

    BGetDLCDataByIndex: *void;

    InstallDLC: *void;
    UninstallDLC: *void;

    RequestAppProofOfPurchaseKey: *void;

    GetCurrentBetaName: *void;
    MarkContentCorrupt: *void;
    GetInstalledDepots: *void;

    GetAppInstallDir: *void;
    BIsAppInstalled: *void;

    GetAppOwner: *void;

    GetLaunchQueryParam: *void;

    GetDlcDownloadProgress: *void;

    GetAppBuildId: *void;

    RequestAllProofOfPurchaseKeys: *void;

    GetFileDetails: *void;

    GetLaunchCommandLine: *void;

    BIsSubscribedFromFamilySharing: *void;

    BIsTimedTrial: *void;

    SetDlcContext: *void;

    GetNumBetas: *void;

    GetBetaInfo: *void;

    SetActiveBeta: *void;
}

vtable :: (obj: *ISteamApps) -> *ISteamApps_VTable { return obj.vtable; }


// SendP2PPacket() send types
// Typically k_EP2PSendUnreliable is what you want for UDP-like packets, k_EP2PSendReliable for TCP-like packets
EP2PSend :: enum s32 {
    EP2PSendUnreliable            :: 0;

    EP2PSendUnreliableNoDelay     :: 1;

    EP2PSendReliable              :: 2;

    EP2PSendReliableWithBuffering :: 3;

    k_EP2PSendUnreliable            :: EP2PSendUnreliable;

    k_EP2PSendUnreliableNoDelay     :: EP2PSendUnreliableNoDelay;

    k_EP2PSendReliable              :: EP2PSendReliable;

    k_EP2PSendReliableWithBuffering :: EP2PSendReliableWithBuffering;
}

P2PSessionState_t :: struct {}

// handle to a socket
SNetSocket_t :: uint32;
SNetListenSocket_t :: uint32;

// describes how the socket is currently connected
ESNetSocketConnectionType :: enum s32 {
    ESNetSocketConnectionTypeNotConnected :: 0;
    ESNetSocketConnectionTypeUDP          :: 1;
    ESNetSocketConnectionTypeUDPRelay     :: 2;

    k_ESNetSocketConnectionTypeNotConnected :: ESNetSocketConnectionTypeNotConnected;
    k_ESNetSocketConnectionTypeUDP          :: ESNetSocketConnectionTypeUDP;
    k_ESNetSocketConnectionTypeUDPRelay     :: ESNetSocketConnectionTypeUDPRelay;
}

//-----------------------------------------------------------------------------
// Purpose: Functions for making connections and sending data between clients,
//			traversing NAT's where possible
//
// NOTE: This interface is deprecated and may be removed in a future release of
///      the Steamworks SDK.  Please see ISteamNetworkingSockets and
///      ISteamNetworkingMessages
//-----------------------------------------------------------------------------
ISteamNetworking :: struct {
    vtable: *ISteamNetworking_VTable;
}
ISteamNetworking_VTable :: struct #type_info_none {
    SendP2PPacket: *void;

    IsP2PPacketAvailable: *void;

    ReadP2PPacket: *void;

    AcceptP2PSessionWithUser: *void;

    CloseP2PSessionWithUser: *void;

    CloseP2PChannelWithUser: *void;

    GetP2PSessionState: *void;

    AllowP2PPacketRelay: *void;

    CreateListenSocket: *void;

    CreateP2PConnectionSocket: *void;
    CreateConnectionSocket: *void;

    DestroySocket: *void;

    DestroyListenSocket: *void;

    SendDataOnSocket: *void;

    IsDataAvailableOnSocket: *void;

    RetrieveDataFromSocket: *void;

    IsDataAvailable: *void;

    RetrieveData: *void;

    GetSocketInfo: *void;

    GetListenSocketInfo: *void;

    GetSocketConnectionType: *void;

    GetMaxPacketSize: *void;
}

vtable :: (obj: *ISteamNetworking) -> *ISteamNetworking_VTable { return obj.vtable; }


// Handle is valid for the lifetime of your process and no longer
ScreenshotHandle :: uint32;

EVRScreenshotType :: enum s32 {
    None           :: 0;
    Mono           :: 1;
    Stereo         :: 2;
    MonoCubemap    :: 3;
    MonoPanorama   :: 4;
    StereoPanorama :: 5;

    k_EVRScreenshotType_None           :: None;
    k_EVRScreenshotType_Mono           :: Mono;
    k_EVRScreenshotType_Stereo         :: Stereo;
    k_EVRScreenshotType_MonoCubemap    :: MonoCubemap;
    k_EVRScreenshotType_MonoPanorama   :: MonoPanorama;
    k_EVRScreenshotType_StereoPanorama :: StereoPanorama;
}

//-----------------------------------------------------------------------------
// Purpose: Functions for adding screenshots to the user's screenshot library
//-----------------------------------------------------------------------------
ISteamScreenshots :: struct {
    vtable: *ISteamScreenshots_VTable;
}
ISteamScreenshots_VTable :: struct #type_info_none {
    WriteScreenshot: *void;

    AddScreenshotToLibrary: *void;

    TriggerScreenshot: *void;

    HookScreenshots: *void;

    SetLocation: *void;

    TagUser: *void;

    TagPublishedFile: *void;

    IsScreenshotsHooked: *void;

    AddVRScreenshotToLibrary: *void;
}

vtable :: (obj: *ISteamScreenshots) -> *ISteamScreenshots_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose:
//-----------------------------------------------------------------------------
AudioPlayback_Status :: enum s32 {
    Undefined :: 0;
    Playing   :: 1;
    Paused    :: 2;
    Idle      :: 3;

    AudioPlayback_Undefined :: Undefined;
    AudioPlayback_Playing   :: Playing;
    AudioPlayback_Paused    :: Paused;
    AudioPlayback_Idle      :: Idle;
}

//-----------------------------------------------------------------------------
// Purpose: Functions to control music playback in the steam client
//-----------------------------------------------------------------------------
ISteamMusic :: struct {
    vtable: *ISteamMusic_VTable;
}
ISteamMusic_VTable :: struct #type_info_none {
    BIsEnabled: *void;
    BIsPlaying: *void;

    GetPlaybackStatus: *void;

    Play: *void;
    Pause: *void;
    PlayPrevious: *void;
    PlayNext: *void;

    SetVolume: *void;
    GetVolume: *void;
}

vtable :: (obj: *ISteamMusic) -> *ISteamMusic_VTable { return obj.vtable; }


ISteamMusicRemote :: struct {
    vtable: *ISteamMusicRemote_VTable;
}
ISteamMusicRemote_VTable :: struct #type_info_none {
    RegisterSteamMusicRemote: *void;
    DeregisterSteamMusicRemote: *void;
    BIsCurrentMusicRemote: *void;
    BActivationSuccess: *void;

    SetDisplayName: *void;
    SetPNGIcon_64x64: *void;

    EnablePlayPrevious: *void;
    EnablePlayNext: *void;
    EnableShuffled: *void;
    EnableLooped: *void;
    EnableQueue: *void;
    EnablePlaylists: *void;

    UpdatePlaybackStatus: *void;
    UpdateShuffled: *void;
    UpdateLooped: *void;
    UpdateVolume: *void;

    CurrentEntryWillChange: *void;
    CurrentEntryIsAvailable: *void;
    UpdateCurrentEntryText: *void;
    UpdateCurrentEntryElapsedSeconds: *void;
    UpdateCurrentEntryCoverArt: *void;
    CurrentEntryDidChange: *void;

    QueueWillChange: *void;
    ResetQueueEntries: *void;
    SetQueueEntry: *void;
    SetCurrentQueueEntry: *void;
    QueueDidChange: *void;

    PlaylistWillChange: *void;
    ResetPlaylistEntries: *void;
    SetPlaylistEntry: *void;
    SetCurrentPlaylistEntry: *void;
    PlaylistDidChange: *void;
}

vtable :: (obj: *ISteamMusicRemote) -> *ISteamMusicRemote_VTable { return obj.vtable; }


// This enum is used in client API methods, do not re-number existing values.
EHTTPMethod :: enum s32 {
    EHTTPMethodInvalid :: 0;
    EHTTPMethodGET     :: 1;
    EHTTPMethodHEAD    :: 2;
    EHTTPMethodPOST    :: 3;
    EHTTPMethodPUT     :: 4;
    EHTTPMethodDELETE  :: 5;
    EHTTPMethodOPTIONS :: 6;
    EHTTPMethodPATCH   :: 7;

    k_EHTTPMethodInvalid :: EHTTPMethodInvalid;
    k_EHTTPMethodGET     :: EHTTPMethodGET;
    k_EHTTPMethodHEAD    :: EHTTPMethodHEAD;
    k_EHTTPMethodPOST    :: EHTTPMethodPOST;
    k_EHTTPMethodPUT     :: EHTTPMethodPUT;
    k_EHTTPMethodDELETE  :: EHTTPMethodDELETE;
    k_EHTTPMethodOPTIONS :: EHTTPMethodOPTIONS;
    k_EHTTPMethodPATCH   :: EHTTPMethodPATCH;
}

// Handle to a HTTP Request handle
HTTPRequestHandle :: uint32;

HTTPCookieContainerHandle :: uint32;

//-----------------------------------------------------------------------------
// Purpose: interface to http client
//-----------------------------------------------------------------------------
ISteamHTTP :: struct {
    vtable: *ISteamHTTP_VTable;
}
ISteamHTTP_VTable :: struct #type_info_none {
    CreateHTTPRequest: *void;

    SetHTTPRequestContextValue: *void;

    SetHTTPRequestNetworkActivityTimeout: *void;

    SetHTTPRequestHeaderValue: *void;

    SetHTTPRequestGetOrPostParameter: *void;

    SendHTTPRequest: *void;

    SendHTTPRequestAndStreamResponse: *void;

    DeferHTTPRequest: *void;

    PrioritizeHTTPRequest: *void;

    GetHTTPResponseHeaderSize: *void;

    GetHTTPResponseHeaderValue: *void;

    GetHTTPResponseBodySize: *void;

    GetHTTPResponseBodyData: *void;

    GetHTTPStreamingResponseBodyData: *void;

    ReleaseHTTPRequest: *void;

    GetHTTPDownloadProgressPct: *void;

    SetHTTPRequestRawPostBody: *void;

    CreateCookieContainer: *void;

    ReleaseCookieContainer: *void;

    SetCookie: *void;

    SetHTTPRequestCookieContainer: *void;

    SetHTTPRequestUserAgentInfo: *void;

    SetHTTPRequestRequiresVerifiedCertificate: *void;

    SetHTTPRequestAbsoluteTimeoutMS: *void;

    GetHTTPRequestWasTimedOut: *void;
}

vtable :: (obj: *ISteamHTTP) -> *ISteamHTTP_VTable { return obj.vtable; }


// Note: Please do not use action origins as a way to identify controller types. There is no
// guarantee that they will be added in a contiguous manner - use GetInputTypeForHandle instead.
// Versions of Steam that add new controller types in the future will extend this enum so if you're
// using a lookup table please check the bounds of any origins returned by Steam.
EInputActionOrigin :: enum s32 {
    None                                :: 0;
    SteamController_A                   :: 1;
    SteamController_B                   :: 2;
    SteamController_X                   :: 3;
    SteamController_Y                   :: 4;
    SteamController_LeftBumper          :: 5;
    SteamController_RightBumper         :: 6;
    SteamController_LeftGrip            :: 7;
    SteamController_RightGrip           :: 8;
    SteamController_Start               :: 9;
    SteamController_Back                :: 10;
    SteamController_LeftPad_Touch       :: 11;
    SteamController_LeftPad_Swipe       :: 12;
    SteamController_LeftPad_Click       :: 13;
    SteamController_LeftPad_DPadNorth   :: 14;
    SteamController_LeftPad_DPadSouth   :: 15;
    SteamController_LeftPad_DPadWest    :: 16;
    SteamController_LeftPad_DPadEast    :: 17;
    SteamController_RightPad_Touch      :: 18;
    SteamController_RightPad_Swipe      :: 19;
    SteamController_RightPad_Click      :: 20;
    SteamController_RightPad_DPadNorth  :: 21;
    SteamController_RightPad_DPadSouth  :: 22;
    SteamController_RightPad_DPadWest   :: 23;
    SteamController_RightPad_DPadEast   :: 24;
    SteamController_LeftTrigger_Pull    :: 25;
    SteamController_LeftTrigger_Click   :: 26;
    SteamController_RightTrigger_Pull   :: 27;
    SteamController_RightTrigger_Click  :: 28;
    SteamController_LeftStick_Move      :: 29;
    SteamController_LeftStick_Click     :: 30;
    SteamController_LeftStick_DPadNorth :: 31;
    SteamController_LeftStick_DPadSouth :: 32;
    SteamController_LeftStick_DPadWest  :: 33;
    SteamController_LeftStick_DPadEast  :: 34;
    SteamController_Gyro_Move           :: 35;
    SteamController_Gyro_Pitch          :: 36;
    SteamController_Gyro_Yaw            :: 37;
    SteamController_Gyro_Roll           :: 38;
    SteamController_Reserved0           :: 39;
    SteamController_Reserved1           :: 40;
    SteamController_Reserved2           :: 41;
    SteamController_Reserved3           :: 42;
    SteamController_Reserved4           :: 43;
    SteamController_Reserved5           :: 44;
    SteamController_Reserved6           :: 45;
    SteamController_Reserved7           :: 46;
    SteamController_Reserved8           :: 47;
    SteamController_Reserved9           :: 48;
    SteamController_Reserved10          :: 49;

    PS4_X                               :: 50;
    PS4_Circle                          :: 51;
    PS4_Triangle                        :: 52;
    PS4_Square                          :: 53;
    PS4_LeftBumper                      :: 54;
    PS4_RightBumper                     :: 55;
    PS4_Options                         :: 56;
    PS4_Share                           :: 57;
    PS4_LeftPad_Touch                   :: 58;
    PS4_LeftPad_Swipe                   :: 59;
    PS4_LeftPad_Click                   :: 60;
    PS4_LeftPad_DPadNorth               :: 61;
    PS4_LeftPad_DPadSouth               :: 62;
    PS4_LeftPad_DPadWest                :: 63;
    PS4_LeftPad_DPadEast                :: 64;
    PS4_RightPad_Touch                  :: 65;
    PS4_RightPad_Swipe                  :: 66;
    PS4_RightPad_Click                  :: 67;
    PS4_RightPad_DPadNorth              :: 68;
    PS4_RightPad_DPadSouth              :: 69;
    PS4_RightPad_DPadWest               :: 70;
    PS4_RightPad_DPadEast               :: 71;
    PS4_CenterPad_Touch                 :: 72;
    PS4_CenterPad_Swipe                 :: 73;
    PS4_CenterPad_Click                 :: 74;
    PS4_CenterPad_DPadNorth             :: 75;
    PS4_CenterPad_DPadSouth             :: 76;
    PS4_CenterPad_DPadWest              :: 77;
    PS4_CenterPad_DPadEast              :: 78;
    PS4_LeftTrigger_Pull                :: 79;
    PS4_LeftTrigger_Click               :: 80;
    PS4_RightTrigger_Pull               :: 81;
    PS4_RightTrigger_Click              :: 82;
    PS4_LeftStick_Move                  :: 83;
    PS4_LeftStick_Click                 :: 84;
    PS4_LeftStick_DPadNorth             :: 85;
    PS4_LeftStick_DPadSouth             :: 86;
    PS4_LeftStick_DPadWest              :: 87;
    PS4_LeftStick_DPadEast              :: 88;
    PS4_RightStick_Move                 :: 89;
    PS4_RightStick_Click                :: 90;
    PS4_RightStick_DPadNorth            :: 91;
    PS4_RightStick_DPadSouth            :: 92;
    PS4_RightStick_DPadWest             :: 93;
    PS4_RightStick_DPadEast             :: 94;
    PS4_DPad_North                      :: 95;
    PS4_DPad_South                      :: 96;
    PS4_DPad_West                       :: 97;
    PS4_DPad_East                       :: 98;
    PS4_Gyro_Move                       :: 99;
    PS4_Gyro_Pitch                      :: 100;
    PS4_Gyro_Yaw                        :: 101;
    PS4_Gyro_Roll                       :: 102;
    PS4_DPad_Move                       :: 103;
    PS4_Reserved1                       :: 104;
    PS4_Reserved2                       :: 105;
    PS4_Reserved3                       :: 106;
    PS4_Reserved4                       :: 107;
    PS4_Reserved5                       :: 108;
    PS4_Reserved6                       :: 109;
    PS4_Reserved7                       :: 110;
    PS4_Reserved8                       :: 111;
    PS4_Reserved9                       :: 112;
    PS4_Reserved10                      :: 113;

    XBoxOne_A                           :: 114;
    XBoxOne_B                           :: 115;
    XBoxOne_X                           :: 116;
    XBoxOne_Y                           :: 117;
    XBoxOne_LeftBumper                  :: 118;
    XBoxOne_RightBumper                 :: 119;
    XBoxOne_Menu                        :: 120;
    XBoxOne_View                        :: 121;
    XBoxOne_LeftTrigger_Pull            :: 122;
    XBoxOne_LeftTrigger_Click           :: 123;
    XBoxOne_RightTrigger_Pull           :: 124;
    XBoxOne_RightTrigger_Click          :: 125;
    XBoxOne_LeftStick_Move              :: 126;
    XBoxOne_LeftStick_Click             :: 127;
    XBoxOne_LeftStick_DPadNorth         :: 128;
    XBoxOne_LeftStick_DPadSouth         :: 129;
    XBoxOne_LeftStick_DPadWest          :: 130;
    XBoxOne_LeftStick_DPadEast          :: 131;
    XBoxOne_RightStick_Move             :: 132;
    XBoxOne_RightStick_Click            :: 133;
    XBoxOne_RightStick_DPadNorth        :: 134;
    XBoxOne_RightStick_DPadSouth        :: 135;
    XBoxOne_RightStick_DPadWest         :: 136;
    XBoxOne_RightStick_DPadEast         :: 137;
    XBoxOne_DPad_North                  :: 138;
    XBoxOne_DPad_South                  :: 139;
    XBoxOne_DPad_West                   :: 140;
    XBoxOne_DPad_East                   :: 141;
    XBoxOne_DPad_Move                   :: 142;
    XBoxOne_LeftGrip_Lower              :: 143;
    XBoxOne_LeftGrip_Upper              :: 144;
    XBoxOne_RightGrip_Lower             :: 145;
    XBoxOne_RightGrip_Upper             :: 146;
    XBoxOne_Share                       :: 147;
    XBoxOne_Reserved6                   :: 148;
    XBoxOne_Reserved7                   :: 149;
    XBoxOne_Reserved8                   :: 150;
    XBoxOne_Reserved9                   :: 151;
    XBoxOne_Reserved10                  :: 152;

    XBox360_A                           :: 153;
    XBox360_B                           :: 154;
    XBox360_X                           :: 155;
    XBox360_Y                           :: 156;
    XBox360_LeftBumper                  :: 157;
    XBox360_RightBumper                 :: 158;
    XBox360_Start                       :: 159;
    XBox360_Back                        :: 160;
    XBox360_LeftTrigger_Pull            :: 161;
    XBox360_LeftTrigger_Click           :: 162;
    XBox360_RightTrigger_Pull           :: 163;
    XBox360_RightTrigger_Click          :: 164;
    XBox360_LeftStick_Move              :: 165;
    XBox360_LeftStick_Click             :: 166;
    XBox360_LeftStick_DPadNorth         :: 167;
    XBox360_LeftStick_DPadSouth         :: 168;
    XBox360_LeftStick_DPadWest          :: 169;
    XBox360_LeftStick_DPadEast          :: 170;
    XBox360_RightStick_Move             :: 171;
    XBox360_RightStick_Click            :: 172;
    XBox360_RightStick_DPadNorth        :: 173;
    XBox360_RightStick_DPadSouth        :: 174;
    XBox360_RightStick_DPadWest         :: 175;
    XBox360_RightStick_DPadEast         :: 176;
    XBox360_DPad_North                  :: 177;
    XBox360_DPad_South                  :: 178;
    XBox360_DPad_West                   :: 179;
    XBox360_DPad_East                   :: 180;
    XBox360_DPad_Move                   :: 181;
    XBox360_Reserved1                   :: 182;
    XBox360_Reserved2                   :: 183;
    XBox360_Reserved3                   :: 184;
    XBox360_Reserved4                   :: 185;
    XBox360_Reserved5                   :: 186;
    XBox360_Reserved6                   :: 187;
    XBox360_Reserved7                   :: 188;
    XBox360_Reserved8                   :: 189;
    XBox360_Reserved9                   :: 190;
    XBox360_Reserved10                  :: 191;

    Switch_A                            :: 192;
    Switch_B                            :: 193;
    Switch_X                            :: 194;
    Switch_Y                            :: 195;
    Switch_LeftBumper                   :: 196;
    Switch_RightBumper                  :: 197;
    Switch_Plus                         :: 198;
    Switch_Minus                        :: 199;
    Switch_Capture                      :: 200;
    Switch_LeftTrigger_Pull             :: 201;
    Switch_LeftTrigger_Click            :: 202;
    Switch_RightTrigger_Pull            :: 203;
    Switch_RightTrigger_Click           :: 204;
    Switch_LeftStick_Move               :: 205;
    Switch_LeftStick_Click              :: 206;
    Switch_LeftStick_DPadNorth          :: 207;
    Switch_LeftStick_DPadSouth          :: 208;
    Switch_LeftStick_DPadWest           :: 209;
    Switch_LeftStick_DPadEast           :: 210;
    Switch_RightStick_Move              :: 211;
    Switch_RightStick_Click             :: 212;
    Switch_RightStick_DPadNorth         :: 213;
    Switch_RightStick_DPadSouth         :: 214;
    Switch_RightStick_DPadWest          :: 215;
    Switch_RightStick_DPadEast          :: 216;
    Switch_DPad_North                   :: 217;
    Switch_DPad_South                   :: 218;
    Switch_DPad_West                    :: 219;
    Switch_DPad_East                    :: 220;
    Switch_ProGyro_Move                 :: 221;
    Switch_ProGyro_Pitch                :: 222;
    Switch_ProGyro_Yaw                  :: 223;
    Switch_ProGyro_Roll                 :: 224;
    Switch_DPad_Move                    :: 225;
    Switch_Reserved1                    :: 226;
    Switch_Reserved2                    :: 227;
    Switch_Reserved3                    :: 228;
    Switch_Reserved4                    :: 229;
    Switch_Reserved5                    :: 230;
    Switch_Reserved6                    :: 231;
    Switch_Reserved7                    :: 232;
    Switch_Reserved8                    :: 233;
    Switch_Reserved9                    :: 234;
    Switch_Reserved10                   :: 235;

    Switch_RightGyro_Move               :: 236;
    Switch_RightGyro_Pitch              :: 237;
    Switch_RightGyro_Yaw                :: 238;
    Switch_RightGyro_Roll               :: 239;
    Switch_LeftGyro_Move                :: 240;
    Switch_LeftGyro_Pitch               :: 241;
    Switch_LeftGyro_Yaw                 :: 242;
    Switch_LeftGyro_Roll                :: 243;
    Switch_LeftGrip_Lower               :: 244;
    Switch_LeftGrip_Upper               :: 245;
    Switch_RightGrip_Lower              :: 246;
    Switch_RightGrip_Upper              :: 247;
    Switch_JoyConButton_N               :: 248;
    Switch_JoyConButton_E               :: 249;
    Switch_JoyConButton_S               :: 250;
    Switch_JoyConButton_W               :: 251;
    Switch_Reserved15                   :: 252;
    Switch_Reserved16                   :: 253;
    Switch_Reserved17                   :: 254;
    Switch_Reserved18                   :: 255;
    Switch_Reserved19                   :: 256;
    Switch_Reserved20                   :: 257;

    PS5_X                               :: 258;
    PS5_Circle                          :: 259;
    PS5_Triangle                        :: 260;
    PS5_Square                          :: 261;
    PS5_LeftBumper                      :: 262;
    PS5_RightBumper                     :: 263;
    PS5_Option                          :: 264;
    PS5_Create                          :: 265;
    PS5_Mute                            :: 266;
    PS5_LeftPad_Touch                   :: 267;
    PS5_LeftPad_Swipe                   :: 268;
    PS5_LeftPad_Click                   :: 269;
    PS5_LeftPad_DPadNorth               :: 270;
    PS5_LeftPad_DPadSouth               :: 271;
    PS5_LeftPad_DPadWest                :: 272;
    PS5_LeftPad_DPadEast                :: 273;
    PS5_RightPad_Touch                  :: 274;
    PS5_RightPad_Swipe                  :: 275;
    PS5_RightPad_Click                  :: 276;
    PS5_RightPad_DPadNorth              :: 277;
    PS5_RightPad_DPadSouth              :: 278;
    PS5_RightPad_DPadWest               :: 279;
    PS5_RightPad_DPadEast               :: 280;
    PS5_CenterPad_Touch                 :: 281;
    PS5_CenterPad_Swipe                 :: 282;
    PS5_CenterPad_Click                 :: 283;
    PS5_CenterPad_DPadNorth             :: 284;
    PS5_CenterPad_DPadSouth             :: 285;
    PS5_CenterPad_DPadWest              :: 286;
    PS5_CenterPad_DPadEast              :: 287;
    PS5_LeftTrigger_Pull                :: 288;
    PS5_LeftTrigger_Click               :: 289;
    PS5_RightTrigger_Pull               :: 290;
    PS5_RightTrigger_Click              :: 291;
    PS5_LeftStick_Move                  :: 292;
    PS5_LeftStick_Click                 :: 293;
    PS5_LeftStick_DPadNorth             :: 294;
    PS5_LeftStick_DPadSouth             :: 295;
    PS5_LeftStick_DPadWest              :: 296;
    PS5_LeftStick_DPadEast              :: 297;
    PS5_RightStick_Move                 :: 298;
    PS5_RightStick_Click                :: 299;
    PS5_RightStick_DPadNorth            :: 300;
    PS5_RightStick_DPadSouth            :: 301;
    PS5_RightStick_DPadWest             :: 302;
    PS5_RightStick_DPadEast             :: 303;
    PS5_DPad_North                      :: 304;
    PS5_DPad_South                      :: 305;
    PS5_DPad_West                       :: 306;
    PS5_DPad_East                       :: 307;
    PS5_Gyro_Move                       :: 308;
    PS5_Gyro_Pitch                      :: 309;
    PS5_Gyro_Yaw                        :: 310;
    PS5_Gyro_Roll                       :: 311;
    PS5_DPad_Move                       :: 312;
    PS5_LeftGrip                        :: 313;
    PS5_RightGrip                       :: 314;
    PS5_LeftFn                          :: 315;
    PS5_RightFn                         :: 316;
    PS5_Reserved5                       :: 317;
    PS5_Reserved6                       :: 318;
    PS5_Reserved7                       :: 319;
    PS5_Reserved8                       :: 320;
    PS5_Reserved9                       :: 321;
    PS5_Reserved10                      :: 322;
    PS5_Reserved11                      :: 323;
    PS5_Reserved12                      :: 324;
    PS5_Reserved13                      :: 325;
    PS5_Reserved14                      :: 326;
    PS5_Reserved15                      :: 327;
    PS5_Reserved16                      :: 328;
    PS5_Reserved17                      :: 329;
    PS5_Reserved18                      :: 330;
    PS5_Reserved19                      :: 331;
    PS5_Reserved20                      :: 332;

    SteamDeck_A                         :: 333;
    SteamDeck_B                         :: 334;
    SteamDeck_X                         :: 335;
    SteamDeck_Y                         :: 336;
    SteamDeck_L1                        :: 337;
    SteamDeck_R1                        :: 338;
    SteamDeck_Menu                      :: 339;
    SteamDeck_View                      :: 340;
    SteamDeck_LeftPad_Touch             :: 341;
    SteamDeck_LeftPad_Swipe             :: 342;
    SteamDeck_LeftPad_Click             :: 343;
    SteamDeck_LeftPad_DPadNorth         :: 344;
    SteamDeck_LeftPad_DPadSouth         :: 345;
    SteamDeck_LeftPad_DPadWest          :: 346;
    SteamDeck_LeftPad_DPadEast          :: 347;
    SteamDeck_RightPad_Touch            :: 348;
    SteamDeck_RightPad_Swipe            :: 349;
    SteamDeck_RightPad_Click            :: 350;
    SteamDeck_RightPad_DPadNorth        :: 351;
    SteamDeck_RightPad_DPadSouth        :: 352;
    SteamDeck_RightPad_DPadWest         :: 353;
    SteamDeck_RightPad_DPadEast         :: 354;
    SteamDeck_L2_SoftPull               :: 355;
    SteamDeck_L2                        :: 356;
    SteamDeck_R2_SoftPull               :: 357;
    SteamDeck_R2                        :: 358;
    SteamDeck_LeftStick_Move            :: 359;
    SteamDeck_L3                        :: 360;
    SteamDeck_LeftStick_DPadNorth       :: 361;
    SteamDeck_LeftStick_DPadSouth       :: 362;
    SteamDeck_LeftStick_DPadWest        :: 363;
    SteamDeck_LeftStick_DPadEast        :: 364;
    SteamDeck_LeftStick_Touch           :: 365;
    SteamDeck_RightStick_Move           :: 366;
    SteamDeck_R3                        :: 367;
    SteamDeck_RightStick_DPadNorth      :: 368;
    SteamDeck_RightStick_DPadSouth      :: 369;
    SteamDeck_RightStick_DPadWest       :: 370;
    SteamDeck_RightStick_DPadEast       :: 371;
    SteamDeck_RightStick_Touch          :: 372;
    SteamDeck_L4                        :: 373;
    SteamDeck_R4                        :: 374;
    SteamDeck_L5                        :: 375;
    SteamDeck_R5                        :: 376;
    SteamDeck_DPad_Move                 :: 377;
    SteamDeck_DPad_North                :: 378;
    SteamDeck_DPad_South                :: 379;
    SteamDeck_DPad_West                 :: 380;
    SteamDeck_DPad_East                 :: 381;
    SteamDeck_Gyro_Move                 :: 382;
    SteamDeck_Gyro_Pitch                :: 383;
    SteamDeck_Gyro_Yaw                  :: 384;
    SteamDeck_Gyro_Roll                 :: 385;
    SteamDeck_Reserved1                 :: 386;
    SteamDeck_Reserved2                 :: 387;
    SteamDeck_Reserved3                 :: 388;
    SteamDeck_Reserved4                 :: 389;
    SteamDeck_Reserved5                 :: 390;
    SteamDeck_Reserved6                 :: 391;
    SteamDeck_Reserved7                 :: 392;
    SteamDeck_Reserved8                 :: 393;
    SteamDeck_Reserved9                 :: 394;
    SteamDeck_Reserved10                :: 395;
    SteamDeck_Reserved11                :: 396;
    SteamDeck_Reserved12                :: 397;
    SteamDeck_Reserved13                :: 398;
    SteamDeck_Reserved14                :: 399;
    SteamDeck_Reserved15                :: 400;
    SteamDeck_Reserved16                :: 401;
    SteamDeck_Reserved17                :: 402;
    SteamDeck_Reserved18                :: 403;
    SteamDeck_Reserved19                :: 404;
    SteamDeck_Reserved20                :: 405;

    Count                               :: 406;
    MaximumPossibleValue                :: 32767;

    k_EInputActionOrigin_None                                :: None;
    k_EInputActionOrigin_SteamController_A                   :: SteamController_A;
    k_EInputActionOrigin_SteamController_B                   :: SteamController_B;
    k_EInputActionOrigin_SteamController_X                   :: SteamController_X;
    k_EInputActionOrigin_SteamController_Y                   :: SteamController_Y;
    k_EInputActionOrigin_SteamController_LeftBumper          :: SteamController_LeftBumper;
    k_EInputActionOrigin_SteamController_RightBumper         :: SteamController_RightBumper;
    k_EInputActionOrigin_SteamController_LeftGrip            :: SteamController_LeftGrip;
    k_EInputActionOrigin_SteamController_RightGrip           :: SteamController_RightGrip;
    k_EInputActionOrigin_SteamController_Start               :: SteamController_Start;
    k_EInputActionOrigin_SteamController_Back                :: SteamController_Back;
    k_EInputActionOrigin_SteamController_LeftPad_Touch       :: SteamController_LeftPad_Touch;
    k_EInputActionOrigin_SteamController_LeftPad_Swipe       :: SteamController_LeftPad_Swipe;
    k_EInputActionOrigin_SteamController_LeftPad_Click       :: SteamController_LeftPad_Click;
    k_EInputActionOrigin_SteamController_LeftPad_DPadNorth   :: SteamController_LeftPad_DPadNorth;
    k_EInputActionOrigin_SteamController_LeftPad_DPadSouth   :: SteamController_LeftPad_DPadSouth;
    k_EInputActionOrigin_SteamController_LeftPad_DPadWest    :: SteamController_LeftPad_DPadWest;
    k_EInputActionOrigin_SteamController_LeftPad_DPadEast    :: SteamController_LeftPad_DPadEast;
    k_EInputActionOrigin_SteamController_RightPad_Touch      :: SteamController_RightPad_Touch;
    k_EInputActionOrigin_SteamController_RightPad_Swipe      :: SteamController_RightPad_Swipe;
    k_EInputActionOrigin_SteamController_RightPad_Click      :: SteamController_RightPad_Click;
    k_EInputActionOrigin_SteamController_RightPad_DPadNorth  :: SteamController_RightPad_DPadNorth;
    k_EInputActionOrigin_SteamController_RightPad_DPadSouth  :: SteamController_RightPad_DPadSouth;
    k_EInputActionOrigin_SteamController_RightPad_DPadWest   :: SteamController_RightPad_DPadWest;
    k_EInputActionOrigin_SteamController_RightPad_DPadEast   :: SteamController_RightPad_DPadEast;
    k_EInputActionOrigin_SteamController_LeftTrigger_Pull    :: SteamController_LeftTrigger_Pull;
    k_EInputActionOrigin_SteamController_LeftTrigger_Click   :: SteamController_LeftTrigger_Click;
    k_EInputActionOrigin_SteamController_RightTrigger_Pull   :: SteamController_RightTrigger_Pull;
    k_EInputActionOrigin_SteamController_RightTrigger_Click  :: SteamController_RightTrigger_Click;
    k_EInputActionOrigin_SteamController_LeftStick_Move      :: SteamController_LeftStick_Move;
    k_EInputActionOrigin_SteamController_LeftStick_Click     :: SteamController_LeftStick_Click;
    k_EInputActionOrigin_SteamController_LeftStick_DPadNorth :: SteamController_LeftStick_DPadNorth;
    k_EInputActionOrigin_SteamController_LeftStick_DPadSouth :: SteamController_LeftStick_DPadSouth;
    k_EInputActionOrigin_SteamController_LeftStick_DPadWest  :: SteamController_LeftStick_DPadWest;
    k_EInputActionOrigin_SteamController_LeftStick_DPadEast  :: SteamController_LeftStick_DPadEast;
    k_EInputActionOrigin_SteamController_Gyro_Move           :: SteamController_Gyro_Move;
    k_EInputActionOrigin_SteamController_Gyro_Pitch          :: SteamController_Gyro_Pitch;
    k_EInputActionOrigin_SteamController_Gyro_Yaw            :: SteamController_Gyro_Yaw;
    k_EInputActionOrigin_SteamController_Gyro_Roll           :: SteamController_Gyro_Roll;
    k_EInputActionOrigin_SteamController_Reserved0           :: SteamController_Reserved0;
    k_EInputActionOrigin_SteamController_Reserved1           :: SteamController_Reserved1;
    k_EInputActionOrigin_SteamController_Reserved2           :: SteamController_Reserved2;
    k_EInputActionOrigin_SteamController_Reserved3           :: SteamController_Reserved3;
    k_EInputActionOrigin_SteamController_Reserved4           :: SteamController_Reserved4;
    k_EInputActionOrigin_SteamController_Reserved5           :: SteamController_Reserved5;
    k_EInputActionOrigin_SteamController_Reserved6           :: SteamController_Reserved6;
    k_EInputActionOrigin_SteamController_Reserved7           :: SteamController_Reserved7;
    k_EInputActionOrigin_SteamController_Reserved8           :: SteamController_Reserved8;
    k_EInputActionOrigin_SteamController_Reserved9           :: SteamController_Reserved9;
    k_EInputActionOrigin_SteamController_Reserved10          :: SteamController_Reserved10;

    k_EInputActionOrigin_PS4_X                               :: PS4_X;
    k_EInputActionOrigin_PS4_Circle                          :: PS4_Circle;
    k_EInputActionOrigin_PS4_Triangle                        :: PS4_Triangle;
    k_EInputActionOrigin_PS4_Square                          :: PS4_Square;
    k_EInputActionOrigin_PS4_LeftBumper                      :: PS4_LeftBumper;
    k_EInputActionOrigin_PS4_RightBumper                     :: PS4_RightBumper;
    k_EInputActionOrigin_PS4_Options                         :: PS4_Options;
    k_EInputActionOrigin_PS4_Share                           :: PS4_Share;
    k_EInputActionOrigin_PS4_LeftPad_Touch                   :: PS4_LeftPad_Touch;
    k_EInputActionOrigin_PS4_LeftPad_Swipe                   :: PS4_LeftPad_Swipe;
    k_EInputActionOrigin_PS4_LeftPad_Click                   :: PS4_LeftPad_Click;
    k_EInputActionOrigin_PS4_LeftPad_DPadNorth               :: PS4_LeftPad_DPadNorth;
    k_EInputActionOrigin_PS4_LeftPad_DPadSouth               :: PS4_LeftPad_DPadSouth;
    k_EInputActionOrigin_PS4_LeftPad_DPadWest                :: PS4_LeftPad_DPadWest;
    k_EInputActionOrigin_PS4_LeftPad_DPadEast                :: PS4_LeftPad_DPadEast;
    k_EInputActionOrigin_PS4_RightPad_Touch                  :: PS4_RightPad_Touch;
    k_EInputActionOrigin_PS4_RightPad_Swipe                  :: PS4_RightPad_Swipe;
    k_EInputActionOrigin_PS4_RightPad_Click                  :: PS4_RightPad_Click;
    k_EInputActionOrigin_PS4_RightPad_DPadNorth              :: PS4_RightPad_DPadNorth;
    k_EInputActionOrigin_PS4_RightPad_DPadSouth              :: PS4_RightPad_DPadSouth;
    k_EInputActionOrigin_PS4_RightPad_DPadWest               :: PS4_RightPad_DPadWest;
    k_EInputActionOrigin_PS4_RightPad_DPadEast               :: PS4_RightPad_DPadEast;
    k_EInputActionOrigin_PS4_CenterPad_Touch                 :: PS4_CenterPad_Touch;
    k_EInputActionOrigin_PS4_CenterPad_Swipe                 :: PS4_CenterPad_Swipe;
    k_EInputActionOrigin_PS4_CenterPad_Click                 :: PS4_CenterPad_Click;
    k_EInputActionOrigin_PS4_CenterPad_DPadNorth             :: PS4_CenterPad_DPadNorth;
    k_EInputActionOrigin_PS4_CenterPad_DPadSouth             :: PS4_CenterPad_DPadSouth;
    k_EInputActionOrigin_PS4_CenterPad_DPadWest              :: PS4_CenterPad_DPadWest;
    k_EInputActionOrigin_PS4_CenterPad_DPadEast              :: PS4_CenterPad_DPadEast;
    k_EInputActionOrigin_PS4_LeftTrigger_Pull                :: PS4_LeftTrigger_Pull;
    k_EInputActionOrigin_PS4_LeftTrigger_Click               :: PS4_LeftTrigger_Click;
    k_EInputActionOrigin_PS4_RightTrigger_Pull               :: PS4_RightTrigger_Pull;
    k_EInputActionOrigin_PS4_RightTrigger_Click              :: PS4_RightTrigger_Click;
    k_EInputActionOrigin_PS4_LeftStick_Move                  :: PS4_LeftStick_Move;
    k_EInputActionOrigin_PS4_LeftStick_Click                 :: PS4_LeftStick_Click;
    k_EInputActionOrigin_PS4_LeftStick_DPadNorth             :: PS4_LeftStick_DPadNorth;
    k_EInputActionOrigin_PS4_LeftStick_DPadSouth             :: PS4_LeftStick_DPadSouth;
    k_EInputActionOrigin_PS4_LeftStick_DPadWest              :: PS4_LeftStick_DPadWest;
    k_EInputActionOrigin_PS4_LeftStick_DPadEast              :: PS4_LeftStick_DPadEast;
    k_EInputActionOrigin_PS4_RightStick_Move                 :: PS4_RightStick_Move;
    k_EInputActionOrigin_PS4_RightStick_Click                :: PS4_RightStick_Click;
    k_EInputActionOrigin_PS4_RightStick_DPadNorth            :: PS4_RightStick_DPadNorth;
    k_EInputActionOrigin_PS4_RightStick_DPadSouth            :: PS4_RightStick_DPadSouth;
    k_EInputActionOrigin_PS4_RightStick_DPadWest             :: PS4_RightStick_DPadWest;
    k_EInputActionOrigin_PS4_RightStick_DPadEast             :: PS4_RightStick_DPadEast;
    k_EInputActionOrigin_PS4_DPad_North                      :: PS4_DPad_North;
    k_EInputActionOrigin_PS4_DPad_South                      :: PS4_DPad_South;
    k_EInputActionOrigin_PS4_DPad_West                       :: PS4_DPad_West;
    k_EInputActionOrigin_PS4_DPad_East                       :: PS4_DPad_East;
    k_EInputActionOrigin_PS4_Gyro_Move                       :: PS4_Gyro_Move;
    k_EInputActionOrigin_PS4_Gyro_Pitch                      :: PS4_Gyro_Pitch;
    k_EInputActionOrigin_PS4_Gyro_Yaw                        :: PS4_Gyro_Yaw;
    k_EInputActionOrigin_PS4_Gyro_Roll                       :: PS4_Gyro_Roll;
    k_EInputActionOrigin_PS4_DPad_Move                       :: PS4_DPad_Move;
    k_EInputActionOrigin_PS4_Reserved1                       :: PS4_Reserved1;
    k_EInputActionOrigin_PS4_Reserved2                       :: PS4_Reserved2;
    k_EInputActionOrigin_PS4_Reserved3                       :: PS4_Reserved3;
    k_EInputActionOrigin_PS4_Reserved4                       :: PS4_Reserved4;
    k_EInputActionOrigin_PS4_Reserved5                       :: PS4_Reserved5;
    k_EInputActionOrigin_PS4_Reserved6                       :: PS4_Reserved6;
    k_EInputActionOrigin_PS4_Reserved7                       :: PS4_Reserved7;
    k_EInputActionOrigin_PS4_Reserved8                       :: PS4_Reserved8;
    k_EInputActionOrigin_PS4_Reserved9                       :: PS4_Reserved9;
    k_EInputActionOrigin_PS4_Reserved10                      :: PS4_Reserved10;

    k_EInputActionOrigin_XBoxOne_A                           :: XBoxOne_A;
    k_EInputActionOrigin_XBoxOne_B                           :: XBoxOne_B;
    k_EInputActionOrigin_XBoxOne_X                           :: XBoxOne_X;
    k_EInputActionOrigin_XBoxOne_Y                           :: XBoxOne_Y;
    k_EInputActionOrigin_XBoxOne_LeftBumper                  :: XBoxOne_LeftBumper;
    k_EInputActionOrigin_XBoxOne_RightBumper                 :: XBoxOne_RightBumper;
    k_EInputActionOrigin_XBoxOne_Menu                        :: XBoxOne_Menu;
    k_EInputActionOrigin_XBoxOne_View                        :: XBoxOne_View;
    k_EInputActionOrigin_XBoxOne_LeftTrigger_Pull            :: XBoxOne_LeftTrigger_Pull;
    k_EInputActionOrigin_XBoxOne_LeftTrigger_Click           :: XBoxOne_LeftTrigger_Click;
    k_EInputActionOrigin_XBoxOne_RightTrigger_Pull           :: XBoxOne_RightTrigger_Pull;
    k_EInputActionOrigin_XBoxOne_RightTrigger_Click          :: XBoxOne_RightTrigger_Click;
    k_EInputActionOrigin_XBoxOne_LeftStick_Move              :: XBoxOne_LeftStick_Move;
    k_EInputActionOrigin_XBoxOne_LeftStick_Click             :: XBoxOne_LeftStick_Click;
    k_EInputActionOrigin_XBoxOne_LeftStick_DPadNorth         :: XBoxOne_LeftStick_DPadNorth;
    k_EInputActionOrigin_XBoxOne_LeftStick_DPadSouth         :: XBoxOne_LeftStick_DPadSouth;
    k_EInputActionOrigin_XBoxOne_LeftStick_DPadWest          :: XBoxOne_LeftStick_DPadWest;
    k_EInputActionOrigin_XBoxOne_LeftStick_DPadEast          :: XBoxOne_LeftStick_DPadEast;
    k_EInputActionOrigin_XBoxOne_RightStick_Move             :: XBoxOne_RightStick_Move;
    k_EInputActionOrigin_XBoxOne_RightStick_Click            :: XBoxOne_RightStick_Click;
    k_EInputActionOrigin_XBoxOne_RightStick_DPadNorth        :: XBoxOne_RightStick_DPadNorth;
    k_EInputActionOrigin_XBoxOne_RightStick_DPadSouth        :: XBoxOne_RightStick_DPadSouth;
    k_EInputActionOrigin_XBoxOne_RightStick_DPadWest         :: XBoxOne_RightStick_DPadWest;
    k_EInputActionOrigin_XBoxOne_RightStick_DPadEast         :: XBoxOne_RightStick_DPadEast;
    k_EInputActionOrigin_XBoxOne_DPad_North                  :: XBoxOne_DPad_North;
    k_EInputActionOrigin_XBoxOne_DPad_South                  :: XBoxOne_DPad_South;
    k_EInputActionOrigin_XBoxOne_DPad_West                   :: XBoxOne_DPad_West;
    k_EInputActionOrigin_XBoxOne_DPad_East                   :: XBoxOne_DPad_East;
    k_EInputActionOrigin_XBoxOne_DPad_Move                   :: XBoxOne_DPad_Move;
    k_EInputActionOrigin_XBoxOne_LeftGrip_Lower              :: XBoxOne_LeftGrip_Lower;
    k_EInputActionOrigin_XBoxOne_LeftGrip_Upper              :: XBoxOne_LeftGrip_Upper;
    k_EInputActionOrigin_XBoxOne_RightGrip_Lower             :: XBoxOne_RightGrip_Lower;
    k_EInputActionOrigin_XBoxOne_RightGrip_Upper             :: XBoxOne_RightGrip_Upper;
    k_EInputActionOrigin_XBoxOne_Share                       :: XBoxOne_Share;
    k_EInputActionOrigin_XBoxOne_Reserved6                   :: XBoxOne_Reserved6;
    k_EInputActionOrigin_XBoxOne_Reserved7                   :: XBoxOne_Reserved7;
    k_EInputActionOrigin_XBoxOne_Reserved8                   :: XBoxOne_Reserved8;
    k_EInputActionOrigin_XBoxOne_Reserved9                   :: XBoxOne_Reserved9;
    k_EInputActionOrigin_XBoxOne_Reserved10                  :: XBoxOne_Reserved10;

    k_EInputActionOrigin_XBox360_A                           :: XBox360_A;
    k_EInputActionOrigin_XBox360_B                           :: XBox360_B;
    k_EInputActionOrigin_XBox360_X                           :: XBox360_X;
    k_EInputActionOrigin_XBox360_Y                           :: XBox360_Y;
    k_EInputActionOrigin_XBox360_LeftBumper                  :: XBox360_LeftBumper;
    k_EInputActionOrigin_XBox360_RightBumper                 :: XBox360_RightBumper;
    k_EInputActionOrigin_XBox360_Start                       :: XBox360_Start;
    k_EInputActionOrigin_XBox360_Back                        :: XBox360_Back;
    k_EInputActionOrigin_XBox360_LeftTrigger_Pull            :: XBox360_LeftTrigger_Pull;
    k_EInputActionOrigin_XBox360_LeftTrigger_Click           :: XBox360_LeftTrigger_Click;
    k_EInputActionOrigin_XBox360_RightTrigger_Pull           :: XBox360_RightTrigger_Pull;
    k_EInputActionOrigin_XBox360_RightTrigger_Click          :: XBox360_RightTrigger_Click;
    k_EInputActionOrigin_XBox360_LeftStick_Move              :: XBox360_LeftStick_Move;
    k_EInputActionOrigin_XBox360_LeftStick_Click             :: XBox360_LeftStick_Click;
    k_EInputActionOrigin_XBox360_LeftStick_DPadNorth         :: XBox360_LeftStick_DPadNorth;
    k_EInputActionOrigin_XBox360_LeftStick_DPadSouth         :: XBox360_LeftStick_DPadSouth;
    k_EInputActionOrigin_XBox360_LeftStick_DPadWest          :: XBox360_LeftStick_DPadWest;
    k_EInputActionOrigin_XBox360_LeftStick_DPadEast          :: XBox360_LeftStick_DPadEast;
    k_EInputActionOrigin_XBox360_RightStick_Move             :: XBox360_RightStick_Move;
    k_EInputActionOrigin_XBox360_RightStick_Click            :: XBox360_RightStick_Click;
    k_EInputActionOrigin_XBox360_RightStick_DPadNorth        :: XBox360_RightStick_DPadNorth;
    k_EInputActionOrigin_XBox360_RightStick_DPadSouth        :: XBox360_RightStick_DPadSouth;
    k_EInputActionOrigin_XBox360_RightStick_DPadWest         :: XBox360_RightStick_DPadWest;
    k_EInputActionOrigin_XBox360_RightStick_DPadEast         :: XBox360_RightStick_DPadEast;
    k_EInputActionOrigin_XBox360_DPad_North                  :: XBox360_DPad_North;
    k_EInputActionOrigin_XBox360_DPad_South                  :: XBox360_DPad_South;
    k_EInputActionOrigin_XBox360_DPad_West                   :: XBox360_DPad_West;
    k_EInputActionOrigin_XBox360_DPad_East                   :: XBox360_DPad_East;
    k_EInputActionOrigin_XBox360_DPad_Move                   :: XBox360_DPad_Move;
    k_EInputActionOrigin_XBox360_Reserved1                   :: XBox360_Reserved1;
    k_EInputActionOrigin_XBox360_Reserved2                   :: XBox360_Reserved2;
    k_EInputActionOrigin_XBox360_Reserved3                   :: XBox360_Reserved3;
    k_EInputActionOrigin_XBox360_Reserved4                   :: XBox360_Reserved4;
    k_EInputActionOrigin_XBox360_Reserved5                   :: XBox360_Reserved5;
    k_EInputActionOrigin_XBox360_Reserved6                   :: XBox360_Reserved6;
    k_EInputActionOrigin_XBox360_Reserved7                   :: XBox360_Reserved7;
    k_EInputActionOrigin_XBox360_Reserved8                   :: XBox360_Reserved8;
    k_EInputActionOrigin_XBox360_Reserved9                   :: XBox360_Reserved9;
    k_EInputActionOrigin_XBox360_Reserved10                  :: XBox360_Reserved10;

    k_EInputActionOrigin_Switch_A                            :: Switch_A;
    k_EInputActionOrigin_Switch_B                            :: Switch_B;
    k_EInputActionOrigin_Switch_X                            :: Switch_X;
    k_EInputActionOrigin_Switch_Y                            :: Switch_Y;
    k_EInputActionOrigin_Switch_LeftBumper                   :: Switch_LeftBumper;
    k_EInputActionOrigin_Switch_RightBumper                  :: Switch_RightBumper;
    k_EInputActionOrigin_Switch_Plus                         :: Switch_Plus;
    k_EInputActionOrigin_Switch_Minus                        :: Switch_Minus;
    k_EInputActionOrigin_Switch_Capture                      :: Switch_Capture;
    k_EInputActionOrigin_Switch_LeftTrigger_Pull             :: Switch_LeftTrigger_Pull;
    k_EInputActionOrigin_Switch_LeftTrigger_Click            :: Switch_LeftTrigger_Click;
    k_EInputActionOrigin_Switch_RightTrigger_Pull            :: Switch_RightTrigger_Pull;
    k_EInputActionOrigin_Switch_RightTrigger_Click           :: Switch_RightTrigger_Click;
    k_EInputActionOrigin_Switch_LeftStick_Move               :: Switch_LeftStick_Move;
    k_EInputActionOrigin_Switch_LeftStick_Click              :: Switch_LeftStick_Click;
    k_EInputActionOrigin_Switch_LeftStick_DPadNorth          :: Switch_LeftStick_DPadNorth;
    k_EInputActionOrigin_Switch_LeftStick_DPadSouth          :: Switch_LeftStick_DPadSouth;
    k_EInputActionOrigin_Switch_LeftStick_DPadWest           :: Switch_LeftStick_DPadWest;
    k_EInputActionOrigin_Switch_LeftStick_DPadEast           :: Switch_LeftStick_DPadEast;
    k_EInputActionOrigin_Switch_RightStick_Move              :: Switch_RightStick_Move;
    k_EInputActionOrigin_Switch_RightStick_Click             :: Switch_RightStick_Click;
    k_EInputActionOrigin_Switch_RightStick_DPadNorth         :: Switch_RightStick_DPadNorth;
    k_EInputActionOrigin_Switch_RightStick_DPadSouth         :: Switch_RightStick_DPadSouth;
    k_EInputActionOrigin_Switch_RightStick_DPadWest          :: Switch_RightStick_DPadWest;
    k_EInputActionOrigin_Switch_RightStick_DPadEast          :: Switch_RightStick_DPadEast;
    k_EInputActionOrigin_Switch_DPad_North                   :: Switch_DPad_North;
    k_EInputActionOrigin_Switch_DPad_South                   :: Switch_DPad_South;
    k_EInputActionOrigin_Switch_DPad_West                    :: Switch_DPad_West;
    k_EInputActionOrigin_Switch_DPad_East                    :: Switch_DPad_East;
    k_EInputActionOrigin_Switch_ProGyro_Move                 :: Switch_ProGyro_Move;
    k_EInputActionOrigin_Switch_ProGyro_Pitch                :: Switch_ProGyro_Pitch;
    k_EInputActionOrigin_Switch_ProGyro_Yaw                  :: Switch_ProGyro_Yaw;
    k_EInputActionOrigin_Switch_ProGyro_Roll                 :: Switch_ProGyro_Roll;
    k_EInputActionOrigin_Switch_DPad_Move                    :: Switch_DPad_Move;
    k_EInputActionOrigin_Switch_Reserved1                    :: Switch_Reserved1;
    k_EInputActionOrigin_Switch_Reserved2                    :: Switch_Reserved2;
    k_EInputActionOrigin_Switch_Reserved3                    :: Switch_Reserved3;
    k_EInputActionOrigin_Switch_Reserved4                    :: Switch_Reserved4;
    k_EInputActionOrigin_Switch_Reserved5                    :: Switch_Reserved5;
    k_EInputActionOrigin_Switch_Reserved6                    :: Switch_Reserved6;
    k_EInputActionOrigin_Switch_Reserved7                    :: Switch_Reserved7;
    k_EInputActionOrigin_Switch_Reserved8                    :: Switch_Reserved8;
    k_EInputActionOrigin_Switch_Reserved9                    :: Switch_Reserved9;
    k_EInputActionOrigin_Switch_Reserved10                   :: Switch_Reserved10;

    k_EInputActionOrigin_Switch_RightGyro_Move               :: Switch_RightGyro_Move;
    k_EInputActionOrigin_Switch_RightGyro_Pitch              :: Switch_RightGyro_Pitch;
    k_EInputActionOrigin_Switch_RightGyro_Yaw                :: Switch_RightGyro_Yaw;
    k_EInputActionOrigin_Switch_RightGyro_Roll               :: Switch_RightGyro_Roll;
    k_EInputActionOrigin_Switch_LeftGyro_Move                :: Switch_LeftGyro_Move;
    k_EInputActionOrigin_Switch_LeftGyro_Pitch               :: Switch_LeftGyro_Pitch;
    k_EInputActionOrigin_Switch_LeftGyro_Yaw                 :: Switch_LeftGyro_Yaw;
    k_EInputActionOrigin_Switch_LeftGyro_Roll                :: Switch_LeftGyro_Roll;
    k_EInputActionOrigin_Switch_LeftGrip_Lower               :: Switch_LeftGrip_Lower;
    k_EInputActionOrigin_Switch_LeftGrip_Upper               :: Switch_LeftGrip_Upper;
    k_EInputActionOrigin_Switch_RightGrip_Lower              :: Switch_RightGrip_Lower;
    k_EInputActionOrigin_Switch_RightGrip_Upper              :: Switch_RightGrip_Upper;
    k_EInputActionOrigin_Switch_JoyConButton_N               :: Switch_JoyConButton_N;
    k_EInputActionOrigin_Switch_JoyConButton_E               :: Switch_JoyConButton_E;
    k_EInputActionOrigin_Switch_JoyConButton_S               :: Switch_JoyConButton_S;
    k_EInputActionOrigin_Switch_JoyConButton_W               :: Switch_JoyConButton_W;
    k_EInputActionOrigin_Switch_Reserved15                   :: Switch_Reserved15;
    k_EInputActionOrigin_Switch_Reserved16                   :: Switch_Reserved16;
    k_EInputActionOrigin_Switch_Reserved17                   :: Switch_Reserved17;
    k_EInputActionOrigin_Switch_Reserved18                   :: Switch_Reserved18;
    k_EInputActionOrigin_Switch_Reserved19                   :: Switch_Reserved19;
    k_EInputActionOrigin_Switch_Reserved20                   :: Switch_Reserved20;

    k_EInputActionOrigin_PS5_X                               :: PS5_X;
    k_EInputActionOrigin_PS5_Circle                          :: PS5_Circle;
    k_EInputActionOrigin_PS5_Triangle                        :: PS5_Triangle;
    k_EInputActionOrigin_PS5_Square                          :: PS5_Square;
    k_EInputActionOrigin_PS5_LeftBumper                      :: PS5_LeftBumper;
    k_EInputActionOrigin_PS5_RightBumper                     :: PS5_RightBumper;
    k_EInputActionOrigin_PS5_Option                          :: PS5_Option;
    k_EInputActionOrigin_PS5_Create                          :: PS5_Create;
    k_EInputActionOrigin_PS5_Mute                            :: PS5_Mute;
    k_EInputActionOrigin_PS5_LeftPad_Touch                   :: PS5_LeftPad_Touch;
    k_EInputActionOrigin_PS5_LeftPad_Swipe                   :: PS5_LeftPad_Swipe;
    k_EInputActionOrigin_PS5_LeftPad_Click                   :: PS5_LeftPad_Click;
    k_EInputActionOrigin_PS5_LeftPad_DPadNorth               :: PS5_LeftPad_DPadNorth;
    k_EInputActionOrigin_PS5_LeftPad_DPadSouth               :: PS5_LeftPad_DPadSouth;
    k_EInputActionOrigin_PS5_LeftPad_DPadWest                :: PS5_LeftPad_DPadWest;
    k_EInputActionOrigin_PS5_LeftPad_DPadEast                :: PS5_LeftPad_DPadEast;
    k_EInputActionOrigin_PS5_RightPad_Touch                  :: PS5_RightPad_Touch;
    k_EInputActionOrigin_PS5_RightPad_Swipe                  :: PS5_RightPad_Swipe;
    k_EInputActionOrigin_PS5_RightPad_Click                  :: PS5_RightPad_Click;
    k_EInputActionOrigin_PS5_RightPad_DPadNorth              :: PS5_RightPad_DPadNorth;
    k_EInputActionOrigin_PS5_RightPad_DPadSouth              :: PS5_RightPad_DPadSouth;
    k_EInputActionOrigin_PS5_RightPad_DPadWest               :: PS5_RightPad_DPadWest;
    k_EInputActionOrigin_PS5_RightPad_DPadEast               :: PS5_RightPad_DPadEast;
    k_EInputActionOrigin_PS5_CenterPad_Touch                 :: PS5_CenterPad_Touch;
    k_EInputActionOrigin_PS5_CenterPad_Swipe                 :: PS5_CenterPad_Swipe;
    k_EInputActionOrigin_PS5_CenterPad_Click                 :: PS5_CenterPad_Click;
    k_EInputActionOrigin_PS5_CenterPad_DPadNorth             :: PS5_CenterPad_DPadNorth;
    k_EInputActionOrigin_PS5_CenterPad_DPadSouth             :: PS5_CenterPad_DPadSouth;
    k_EInputActionOrigin_PS5_CenterPad_DPadWest              :: PS5_CenterPad_DPadWest;
    k_EInputActionOrigin_PS5_CenterPad_DPadEast              :: PS5_CenterPad_DPadEast;
    k_EInputActionOrigin_PS5_LeftTrigger_Pull                :: PS5_LeftTrigger_Pull;
    k_EInputActionOrigin_PS5_LeftTrigger_Click               :: PS5_LeftTrigger_Click;
    k_EInputActionOrigin_PS5_RightTrigger_Pull               :: PS5_RightTrigger_Pull;
    k_EInputActionOrigin_PS5_RightTrigger_Click              :: PS5_RightTrigger_Click;
    k_EInputActionOrigin_PS5_LeftStick_Move                  :: PS5_LeftStick_Move;
    k_EInputActionOrigin_PS5_LeftStick_Click                 :: PS5_LeftStick_Click;
    k_EInputActionOrigin_PS5_LeftStick_DPadNorth             :: PS5_LeftStick_DPadNorth;
    k_EInputActionOrigin_PS5_LeftStick_DPadSouth             :: PS5_LeftStick_DPadSouth;
    k_EInputActionOrigin_PS5_LeftStick_DPadWest              :: PS5_LeftStick_DPadWest;
    k_EInputActionOrigin_PS5_LeftStick_DPadEast              :: PS5_LeftStick_DPadEast;
    k_EInputActionOrigin_PS5_RightStick_Move                 :: PS5_RightStick_Move;
    k_EInputActionOrigin_PS5_RightStick_Click                :: PS5_RightStick_Click;
    k_EInputActionOrigin_PS5_RightStick_DPadNorth            :: PS5_RightStick_DPadNorth;
    k_EInputActionOrigin_PS5_RightStick_DPadSouth            :: PS5_RightStick_DPadSouth;
    k_EInputActionOrigin_PS5_RightStick_DPadWest             :: PS5_RightStick_DPadWest;
    k_EInputActionOrigin_PS5_RightStick_DPadEast             :: PS5_RightStick_DPadEast;
    k_EInputActionOrigin_PS5_DPad_North                      :: PS5_DPad_North;
    k_EInputActionOrigin_PS5_DPad_South                      :: PS5_DPad_South;
    k_EInputActionOrigin_PS5_DPad_West                       :: PS5_DPad_West;
    k_EInputActionOrigin_PS5_DPad_East                       :: PS5_DPad_East;
    k_EInputActionOrigin_PS5_Gyro_Move                       :: PS5_Gyro_Move;
    k_EInputActionOrigin_PS5_Gyro_Pitch                      :: PS5_Gyro_Pitch;
    k_EInputActionOrigin_PS5_Gyro_Yaw                        :: PS5_Gyro_Yaw;
    k_EInputActionOrigin_PS5_Gyro_Roll                       :: PS5_Gyro_Roll;
    k_EInputActionOrigin_PS5_DPad_Move                       :: PS5_DPad_Move;
    k_EInputActionOrigin_PS5_LeftGrip                        :: PS5_LeftGrip;
    k_EInputActionOrigin_PS5_RightGrip                       :: PS5_RightGrip;
    k_EInputActionOrigin_PS5_LeftFn                          :: PS5_LeftFn;
    k_EInputActionOrigin_PS5_RightFn                         :: PS5_RightFn;
    k_EInputActionOrigin_PS5_Reserved5                       :: PS5_Reserved5;
    k_EInputActionOrigin_PS5_Reserved6                       :: PS5_Reserved6;
    k_EInputActionOrigin_PS5_Reserved7                       :: PS5_Reserved7;
    k_EInputActionOrigin_PS5_Reserved8                       :: PS5_Reserved8;
    k_EInputActionOrigin_PS5_Reserved9                       :: PS5_Reserved9;
    k_EInputActionOrigin_PS5_Reserved10                      :: PS5_Reserved10;
    k_EInputActionOrigin_PS5_Reserved11                      :: PS5_Reserved11;
    k_EInputActionOrigin_PS5_Reserved12                      :: PS5_Reserved12;
    k_EInputActionOrigin_PS5_Reserved13                      :: PS5_Reserved13;
    k_EInputActionOrigin_PS5_Reserved14                      :: PS5_Reserved14;
    k_EInputActionOrigin_PS5_Reserved15                      :: PS5_Reserved15;
    k_EInputActionOrigin_PS5_Reserved16                      :: PS5_Reserved16;
    k_EInputActionOrigin_PS5_Reserved17                      :: PS5_Reserved17;
    k_EInputActionOrigin_PS5_Reserved18                      :: PS5_Reserved18;
    k_EInputActionOrigin_PS5_Reserved19                      :: PS5_Reserved19;
    k_EInputActionOrigin_PS5_Reserved20                      :: PS5_Reserved20;

    k_EInputActionOrigin_SteamDeck_A                         :: SteamDeck_A;
    k_EInputActionOrigin_SteamDeck_B                         :: SteamDeck_B;
    k_EInputActionOrigin_SteamDeck_X                         :: SteamDeck_X;
    k_EInputActionOrigin_SteamDeck_Y                         :: SteamDeck_Y;
    k_EInputActionOrigin_SteamDeck_L1                        :: SteamDeck_L1;
    k_EInputActionOrigin_SteamDeck_R1                        :: SteamDeck_R1;
    k_EInputActionOrigin_SteamDeck_Menu                      :: SteamDeck_Menu;
    k_EInputActionOrigin_SteamDeck_View                      :: SteamDeck_View;
    k_EInputActionOrigin_SteamDeck_LeftPad_Touch             :: SteamDeck_LeftPad_Touch;
    k_EInputActionOrigin_SteamDeck_LeftPad_Swipe             :: SteamDeck_LeftPad_Swipe;
    k_EInputActionOrigin_SteamDeck_LeftPad_Click             :: SteamDeck_LeftPad_Click;
    k_EInputActionOrigin_SteamDeck_LeftPad_DPadNorth         :: SteamDeck_LeftPad_DPadNorth;
    k_EInputActionOrigin_SteamDeck_LeftPad_DPadSouth         :: SteamDeck_LeftPad_DPadSouth;
    k_EInputActionOrigin_SteamDeck_LeftPad_DPadWest          :: SteamDeck_LeftPad_DPadWest;
    k_EInputActionOrigin_SteamDeck_LeftPad_DPadEast          :: SteamDeck_LeftPad_DPadEast;
    k_EInputActionOrigin_SteamDeck_RightPad_Touch            :: SteamDeck_RightPad_Touch;
    k_EInputActionOrigin_SteamDeck_RightPad_Swipe            :: SteamDeck_RightPad_Swipe;
    k_EInputActionOrigin_SteamDeck_RightPad_Click            :: SteamDeck_RightPad_Click;
    k_EInputActionOrigin_SteamDeck_RightPad_DPadNorth        :: SteamDeck_RightPad_DPadNorth;
    k_EInputActionOrigin_SteamDeck_RightPad_DPadSouth        :: SteamDeck_RightPad_DPadSouth;
    k_EInputActionOrigin_SteamDeck_RightPad_DPadWest         :: SteamDeck_RightPad_DPadWest;
    k_EInputActionOrigin_SteamDeck_RightPad_DPadEast         :: SteamDeck_RightPad_DPadEast;
    k_EInputActionOrigin_SteamDeck_L2_SoftPull               :: SteamDeck_L2_SoftPull;
    k_EInputActionOrigin_SteamDeck_L2                        :: SteamDeck_L2;
    k_EInputActionOrigin_SteamDeck_R2_SoftPull               :: SteamDeck_R2_SoftPull;
    k_EInputActionOrigin_SteamDeck_R2                        :: SteamDeck_R2;
    k_EInputActionOrigin_SteamDeck_LeftStick_Move            :: SteamDeck_LeftStick_Move;
    k_EInputActionOrigin_SteamDeck_L3                        :: SteamDeck_L3;
    k_EInputActionOrigin_SteamDeck_LeftStick_DPadNorth       :: SteamDeck_LeftStick_DPadNorth;
    k_EInputActionOrigin_SteamDeck_LeftStick_DPadSouth       :: SteamDeck_LeftStick_DPadSouth;
    k_EInputActionOrigin_SteamDeck_LeftStick_DPadWest        :: SteamDeck_LeftStick_DPadWest;
    k_EInputActionOrigin_SteamDeck_LeftStick_DPadEast        :: SteamDeck_LeftStick_DPadEast;
    k_EInputActionOrigin_SteamDeck_LeftStick_Touch           :: SteamDeck_LeftStick_Touch;
    k_EInputActionOrigin_SteamDeck_RightStick_Move           :: SteamDeck_RightStick_Move;
    k_EInputActionOrigin_SteamDeck_R3                        :: SteamDeck_R3;
    k_EInputActionOrigin_SteamDeck_RightStick_DPadNorth      :: SteamDeck_RightStick_DPadNorth;
    k_EInputActionOrigin_SteamDeck_RightStick_DPadSouth      :: SteamDeck_RightStick_DPadSouth;
    k_EInputActionOrigin_SteamDeck_RightStick_DPadWest       :: SteamDeck_RightStick_DPadWest;
    k_EInputActionOrigin_SteamDeck_RightStick_DPadEast       :: SteamDeck_RightStick_DPadEast;
    k_EInputActionOrigin_SteamDeck_RightStick_Touch          :: SteamDeck_RightStick_Touch;
    k_EInputActionOrigin_SteamDeck_L4                        :: SteamDeck_L4;
    k_EInputActionOrigin_SteamDeck_R4                        :: SteamDeck_R4;
    k_EInputActionOrigin_SteamDeck_L5                        :: SteamDeck_L5;
    k_EInputActionOrigin_SteamDeck_R5                        :: SteamDeck_R5;
    k_EInputActionOrigin_SteamDeck_DPad_Move                 :: SteamDeck_DPad_Move;
    k_EInputActionOrigin_SteamDeck_DPad_North                :: SteamDeck_DPad_North;
    k_EInputActionOrigin_SteamDeck_DPad_South                :: SteamDeck_DPad_South;
    k_EInputActionOrigin_SteamDeck_DPad_West                 :: SteamDeck_DPad_West;
    k_EInputActionOrigin_SteamDeck_DPad_East                 :: SteamDeck_DPad_East;
    k_EInputActionOrigin_SteamDeck_Gyro_Move                 :: SteamDeck_Gyro_Move;
    k_EInputActionOrigin_SteamDeck_Gyro_Pitch                :: SteamDeck_Gyro_Pitch;
    k_EInputActionOrigin_SteamDeck_Gyro_Yaw                  :: SteamDeck_Gyro_Yaw;
    k_EInputActionOrigin_SteamDeck_Gyro_Roll                 :: SteamDeck_Gyro_Roll;
    k_EInputActionOrigin_SteamDeck_Reserved1                 :: SteamDeck_Reserved1;
    k_EInputActionOrigin_SteamDeck_Reserved2                 :: SteamDeck_Reserved2;
    k_EInputActionOrigin_SteamDeck_Reserved3                 :: SteamDeck_Reserved3;
    k_EInputActionOrigin_SteamDeck_Reserved4                 :: SteamDeck_Reserved4;
    k_EInputActionOrigin_SteamDeck_Reserved5                 :: SteamDeck_Reserved5;
    k_EInputActionOrigin_SteamDeck_Reserved6                 :: SteamDeck_Reserved6;
    k_EInputActionOrigin_SteamDeck_Reserved7                 :: SteamDeck_Reserved7;
    k_EInputActionOrigin_SteamDeck_Reserved8                 :: SteamDeck_Reserved8;
    k_EInputActionOrigin_SteamDeck_Reserved9                 :: SteamDeck_Reserved9;
    k_EInputActionOrigin_SteamDeck_Reserved10                :: SteamDeck_Reserved10;
    k_EInputActionOrigin_SteamDeck_Reserved11                :: SteamDeck_Reserved11;
    k_EInputActionOrigin_SteamDeck_Reserved12                :: SteamDeck_Reserved12;
    k_EInputActionOrigin_SteamDeck_Reserved13                :: SteamDeck_Reserved13;
    k_EInputActionOrigin_SteamDeck_Reserved14                :: SteamDeck_Reserved14;
    k_EInputActionOrigin_SteamDeck_Reserved15                :: SteamDeck_Reserved15;
    k_EInputActionOrigin_SteamDeck_Reserved16                :: SteamDeck_Reserved16;
    k_EInputActionOrigin_SteamDeck_Reserved17                :: SteamDeck_Reserved17;
    k_EInputActionOrigin_SteamDeck_Reserved18                :: SteamDeck_Reserved18;
    k_EInputActionOrigin_SteamDeck_Reserved19                :: SteamDeck_Reserved19;
    k_EInputActionOrigin_SteamDeck_Reserved20                :: SteamDeck_Reserved20;

    k_EInputActionOrigin_Count                               :: Count;
    k_EInputActionOrigin_MaximumPossibleValue                :: MaximumPossibleValue;
}

EXboxOrigin :: enum s32 {
    A                    :: 0;
    B                    :: 1;
    X                    :: 2;
    Y                    :: 3;
    LeftBumper           :: 4;
    RightBumper          :: 5;
    Menu                 :: 6;
    View                 :: 7;
    LeftTrigger_Pull     :: 8;
    LeftTrigger_Click    :: 9;
    RightTrigger_Pull    :: 10;
    RightTrigger_Click   :: 11;
    LeftStick_Move       :: 12;
    LeftStick_Click      :: 13;
    LeftStick_DPadNorth  :: 14;
    LeftStick_DPadSouth  :: 15;
    LeftStick_DPadWest   :: 16;
    LeftStick_DPadEast   :: 17;
    RightStick_Move      :: 18;
    RightStick_Click     :: 19;
    RightStick_DPadNorth :: 20;
    RightStick_DPadSouth :: 21;
    RightStick_DPadWest  :: 22;
    RightStick_DPadEast  :: 23;
    DPad_North           :: 24;
    DPad_South           :: 25;
    DPad_West            :: 26;
    DPad_East            :: 27;
    Count                :: 28;

    k_EXboxOrigin_A                    :: A;
    k_EXboxOrigin_B                    :: B;
    k_EXboxOrigin_X                    :: X;
    k_EXboxOrigin_Y                    :: Y;
    k_EXboxOrigin_LeftBumper           :: LeftBumper;
    k_EXboxOrigin_RightBumper          :: RightBumper;
    k_EXboxOrigin_Menu                 :: Menu;
    k_EXboxOrigin_View                 :: View;
    k_EXboxOrigin_LeftTrigger_Pull     :: LeftTrigger_Pull;
    k_EXboxOrigin_LeftTrigger_Click    :: LeftTrigger_Click;
    k_EXboxOrigin_RightTrigger_Pull    :: RightTrigger_Pull;
    k_EXboxOrigin_RightTrigger_Click   :: RightTrigger_Click;
    k_EXboxOrigin_LeftStick_Move       :: LeftStick_Move;
    k_EXboxOrigin_LeftStick_Click      :: LeftStick_Click;
    k_EXboxOrigin_LeftStick_DPadNorth  :: LeftStick_DPadNorth;
    k_EXboxOrigin_LeftStick_DPadSouth  :: LeftStick_DPadSouth;
    k_EXboxOrigin_LeftStick_DPadWest   :: LeftStick_DPadWest;
    k_EXboxOrigin_LeftStick_DPadEast   :: LeftStick_DPadEast;
    k_EXboxOrigin_RightStick_Move      :: RightStick_Move;
    k_EXboxOrigin_RightStick_Click     :: RightStick_Click;
    k_EXboxOrigin_RightStick_DPadNorth :: RightStick_DPadNorth;
    k_EXboxOrigin_RightStick_DPadSouth :: RightStick_DPadSouth;
    k_EXboxOrigin_RightStick_DPadWest  :: RightStick_DPadWest;
    k_EXboxOrigin_RightStick_DPadEast  :: RightStick_DPadEast;
    k_EXboxOrigin_DPad_North           :: DPad_North;
    k_EXboxOrigin_DPad_South           :: DPad_South;
    k_EXboxOrigin_DPad_West            :: DPad_West;
    k_EXboxOrigin_DPad_East            :: DPad_East;
    k_EXboxOrigin_Count                :: Count;
}

ESteamControllerPad :: enum s32 {
    Left  :: 0;
    Right :: 1;

    k_ESteamControllerPad_Left  :: Left;
    k_ESteamControllerPad_Right :: Right;
}

EControllerHapticLocation :: enum s32 {
    Left  :: 1;
    Right :: 2;
    Both  :: 3;

    k_EControllerHapticLocation_Left  :: Left;
    k_EControllerHapticLocation_Right :: Right;
    k_EControllerHapticLocation_Both  :: Both;
}

ESteamInputType :: enum s32 {
    Unknown              :: 0;
    SteamController      :: 1;
    XBox360Controller    :: 2;
    XBoxOneController    :: 3;
    GenericGamepad       :: 4;
    PS4Controller        :: 5;
    AppleMFiController   :: 6;
    AndroidController    :: 7;
    SwitchJoyConPair     :: 8;
    SwitchJoyConSingle   :: 9;
    SwitchProController  :: 10;
    MobileTouch          :: 11;
    PS3Controller        :: 12;
    PS5Controller        :: 13;
    SteamDeckController  :: 14;
    Count                :: 15;
    MaximumPossibleValue :: 255;

    k_ESteamInputType_Unknown              :: Unknown;
    k_ESteamInputType_SteamController      :: SteamController;
    k_ESteamInputType_XBox360Controller    :: XBox360Controller;
    k_ESteamInputType_XBoxOneController    :: XBoxOneController;
    k_ESteamInputType_GenericGamepad       :: GenericGamepad;
    k_ESteamInputType_PS4Controller        :: PS4Controller;
    k_ESteamInputType_AppleMFiController   :: AppleMFiController;
    k_ESteamInputType_AndroidController    :: AndroidController;
    k_ESteamInputType_SwitchJoyConPair     :: SwitchJoyConPair;
    k_ESteamInputType_SwitchJoyConSingle   :: SwitchJoyConSingle;
    k_ESteamInputType_SwitchProController  :: SwitchProController;
    k_ESteamInputType_MobileTouch          :: MobileTouch;
    k_ESteamInputType_PS3Controller        :: PS3Controller;
    k_ESteamInputType_PS5Controller        :: PS5Controller;
    k_ESteamInputType_SteamDeckController  :: SteamDeckController;
    k_ESteamInputType_Count                :: Count;
    k_ESteamInputType_MaximumPossibleValue :: MaximumPossibleValue;
}

// These values are passed into GetGlyphPNGForActionOrigin
ESteamInputGlyphSize :: enum s32 {
    Small  :: 0;
    Medium :: 1;
    Large  :: 2;
    Count  :: 3;

    k_ESteamInputGlyphSize_Small  :: Small;
    k_ESteamInputGlyphSize_Medium :: Medium;
    k_ESteamInputGlyphSize_Large  :: Large;
    k_ESteamInputGlyphSize_Count  :: Count;
}

// InputHandle_t is used to refer to a specific controller.
// This handle will consistently identify a controller, even if it is disconnected and re-connected
InputHandle_t :: uint64;

// These handles are used to refer to a specific in-game action or action set
// All action handles should be queried during initialization for performance reasons
InputActionSetHandle_t :: uint64;
InputDigitalActionHandle_t :: uint64;
InputAnalogActionHandle_t :: uint64;

InputAnalogActionData_t :: struct {}

InputDigitalActionData_t :: struct {}

InputMotionData_t :: struct {}

//-----------------------------------------------------------------------------
// Purpose: when callbacks are enabled this fires each time a controller action
// state changes
//-----------------------------------------------------------------------------
SteamInputActionEvent_t :: struct {}

//-----------------------------------------------------------------------------
// Forward declaration for ScePadTriggerEffectParam, defined in isteamdualsense.h
//-----------------------------------------------------------------------------
ScePadTriggerEffectParam :: struct {}

SteamInputActionEventCallbackPointer :: #type (unknown0: *SteamInputActionEvent_t) -> void #c_call;

//-----------------------------------------------------------------------------
// Purpose: Steam Input API
//-----------------------------------------------------------------------------
ISteamInput :: struct {
    vtable: *ISteamInput_VTable;
}
ISteamInput_VTable :: struct #type_info_none {
    Init: *void;
    Shutdown: *void;

    SetInputActionManifestFilePath: *void;

    RunFrame: *void;

    BWaitForData: *void;

    BNewDataAvailable: *void;

    GetConnectedControllers: *void;

    EnableDeviceCallbacks: *void;

    EnableActionEventCallbacks: *void;

    GetActionSetHandle: *void;

    ActivateActionSet: *void;
    GetCurrentActionSet: *void;

    ActivateActionSetLayer: *void;
    DeactivateActionSetLayer: *void;
    DeactivateAllActionSetLayers: *void;

    GetActiveActionSetLayers: *void;

    GetDigitalActionHandle: *void;

    GetDigitalActionData: *void;

    GetDigitalActionOrigins: *void;

    GetStringForDigitalActionName: *void;

    GetAnalogActionHandle: *void;

    GetAnalogActionData: *void;

    GetAnalogActionOrigins: *void;

    GetGlyphPNGForActionOrigin: *void;

    GetGlyphSVGForActionOrigin: *void;

    GetGlyphForActionOrigin_Legacy: *void;

    GetStringForActionOrigin: *void;

    GetStringForAnalogActionName: *void;

    StopAnalogActionMomentum: *void;

    GetMotionData: *void;

    TriggerVibration: *void;

    TriggerVibrationExtended: *void;

    TriggerSimpleHapticEvent: *void;

    SetLEDColor: *void;

    Legacy_TriggerHapticPulse: *void;

    Legacy_TriggerRepeatedHapticPulse: *void;

    ShowBindingPanel: *void;

    GetInputTypeForHandle: *void;

    GetControllerForGamepadIndex: *void;

    GetGamepadIndexForController: *void;

    GetStringForXboxOrigin: *void;

    GetGlyphForXboxOrigin: *void;

    GetActionOriginFromXboxOrigin: *void;

    TranslateActionOrigin: *void;

    GetDeviceBindingRevision: *void;

    GetRemotePlaySessionID: *void;

    GetSessionInputConfigurationSettings: *void;

    SetDualSenseTriggerEffect: *void;
}

vtable :: (obj: *ISteamInput) -> *ISteamInput_VTable { return obj.vtable; }


// Note: Please do not use action origins as a way to identify controller types. There is no
// guarantee that they will be added in a contiguous manner - use GetInputTypeForHandle instead
// Versions of Steam that add new controller types in the future will extend this enum if you're
// using a lookup table please check the bounds of any origins returned by Steam.
EControllerActionOrigin :: enum s32 {
    None                             :: 0;
    A                                :: 1;
    B                                :: 2;
    X                                :: 3;
    Y                                :: 4;
    LeftBumper                       :: 5;
    RightBumper                      :: 6;
    LeftGrip                         :: 7;
    RightGrip                        :: 8;
    Start                            :: 9;
    Back                             :: 10;
    LeftPad_Touch                    :: 11;
    LeftPad_Swipe                    :: 12;
    LeftPad_Click                    :: 13;
    LeftPad_DPadNorth                :: 14;
    LeftPad_DPadSouth                :: 15;
    LeftPad_DPadWest                 :: 16;
    LeftPad_DPadEast                 :: 17;
    RightPad_Touch                   :: 18;
    RightPad_Swipe                   :: 19;
    RightPad_Click                   :: 20;
    RightPad_DPadNorth               :: 21;
    RightPad_DPadSouth               :: 22;
    RightPad_DPadWest                :: 23;
    RightPad_DPadEast                :: 24;
    LeftTrigger_Pull                 :: 25;
    LeftTrigger_Click                :: 26;
    RightTrigger_Pull                :: 27;
    RightTrigger_Click               :: 28;
    LeftStick_Move                   :: 29;
    LeftStick_Click                  :: 30;
    LeftStick_DPadNorth              :: 31;
    LeftStick_DPadSouth              :: 32;
    LeftStick_DPadWest               :: 33;
    LeftStick_DPadEast               :: 34;
    Gyro_Move                        :: 35;
    Gyro_Pitch                       :: 36;
    Gyro_Yaw                         :: 37;
    Gyro_Roll                        :: 38;

    PS4_X                            :: 39;
    PS4_Circle                       :: 40;
    PS4_Triangle                     :: 41;
    PS4_Square                       :: 42;
    PS4_LeftBumper                   :: 43;
    PS4_RightBumper                  :: 44;
    PS4_Options                      :: 45;
    PS4_Share                        :: 46;
    PS4_LeftPad_Touch                :: 47;
    PS4_LeftPad_Swipe                :: 48;
    PS4_LeftPad_Click                :: 49;
    PS4_LeftPad_DPadNorth            :: 50;
    PS4_LeftPad_DPadSouth            :: 51;
    PS4_LeftPad_DPadWest             :: 52;
    PS4_LeftPad_DPadEast             :: 53;
    PS4_RightPad_Touch               :: 54;
    PS4_RightPad_Swipe               :: 55;
    PS4_RightPad_Click               :: 56;
    PS4_RightPad_DPadNorth           :: 57;
    PS4_RightPad_DPadSouth           :: 58;
    PS4_RightPad_DPadWest            :: 59;
    PS4_RightPad_DPadEast            :: 60;
    PS4_CenterPad_Touch              :: 61;
    PS4_CenterPad_Swipe              :: 62;
    PS4_CenterPad_Click              :: 63;
    PS4_CenterPad_DPadNorth          :: 64;
    PS4_CenterPad_DPadSouth          :: 65;
    PS4_CenterPad_DPadWest           :: 66;
    PS4_CenterPad_DPadEast           :: 67;
    PS4_LeftTrigger_Pull             :: 68;
    PS4_LeftTrigger_Click            :: 69;
    PS4_RightTrigger_Pull            :: 70;
    PS4_RightTrigger_Click           :: 71;
    PS4_LeftStick_Move               :: 72;
    PS4_LeftStick_Click              :: 73;
    PS4_LeftStick_DPadNorth          :: 74;
    PS4_LeftStick_DPadSouth          :: 75;
    PS4_LeftStick_DPadWest           :: 76;
    PS4_LeftStick_DPadEast           :: 77;
    PS4_RightStick_Move              :: 78;
    PS4_RightStick_Click             :: 79;
    PS4_RightStick_DPadNorth         :: 80;
    PS4_RightStick_DPadSouth         :: 81;
    PS4_RightStick_DPadWest          :: 82;
    PS4_RightStick_DPadEast          :: 83;
    PS4_DPad_North                   :: 84;
    PS4_DPad_South                   :: 85;
    PS4_DPad_West                    :: 86;
    PS4_DPad_East                    :: 87;
    PS4_Gyro_Move                    :: 88;
    PS4_Gyro_Pitch                   :: 89;
    PS4_Gyro_Yaw                     :: 90;
    PS4_Gyro_Roll                    :: 91;

    XBoxOne_A                        :: 92;
    XBoxOne_B                        :: 93;
    XBoxOne_X                        :: 94;
    XBoxOne_Y                        :: 95;
    XBoxOne_LeftBumper               :: 96;
    XBoxOne_RightBumper              :: 97;
    XBoxOne_Menu                     :: 98;
    XBoxOne_View                     :: 99;
    XBoxOne_LeftTrigger_Pull         :: 100;
    XBoxOne_LeftTrigger_Click        :: 101;
    XBoxOne_RightTrigger_Pull        :: 102;
    XBoxOne_RightTrigger_Click       :: 103;
    XBoxOne_LeftStick_Move           :: 104;
    XBoxOne_LeftStick_Click          :: 105;
    XBoxOne_LeftStick_DPadNorth      :: 106;
    XBoxOne_LeftStick_DPadSouth      :: 107;
    XBoxOne_LeftStick_DPadWest       :: 108;
    XBoxOne_LeftStick_DPadEast       :: 109;
    XBoxOne_RightStick_Move          :: 110;
    XBoxOne_RightStick_Click         :: 111;
    XBoxOne_RightStick_DPadNorth     :: 112;
    XBoxOne_RightStick_DPadSouth     :: 113;
    XBoxOne_RightStick_DPadWest      :: 114;
    XBoxOne_RightStick_DPadEast      :: 115;
    XBoxOne_DPad_North               :: 116;
    XBoxOne_DPad_South               :: 117;
    XBoxOne_DPad_West                :: 118;
    XBoxOne_DPad_East                :: 119;

    XBox360_A                        :: 120;
    XBox360_B                        :: 121;
    XBox360_X                        :: 122;
    XBox360_Y                        :: 123;
    XBox360_LeftBumper               :: 124;
    XBox360_RightBumper              :: 125;
    XBox360_Start                    :: 126;
    XBox360_Back                     :: 127;
    XBox360_LeftTrigger_Pull         :: 128;
    XBox360_LeftTrigger_Click        :: 129;
    XBox360_RightTrigger_Pull        :: 130;
    XBox360_RightTrigger_Click       :: 131;
    XBox360_LeftStick_Move           :: 132;
    XBox360_LeftStick_Click          :: 133;
    XBox360_LeftStick_DPadNorth      :: 134;
    XBox360_LeftStick_DPadSouth      :: 135;
    XBox360_LeftStick_DPadWest       :: 136;
    XBox360_LeftStick_DPadEast       :: 137;
    XBox360_RightStick_Move          :: 138;
    XBox360_RightStick_Click         :: 139;
    XBox360_RightStick_DPadNorth     :: 140;
    XBox360_RightStick_DPadSouth     :: 141;
    XBox360_RightStick_DPadWest      :: 142;
    XBox360_RightStick_DPadEast      :: 143;
    XBox360_DPad_North               :: 144;
    XBox360_DPad_South               :: 145;
    XBox360_DPad_West                :: 146;
    XBox360_DPad_East                :: 147;

    SteamV2_A                        :: 148;
    SteamV2_B                        :: 149;
    SteamV2_X                        :: 150;
    SteamV2_Y                        :: 151;
    SteamV2_LeftBumper               :: 152;
    SteamV2_RightBumper              :: 153;
    SteamV2_LeftGrip_Lower           :: 154;
    SteamV2_LeftGrip_Upper           :: 155;
    SteamV2_RightGrip_Lower          :: 156;
    SteamV2_RightGrip_Upper          :: 157;
    SteamV2_LeftBumper_Pressure      :: 158;
    SteamV2_RightBumper_Pressure     :: 159;
    SteamV2_LeftGrip_Pressure        :: 160;
    SteamV2_RightGrip_Pressure       :: 161;
    SteamV2_LeftGrip_Upper_Pressure  :: 162;
    SteamV2_RightGrip_Upper_Pressure :: 163;
    SteamV2_Start                    :: 164;
    SteamV2_Back                     :: 165;
    SteamV2_LeftPad_Touch            :: 166;
    SteamV2_LeftPad_Swipe            :: 167;
    SteamV2_LeftPad_Click            :: 168;
    SteamV2_LeftPad_Pressure         :: 169;
    SteamV2_LeftPad_DPadNorth        :: 170;
    SteamV2_LeftPad_DPadSouth        :: 171;
    SteamV2_LeftPad_DPadWest         :: 172;
    SteamV2_LeftPad_DPadEast         :: 173;
    SteamV2_RightPad_Touch           :: 174;
    SteamV2_RightPad_Swipe           :: 175;
    SteamV2_RightPad_Click           :: 176;
    SteamV2_RightPad_Pressure        :: 177;
    SteamV2_RightPad_DPadNorth       :: 178;
    SteamV2_RightPad_DPadSouth       :: 179;
    SteamV2_RightPad_DPadWest        :: 180;
    SteamV2_RightPad_DPadEast        :: 181;
    SteamV2_LeftTrigger_Pull         :: 182;
    SteamV2_LeftTrigger_Click        :: 183;
    SteamV2_RightTrigger_Pull        :: 184;
    SteamV2_RightTrigger_Click       :: 185;
    SteamV2_LeftStick_Move           :: 186;
    SteamV2_LeftStick_Click          :: 187;
    SteamV2_LeftStick_DPadNorth      :: 188;
    SteamV2_LeftStick_DPadSouth      :: 189;
    SteamV2_LeftStick_DPadWest       :: 190;
    SteamV2_LeftStick_DPadEast       :: 191;
    SteamV2_Gyro_Move                :: 192;
    SteamV2_Gyro_Pitch               :: 193;
    SteamV2_Gyro_Yaw                 :: 194;
    SteamV2_Gyro_Roll                :: 195;

    Switch_A                         :: 196;
    Switch_B                         :: 197;
    Switch_X                         :: 198;
    Switch_Y                         :: 199;
    Switch_LeftBumper                :: 200;
    Switch_RightBumper               :: 201;
    Switch_Plus                      :: 202;
    Switch_Minus                     :: 203;
    Switch_Capture                   :: 204;
    Switch_LeftTrigger_Pull          :: 205;
    Switch_LeftTrigger_Click         :: 206;
    Switch_RightTrigger_Pull         :: 207;
    Switch_RightTrigger_Click        :: 208;
    Switch_LeftStick_Move            :: 209;
    Switch_LeftStick_Click           :: 210;
    Switch_LeftStick_DPadNorth       :: 211;
    Switch_LeftStick_DPadSouth       :: 212;
    Switch_LeftStick_DPadWest        :: 213;
    Switch_LeftStick_DPadEast        :: 214;
    Switch_RightStick_Move           :: 215;
    Switch_RightStick_Click          :: 216;
    Switch_RightStick_DPadNorth      :: 217;
    Switch_RightStick_DPadSouth      :: 218;
    Switch_RightStick_DPadWest       :: 219;
    Switch_RightStick_DPadEast       :: 220;
    Switch_DPad_North                :: 221;
    Switch_DPad_South                :: 222;
    Switch_DPad_West                 :: 223;
    Switch_DPad_East                 :: 224;
    Switch_ProGyro_Move              :: 225;
    Switch_ProGyro_Pitch             :: 226;
    Switch_ProGyro_Yaw               :: 227;
    Switch_ProGyro_Roll              :: 228;

    Switch_RightGyro_Move            :: 229;
    Switch_RightGyro_Pitch           :: 230;
    Switch_RightGyro_Yaw             :: 231;
    Switch_RightGyro_Roll            :: 232;
    Switch_LeftGyro_Move             :: 233;
    Switch_LeftGyro_Pitch            :: 234;
    Switch_LeftGyro_Yaw              :: 235;
    Switch_LeftGyro_Roll             :: 236;
    Switch_LeftGrip_Lower            :: 237;
    Switch_LeftGrip_Upper            :: 238;
    Switch_RightGrip_Lower           :: 239;
    Switch_RightGrip_Upper           :: 240;

    PS4_DPad_Move                    :: 241;
    XBoxOne_DPad_Move                :: 242;
    XBox360_DPad_Move                :: 243;
    Switch_DPad_Move                 :: 244;

    PS5_X                            :: 245;
    PS5_Circle                       :: 246;
    PS5_Triangle                     :: 247;
    PS5_Square                       :: 248;
    PS5_LeftBumper                   :: 249;
    PS5_RightBumper                  :: 250;
    PS5_Option                       :: 251;
    PS5_Create                       :: 252;
    PS5_Mute                         :: 253;
    PS5_LeftPad_Touch                :: 254;
    PS5_LeftPad_Swipe                :: 255;
    PS5_LeftPad_Click                :: 256;
    PS5_LeftPad_DPadNorth            :: 257;
    PS5_LeftPad_DPadSouth            :: 258;
    PS5_LeftPad_DPadWest             :: 259;
    PS5_LeftPad_DPadEast             :: 260;
    PS5_RightPad_Touch               :: 261;
    PS5_RightPad_Swipe               :: 262;
    PS5_RightPad_Click               :: 263;
    PS5_RightPad_DPadNorth           :: 264;
    PS5_RightPad_DPadSouth           :: 265;
    PS5_RightPad_DPadWest            :: 266;
    PS5_RightPad_DPadEast            :: 267;
    PS5_CenterPad_Touch              :: 268;
    PS5_CenterPad_Swipe              :: 269;
    PS5_CenterPad_Click              :: 270;
    PS5_CenterPad_DPadNorth          :: 271;
    PS5_CenterPad_DPadSouth          :: 272;
    PS5_CenterPad_DPadWest           :: 273;
    PS5_CenterPad_DPadEast           :: 274;
    PS5_LeftTrigger_Pull             :: 275;
    PS5_LeftTrigger_Click            :: 276;
    PS5_RightTrigger_Pull            :: 277;
    PS5_RightTrigger_Click           :: 278;
    PS5_LeftStick_Move               :: 279;
    PS5_LeftStick_Click              :: 280;
    PS5_LeftStick_DPadNorth          :: 281;
    PS5_LeftStick_DPadSouth          :: 282;
    PS5_LeftStick_DPadWest           :: 283;
    PS5_LeftStick_DPadEast           :: 284;
    PS5_RightStick_Move              :: 285;
    PS5_RightStick_Click             :: 286;
    PS5_RightStick_DPadNorth         :: 287;
    PS5_RightStick_DPadSouth         :: 288;
    PS5_RightStick_DPadWest          :: 289;
    PS5_RightStick_DPadEast          :: 290;
    PS5_DPad_Move                    :: 291;
    PS5_DPad_North                   :: 292;
    PS5_DPad_South                   :: 293;
    PS5_DPad_West                    :: 294;
    PS5_DPad_East                    :: 295;
    PS5_Gyro_Move                    :: 296;
    PS5_Gyro_Pitch                   :: 297;
    PS5_Gyro_Yaw                     :: 298;
    PS5_Gyro_Roll                    :: 299;

    XBoxOne_LeftGrip_Lower           :: 300;
    XBoxOne_LeftGrip_Upper           :: 301;
    XBoxOne_RightGrip_Lower          :: 302;
    XBoxOne_RightGrip_Upper          :: 303;
    XBoxOne_Share                    :: 304;

    SteamDeck_A                      :: 305;
    SteamDeck_B                      :: 306;
    SteamDeck_X                      :: 307;
    SteamDeck_Y                      :: 308;
    SteamDeck_L1                     :: 309;
    SteamDeck_R1                     :: 310;
    SteamDeck_Menu                   :: 311;
    SteamDeck_View                   :: 312;
    SteamDeck_LeftPad_Touch          :: 313;
    SteamDeck_LeftPad_Swipe          :: 314;
    SteamDeck_LeftPad_Click          :: 315;
    SteamDeck_LeftPad_DPadNorth      :: 316;
    SteamDeck_LeftPad_DPadSouth      :: 317;
    SteamDeck_LeftPad_DPadWest       :: 318;
    SteamDeck_LeftPad_DPadEast       :: 319;
    SteamDeck_RightPad_Touch         :: 320;
    SteamDeck_RightPad_Swipe         :: 321;
    SteamDeck_RightPad_Click         :: 322;
    SteamDeck_RightPad_DPadNorth     :: 323;
    SteamDeck_RightPad_DPadSouth     :: 324;
    SteamDeck_RightPad_DPadWest      :: 325;
    SteamDeck_RightPad_DPadEast      :: 326;
    SteamDeck_L2_SoftPull            :: 327;
    SteamDeck_L2                     :: 328;
    SteamDeck_R2_SoftPull            :: 329;
    SteamDeck_R2                     :: 330;
    SteamDeck_LeftStick_Move         :: 331;
    SteamDeck_L3                     :: 332;
    SteamDeck_LeftStick_DPadNorth    :: 333;
    SteamDeck_LeftStick_DPadSouth    :: 334;
    SteamDeck_LeftStick_DPadWest     :: 335;
    SteamDeck_LeftStick_DPadEast     :: 336;
    SteamDeck_LeftStick_Touch        :: 337;
    SteamDeck_RightStick_Move        :: 338;
    SteamDeck_R3                     :: 339;
    SteamDeck_RightStick_DPadNorth   :: 340;
    SteamDeck_RightStick_DPadSouth   :: 341;
    SteamDeck_RightStick_DPadWest    :: 342;
    SteamDeck_RightStick_DPadEast    :: 343;
    SteamDeck_RightStick_Touch       :: 344;
    SteamDeck_L4                     :: 345;
    SteamDeck_R4                     :: 346;
    SteamDeck_L5                     :: 347;
    SteamDeck_R5                     :: 348;
    SteamDeck_DPad_Move              :: 349;
    SteamDeck_DPad_North             :: 350;
    SteamDeck_DPad_South             :: 351;
    SteamDeck_DPad_West              :: 352;
    SteamDeck_DPad_East              :: 353;
    SteamDeck_Gyro_Move              :: 354;
    SteamDeck_Gyro_Pitch             :: 355;
    SteamDeck_Gyro_Yaw               :: 356;
    SteamDeck_Gyro_Roll              :: 357;
    SteamDeck_Reserved1              :: 358;
    SteamDeck_Reserved2              :: 359;
    SteamDeck_Reserved3              :: 360;
    SteamDeck_Reserved4              :: 361;
    SteamDeck_Reserved5              :: 362;
    SteamDeck_Reserved6              :: 363;
    SteamDeck_Reserved7              :: 364;
    SteamDeck_Reserved8              :: 365;
    SteamDeck_Reserved9              :: 366;
    SteamDeck_Reserved10             :: 367;
    SteamDeck_Reserved11             :: 368;
    SteamDeck_Reserved12             :: 369;
    SteamDeck_Reserved13             :: 370;
    SteamDeck_Reserved14             :: 371;
    SteamDeck_Reserved15             :: 372;
    SteamDeck_Reserved16             :: 373;
    SteamDeck_Reserved17             :: 374;
    SteamDeck_Reserved18             :: 375;
    SteamDeck_Reserved19             :: 376;
    SteamDeck_Reserved20             :: 377;

    Switch_JoyConButton_N            :: 378;
    Switch_JoyConButton_E            :: 379;
    Switch_JoyConButton_S            :: 380;
    Switch_JoyConButton_W            :: 381;

    PS5_LeftGrip                     :: 382;
    PS5_RightGrip                    :: 383;
    PS5_LeftFn                       :: 384;
    PS5_RightFn                      :: 385;

    Count                            :: 386;
    MaximumPossibleValue             :: 32767;

    k_EControllerActionOrigin_None                             :: None;
    k_EControllerActionOrigin_A                                :: A;
    k_EControllerActionOrigin_B                                :: B;
    k_EControllerActionOrigin_X                                :: X;
    k_EControllerActionOrigin_Y                                :: Y;
    k_EControllerActionOrigin_LeftBumper                       :: LeftBumper;
    k_EControllerActionOrigin_RightBumper                      :: RightBumper;
    k_EControllerActionOrigin_LeftGrip                         :: LeftGrip;
    k_EControllerActionOrigin_RightGrip                        :: RightGrip;
    k_EControllerActionOrigin_Start                            :: Start;
    k_EControllerActionOrigin_Back                             :: Back;
    k_EControllerActionOrigin_LeftPad_Touch                    :: LeftPad_Touch;
    k_EControllerActionOrigin_LeftPad_Swipe                    :: LeftPad_Swipe;
    k_EControllerActionOrigin_LeftPad_Click                    :: LeftPad_Click;
    k_EControllerActionOrigin_LeftPad_DPadNorth                :: LeftPad_DPadNorth;
    k_EControllerActionOrigin_LeftPad_DPadSouth                :: LeftPad_DPadSouth;
    k_EControllerActionOrigin_LeftPad_DPadWest                 :: LeftPad_DPadWest;
    k_EControllerActionOrigin_LeftPad_DPadEast                 :: LeftPad_DPadEast;
    k_EControllerActionOrigin_RightPad_Touch                   :: RightPad_Touch;
    k_EControllerActionOrigin_RightPad_Swipe                   :: RightPad_Swipe;
    k_EControllerActionOrigin_RightPad_Click                   :: RightPad_Click;
    k_EControllerActionOrigin_RightPad_DPadNorth               :: RightPad_DPadNorth;
    k_EControllerActionOrigin_RightPad_DPadSouth               :: RightPad_DPadSouth;
    k_EControllerActionOrigin_RightPad_DPadWest                :: RightPad_DPadWest;
    k_EControllerActionOrigin_RightPad_DPadEast                :: RightPad_DPadEast;
    k_EControllerActionOrigin_LeftTrigger_Pull                 :: LeftTrigger_Pull;
    k_EControllerActionOrigin_LeftTrigger_Click                :: LeftTrigger_Click;
    k_EControllerActionOrigin_RightTrigger_Pull                :: RightTrigger_Pull;
    k_EControllerActionOrigin_RightTrigger_Click               :: RightTrigger_Click;
    k_EControllerActionOrigin_LeftStick_Move                   :: LeftStick_Move;
    k_EControllerActionOrigin_LeftStick_Click                  :: LeftStick_Click;
    k_EControllerActionOrigin_LeftStick_DPadNorth              :: LeftStick_DPadNorth;
    k_EControllerActionOrigin_LeftStick_DPadSouth              :: LeftStick_DPadSouth;
    k_EControllerActionOrigin_LeftStick_DPadWest               :: LeftStick_DPadWest;
    k_EControllerActionOrigin_LeftStick_DPadEast               :: LeftStick_DPadEast;
    k_EControllerActionOrigin_Gyro_Move                        :: Gyro_Move;
    k_EControllerActionOrigin_Gyro_Pitch                       :: Gyro_Pitch;
    k_EControllerActionOrigin_Gyro_Yaw                         :: Gyro_Yaw;
    k_EControllerActionOrigin_Gyro_Roll                        :: Gyro_Roll;

    k_EControllerActionOrigin_PS4_X                            :: PS4_X;
    k_EControllerActionOrigin_PS4_Circle                       :: PS4_Circle;
    k_EControllerActionOrigin_PS4_Triangle                     :: PS4_Triangle;
    k_EControllerActionOrigin_PS4_Square                       :: PS4_Square;
    k_EControllerActionOrigin_PS4_LeftBumper                   :: PS4_LeftBumper;
    k_EControllerActionOrigin_PS4_RightBumper                  :: PS4_RightBumper;
    k_EControllerActionOrigin_PS4_Options                      :: PS4_Options;
    k_EControllerActionOrigin_PS4_Share                        :: PS4_Share;
    k_EControllerActionOrigin_PS4_LeftPad_Touch                :: PS4_LeftPad_Touch;
    k_EControllerActionOrigin_PS4_LeftPad_Swipe                :: PS4_LeftPad_Swipe;
    k_EControllerActionOrigin_PS4_LeftPad_Click                :: PS4_LeftPad_Click;
    k_EControllerActionOrigin_PS4_LeftPad_DPadNorth            :: PS4_LeftPad_DPadNorth;
    k_EControllerActionOrigin_PS4_LeftPad_DPadSouth            :: PS4_LeftPad_DPadSouth;
    k_EControllerActionOrigin_PS4_LeftPad_DPadWest             :: PS4_LeftPad_DPadWest;
    k_EControllerActionOrigin_PS4_LeftPad_DPadEast             :: PS4_LeftPad_DPadEast;
    k_EControllerActionOrigin_PS4_RightPad_Touch               :: PS4_RightPad_Touch;
    k_EControllerActionOrigin_PS4_RightPad_Swipe               :: PS4_RightPad_Swipe;
    k_EControllerActionOrigin_PS4_RightPad_Click               :: PS4_RightPad_Click;
    k_EControllerActionOrigin_PS4_RightPad_DPadNorth           :: PS4_RightPad_DPadNorth;
    k_EControllerActionOrigin_PS4_RightPad_DPadSouth           :: PS4_RightPad_DPadSouth;
    k_EControllerActionOrigin_PS4_RightPad_DPadWest            :: PS4_RightPad_DPadWest;
    k_EControllerActionOrigin_PS4_RightPad_DPadEast            :: PS4_RightPad_DPadEast;
    k_EControllerActionOrigin_PS4_CenterPad_Touch              :: PS4_CenterPad_Touch;
    k_EControllerActionOrigin_PS4_CenterPad_Swipe              :: PS4_CenterPad_Swipe;
    k_EControllerActionOrigin_PS4_CenterPad_Click              :: PS4_CenterPad_Click;
    k_EControllerActionOrigin_PS4_CenterPad_DPadNorth          :: PS4_CenterPad_DPadNorth;
    k_EControllerActionOrigin_PS4_CenterPad_DPadSouth          :: PS4_CenterPad_DPadSouth;
    k_EControllerActionOrigin_PS4_CenterPad_DPadWest           :: PS4_CenterPad_DPadWest;
    k_EControllerActionOrigin_PS4_CenterPad_DPadEast           :: PS4_CenterPad_DPadEast;
    k_EControllerActionOrigin_PS4_LeftTrigger_Pull             :: PS4_LeftTrigger_Pull;
    k_EControllerActionOrigin_PS4_LeftTrigger_Click            :: PS4_LeftTrigger_Click;
    k_EControllerActionOrigin_PS4_RightTrigger_Pull            :: PS4_RightTrigger_Pull;
    k_EControllerActionOrigin_PS4_RightTrigger_Click           :: PS4_RightTrigger_Click;
    k_EControllerActionOrigin_PS4_LeftStick_Move               :: PS4_LeftStick_Move;
    k_EControllerActionOrigin_PS4_LeftStick_Click              :: PS4_LeftStick_Click;
    k_EControllerActionOrigin_PS4_LeftStick_DPadNorth          :: PS4_LeftStick_DPadNorth;
    k_EControllerActionOrigin_PS4_LeftStick_DPadSouth          :: PS4_LeftStick_DPadSouth;
    k_EControllerActionOrigin_PS4_LeftStick_DPadWest           :: PS4_LeftStick_DPadWest;
    k_EControllerActionOrigin_PS4_LeftStick_DPadEast           :: PS4_LeftStick_DPadEast;
    k_EControllerActionOrigin_PS4_RightStick_Move              :: PS4_RightStick_Move;
    k_EControllerActionOrigin_PS4_RightStick_Click             :: PS4_RightStick_Click;
    k_EControllerActionOrigin_PS4_RightStick_DPadNorth         :: PS4_RightStick_DPadNorth;
    k_EControllerActionOrigin_PS4_RightStick_DPadSouth         :: PS4_RightStick_DPadSouth;
    k_EControllerActionOrigin_PS4_RightStick_DPadWest          :: PS4_RightStick_DPadWest;
    k_EControllerActionOrigin_PS4_RightStick_DPadEast          :: PS4_RightStick_DPadEast;
    k_EControllerActionOrigin_PS4_DPad_North                   :: PS4_DPad_North;
    k_EControllerActionOrigin_PS4_DPad_South                   :: PS4_DPad_South;
    k_EControllerActionOrigin_PS4_DPad_West                    :: PS4_DPad_West;
    k_EControllerActionOrigin_PS4_DPad_East                    :: PS4_DPad_East;
    k_EControllerActionOrigin_PS4_Gyro_Move                    :: PS4_Gyro_Move;
    k_EControllerActionOrigin_PS4_Gyro_Pitch                   :: PS4_Gyro_Pitch;
    k_EControllerActionOrigin_PS4_Gyro_Yaw                     :: PS4_Gyro_Yaw;
    k_EControllerActionOrigin_PS4_Gyro_Roll                    :: PS4_Gyro_Roll;

    k_EControllerActionOrigin_XBoxOne_A                        :: XBoxOne_A;
    k_EControllerActionOrigin_XBoxOne_B                        :: XBoxOne_B;
    k_EControllerActionOrigin_XBoxOne_X                        :: XBoxOne_X;
    k_EControllerActionOrigin_XBoxOne_Y                        :: XBoxOne_Y;
    k_EControllerActionOrigin_XBoxOne_LeftBumper               :: XBoxOne_LeftBumper;
    k_EControllerActionOrigin_XBoxOne_RightBumper              :: XBoxOne_RightBumper;
    k_EControllerActionOrigin_XBoxOne_Menu                     :: XBoxOne_Menu;
    k_EControllerActionOrigin_XBoxOne_View                     :: XBoxOne_View;
    k_EControllerActionOrigin_XBoxOne_LeftTrigger_Pull         :: XBoxOne_LeftTrigger_Pull;
    k_EControllerActionOrigin_XBoxOne_LeftTrigger_Click        :: XBoxOne_LeftTrigger_Click;
    k_EControllerActionOrigin_XBoxOne_RightTrigger_Pull        :: XBoxOne_RightTrigger_Pull;
    k_EControllerActionOrigin_XBoxOne_RightTrigger_Click       :: XBoxOne_RightTrigger_Click;
    k_EControllerActionOrigin_XBoxOne_LeftStick_Move           :: XBoxOne_LeftStick_Move;
    k_EControllerActionOrigin_XBoxOne_LeftStick_Click          :: XBoxOne_LeftStick_Click;
    k_EControllerActionOrigin_XBoxOne_LeftStick_DPadNorth      :: XBoxOne_LeftStick_DPadNorth;
    k_EControllerActionOrigin_XBoxOne_LeftStick_DPadSouth      :: XBoxOne_LeftStick_DPadSouth;
    k_EControllerActionOrigin_XBoxOne_LeftStick_DPadWest       :: XBoxOne_LeftStick_DPadWest;
    k_EControllerActionOrigin_XBoxOne_LeftStick_DPadEast       :: XBoxOne_LeftStick_DPadEast;
    k_EControllerActionOrigin_XBoxOne_RightStick_Move          :: XBoxOne_RightStick_Move;
    k_EControllerActionOrigin_XBoxOne_RightStick_Click         :: XBoxOne_RightStick_Click;
    k_EControllerActionOrigin_XBoxOne_RightStick_DPadNorth     :: XBoxOne_RightStick_DPadNorth;
    k_EControllerActionOrigin_XBoxOne_RightStick_DPadSouth     :: XBoxOne_RightStick_DPadSouth;
    k_EControllerActionOrigin_XBoxOne_RightStick_DPadWest      :: XBoxOne_RightStick_DPadWest;
    k_EControllerActionOrigin_XBoxOne_RightStick_DPadEast      :: XBoxOne_RightStick_DPadEast;
    k_EControllerActionOrigin_XBoxOne_DPad_North               :: XBoxOne_DPad_North;
    k_EControllerActionOrigin_XBoxOne_DPad_South               :: XBoxOne_DPad_South;
    k_EControllerActionOrigin_XBoxOne_DPad_West                :: XBoxOne_DPad_West;
    k_EControllerActionOrigin_XBoxOne_DPad_East                :: XBoxOne_DPad_East;

    k_EControllerActionOrigin_XBox360_A                        :: XBox360_A;
    k_EControllerActionOrigin_XBox360_B                        :: XBox360_B;
    k_EControllerActionOrigin_XBox360_X                        :: XBox360_X;
    k_EControllerActionOrigin_XBox360_Y                        :: XBox360_Y;
    k_EControllerActionOrigin_XBox360_LeftBumper               :: XBox360_LeftBumper;
    k_EControllerActionOrigin_XBox360_RightBumper              :: XBox360_RightBumper;
    k_EControllerActionOrigin_XBox360_Start                    :: XBox360_Start;
    k_EControllerActionOrigin_XBox360_Back                     :: XBox360_Back;
    k_EControllerActionOrigin_XBox360_LeftTrigger_Pull         :: XBox360_LeftTrigger_Pull;
    k_EControllerActionOrigin_XBox360_LeftTrigger_Click        :: XBox360_LeftTrigger_Click;
    k_EControllerActionOrigin_XBox360_RightTrigger_Pull        :: XBox360_RightTrigger_Pull;
    k_EControllerActionOrigin_XBox360_RightTrigger_Click       :: XBox360_RightTrigger_Click;
    k_EControllerActionOrigin_XBox360_LeftStick_Move           :: XBox360_LeftStick_Move;
    k_EControllerActionOrigin_XBox360_LeftStick_Click          :: XBox360_LeftStick_Click;
    k_EControllerActionOrigin_XBox360_LeftStick_DPadNorth      :: XBox360_LeftStick_DPadNorth;
    k_EControllerActionOrigin_XBox360_LeftStick_DPadSouth      :: XBox360_LeftStick_DPadSouth;
    k_EControllerActionOrigin_XBox360_LeftStick_DPadWest       :: XBox360_LeftStick_DPadWest;
    k_EControllerActionOrigin_XBox360_LeftStick_DPadEast       :: XBox360_LeftStick_DPadEast;
    k_EControllerActionOrigin_XBox360_RightStick_Move          :: XBox360_RightStick_Move;
    k_EControllerActionOrigin_XBox360_RightStick_Click         :: XBox360_RightStick_Click;
    k_EControllerActionOrigin_XBox360_RightStick_DPadNorth     :: XBox360_RightStick_DPadNorth;
    k_EControllerActionOrigin_XBox360_RightStick_DPadSouth     :: XBox360_RightStick_DPadSouth;
    k_EControllerActionOrigin_XBox360_RightStick_DPadWest      :: XBox360_RightStick_DPadWest;
    k_EControllerActionOrigin_XBox360_RightStick_DPadEast      :: XBox360_RightStick_DPadEast;
    k_EControllerActionOrigin_XBox360_DPad_North               :: XBox360_DPad_North;
    k_EControllerActionOrigin_XBox360_DPad_South               :: XBox360_DPad_South;
    k_EControllerActionOrigin_XBox360_DPad_West                :: XBox360_DPad_West;
    k_EControllerActionOrigin_XBox360_DPad_East                :: XBox360_DPad_East;

    k_EControllerActionOrigin_SteamV2_A                        :: SteamV2_A;
    k_EControllerActionOrigin_SteamV2_B                        :: SteamV2_B;
    k_EControllerActionOrigin_SteamV2_X                        :: SteamV2_X;
    k_EControllerActionOrigin_SteamV2_Y                        :: SteamV2_Y;
    k_EControllerActionOrigin_SteamV2_LeftBumper               :: SteamV2_LeftBumper;
    k_EControllerActionOrigin_SteamV2_RightBumper              :: SteamV2_RightBumper;
    k_EControllerActionOrigin_SteamV2_LeftGrip_Lower           :: SteamV2_LeftGrip_Lower;
    k_EControllerActionOrigin_SteamV2_LeftGrip_Upper           :: SteamV2_LeftGrip_Upper;
    k_EControllerActionOrigin_SteamV2_RightGrip_Lower          :: SteamV2_RightGrip_Lower;
    k_EControllerActionOrigin_SteamV2_RightGrip_Upper          :: SteamV2_RightGrip_Upper;
    k_EControllerActionOrigin_SteamV2_LeftBumper_Pressure      :: SteamV2_LeftBumper_Pressure;
    k_EControllerActionOrigin_SteamV2_RightBumper_Pressure     :: SteamV2_RightBumper_Pressure;
    k_EControllerActionOrigin_SteamV2_LeftGrip_Pressure        :: SteamV2_LeftGrip_Pressure;
    k_EControllerActionOrigin_SteamV2_RightGrip_Pressure       :: SteamV2_RightGrip_Pressure;
    k_EControllerActionOrigin_SteamV2_LeftGrip_Upper_Pressure  :: SteamV2_LeftGrip_Upper_Pressure;
    k_EControllerActionOrigin_SteamV2_RightGrip_Upper_Pressure :: SteamV2_RightGrip_Upper_Pressure;
    k_EControllerActionOrigin_SteamV2_Start                    :: SteamV2_Start;
    k_EControllerActionOrigin_SteamV2_Back                     :: SteamV2_Back;
    k_EControllerActionOrigin_SteamV2_LeftPad_Touch            :: SteamV2_LeftPad_Touch;
    k_EControllerActionOrigin_SteamV2_LeftPad_Swipe            :: SteamV2_LeftPad_Swipe;
    k_EControllerActionOrigin_SteamV2_LeftPad_Click            :: SteamV2_LeftPad_Click;
    k_EControllerActionOrigin_SteamV2_LeftPad_Pressure         :: SteamV2_LeftPad_Pressure;
    k_EControllerActionOrigin_SteamV2_LeftPad_DPadNorth        :: SteamV2_LeftPad_DPadNorth;
    k_EControllerActionOrigin_SteamV2_LeftPad_DPadSouth        :: SteamV2_LeftPad_DPadSouth;
    k_EControllerActionOrigin_SteamV2_LeftPad_DPadWest         :: SteamV2_LeftPad_DPadWest;
    k_EControllerActionOrigin_SteamV2_LeftPad_DPadEast         :: SteamV2_LeftPad_DPadEast;
    k_EControllerActionOrigin_SteamV2_RightPad_Touch           :: SteamV2_RightPad_Touch;
    k_EControllerActionOrigin_SteamV2_RightPad_Swipe           :: SteamV2_RightPad_Swipe;
    k_EControllerActionOrigin_SteamV2_RightPad_Click           :: SteamV2_RightPad_Click;
    k_EControllerActionOrigin_SteamV2_RightPad_Pressure        :: SteamV2_RightPad_Pressure;
    k_EControllerActionOrigin_SteamV2_RightPad_DPadNorth       :: SteamV2_RightPad_DPadNorth;
    k_EControllerActionOrigin_SteamV2_RightPad_DPadSouth       :: SteamV2_RightPad_DPadSouth;
    k_EControllerActionOrigin_SteamV2_RightPad_DPadWest        :: SteamV2_RightPad_DPadWest;
    k_EControllerActionOrigin_SteamV2_RightPad_DPadEast        :: SteamV2_RightPad_DPadEast;
    k_EControllerActionOrigin_SteamV2_LeftTrigger_Pull         :: SteamV2_LeftTrigger_Pull;
    k_EControllerActionOrigin_SteamV2_LeftTrigger_Click        :: SteamV2_LeftTrigger_Click;
    k_EControllerActionOrigin_SteamV2_RightTrigger_Pull        :: SteamV2_RightTrigger_Pull;
    k_EControllerActionOrigin_SteamV2_RightTrigger_Click       :: SteamV2_RightTrigger_Click;
    k_EControllerActionOrigin_SteamV2_LeftStick_Move           :: SteamV2_LeftStick_Move;
    k_EControllerActionOrigin_SteamV2_LeftStick_Click          :: SteamV2_LeftStick_Click;
    k_EControllerActionOrigin_SteamV2_LeftStick_DPadNorth      :: SteamV2_LeftStick_DPadNorth;
    k_EControllerActionOrigin_SteamV2_LeftStick_DPadSouth      :: SteamV2_LeftStick_DPadSouth;
    k_EControllerActionOrigin_SteamV2_LeftStick_DPadWest       :: SteamV2_LeftStick_DPadWest;
    k_EControllerActionOrigin_SteamV2_LeftStick_DPadEast       :: SteamV2_LeftStick_DPadEast;
    k_EControllerActionOrigin_SteamV2_Gyro_Move                :: SteamV2_Gyro_Move;
    k_EControllerActionOrigin_SteamV2_Gyro_Pitch               :: SteamV2_Gyro_Pitch;
    k_EControllerActionOrigin_SteamV2_Gyro_Yaw                 :: SteamV2_Gyro_Yaw;
    k_EControllerActionOrigin_SteamV2_Gyro_Roll                :: SteamV2_Gyro_Roll;

    k_EControllerActionOrigin_Switch_A                         :: Switch_A;
    k_EControllerActionOrigin_Switch_B                         :: Switch_B;
    k_EControllerActionOrigin_Switch_X                         :: Switch_X;
    k_EControllerActionOrigin_Switch_Y                         :: Switch_Y;
    k_EControllerActionOrigin_Switch_LeftBumper                :: Switch_LeftBumper;
    k_EControllerActionOrigin_Switch_RightBumper               :: Switch_RightBumper;
    k_EControllerActionOrigin_Switch_Plus                      :: Switch_Plus;
    k_EControllerActionOrigin_Switch_Minus                     :: Switch_Minus;
    k_EControllerActionOrigin_Switch_Capture                   :: Switch_Capture;
    k_EControllerActionOrigin_Switch_LeftTrigger_Pull          :: Switch_LeftTrigger_Pull;
    k_EControllerActionOrigin_Switch_LeftTrigger_Click         :: Switch_LeftTrigger_Click;
    k_EControllerActionOrigin_Switch_RightTrigger_Pull         :: Switch_RightTrigger_Pull;
    k_EControllerActionOrigin_Switch_RightTrigger_Click        :: Switch_RightTrigger_Click;
    k_EControllerActionOrigin_Switch_LeftStick_Move            :: Switch_LeftStick_Move;
    k_EControllerActionOrigin_Switch_LeftStick_Click           :: Switch_LeftStick_Click;
    k_EControllerActionOrigin_Switch_LeftStick_DPadNorth       :: Switch_LeftStick_DPadNorth;
    k_EControllerActionOrigin_Switch_LeftStick_DPadSouth       :: Switch_LeftStick_DPadSouth;
    k_EControllerActionOrigin_Switch_LeftStick_DPadWest        :: Switch_LeftStick_DPadWest;
    k_EControllerActionOrigin_Switch_LeftStick_DPadEast        :: Switch_LeftStick_DPadEast;
    k_EControllerActionOrigin_Switch_RightStick_Move           :: Switch_RightStick_Move;
    k_EControllerActionOrigin_Switch_RightStick_Click          :: Switch_RightStick_Click;
    k_EControllerActionOrigin_Switch_RightStick_DPadNorth      :: Switch_RightStick_DPadNorth;
    k_EControllerActionOrigin_Switch_RightStick_DPadSouth      :: Switch_RightStick_DPadSouth;
    k_EControllerActionOrigin_Switch_RightStick_DPadWest       :: Switch_RightStick_DPadWest;
    k_EControllerActionOrigin_Switch_RightStick_DPadEast       :: Switch_RightStick_DPadEast;
    k_EControllerActionOrigin_Switch_DPad_North                :: Switch_DPad_North;
    k_EControllerActionOrigin_Switch_DPad_South                :: Switch_DPad_South;
    k_EControllerActionOrigin_Switch_DPad_West                 :: Switch_DPad_West;
    k_EControllerActionOrigin_Switch_DPad_East                 :: Switch_DPad_East;
    k_EControllerActionOrigin_Switch_ProGyro_Move              :: Switch_ProGyro_Move;
    k_EControllerActionOrigin_Switch_ProGyro_Pitch             :: Switch_ProGyro_Pitch;
    k_EControllerActionOrigin_Switch_ProGyro_Yaw               :: Switch_ProGyro_Yaw;
    k_EControllerActionOrigin_Switch_ProGyro_Roll              :: Switch_ProGyro_Roll;

    k_EControllerActionOrigin_Switch_RightGyro_Move            :: Switch_RightGyro_Move;
    k_EControllerActionOrigin_Switch_RightGyro_Pitch           :: Switch_RightGyro_Pitch;
    k_EControllerActionOrigin_Switch_RightGyro_Yaw             :: Switch_RightGyro_Yaw;
    k_EControllerActionOrigin_Switch_RightGyro_Roll            :: Switch_RightGyro_Roll;
    k_EControllerActionOrigin_Switch_LeftGyro_Move             :: Switch_LeftGyro_Move;
    k_EControllerActionOrigin_Switch_LeftGyro_Pitch            :: Switch_LeftGyro_Pitch;
    k_EControllerActionOrigin_Switch_LeftGyro_Yaw              :: Switch_LeftGyro_Yaw;
    k_EControllerActionOrigin_Switch_LeftGyro_Roll             :: Switch_LeftGyro_Roll;
    k_EControllerActionOrigin_Switch_LeftGrip_Lower            :: Switch_LeftGrip_Lower;
    k_EControllerActionOrigin_Switch_LeftGrip_Upper            :: Switch_LeftGrip_Upper;
    k_EControllerActionOrigin_Switch_RightGrip_Lower           :: Switch_RightGrip_Lower;
    k_EControllerActionOrigin_Switch_RightGrip_Upper           :: Switch_RightGrip_Upper;

    k_EControllerActionOrigin_PS4_DPad_Move                    :: PS4_DPad_Move;
    k_EControllerActionOrigin_XBoxOne_DPad_Move                :: XBoxOne_DPad_Move;
    k_EControllerActionOrigin_XBox360_DPad_Move                :: XBox360_DPad_Move;
    k_EControllerActionOrigin_Switch_DPad_Move                 :: Switch_DPad_Move;

    k_EControllerActionOrigin_PS5_X                            :: PS5_X;
    k_EControllerActionOrigin_PS5_Circle                       :: PS5_Circle;
    k_EControllerActionOrigin_PS5_Triangle                     :: PS5_Triangle;
    k_EControllerActionOrigin_PS5_Square                       :: PS5_Square;
    k_EControllerActionOrigin_PS5_LeftBumper                   :: PS5_LeftBumper;
    k_EControllerActionOrigin_PS5_RightBumper                  :: PS5_RightBumper;
    k_EControllerActionOrigin_PS5_Option                       :: PS5_Option;
    k_EControllerActionOrigin_PS5_Create                       :: PS5_Create;
    k_EControllerActionOrigin_PS5_Mute                         :: PS5_Mute;
    k_EControllerActionOrigin_PS5_LeftPad_Touch                :: PS5_LeftPad_Touch;
    k_EControllerActionOrigin_PS5_LeftPad_Swipe                :: PS5_LeftPad_Swipe;
    k_EControllerActionOrigin_PS5_LeftPad_Click                :: PS5_LeftPad_Click;
    k_EControllerActionOrigin_PS5_LeftPad_DPadNorth            :: PS5_LeftPad_DPadNorth;
    k_EControllerActionOrigin_PS5_LeftPad_DPadSouth            :: PS5_LeftPad_DPadSouth;
    k_EControllerActionOrigin_PS5_LeftPad_DPadWest             :: PS5_LeftPad_DPadWest;
    k_EControllerActionOrigin_PS5_LeftPad_DPadEast             :: PS5_LeftPad_DPadEast;
    k_EControllerActionOrigin_PS5_RightPad_Touch               :: PS5_RightPad_Touch;
    k_EControllerActionOrigin_PS5_RightPad_Swipe               :: PS5_RightPad_Swipe;
    k_EControllerActionOrigin_PS5_RightPad_Click               :: PS5_RightPad_Click;
    k_EControllerActionOrigin_PS5_RightPad_DPadNorth           :: PS5_RightPad_DPadNorth;
    k_EControllerActionOrigin_PS5_RightPad_DPadSouth           :: PS5_RightPad_DPadSouth;
    k_EControllerActionOrigin_PS5_RightPad_DPadWest            :: PS5_RightPad_DPadWest;
    k_EControllerActionOrigin_PS5_RightPad_DPadEast            :: PS5_RightPad_DPadEast;
    k_EControllerActionOrigin_PS5_CenterPad_Touch              :: PS5_CenterPad_Touch;
    k_EControllerActionOrigin_PS5_CenterPad_Swipe              :: PS5_CenterPad_Swipe;
    k_EControllerActionOrigin_PS5_CenterPad_Click              :: PS5_CenterPad_Click;
    k_EControllerActionOrigin_PS5_CenterPad_DPadNorth          :: PS5_CenterPad_DPadNorth;
    k_EControllerActionOrigin_PS5_CenterPad_DPadSouth          :: PS5_CenterPad_DPadSouth;
    k_EControllerActionOrigin_PS5_CenterPad_DPadWest           :: PS5_CenterPad_DPadWest;
    k_EControllerActionOrigin_PS5_CenterPad_DPadEast           :: PS5_CenterPad_DPadEast;
    k_EControllerActionOrigin_PS5_LeftTrigger_Pull             :: PS5_LeftTrigger_Pull;
    k_EControllerActionOrigin_PS5_LeftTrigger_Click            :: PS5_LeftTrigger_Click;
    k_EControllerActionOrigin_PS5_RightTrigger_Pull            :: PS5_RightTrigger_Pull;
    k_EControllerActionOrigin_PS5_RightTrigger_Click           :: PS5_RightTrigger_Click;
    k_EControllerActionOrigin_PS5_LeftStick_Move               :: PS5_LeftStick_Move;
    k_EControllerActionOrigin_PS5_LeftStick_Click              :: PS5_LeftStick_Click;
    k_EControllerActionOrigin_PS5_LeftStick_DPadNorth          :: PS5_LeftStick_DPadNorth;
    k_EControllerActionOrigin_PS5_LeftStick_DPadSouth          :: PS5_LeftStick_DPadSouth;
    k_EControllerActionOrigin_PS5_LeftStick_DPadWest           :: PS5_LeftStick_DPadWest;
    k_EControllerActionOrigin_PS5_LeftStick_DPadEast           :: PS5_LeftStick_DPadEast;
    k_EControllerActionOrigin_PS5_RightStick_Move              :: PS5_RightStick_Move;
    k_EControllerActionOrigin_PS5_RightStick_Click             :: PS5_RightStick_Click;
    k_EControllerActionOrigin_PS5_RightStick_DPadNorth         :: PS5_RightStick_DPadNorth;
    k_EControllerActionOrigin_PS5_RightStick_DPadSouth         :: PS5_RightStick_DPadSouth;
    k_EControllerActionOrigin_PS5_RightStick_DPadWest          :: PS5_RightStick_DPadWest;
    k_EControllerActionOrigin_PS5_RightStick_DPadEast          :: PS5_RightStick_DPadEast;
    k_EControllerActionOrigin_PS5_DPad_Move                    :: PS5_DPad_Move;
    k_EControllerActionOrigin_PS5_DPad_North                   :: PS5_DPad_North;
    k_EControllerActionOrigin_PS5_DPad_South                   :: PS5_DPad_South;
    k_EControllerActionOrigin_PS5_DPad_West                    :: PS5_DPad_West;
    k_EControllerActionOrigin_PS5_DPad_East                    :: PS5_DPad_East;
    k_EControllerActionOrigin_PS5_Gyro_Move                    :: PS5_Gyro_Move;
    k_EControllerActionOrigin_PS5_Gyro_Pitch                   :: PS5_Gyro_Pitch;
    k_EControllerActionOrigin_PS5_Gyro_Yaw                     :: PS5_Gyro_Yaw;
    k_EControllerActionOrigin_PS5_Gyro_Roll                    :: PS5_Gyro_Roll;

    k_EControllerActionOrigin_XBoxOne_LeftGrip_Lower           :: XBoxOne_LeftGrip_Lower;
    k_EControllerActionOrigin_XBoxOne_LeftGrip_Upper           :: XBoxOne_LeftGrip_Upper;
    k_EControllerActionOrigin_XBoxOne_RightGrip_Lower          :: XBoxOne_RightGrip_Lower;
    k_EControllerActionOrigin_XBoxOne_RightGrip_Upper          :: XBoxOne_RightGrip_Upper;
    k_EControllerActionOrigin_XBoxOne_Share                    :: XBoxOne_Share;

    k_EControllerActionOrigin_SteamDeck_A                      :: SteamDeck_A;
    k_EControllerActionOrigin_SteamDeck_B                      :: SteamDeck_B;
    k_EControllerActionOrigin_SteamDeck_X                      :: SteamDeck_X;
    k_EControllerActionOrigin_SteamDeck_Y                      :: SteamDeck_Y;
    k_EControllerActionOrigin_SteamDeck_L1                     :: SteamDeck_L1;
    k_EControllerActionOrigin_SteamDeck_R1                     :: SteamDeck_R1;
    k_EControllerActionOrigin_SteamDeck_Menu                   :: SteamDeck_Menu;
    k_EControllerActionOrigin_SteamDeck_View                   :: SteamDeck_View;
    k_EControllerActionOrigin_SteamDeck_LeftPad_Touch          :: SteamDeck_LeftPad_Touch;
    k_EControllerActionOrigin_SteamDeck_LeftPad_Swipe          :: SteamDeck_LeftPad_Swipe;
    k_EControllerActionOrigin_SteamDeck_LeftPad_Click          :: SteamDeck_LeftPad_Click;
    k_EControllerActionOrigin_SteamDeck_LeftPad_DPadNorth      :: SteamDeck_LeftPad_DPadNorth;
    k_EControllerActionOrigin_SteamDeck_LeftPad_DPadSouth      :: SteamDeck_LeftPad_DPadSouth;
    k_EControllerActionOrigin_SteamDeck_LeftPad_DPadWest       :: SteamDeck_LeftPad_DPadWest;
    k_EControllerActionOrigin_SteamDeck_LeftPad_DPadEast       :: SteamDeck_LeftPad_DPadEast;
    k_EControllerActionOrigin_SteamDeck_RightPad_Touch         :: SteamDeck_RightPad_Touch;
    k_EControllerActionOrigin_SteamDeck_RightPad_Swipe         :: SteamDeck_RightPad_Swipe;
    k_EControllerActionOrigin_SteamDeck_RightPad_Click         :: SteamDeck_RightPad_Click;
    k_EControllerActionOrigin_SteamDeck_RightPad_DPadNorth     :: SteamDeck_RightPad_DPadNorth;
    k_EControllerActionOrigin_SteamDeck_RightPad_DPadSouth     :: SteamDeck_RightPad_DPadSouth;
    k_EControllerActionOrigin_SteamDeck_RightPad_DPadWest      :: SteamDeck_RightPad_DPadWest;
    k_EControllerActionOrigin_SteamDeck_RightPad_DPadEast      :: SteamDeck_RightPad_DPadEast;
    k_EControllerActionOrigin_SteamDeck_L2_SoftPull            :: SteamDeck_L2_SoftPull;
    k_EControllerActionOrigin_SteamDeck_L2                     :: SteamDeck_L2;
    k_EControllerActionOrigin_SteamDeck_R2_SoftPull            :: SteamDeck_R2_SoftPull;
    k_EControllerActionOrigin_SteamDeck_R2                     :: SteamDeck_R2;
    k_EControllerActionOrigin_SteamDeck_LeftStick_Move         :: SteamDeck_LeftStick_Move;
    k_EControllerActionOrigin_SteamDeck_L3                     :: SteamDeck_L3;
    k_EControllerActionOrigin_SteamDeck_LeftStick_DPadNorth    :: SteamDeck_LeftStick_DPadNorth;
    k_EControllerActionOrigin_SteamDeck_LeftStick_DPadSouth    :: SteamDeck_LeftStick_DPadSouth;
    k_EControllerActionOrigin_SteamDeck_LeftStick_DPadWest     :: SteamDeck_LeftStick_DPadWest;
    k_EControllerActionOrigin_SteamDeck_LeftStick_DPadEast     :: SteamDeck_LeftStick_DPadEast;
    k_EControllerActionOrigin_SteamDeck_LeftStick_Touch        :: SteamDeck_LeftStick_Touch;
    k_EControllerActionOrigin_SteamDeck_RightStick_Move        :: SteamDeck_RightStick_Move;
    k_EControllerActionOrigin_SteamDeck_R3                     :: SteamDeck_R3;
    k_EControllerActionOrigin_SteamDeck_RightStick_DPadNorth   :: SteamDeck_RightStick_DPadNorth;
    k_EControllerActionOrigin_SteamDeck_RightStick_DPadSouth   :: SteamDeck_RightStick_DPadSouth;
    k_EControllerActionOrigin_SteamDeck_RightStick_DPadWest    :: SteamDeck_RightStick_DPadWest;
    k_EControllerActionOrigin_SteamDeck_RightStick_DPadEast    :: SteamDeck_RightStick_DPadEast;
    k_EControllerActionOrigin_SteamDeck_RightStick_Touch       :: SteamDeck_RightStick_Touch;
    k_EControllerActionOrigin_SteamDeck_L4                     :: SteamDeck_L4;
    k_EControllerActionOrigin_SteamDeck_R4                     :: SteamDeck_R4;
    k_EControllerActionOrigin_SteamDeck_L5                     :: SteamDeck_L5;
    k_EControllerActionOrigin_SteamDeck_R5                     :: SteamDeck_R5;
    k_EControllerActionOrigin_SteamDeck_DPad_Move              :: SteamDeck_DPad_Move;
    k_EControllerActionOrigin_SteamDeck_DPad_North             :: SteamDeck_DPad_North;
    k_EControllerActionOrigin_SteamDeck_DPad_South             :: SteamDeck_DPad_South;
    k_EControllerActionOrigin_SteamDeck_DPad_West              :: SteamDeck_DPad_West;
    k_EControllerActionOrigin_SteamDeck_DPad_East              :: SteamDeck_DPad_East;
    k_EControllerActionOrigin_SteamDeck_Gyro_Move              :: SteamDeck_Gyro_Move;
    k_EControllerActionOrigin_SteamDeck_Gyro_Pitch             :: SteamDeck_Gyro_Pitch;
    k_EControllerActionOrigin_SteamDeck_Gyro_Yaw               :: SteamDeck_Gyro_Yaw;
    k_EControllerActionOrigin_SteamDeck_Gyro_Roll              :: SteamDeck_Gyro_Roll;
    k_EControllerActionOrigin_SteamDeck_Reserved1              :: SteamDeck_Reserved1;
    k_EControllerActionOrigin_SteamDeck_Reserved2              :: SteamDeck_Reserved2;
    k_EControllerActionOrigin_SteamDeck_Reserved3              :: SteamDeck_Reserved3;
    k_EControllerActionOrigin_SteamDeck_Reserved4              :: SteamDeck_Reserved4;
    k_EControllerActionOrigin_SteamDeck_Reserved5              :: SteamDeck_Reserved5;
    k_EControllerActionOrigin_SteamDeck_Reserved6              :: SteamDeck_Reserved6;
    k_EControllerActionOrigin_SteamDeck_Reserved7              :: SteamDeck_Reserved7;
    k_EControllerActionOrigin_SteamDeck_Reserved8              :: SteamDeck_Reserved8;
    k_EControllerActionOrigin_SteamDeck_Reserved9              :: SteamDeck_Reserved9;
    k_EControllerActionOrigin_SteamDeck_Reserved10             :: SteamDeck_Reserved10;
    k_EControllerActionOrigin_SteamDeck_Reserved11             :: SteamDeck_Reserved11;
    k_EControllerActionOrigin_SteamDeck_Reserved12             :: SteamDeck_Reserved12;
    k_EControllerActionOrigin_SteamDeck_Reserved13             :: SteamDeck_Reserved13;
    k_EControllerActionOrigin_SteamDeck_Reserved14             :: SteamDeck_Reserved14;
    k_EControllerActionOrigin_SteamDeck_Reserved15             :: SteamDeck_Reserved15;
    k_EControllerActionOrigin_SteamDeck_Reserved16             :: SteamDeck_Reserved16;
    k_EControllerActionOrigin_SteamDeck_Reserved17             :: SteamDeck_Reserved17;
    k_EControllerActionOrigin_SteamDeck_Reserved18             :: SteamDeck_Reserved18;
    k_EControllerActionOrigin_SteamDeck_Reserved19             :: SteamDeck_Reserved19;
    k_EControllerActionOrigin_SteamDeck_Reserved20             :: SteamDeck_Reserved20;

    k_EControllerActionOrigin_Switch_JoyConButton_N            :: Switch_JoyConButton_N;
    k_EControllerActionOrigin_Switch_JoyConButton_E            :: Switch_JoyConButton_E;
    k_EControllerActionOrigin_Switch_JoyConButton_S            :: Switch_JoyConButton_S;
    k_EControllerActionOrigin_Switch_JoyConButton_W            :: Switch_JoyConButton_W;

    k_EControllerActionOrigin_PS5_LeftGrip                     :: PS5_LeftGrip;
    k_EControllerActionOrigin_PS5_RightGrip                    :: PS5_RightGrip;
    k_EControllerActionOrigin_PS5_LeftFn                       :: PS5_LeftFn;
    k_EControllerActionOrigin_PS5_RightFn                      :: PS5_RightFn;

    k_EControllerActionOrigin_Count                            :: Count;
    k_EControllerActionOrigin_MaximumPossibleValue             :: MaximumPossibleValue;
}

// ControllerHandle_t is used to refer to a specific controller.
// This handle will consistently identify a controller, even if it is disconnected and re-connected
ControllerHandle_t :: uint64;

// These handles are used to refer to a specific in-game action or action set
// All action handles should be queried during initialization for performance reasons
ControllerActionSetHandle_t :: uint64;
ControllerDigitalActionHandle_t :: uint64;
ControllerAnalogActionHandle_t :: uint64;

//-----------------------------------------------------------------------------
// Purpose: Steam Input API
//-----------------------------------------------------------------------------
ISteamController :: struct {
    vtable: *ISteamController_VTable;
}
ISteamController_VTable :: struct #type_info_none {
    Init: *void;
    Shutdown: *void;

    RunFrame: *void;

    GetConnectedControllers: *void;

    GetActionSetHandle: *void;

    ActivateActionSet: *void;
    GetCurrentActionSet: *void;

    ActivateActionSetLayer: *void;
    DeactivateActionSetLayer: *void;
    DeactivateAllActionSetLayers: *void;

    GetActiveActionSetLayers: *void;

    GetDigitalActionHandle: *void;

    GetDigitalActionData: *void;

    GetDigitalActionOrigins: *void;

    GetAnalogActionHandle: *void;

    GetAnalogActionData: *void;

    GetAnalogActionOrigins: *void;

    GetGlyphForActionOrigin: *void;

    GetStringForActionOrigin: *void;

    StopAnalogActionMomentum: *void;

    GetMotionData: *void;

    TriggerHapticPulse: *void;

    TriggerRepeatedHapticPulse: *void;

    TriggerVibration: *void;

    SetLEDColor: *void;

    ShowBindingPanel: *void;

    GetInputTypeForHandle: *void;

    GetControllerForGamepadIndex: *void;

    GetGamepadIndexForController: *void;

    GetStringForXboxOrigin: *void;

    GetGlyphForXboxOrigin: *void;

    GetActionOriginFromXboxOrigin: *void;

    TranslateActionOrigin: *void;

    GetControllerBindingRevision: *void;
}

vtable :: (obj: *ISteamController) -> *ISteamController_VTable { return obj.vtable; }


UGCQueryHandle_t :: uint64;
UGCUpdateHandle_t :: uint64;

// Matching UGC types for queries
EUGCMatchingUGCType :: enum s32 {
    Items              :: 0;
    Items_Mtx          :: 1;
    Items_ReadyToUse   :: 2;
    Collections        :: 3;
    Artwork            :: 4;
    Videos             :: 5;
    Screenshots        :: 6;
    AllGuides          :: 7;
    WebGuides          :: 8;
    IntegratedGuides   :: 9;
    UsableInGame       :: 10;
    ControllerBindings :: 11;
    GameManagedItems   :: 12;
    All                :: -1;

    k_EUGCMatchingUGCType_Items              :: Items;
    k_EUGCMatchingUGCType_Items_Mtx          :: Items_Mtx;
    k_EUGCMatchingUGCType_Items_ReadyToUse   :: Items_ReadyToUse;
    k_EUGCMatchingUGCType_Collections        :: Collections;
    k_EUGCMatchingUGCType_Artwork            :: Artwork;
    k_EUGCMatchingUGCType_Videos             :: Videos;
    k_EUGCMatchingUGCType_Screenshots        :: Screenshots;
    k_EUGCMatchingUGCType_AllGuides          :: AllGuides;
    k_EUGCMatchingUGCType_WebGuides          :: WebGuides;
    k_EUGCMatchingUGCType_IntegratedGuides   :: IntegratedGuides;
    k_EUGCMatchingUGCType_UsableInGame       :: UsableInGame;
    k_EUGCMatchingUGCType_ControllerBindings :: ControllerBindings;
    k_EUGCMatchingUGCType_GameManagedItems   :: GameManagedItems;
    k_EUGCMatchingUGCType_All                :: All;
}

// Different lists of published UGC for a user.
// If the current logged in user is different than the specified user, then some options may not be allowed.
EUserUGCList :: enum s32 {
    Published     :: 0;
    VotedOn       :: 1;
    VotedUp       :: 2;
    VotedDown     :: 3;
    WillVoteLater :: 4;
    Favorited     :: 5;
    Subscribed    :: 6;
    UsedOrPlayed  :: 7;
    Followed      :: 8;

    k_EUserUGCList_Published     :: Published;
    k_EUserUGCList_VotedOn       :: VotedOn;
    k_EUserUGCList_VotedUp       :: VotedUp;
    k_EUserUGCList_VotedDown     :: VotedDown;
    k_EUserUGCList_WillVoteLater :: WillVoteLater;
    k_EUserUGCList_Favorited     :: Favorited;
    k_EUserUGCList_Subscribed    :: Subscribed;
    k_EUserUGCList_UsedOrPlayed  :: UsedOrPlayed;
    k_EUserUGCList_Followed      :: Followed;
}

// Sort order for user published UGC lists (defaults to creation order descending)
EUserUGCListSortOrder :: enum s32 {
    CreationOrderDesc    :: 0;
    CreationOrderAsc     :: 1;
    TitleAsc             :: 2;
    LastUpdatedDesc      :: 3;
    SubscriptionDateDesc :: 4;
    VoteScoreDesc        :: 5;
    ForModeration        :: 6;

    k_EUserUGCListSortOrder_CreationOrderDesc    :: CreationOrderDesc;
    k_EUserUGCListSortOrder_CreationOrderAsc     :: CreationOrderAsc;
    k_EUserUGCListSortOrder_TitleAsc             :: TitleAsc;
    k_EUserUGCListSortOrder_LastUpdatedDesc      :: LastUpdatedDesc;
    k_EUserUGCListSortOrder_SubscriptionDateDesc :: SubscriptionDateDesc;
    k_EUserUGCListSortOrder_VoteScoreDesc        :: VoteScoreDesc;
    k_EUserUGCListSortOrder_ForModeration        :: ForModeration;
}

// Combination of sorting and filtering for queries across all UGC
EUGCQuery :: enum s32 {
    RankedByVote                                  :: 0;
    RankedByPublicationDate                       :: 1;
    AcceptedForGameRankedByAcceptanceDate         :: 2;
    RankedByTrend                                 :: 3;
    FavoritedByFriendsRankedByPublicationDate     :: 4;
    CreatedByFriendsRankedByPublicationDate       :: 5;
    RankedByNumTimesReported                      :: 6;
    CreatedByFollowedUsersRankedByPublicationDate :: 7;
    NotYetRated                                   :: 8;
    RankedByTotalVotesAsc                         :: 9;
    RankedByVotesUp                               :: 10;
    RankedByTextSearch                            :: 11;
    RankedByTotalUniqueSubscriptions              :: 12;
    RankedByPlaytimeTrend                         :: 13;
    RankedByTotalPlaytime                         :: 14;
    RankedByAveragePlaytimeTrend                  :: 15;
    RankedByLifetimeAveragePlaytime               :: 16;
    RankedByPlaytimeSessionsTrend                 :: 17;
    RankedByLifetimePlaytimeSessions              :: 18;
    RankedByLastUpdatedDate                       :: 19;

    k_EUGCQuery_RankedByVote                                  :: RankedByVote;
    k_EUGCQuery_RankedByPublicationDate                       :: RankedByPublicationDate;
    k_EUGCQuery_AcceptedForGameRankedByAcceptanceDate         :: AcceptedForGameRankedByAcceptanceDate;
    k_EUGCQuery_RankedByTrend                                 :: RankedByTrend;
    k_EUGCQuery_FavoritedByFriendsRankedByPublicationDate     :: FavoritedByFriendsRankedByPublicationDate;
    k_EUGCQuery_CreatedByFriendsRankedByPublicationDate       :: CreatedByFriendsRankedByPublicationDate;
    k_EUGCQuery_RankedByNumTimesReported                      :: RankedByNumTimesReported;
    k_EUGCQuery_CreatedByFollowedUsersRankedByPublicationDate :: CreatedByFollowedUsersRankedByPublicationDate;
    k_EUGCQuery_NotYetRated                                   :: NotYetRated;
    k_EUGCQuery_RankedByTotalVotesAsc                         :: RankedByTotalVotesAsc;
    k_EUGCQuery_RankedByVotesUp                               :: RankedByVotesUp;
    k_EUGCQuery_RankedByTextSearch                            :: RankedByTextSearch;
    k_EUGCQuery_RankedByTotalUniqueSubscriptions              :: RankedByTotalUniqueSubscriptions;
    k_EUGCQuery_RankedByPlaytimeTrend                         :: RankedByPlaytimeTrend;
    k_EUGCQuery_RankedByTotalPlaytime                         :: RankedByTotalPlaytime;
    k_EUGCQuery_RankedByAveragePlaytimeTrend                  :: RankedByAveragePlaytimeTrend;
    k_EUGCQuery_RankedByLifetimeAveragePlaytime               :: RankedByLifetimeAveragePlaytime;
    k_EUGCQuery_RankedByPlaytimeSessionsTrend                 :: RankedByPlaytimeSessionsTrend;
    k_EUGCQuery_RankedByLifetimePlaytimeSessions              :: RankedByLifetimePlaytimeSessions;
    k_EUGCQuery_RankedByLastUpdatedDate                       :: RankedByLastUpdatedDate;
}

EItemUpdateStatus :: enum s32 {
    EItemUpdateStatusInvalid              :: 0;
    EItemUpdateStatusPreparingConfig      :: 1;
    EItemUpdateStatusPreparingContent     :: 2;
    EItemUpdateStatusUploadingContent     :: 3;
    EItemUpdateStatusUploadingPreviewFile :: 4;
    EItemUpdateStatusCommittingChanges    :: 5;

    k_EItemUpdateStatusInvalid              :: EItemUpdateStatusInvalid;
    k_EItemUpdateStatusPreparingConfig      :: EItemUpdateStatusPreparingConfig;
    k_EItemUpdateStatusPreparingContent     :: EItemUpdateStatusPreparingContent;
    k_EItemUpdateStatusUploadingContent     :: EItemUpdateStatusUploadingContent;
    k_EItemUpdateStatusUploadingPreviewFile :: EItemUpdateStatusUploadingPreviewFile;
    k_EItemUpdateStatusCommittingChanges    :: EItemUpdateStatusCommittingChanges;
}

EItemStatistic :: enum s32 {
    NumSubscriptions                    :: 0;
    NumFavorites                        :: 1;
    NumFollowers                        :: 2;
    NumUniqueSubscriptions              :: 3;
    NumUniqueFavorites                  :: 4;
    NumUniqueFollowers                  :: 5;
    NumUniqueWebsiteViews               :: 6;
    ReportScore                         :: 7;
    NumSecondsPlayed                    :: 8;
    NumPlaytimeSessions                 :: 9;
    NumComments                         :: 10;
    NumSecondsPlayedDuringTimePeriod    :: 11;
    NumPlaytimeSessionsDuringTimePeriod :: 12;

    k_EItemStatistic_NumSubscriptions                    :: NumSubscriptions;
    k_EItemStatistic_NumFavorites                        :: NumFavorites;
    k_EItemStatistic_NumFollowers                        :: NumFollowers;
    k_EItemStatistic_NumUniqueSubscriptions              :: NumUniqueSubscriptions;
    k_EItemStatistic_NumUniqueFavorites                  :: NumUniqueFavorites;
    k_EItemStatistic_NumUniqueFollowers                  :: NumUniqueFollowers;
    k_EItemStatistic_NumUniqueWebsiteViews               :: NumUniqueWebsiteViews;
    k_EItemStatistic_ReportScore                         :: ReportScore;
    k_EItemStatistic_NumSecondsPlayed                    :: NumSecondsPlayed;
    k_EItemStatistic_NumPlaytimeSessions                 :: NumPlaytimeSessions;
    k_EItemStatistic_NumComments                         :: NumComments;
    k_EItemStatistic_NumSecondsPlayedDuringTimePeriod    :: NumSecondsPlayedDuringTimePeriod;
    k_EItemStatistic_NumPlaytimeSessionsDuringTimePeriod :: NumPlaytimeSessionsDuringTimePeriod;
}

EItemPreviewType :: enum s32 {
    Image                          :: 0;
    YouTubeVideo                   :: 1;
    Sketchfab                      :: 2;
    EnvironmentMap_HorizontalCross :: 3;

    EnvironmentMap_LatLong         :: 4;
    Clip                           :: 5;
    ReservedMax                    :: 255;

    k_EItemPreviewType_Image                          :: Image;
    k_EItemPreviewType_YouTubeVideo                   :: YouTubeVideo;
    k_EItemPreviewType_Sketchfab                      :: Sketchfab;
    k_EItemPreviewType_EnvironmentMap_HorizontalCross :: EnvironmentMap_HorizontalCross;

    k_EItemPreviewType_EnvironmentMap_LatLong         :: EnvironmentMap_LatLong;
    k_EItemPreviewType_Clip                           :: Clip;
    k_EItemPreviewType_ReservedMax                    :: ReservedMax;
}

EUGCContentDescriptorID :: enum s32 {
    NudityOrSexualContent   :: 1;
    FrequentViolenceOrGore  :: 2;
    AdultOnlySexualContent  :: 3;
    GratuitousSexualContent :: 4;
    AnyMatureContent        :: 5;

    k_EUGCContentDescriptor_NudityOrSexualContent   :: NudityOrSexualContent;
    k_EUGCContentDescriptor_FrequentViolenceOrGore  :: FrequentViolenceOrGore;
    k_EUGCContentDescriptor_AdultOnlySexualContent  :: AdultOnlySexualContent;
    k_EUGCContentDescriptor_GratuitousSexualContent :: GratuitousSexualContent;
    k_EUGCContentDescriptor_AnyMatureContent        :: AnyMatureContent;
}

// Details for a single published file/UGC
SteamUGCDetails_t :: struct {}

//-----------------------------------------------------------------------------
// Purpose: Steam UGC support API
//-----------------------------------------------------------------------------
ISteamUGC :: struct {
    vtable: *ISteamUGC_VTable;
}
ISteamUGC_VTable :: struct #type_info_none {
    CreateQueryUserUGCRequest: *void;

    CreateQueryAllUGCRequest: *void;

    CreateQueryAllUGCRequest_1: *void;

    CreateQueryUGCDetailsRequest: *void;

    SendQueryUGCRequest: *void;

    GetQueryUGCResult: *void;
    GetQueryUGCNumTags: *void;
    GetQueryUGCTag: *void;
    GetQueryUGCTagDisplayName: *void;
    GetQueryUGCPreviewURL: *void;
    GetQueryUGCMetadata: *void;
    GetQueryUGCChildren: *void;
    GetQueryUGCStatistic: *void;
    GetQueryUGCNumAdditionalPreviews: *void;
    GetQueryUGCAdditionalPreview: *void;
    GetQueryUGCNumKeyValueTags: *void;

    GetQueryUGCKeyValueTag: *void;

    GetQueryUGCKeyValueTag_1: *void;

    GetNumSupportedGameVersions: *void;
    GetSupportedGameVersionData: *void;

    GetQueryUGCContentDescriptors: *void;

    ReleaseQueryUGCRequest: *void;

    AddRequiredTag: *void;
    AddRequiredTagGroup: *void;
    AddExcludedTag: *void;
    SetReturnOnlyIDs: *void;
    SetReturnKeyValueTags: *void;
    SetReturnLongDescription: *void;
    SetReturnMetadata: *void;
    SetReturnChildren: *void;
    SetReturnAdditionalPreviews: *void;
    SetReturnTotalOnly: *void;
    SetReturnPlaytimeStats: *void;
    SetLanguage: *void;
    SetAllowCachedResponse: *void;
    SetAdminQuery: *void;

    SetCloudFileNameFilter: *void;

    SetMatchAnyTag: *void;
    SetSearchText: *void;
    SetRankedByTrendDays: *void;
    SetTimeCreatedDateRange: *void;
    SetTimeUpdatedDateRange: *void;
    AddRequiredKeyValueTag: *void;

    RequestUGCDetails: *void;

    CreateItem: *void;

    StartItemUpdate: *void;

    SetItemTitle: *void;
    SetItemDescription: *void;
    SetItemUpdateLanguage: *void;
    SetItemMetadata: *void;
    SetItemVisibility: *void;
    SetItemTags: *void;
    SetItemContent: *void;
    SetItemPreview: *void;
    SetAllowLegacyUpload: *void;
    RemoveAllItemKeyValueTags: *void;
    RemoveItemKeyValueTags: *void;
    AddItemKeyValueTag: *void;
    AddItemPreviewFile: *void;
    AddItemPreviewVideo: *void;
    UpdateItemPreviewFile: *void;
    UpdateItemPreviewVideo: *void;
    RemoveItemPreview: *void;
    AddContentDescriptor: *void;
    RemoveContentDescriptor: *void;
    SetRequiredGameVersions: *void;

    SubmitItemUpdate: *void;
    GetItemUpdateProgress: *void;

    SetUserItemVote: *void;

    GetUserItemVote: *void;

    AddItemToFavorites: *void;

    RemoveItemFromFavorites: *void;

    SubscribeItem: *void;

    UnsubscribeItem: *void;
    GetNumSubscribedItems: *void;
    GetSubscribedItems: *void;

    GetItemState: *void;

    GetItemInstallInfo: *void;

    GetItemDownloadInfo: *void;

    DownloadItem: *void;

    BInitWorkshopForGameServer: *void;

    SuspendDownloads: *void;

    StartPlaytimeTracking: *void;

    StopPlaytimeTracking: *void;

    StopPlaytimeTrackingForAllItems: *void;

    AddDependency: *void;

    RemoveDependency: *void;

    AddAppDependency: *void;

    RemoveAppDependency: *void;

    GetAppDependencies: *void;

    DeleteItem: *void;

    ShowWorkshopEULA: *void;

    GetWorkshopEULAStatus: *void;

    GetUserContentDescriptorPreferences: *void;
}

vtable :: (obj: *ISteamUGC) -> *ISteamUGC_VTable { return obj.vtable; }


HHTMLBrowser :: uint32;

//-----------------------------------------------------------------------------
// Purpose: Functions for displaying HTML pages and interacting with them
//-----------------------------------------------------------------------------
ISteamHTMLSurface :: struct {
    vtable: *ISteamHTMLSurface_VTable;
    EHTMLMouseButton :: enum s32 {
        Left   :: 0;
        Right  :: 1;
        Middle :: 2;

        eHTMLMouseButton_Left   :: Left;
        eHTMLMouseButton_Right  :: Right;
        eHTMLMouseButton_Middle :: Middle;
    }

    EHTMLKeyModifiers :: enum s32 {
        None      :: 0;
        AltDown   :: 1;
        CtrlDown  :: 2;
        ShiftDown :: 4;

        k_eHTMLKeyModifier_None      :: None;
        k_eHTMLKeyModifier_AltDown   :: AltDown;
        k_eHTMLKeyModifier_CtrlDown  :: CtrlDown;
        k_eHTMLKeyModifier_ShiftDown :: ShiftDown;
    }
}
ISteamHTMLSurface_VTable :: struct #type_info_none {
    Destructor: *void;

    Init: *void;
    Shutdown: *void;

    CreateBrowser: *void;

    RemoveBrowser: *void;

    LoadURL: *void;

    SetSize: *void;

    StopLoad: *void;

    Reload: *void;

    GoBack: *void;

    GoForward: *void;

    AddHeader: *void;

    ExecuteJavascript: *void;

    MouseUp: *void;
    MouseDown: *void;
    MouseDoubleClick: *void;

    MouseMove: *void;

    MouseWheel: *void;

    KeyDown: *void;
    KeyUp: *void;

    KeyChar: *void;

    SetHorizontalScroll: *void;
    SetVerticalScroll: *void;

    SetKeyFocus: *void;

    ViewSource: *void;

    CopyToClipboard: *void;

    PasteFromClipboard: *void;

    Find: *void;

    StopFind: *void;

    GetLinkAtPosition: *void;

    SetCookie: *void;

    SetPageScaleFactor: *void;

    SetBackgroundMode: *void;

    SetDPIScalingFactor: *void;

    OpenDeveloperTools: *void;

    AllowStartRequest: *void;

    JSDialogResponse: *void;

    FileLoadDialogResponse: *void;
}

vtable :: (obj: *ISteamHTMLSurface) -> *ISteamHTMLSurface_VTable { return obj.vtable; }


// Every individual instance of an item has a globally-unique ItemInstanceID.
// This ID is unique to the combination of (player, specific item instance)
// and will not be transferred to another player or re-used for another item.
SteamItemInstanceID_t :: uint64;

// Types of items in your game are identified by a 32-bit "item definition number".
// Valid definition numbers are between 1 and 999999999; numbers less than or equal to
// zero are invalid, and numbers greater than or equal to one billion (1x10^9) are
// reserved for internal Steam use.
SteamItemDef_t :: int32;

SteamItemDetails_t :: struct {}

SteamInventoryResult_t :: int32;

SteamInventoryUpdateHandle_t :: uint64;

//-----------------------------------------------------------------------------
// Purpose: Steam Inventory query and manipulation API
//-----------------------------------------------------------------------------
ISteamInventory :: struct {
    vtable: *ISteamInventory_VTable;
}
ISteamInventory_VTable :: struct #type_info_none {
    GetResultStatus: *void;

    GetResultItems: *void;

    GetResultItemProperty: *void;

    GetResultTimestamp: *void;

    CheckResultSteamID: *void;

    DestroyResult: *void;

    GetAllItems: *void;

    GetItemsByID: *void;

    SerializeResult: *void;

    DeserializeResult: *void;

    GenerateItems: *void;

    GrantPromoItems: *void;

    AddPromoItem: *void;
    AddPromoItems: *void;

    ConsumeItem: *void;

    ExchangeItems: *void;

    TransferItemQuantity: *void;

    SendItemDropHeartbeat: *void;

    TriggerItemDrop: *void;

    TradeItems: *void;

    LoadItemDefinitions: *void;

    GetItemDefinitionIDs: *void;

    GetItemDefinitionProperty: *void;

    RequestEligiblePromoItemDefinitionsIDs: *void;

    GetEligiblePromoItemDefinitionIDs: *void;

    StartPurchase: *void;

    RequestPrices: *void;

    GetNumItemsWithPrices: *void;

    GetItemsWithPrices: *void;

    GetItemPrice: *void;

    StartUpdateProperties: *void;

    RemoveProperty: *void;

    SetProperty: *void;

    SetProperty_1: *void;

    SetProperty_2: *void;

    SetProperty_3: *void;

    SubmitUpdateProperties: *void;

    InspectItem: *void;
}

vtable :: (obj: *ISteamInventory) -> *ISteamInventory_VTable { return obj.vtable; }


// Controls the color of the timeline bar segments. The value names listed here map to a multiplayer game, where
// the user starts a game (in menus), then joins a multiplayer session that first has a character selection lobby
// then finally the multiplayer session starts. However, you can also map these values to any type of game. In a single
// player game where you visit towns & dungeons, you could set k_ETimelineGameMode_Menus when the player is in a town
// buying items, k_ETimelineGameMode_Staging for when a dungeon is loading and k_ETimelineGameMode_Playing for when
// inside the dungeon fighting monsters.
ETimelineGameMode :: enum s32 {
    Invalid       :: 0;
    Playing       :: 1;
    Staging       :: 2;
    Menus         :: 3;
    LoadingScreen :: 4;

    Max           :: 5;

    k_ETimelineGameMode_Invalid       :: Invalid;
    k_ETimelineGameMode_Playing       :: Playing;
    k_ETimelineGameMode_Staging       :: Staging;
    k_ETimelineGameMode_Menus         :: Menus;
    k_ETimelineGameMode_LoadingScreen :: LoadingScreen;

    k_ETimelineGameMode_Max           :: Max;
}

// Used in AddTimelineEvent, where Featured events will be offered before Standard events
ETimelineEventClipPriority :: enum s32 {
    Invalid  :: 0;
    None     :: 1;
    Standard :: 2;
    Featured :: 3;

    k_ETimelineEventClipPriority_Invalid  :: Invalid;
    k_ETimelineEventClipPriority_None     :: None;
    k_ETimelineEventClipPriority_Standard :: Standard;
    k_ETimelineEventClipPriority_Featured :: Featured;
}

//-----------------------------------------------------------------------------
// Purpose: Steam Timeline API
//-----------------------------------------------------------------------------
ISteamTimeline :: struct {
    vtable: *ISteamTimeline_VTable;
}
ISteamTimeline_VTable :: struct #type_info_none {
    SetTimelineStateDescription: *void;
    ClearTimelineStateDescription: *void;

    AddTimelineEvent: *void;

    SetTimelineGameMode: *void;
}

vtable :: (obj: *ISteamTimeline) -> *ISteamTimeline_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Steam Video API
//-----------------------------------------------------------------------------
ISteamVideo :: struct {
    vtable: *ISteamVideo_VTable;
}
ISteamVideo_VTable :: struct #type_info_none {
    GetVideoURL: *void;

    IsBroadcasting: *void;

    GetOPFSettings: *void;
    GetOPFStringForApp: *void;
}

vtable :: (obj: *ISteamVideo) -> *ISteamVideo_VTable { return obj.vtable; }


// Feature types for parental settings
EParentalFeature :: enum s32 {
    EFeatureInvalid              :: 0;
    EFeatureStore                :: 1;
    EFeatureCommunity            :: 2;
    EFeatureProfile              :: 3;
    EFeatureFriends              :: 4;
    EFeatureNews                 :: 5;
    EFeatureTrading              :: 6;
    EFeatureSettings             :: 7;
    EFeatureConsole              :: 8;
    EFeatureBrowser              :: 9;
    EFeatureParentalSetup        :: 10;
    EFeatureLibrary              :: 11;
    EFeatureTest                 :: 12;
    EFeatureSiteLicense          :: 13;
    EFeatureKioskMode_Deprecated :: 14;
    EFeatureBlockAlways          :: 15;
    EFeatureMax                  :: 16;

    k_EFeatureInvalid              :: EFeatureInvalid;
    k_EFeatureStore                :: EFeatureStore;
    k_EFeatureCommunity            :: EFeatureCommunity;
    k_EFeatureProfile              :: EFeatureProfile;
    k_EFeatureFriends              :: EFeatureFriends;
    k_EFeatureNews                 :: EFeatureNews;
    k_EFeatureTrading              :: EFeatureTrading;
    k_EFeatureSettings             :: EFeatureSettings;
    k_EFeatureConsole              :: EFeatureConsole;
    k_EFeatureBrowser              :: EFeatureBrowser;
    k_EFeatureParentalSetup        :: EFeatureParentalSetup;
    k_EFeatureLibrary              :: EFeatureLibrary;
    k_EFeatureTest                 :: EFeatureTest;
    k_EFeatureSiteLicense          :: EFeatureSiteLicense;
    k_EFeatureKioskMode_Deprecated :: EFeatureKioskMode_Deprecated;
    k_EFeatureBlockAlways          :: EFeatureBlockAlways;
    k_EFeatureMax                  :: EFeatureMax;
}

ISteamParentalSettings :: struct {
    vtable: *ISteamParentalSettings_VTable;
}
ISteamParentalSettings_VTable :: struct #type_info_none {
    BIsParentalLockEnabled: *void;
    BIsParentalLockLocked: *void;

    BIsAppBlocked: *void;
    BIsAppInBlockList: *void;

    BIsFeatureBlocked: *void;
    BIsFeatureInBlockList: *void;
}

vtable :: (obj: *ISteamParentalSettings) -> *ISteamParentalSettings_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: The form factor of a device
//-----------------------------------------------------------------------------
ESteamDeviceFormFactor :: enum s32 {
    ESteamDeviceFormFactorUnknown   :: 0;
    ESteamDeviceFormFactorPhone     :: 1;
    ESteamDeviceFormFactorTablet    :: 2;
    ESteamDeviceFormFactorComputer  :: 3;
    ESteamDeviceFormFactorTV        :: 4;
    ESteamDeviceFormFactorVRHeadset :: 5;

    k_ESteamDeviceFormFactorUnknown   :: ESteamDeviceFormFactorUnknown;
    k_ESteamDeviceFormFactorPhone     :: ESteamDeviceFormFactorPhone;
    k_ESteamDeviceFormFactorTablet    :: ESteamDeviceFormFactorTablet;
    k_ESteamDeviceFormFactorComputer  :: ESteamDeviceFormFactorComputer;
    k_ESteamDeviceFormFactorTV        :: ESteamDeviceFormFactorTV;
    k_ESteamDeviceFormFactorVRHeadset :: ESteamDeviceFormFactorVRHeadset;
}

// Steam Remote Play session ID
RemotePlaySessionID_t :: uint32;

//-----------------------------------------------------------------------------
// Purpose: Functions to provide information about Steam Remote Play sessions
//-----------------------------------------------------------------------------
ISteamRemotePlay :: struct {
    vtable: *ISteamRemotePlay_VTable;
}
ISteamRemotePlay_VTable :: struct #type_info_none {
    GetSessionCount: *void;

    GetSessionID: *void;

    GetSessionSteamID: *void;

    GetSessionClientName: *void;

    GetSessionClientFormFactor: *void;

    BGetSessionClientResolution: *void;

    BStartRemotePlayTogether: *void;

    BSendRemotePlayTogetherInvite: *void;
}

vtable :: (obj: *ISteamRemotePlay) -> *ISteamRemotePlay_VTable { return obj.vtable; }


SteamDatagramRelayAuthTicket :: struct {}
SteamDatagramHostedAddress :: struct {}
SteamDatagramGameCoordinatorServerLogin :: struct {}

SteamNetworkingFakeIPResult_t :: struct {}

FnSteamNetConnectionStatusChanged :: #type (unknown0: *SteamNetConnectionStatusChangedCallback_t) -> void #c_call;
FnSteamNetAuthenticationStatusChanged :: #type (unknown0: *SteamNetAuthenticationStatus_t) -> void #c_call;
FnSteamRelayNetworkStatusChanged :: #type (unknown0: *SteamRelayNetworkStatus_t) -> void #c_call;
FnSteamNetworkingMessagesSessionRequest :: #type (unknown0: *SteamNetworkingMessagesSessionRequest_t) -> void #c_call;
FnSteamNetworkingMessagesSessionFailed :: #type (unknown0: *SteamNetworkingMessagesSessionFailed_t) -> void #c_call;
FnSteamNetworkingFakeIPResult :: #type (unknown0: *SteamNetworkingFakeIPResult_t) -> void #c_call;

/// Handle used to identify a connection to a remote host.
HSteamNetConnection :: uint32;

/// Handle used to identify a "listen socket".  Unlike traditional
/// Berkeley sockets, a listen socket and a connection are two
/// different abstractions.
HSteamListenSocket :: uint32;

/// Handle used to identify a poll group, used to query many
/// connections at once efficiently.
HSteamNetPollGroup :: uint32;

/// Used to return English-language diagnostic error messages to caller.
/// (For debugging or spewing to a console, etc.  Not intended for UI.)
SteamNetworkingErrMsg :: [1024] u8;

/// Identifier used for a network location point of presence.  (E.g. a Valve data center.)
/// Typically you won't need to directly manipulate these.
SteamNetworkingPOPID :: uint32;

/// A local timestamp.  You can subtract two timestamps to get the number of elapsed
/// microseconds.  This is guaranteed to increase over time during the lifetime
/// of a process, but not globally across runs.  You don't need to worry about
/// the value wrapping around.  Note that the underlying clock might not actually have
/// microsecond resolution.
SteamNetworkingMicroseconds :: int64;

/// Describe the status of a particular network resource
ESteamNetworkingAvailability :: enum s32 {
    CannotTry  :: -102;
    Failed     :: -101;
    Previously :: -100;

    Retrying   :: -10;

    NeverTried :: 1;
    Waiting    :: 2;
    Attempting :: 3;

    Current    :: 100;

    Unknown    :: 0;
    Force32bit :: 2147483647;

    k_ESteamNetworkingAvailability_CannotTry   :: CannotTry;
    k_ESteamNetworkingAvailability_Failed      :: Failed;
    k_ESteamNetworkingAvailability_Previously  :: Previously;

    k_ESteamNetworkingAvailability_Retrying    :: Retrying;

    k_ESteamNetworkingAvailability_NeverTried  :: NeverTried;
    k_ESteamNetworkingAvailability_Waiting     :: Waiting;
    k_ESteamNetworkingAvailability_Attempting  :: Attempting;

    k_ESteamNetworkingAvailability_Current     :: Current;

    k_ESteamNetworkingAvailability_Unknown     :: Unknown;
    k_ESteamNetworkingAvailability__Force32bit :: Force32bit;
}

/// "Fake IPs" are assigned to hosts, to make it easier to interface with
/// older code that assumed all hosts will have an IPv4 address
ESteamNetworkingFakeIPType :: enum s32 {
    Invalid    :: 0;
    NotFake    :: 1;
    GlobalIPv4 :: 2;
    LocalIPv4  :: 3;

    Force32Bit :: 2147483647;

    k_ESteamNetworkingFakeIPType_Invalid     :: Invalid;
    k_ESteamNetworkingFakeIPType_NotFake     :: NotFake;
    k_ESteamNetworkingFakeIPType_GlobalIPv4  :: GlobalIPv4;
    k_ESteamNetworkingFakeIPType_LocalIPv4   :: LocalIPv4;

    k_ESteamNetworkingFakeIPType__Force32Bit :: Force32Bit;
}

/// Store an IP and port.  IPv6 is always used; IPv4 is represented using
/// "IPv4-mapped" addresses: IPv4 aa.bb.cc.dd => IPv6 ::ffff:aabb:ccdd
/// (RFC 4291 section 2.5.5.2.)
SteamNetworkingIPAddr :: struct {}

// Forward declare types
SteamNetworkingIdentity :: struct {}

/// High level connection status
ESteamNetworkingConnectionState :: enum s32 {
    None                   :: 0;

    Connecting             :: 1;

    FindingRoute           :: 2;

    Connected              :: 3;

    ClosedByPeer           :: 4;

    ProblemDetectedLocally :: 5;

    FinWait                :: -1;

    Linger                 :: -2;

    Dead                   :: -3;

    Force32Bit             :: 2147483647;

    k_ESteamNetworkingConnectionState_None                   :: None;

    k_ESteamNetworkingConnectionState_Connecting             :: Connecting;

    k_ESteamNetworkingConnectionState_FindingRoute           :: FindingRoute;

    k_ESteamNetworkingConnectionState_Connected              :: Connected;

    k_ESteamNetworkingConnectionState_ClosedByPeer           :: ClosedByPeer;

    k_ESteamNetworkingConnectionState_ProblemDetectedLocally :: ProblemDetectedLocally;

    k_ESteamNetworkingConnectionState_FinWait                :: FinWait;

    k_ESteamNetworkingConnectionState_Linger                 :: Linger;

    k_ESteamNetworkingConnectionState_Dead                   :: Dead;

    k_ESteamNetworkingConnectionState__Force32Bit            :: Force32Bit;
}

/// Describe the state of a connection.
SteamNetConnectionInfo_t :: struct {}

/// Quick connection state, pared down to something you could call
/// more frequently without it being too big of a perf hit.
SteamNetConnectionRealTimeStatus_t :: struct {}

/// Quick status of a particular lane
SteamNetConnectionRealTimeLaneStatus_t :: struct {}

/// A message that has been received.
SteamNetworkingMessage_t :: struct {}

/// Object that describes a "location" on the Internet with sufficient
/// detail that we can reasonably estimate an upper bound on the ping between
/// the two hosts, even if a direct route between the hosts is not possible,
/// and the connection must be routed through the Steam Datagram Relay network.
/// This does not contain any information that identifies the host.  Indeed,
/// if two hosts are in the same building or otherwise have nearly identical
/// networking characteristics, then it's valid to use the same location
/// object for both of them.
///
/// NOTE: This object should only be used in the same process!  Do not serialize it,
/// send it over the wire, or persist it in a file or database!  If you need
/// to do that, convert it to a string representation using the methods in
/// ISteamNetworkingUtils().
SteamNetworkPingLocation_t :: struct {}

/// Configuration values can be applied to different types of objects.
ESteamNetworkingConfigScope :: enum s32 {
    ESteamNetworkingConfig_Global           :: 1;

    ESteamNetworkingConfig_SocketsInterface :: 2;

    ESteamNetworkingConfig_ListenSocket     :: 3;

    ESteamNetworkingConfig_Connection       :: 4;

    ESteamNetworkingConfigScope__Force32Bit :: 2147483647;

    k_ESteamNetworkingConfig_Global           :: ESteamNetworkingConfig_Global;

    k_ESteamNetworkingConfig_SocketsInterface :: ESteamNetworkingConfig_SocketsInterface;

    k_ESteamNetworkingConfig_ListenSocket     :: ESteamNetworkingConfig_ListenSocket;

    k_ESteamNetworkingConfig_Connection       :: ESteamNetworkingConfig_Connection;

    k_ESteamNetworkingConfigScope__Force32Bit :: ESteamNetworkingConfigScope__Force32Bit;
}

// Different configuration values have different data types
ESteamNetworkingConfigDataType :: enum s32 {
    ESteamNetworkingConfig_Int32               :: 1;
    ESteamNetworkingConfig_Int64               :: 2;
    ESteamNetworkingConfig_Float               :: 3;
    ESteamNetworkingConfig_String              :: 4;
    ESteamNetworkingConfig_Ptr                 :: 5;

    ESteamNetworkingConfigDataType__Force32Bit :: 2147483647;

    k_ESteamNetworkingConfig_Int32               :: ESteamNetworkingConfig_Int32;
    k_ESteamNetworkingConfig_Int64               :: ESteamNetworkingConfig_Int64;
    k_ESteamNetworkingConfig_Float               :: ESteamNetworkingConfig_Float;
    k_ESteamNetworkingConfig_String              :: ESteamNetworkingConfig_String;
    k_ESteamNetworkingConfig_Ptr                 :: ESteamNetworkingConfig_Ptr;

    k_ESteamNetworkingConfigDataType__Force32Bit :: ESteamNetworkingConfigDataType__Force32Bit;
}

/// Configuration options
ESteamNetworkingConfigValue :: enum s32 {
    ESteamNetworkingConfig_Invalid                                        :: 0;

    ESteamNetworkingConfig_TimeoutInitial                                 :: 24;

    ESteamNetworkingConfig_TimeoutConnected                               :: 25;

    ESteamNetworkingConfig_SendBufferSize                                 :: 9;

    ESteamNetworkingConfig_RecvBufferSize                                 :: 47;

    ESteamNetworkingConfig_RecvBufferMessages                             :: 48;

    ESteamNetworkingConfig_RecvMaxMessageSize                             :: 49;

    ESteamNetworkingConfig_RecvMaxSegmentsPerPacket                       :: 50;

    ESteamNetworkingConfig_ConnectionUserData                             :: 40;

    ESteamNetworkingConfig_SendRateMin                                    :: 10;
    ESteamNetworkingConfig_SendRateMax                                    :: 11;

    ESteamNetworkingConfig_NagleTime                                      :: 12;

    ESteamNetworkingConfig_IP_AllowWithoutAuth                            :: 23;

    ESteamNetworkingConfig_IPLocalHost_AllowWithoutAuth                   :: 52;

    ESteamNetworkingConfig_MTU_PacketSize                                 :: 32;

    ESteamNetworkingConfig_MTU_DataSize                                   :: 33;

    ESteamNetworkingConfig_Unencrypted                                    :: 34;

    ESteamNetworkingConfig_SymmetricConnect                               :: 37;

    ESteamNetworkingConfig_LocalVirtualPort                               :: 38;

    ESteamNetworkingConfig_DualWifi_Enable                                :: 39;

    ESteamNetworkingConfig_EnableDiagnosticsUI                            :: 46;

    ESteamNetworkingConfig_FakePacketLoss_Send                            :: 2;
    ESteamNetworkingConfig_FakePacketLoss_Recv                            :: 3;

    ESteamNetworkingConfig_FakePacketLag_Send                             :: 4;
    ESteamNetworkingConfig_FakePacketLag_Recv                             :: 5;

    ESteamNetworkingConfig_FakePacketReorder_Send                         :: 6;
    ESteamNetworkingConfig_FakePacketReorder_Recv                         :: 7;

    ESteamNetworkingConfig_FakePacketReorder_Time                         :: 8;

    ESteamNetworkingConfig_FakePacketDup_Send                             :: 26;
    ESteamNetworkingConfig_FakePacketDup_Recv                             :: 27;

    ESteamNetworkingConfig_FakePacketDup_TimeMax                          :: 28;

    ESteamNetworkingConfig_PacketTraceMaxBytes                            :: 41;

    ESteamNetworkingConfig_FakeRateLimit_Send_Rate                        :: 42;
    ESteamNetworkingConfig_FakeRateLimit_Send_Burst                       :: 43;
    ESteamNetworkingConfig_FakeRateLimit_Recv_Rate                        :: 44;
    ESteamNetworkingConfig_FakeRateLimit_Recv_Burst                       :: 45;

    ESteamNetworkingConfig_OutOfOrderCorrectionWindowMicroseconds         :: 51;

    ESteamNetworkingConfig_Callback_ConnectionStatusChanged               :: 201;

    ESteamNetworkingConfig_Callback_AuthStatusChanged                     :: 202;

    ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged             :: 203;

    ESteamNetworkingConfig_Callback_MessagesSessionRequest                :: 204;

    ESteamNetworkingConfig_Callback_MessagesSessionFailed                 :: 205;

    ESteamNetworkingConfig_Callback_CreateConnectionSignaling             :: 206;

    ESteamNetworkingConfig_Callback_FakeIPResult                          :: 207;

    ESteamNetworkingConfig_P2P_STUN_ServerList                            :: 103;

    ESteamNetworkingConfig_P2P_Transport_ICE_Enable                       :: 104;

    ESteamNetworkingConfig_P2P_Transport_ICE_Penalty                      :: 105;
    ESteamNetworkingConfig_P2P_Transport_SDR_Penalty                      :: 106;
    ESteamNetworkingConfig_P2P_TURN_ServerList                            :: 107;
    ESteamNetworkingConfig_P2P_TURN_UserList                              :: 108;
    ESteamNetworkingConfig_P2P_TURN_PassList                              :: 109;

    ESteamNetworkingConfig_P2P_Transport_ICE_Implementation               :: 110;

    ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial :: 19;

    ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail        :: 20;

    ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate           :: 21;

    ESteamNetworkingConfig_SDRClient_SingleSocket                         :: 22;

    ESteamNetworkingConfig_SDRClient_ForceRelayCluster                    :: 29;

    ESteamNetworkingConfig_SDRClient_DevTicket                            :: 30;

    ESteamNetworkingConfig_SDRClient_ForceProxyAddr                       :: 31;

    ESteamNetworkingConfig_SDRClient_FakeClusterPing                      :: 36;

    ESteamNetworkingConfig_SDRClient_LimitPingProbesToNearestN            :: 60;

    ESteamNetworkingConfig_LogLevel_AckRTT                                :: 13;
    ESteamNetworkingConfig_LogLevel_PacketDecode                          :: 14;
    ESteamNetworkingConfig_LogLevel_Message                               :: 15;
    ESteamNetworkingConfig_LogLevel_PacketGaps                            :: 16;
    ESteamNetworkingConfig_LogLevel_P2PRendezvous                         :: 17;
    ESteamNetworkingConfig_LogLevel_SDRRelayPings                         :: 18;

    ESteamNetworkingConfig_ECN                                            :: 999;

    ESteamNetworkingConfig_DELETED_EnumerateDevVars                       :: 35;

    ESteamNetworkingConfigValue__Force32Bit                               :: 2147483647;

    k_ESteamNetworkingConfig_Invalid                                        :: ESteamNetworkingConfig_Invalid;

    k_ESteamNetworkingConfig_TimeoutInitial                                 :: ESteamNetworkingConfig_TimeoutInitial;

    k_ESteamNetworkingConfig_TimeoutConnected                               :: ESteamNetworkingConfig_TimeoutConnected;

    k_ESteamNetworkingConfig_SendBufferSize                                 :: ESteamNetworkingConfig_SendBufferSize;

    k_ESteamNetworkingConfig_RecvBufferSize                                 :: ESteamNetworkingConfig_RecvBufferSize;

    k_ESteamNetworkingConfig_RecvBufferMessages                             :: ESteamNetworkingConfig_RecvBufferMessages;

    k_ESteamNetworkingConfig_RecvMaxMessageSize                             :: ESteamNetworkingConfig_RecvMaxMessageSize;

    k_ESteamNetworkingConfig_RecvMaxSegmentsPerPacket                       :: ESteamNetworkingConfig_RecvMaxSegmentsPerPacket;

    k_ESteamNetworkingConfig_ConnectionUserData                             :: ESteamNetworkingConfig_ConnectionUserData;

    k_ESteamNetworkingConfig_SendRateMin                                    :: ESteamNetworkingConfig_SendRateMin;
    k_ESteamNetworkingConfig_SendRateMax                                    :: ESteamNetworkingConfig_SendRateMax;

    k_ESteamNetworkingConfig_NagleTime                                      :: ESteamNetworkingConfig_NagleTime;

    k_ESteamNetworkingConfig_IP_AllowWithoutAuth                            :: ESteamNetworkingConfig_IP_AllowWithoutAuth;

    k_ESteamNetworkingConfig_IPLocalHost_AllowWithoutAuth                   :: ESteamNetworkingConfig_IPLocalHost_AllowWithoutAuth;

    k_ESteamNetworkingConfig_MTU_PacketSize                                 :: ESteamNetworkingConfig_MTU_PacketSize;

    k_ESteamNetworkingConfig_MTU_DataSize                                   :: ESteamNetworkingConfig_MTU_DataSize;

    k_ESteamNetworkingConfig_Unencrypted                                    :: ESteamNetworkingConfig_Unencrypted;

    k_ESteamNetworkingConfig_SymmetricConnect                               :: ESteamNetworkingConfig_SymmetricConnect;

    k_ESteamNetworkingConfig_LocalVirtualPort                               :: ESteamNetworkingConfig_LocalVirtualPort;

    k_ESteamNetworkingConfig_DualWifi_Enable                                :: ESteamNetworkingConfig_DualWifi_Enable;

    k_ESteamNetworkingConfig_EnableDiagnosticsUI                            :: ESteamNetworkingConfig_EnableDiagnosticsUI;

    k_ESteamNetworkingConfig_FakePacketLoss_Send                            :: ESteamNetworkingConfig_FakePacketLoss_Send;
    k_ESteamNetworkingConfig_FakePacketLoss_Recv                            :: ESteamNetworkingConfig_FakePacketLoss_Recv;

    k_ESteamNetworkingConfig_FakePacketLag_Send                             :: ESteamNetworkingConfig_FakePacketLag_Send;
    k_ESteamNetworkingConfig_FakePacketLag_Recv                             :: ESteamNetworkingConfig_FakePacketLag_Recv;

    k_ESteamNetworkingConfig_FakePacketReorder_Send                         :: ESteamNetworkingConfig_FakePacketReorder_Send;
    k_ESteamNetworkingConfig_FakePacketReorder_Recv                         :: ESteamNetworkingConfig_FakePacketReorder_Recv;

    k_ESteamNetworkingConfig_FakePacketReorder_Time                         :: ESteamNetworkingConfig_FakePacketReorder_Time;

    k_ESteamNetworkingConfig_FakePacketDup_Send                             :: ESteamNetworkingConfig_FakePacketDup_Send;
    k_ESteamNetworkingConfig_FakePacketDup_Recv                             :: ESteamNetworkingConfig_FakePacketDup_Recv;

    k_ESteamNetworkingConfig_FakePacketDup_TimeMax                          :: ESteamNetworkingConfig_FakePacketDup_TimeMax;

    k_ESteamNetworkingConfig_PacketTraceMaxBytes                            :: ESteamNetworkingConfig_PacketTraceMaxBytes;

    k_ESteamNetworkingConfig_FakeRateLimit_Send_Rate                        :: ESteamNetworkingConfig_FakeRateLimit_Send_Rate;
    k_ESteamNetworkingConfig_FakeRateLimit_Send_Burst                       :: ESteamNetworkingConfig_FakeRateLimit_Send_Burst;
    k_ESteamNetworkingConfig_FakeRateLimit_Recv_Rate                        :: ESteamNetworkingConfig_FakeRateLimit_Recv_Rate;
    k_ESteamNetworkingConfig_FakeRateLimit_Recv_Burst                       :: ESteamNetworkingConfig_FakeRateLimit_Recv_Burst;

    k_ESteamNetworkingConfig_OutOfOrderCorrectionWindowMicroseconds         :: ESteamNetworkingConfig_OutOfOrderCorrectionWindowMicroseconds;

    k_ESteamNetworkingConfig_Callback_ConnectionStatusChanged               :: ESteamNetworkingConfig_Callback_ConnectionStatusChanged;

    k_ESteamNetworkingConfig_Callback_AuthStatusChanged                     :: ESteamNetworkingConfig_Callback_AuthStatusChanged;

    k_ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged             :: ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged;

    k_ESteamNetworkingConfig_Callback_MessagesSessionRequest                :: ESteamNetworkingConfig_Callback_MessagesSessionRequest;

    k_ESteamNetworkingConfig_Callback_MessagesSessionFailed                 :: ESteamNetworkingConfig_Callback_MessagesSessionFailed;

    k_ESteamNetworkingConfig_Callback_CreateConnectionSignaling             :: ESteamNetworkingConfig_Callback_CreateConnectionSignaling;

    k_ESteamNetworkingConfig_Callback_FakeIPResult                          :: ESteamNetworkingConfig_Callback_FakeIPResult;

    k_ESteamNetworkingConfig_P2P_STUN_ServerList                            :: ESteamNetworkingConfig_P2P_STUN_ServerList;

    k_ESteamNetworkingConfig_P2P_Transport_ICE_Enable                       :: ESteamNetworkingConfig_P2P_Transport_ICE_Enable;

    k_ESteamNetworkingConfig_P2P_Transport_ICE_Penalty                      :: ESteamNetworkingConfig_P2P_Transport_ICE_Penalty;
    k_ESteamNetworkingConfig_P2P_Transport_SDR_Penalty                      :: ESteamNetworkingConfig_P2P_Transport_SDR_Penalty;
    k_ESteamNetworkingConfig_P2P_TURN_ServerList                            :: ESteamNetworkingConfig_P2P_TURN_ServerList;
    k_ESteamNetworkingConfig_P2P_TURN_UserList                              :: ESteamNetworkingConfig_P2P_TURN_UserList;
    k_ESteamNetworkingConfig_P2P_TURN_PassList                              :: ESteamNetworkingConfig_P2P_TURN_PassList;

    k_ESteamNetworkingConfig_P2P_Transport_ICE_Implementation               :: ESteamNetworkingConfig_P2P_Transport_ICE_Implementation;

    k_ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial :: ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial;

    k_ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail        :: ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail;

    k_ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate           :: ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate;

    k_ESteamNetworkingConfig_SDRClient_SingleSocket                         :: ESteamNetworkingConfig_SDRClient_SingleSocket;

    k_ESteamNetworkingConfig_SDRClient_ForceRelayCluster                    :: ESteamNetworkingConfig_SDRClient_ForceRelayCluster;

    k_ESteamNetworkingConfig_SDRClient_DevTicket                            :: ESteamNetworkingConfig_SDRClient_DevTicket;

    k_ESteamNetworkingConfig_SDRClient_ForceProxyAddr                       :: ESteamNetworkingConfig_SDRClient_ForceProxyAddr;

    k_ESteamNetworkingConfig_SDRClient_FakeClusterPing                      :: ESteamNetworkingConfig_SDRClient_FakeClusterPing;

    k_ESteamNetworkingConfig_SDRClient_LimitPingProbesToNearestN            :: ESteamNetworkingConfig_SDRClient_LimitPingProbesToNearestN;

    k_ESteamNetworkingConfig_LogLevel_AckRTT                                :: ESteamNetworkingConfig_LogLevel_AckRTT;
    k_ESteamNetworkingConfig_LogLevel_PacketDecode                          :: ESteamNetworkingConfig_LogLevel_PacketDecode;
    k_ESteamNetworkingConfig_LogLevel_Message                               :: ESteamNetworkingConfig_LogLevel_Message;
    k_ESteamNetworkingConfig_LogLevel_PacketGaps                            :: ESteamNetworkingConfig_LogLevel_PacketGaps;
    k_ESteamNetworkingConfig_LogLevel_P2PRendezvous                         :: ESteamNetworkingConfig_LogLevel_P2PRendezvous;
    k_ESteamNetworkingConfig_LogLevel_SDRRelayPings                         :: ESteamNetworkingConfig_LogLevel_SDRRelayPings;

    k_ESteamNetworkingConfig_ECN                                            :: ESteamNetworkingConfig_ECN;

    k_ESteamNetworkingConfig_DELETED_EnumerateDevVars                       :: ESteamNetworkingConfig_DELETED_EnumerateDevVars;

    k_ESteamNetworkingConfigValue__Force32Bit                               :: ESteamNetworkingConfigValue__Force32Bit;
}

/// In a few places we need to set configuration options on listen sockets and connections, and
/// have them take effect *before* the listen socket or connection really starts doing anything.
/// Creating the object and then setting the options "immediately" after creation doesn't work
/// completely, because network packets could be received between the time the object is created and
/// when the options are applied.  To set options at creation time in a reliable way, they must be
/// passed to the creation function.  This structure is used to pass those options.
///
/// For the meaning of these fields, see ISteamNetworkingUtils::SetConfigValue.  Basically
/// when the object is created, we just iterate over the list of options and call
/// ISteamNetworkingUtils::SetConfigValueStruct, where the scope arguments are supplied by the
/// object being created.
SteamNetworkingConfigValue_t :: struct {}

/// Return value of ISteamNetworkintgUtils::GetConfigValue
ESteamNetworkingGetConfigValueResult :: enum s32 {
    ESteamNetworkingGetConfigValue_BadValue          :: -1;
    ESteamNetworkingGetConfigValue_BadScopeObj       :: -2;
    ESteamNetworkingGetConfigValue_BufferTooSmall    :: -3;
    ESteamNetworkingGetConfigValue_OK                :: 1;
    ESteamNetworkingGetConfigValue_OKInherited       :: 2;

    ESteamNetworkingGetConfigValueResult__Force32Bit :: 2147483647;

    k_ESteamNetworkingGetConfigValue_BadValue          :: ESteamNetworkingGetConfigValue_BadValue;
    k_ESteamNetworkingGetConfigValue_BadScopeObj       :: ESteamNetworkingGetConfigValue_BadScopeObj;
    k_ESteamNetworkingGetConfigValue_BufferTooSmall    :: ESteamNetworkingGetConfigValue_BufferTooSmall;
    k_ESteamNetworkingGetConfigValue_OK                :: ESteamNetworkingGetConfigValue_OK;
    k_ESteamNetworkingGetConfigValue_OKInherited       :: ESteamNetworkingGetConfigValue_OKInherited;

    k_ESteamNetworkingGetConfigValueResult__Force32Bit :: ESteamNetworkingGetConfigValueResult__Force32Bit;
}

/// Detail level for diagnostic output callback.
/// See ISteamNetworkingUtils::SetDebugOutputFunction
ESteamNetworkingSocketsDebugOutputType :: enum s32 {
    None       :: 0;
    Bug        :: 1;
    Error      :: 2;
    Important  :: 3;
    Warning    :: 4;
    Msg        :: 5;
    Verbose    :: 6;
    Debug      :: 7;
    Everything :: 8;

    Force32Bit :: 2147483647;

    k_ESteamNetworkingSocketsDebugOutputType_None        :: None;
    k_ESteamNetworkingSocketsDebugOutputType_Bug         :: Bug;
    k_ESteamNetworkingSocketsDebugOutputType_Error       :: Error;
    k_ESteamNetworkingSocketsDebugOutputType_Important   :: Important;
    k_ESteamNetworkingSocketsDebugOutputType_Warning     :: Warning;
    k_ESteamNetworkingSocketsDebugOutputType_Msg         :: Msg;
    k_ESteamNetworkingSocketsDebugOutputType_Verbose     :: Verbose;
    k_ESteamNetworkingSocketsDebugOutputType_Debug       :: Debug;
    k_ESteamNetworkingSocketsDebugOutputType_Everything  :: Everything;

    k_ESteamNetworkingSocketsDebugOutputType__Force32Bit :: Force32Bit;
}

/// Setup callback for debug output, and the desired verbosity you want.
FSteamNetworkingSocketsDebugOutput :: #type (nType: ESteamNetworkingSocketsDebugOutputType, pszMsg: *u8) -> void #c_call;

//-----------------------------------------------------------------------------
/// The non-connection-oriented interface to send and receive messages
/// (whether they be "clients" or "servers").
///
/// ISteamNetworkingSockets is connection-oriented (like TCP), meaning you
/// need to listen and connect, and then you send messages using a connection
/// handle.  ISteamNetworkingMessages is more like UDP, in that you can just send
/// messages to arbitrary peers at any time.  The underlying connections are
/// established implicitly.
///
/// Under the hood ISteamNetworkingMessages works on top of the ISteamNetworkingSockets
/// code, so you get the same routing and messaging efficiency.  The difference is
/// mainly in your responsibility to explicitly establish a connection and
/// the type of feedback you get about the state of the connection.  Both
/// interfaces can do "P2P" communications, and both support both unreliable
/// and reliable messages, fragmentation and reassembly.
///
/// The primary purpose of this interface is to be "like UDP", so that UDP-based code
/// can be ported easily to take advantage of relayed connections.  If you find
/// yourself needing more low level information or control, or to be able to better
/// handle failure, then you probably need to use ISteamNetworkingSockets directly.
/// Also, note that if your main goal is to obtain a connection between two peers
/// without concerning yourself with assigning roles of "client" and "server",
/// you may find the symmetric connection mode of ISteamNetworkingSockets useful.
/// (See k_ESteamNetworkingConfig_SymmetricConnect.)
///
ISteamNetworkingMessages :: struct {
    vtable: *ISteamNetworkingMessages_VTable;
}
ISteamNetworkingMessages_VTable :: struct #type_info_none {
    SendMessageToUser: *void;

    ReceiveMessagesOnChannel: *void;

    AcceptSessionWithUser: *void;

    CloseSessionWithUser: *void;

    CloseChannelWithUser: *void;

    GetSessionConnectionInfo: *void;
}

vtable :: (obj: *ISteamNetworkingMessages) -> *ISteamNetworkingMessages_VTable { return obj.vtable; }


/// Posted when a remote host is sending us a message, and we do not already have a session with them
SteamNetworkingMessagesSessionRequest_t :: struct {}

/// Posted when we fail to establish a connection, or we detect that communications
/// have been disrupted it an unusual way.  There is no notification when a peer proactively
/// closes the session.  ("Closed by peer" is not a concept of UDP-style communications, and
/// SteamNetworkingMessages is primarily intended to make porting UDP code easy.)
///
/// Remember: callbacks are asynchronous.   See notes on SendMessageToUser,
/// and k_nSteamNetworkingSend_AutoRestartBrokenSession in particular.
///
/// Also, if a session times out due to inactivity, no callbacks will be posted.  The only
/// way to detect that this is happening is that querying the session state may return
/// none, connecting, and findingroute again.
SteamNetworkingMessagesSessionFailed_t :: struct {}

ISteamNetworkingConnectionSignaling :: struct {}
ISteamNetworkingSignalingRecvContext :: struct {}
ISteamNetworkingFakeUDPPort :: struct {}

//-----------------------------------------------------------------------------
/// Lower level networking API.
///
/// - Connection-oriented API (like TCP, not UDP).  When sending and receiving
///   messages, a connection handle is used.  (For a UDP-style interface, where
///   the peer is identified by their address with each send/recv call, see
///   ISteamNetworkingMessages.)  The typical pattern is for a "server" to "listen"
///   on a "listen socket."  A "client" will "connect" to the server, and the
///   server will "accept" the connection.  If you have a symmetric situation
///   where either peer may initiate the connection and server/client roles are
///   not clearly defined, check out k_ESteamNetworkingConfig_SymmetricConnect.
/// - But unlike TCP, it's message-oriented, not stream-oriented.
/// - Mix of reliable and unreliable messages
/// - Fragmentation and reassembly
/// - Supports connectivity over plain UDP
/// - Also supports SDR ("Steam Datagram Relay") connections, which are
///   addressed by the identity of the peer.  There is a "P2P" use case and
///   a "hosted dedicated server" use case.
///
/// Note that neither of the terms "connection" nor "socket" necessarily correspond
/// one-to-one with an underlying UDP socket.  An attempt has been made to
/// keep the semantics as similar to the standard socket model when appropriate,
/// but some deviations do exist.
///
/// See also: ISteamNetworkingMessages, the UDP-style interface.  This API might be
/// easier to use, especially when porting existing UDP code.
ISteamNetworkingSockets :: struct {
    vtable: *ISteamNetworkingSockets_VTable;
}
ISteamNetworkingSockets_VTable :: struct #type_info_none {
    CreateListenSocketIP: *void;

    ConnectByIPAddress: *void;

    CreateListenSocketP2P: *void;

    ConnectP2P: *void;

    AcceptConnection: *void;

    CloseConnection: *void;

    CloseListenSocket: *void;

    SetConnectionUserData: *void;

    GetConnectionUserData: *void;

    SetConnectionName: *void;

    GetConnectionName: *void;

    SendMessageToConnection: *void;

    SendMessages: *void;

    FlushMessagesOnConnection: *void;

    ReceiveMessagesOnConnection: *void;

    GetConnectionInfo: *void;

    GetConnectionRealTimeStatus: *void;

    GetDetailedConnectionStatus: *void;

    GetListenSocketAddress: *void;

    CreateSocketPair: *void;

    ConfigureConnectionLanes: *void;

    GetIdentity: *void;

    InitAuthentication: *void;

    GetAuthenticationStatus: *void;

    CreatePollGroup: *void;

    DestroyPollGroup: *void;

    SetConnectionPollGroup: *void;

    ReceiveMessagesOnPollGroup: *void;

    ReceivedRelayAuthTicket: *void;

    FindRelayAuthTicketForServer: *void;

    ConnectToHostedDedicatedServer: *void;

    GetHostedDedicatedServerPort: *void;

    GetHostedDedicatedServerPOPID: *void;

    GetHostedDedicatedServerAddress: *void;

    CreateHostedDedicatedServerListenSocket: *void;

    GetGameCoordinatorServerLogin: *void;

    ConnectP2PCustomSignaling: *void;

    ReceivedP2PCustomSignal: *void;

    GetCertificateRequest: *void;

    SetCertificate: *void;

    ResetIdentity: *void;

    RunCallbacks: *void;

    BeginAsyncRequestFakeIP: *void;

    GetFakeIP: *void;

    CreateListenSocketP2PFakeIP: *void;

    GetRemoteFakeIPForConnection: *void;

    CreateFakeUDPPort: *void;
}

vtable :: (obj: *ISteamNetworkingSockets) -> *ISteamNetworkingSockets_VTable { return obj.vtable; }


/// This callback is posted whenever a connection is created, destroyed, or changes state.
/// The m_info field will contain a complete description of the connection at the time the
/// change occurred and the callback was posted.  In particular, m_eState will have the
/// new connection state.
///
/// You will usually need to listen for this callback to know when:
/// - A new connection arrives on a listen socket.
///   m_info.m_hListenSocket will be set, m_eOldState = k_ESteamNetworkingConnectionState_None,
///   and m_info.m_eState = k_ESteamNetworkingConnectionState_Connecting.
///   See ISteamNetworkigSockets::AcceptConnection.
/// - A connection you initiated has been accepted by the remote host.
///   m_eOldState = k_ESteamNetworkingConnectionState_Connecting, and
///   m_info.m_eState = k_ESteamNetworkingConnectionState_Connected.
///   Some connections might transition to k_ESteamNetworkingConnectionState_FindingRoute first.
/// - A connection has been actively rejected or closed by the remote host.
///   m_eOldState = k_ESteamNetworkingConnectionState_Connecting or k_ESteamNetworkingConnectionState_Connected,
///   and m_info.m_eState = k_ESteamNetworkingConnectionState_ClosedByPeer.  m_info.m_eEndReason
///   and m_info.m_szEndDebug will have for more details.
///   NOTE: upon receiving this callback, you must still destroy the connection using
///   ISteamNetworkingSockets::CloseConnection to free up local resources.  (The details
///   passed to the function are not used in this case, since the connection is already closed.)
/// - A problem was detected with the connection, and it has been closed by the local host.
///   The most common failure is timeout, but other configuration or authentication failures
///   can cause this.  m_eOldState = k_ESteamNetworkingConnectionState_Connecting or
///   k_ESteamNetworkingConnectionState_Connected, and m_info.m_eState = k_ESteamNetworkingConnectionState_ProblemDetectedLocally.
///   m_info.m_eEndReason and m_info.m_szEndDebug will have for more details.
///   NOTE: upon receiving this callback, you must still destroy the connection using
///   ISteamNetworkingSockets::CloseConnection to free up local resources.  (The details
///   passed to the function are not used in this case, since the connection is already closed.)
///
/// Remember that callbacks are posted to a queue, and networking connections can
/// change at any time.  It is possible that the connection has already changed
/// state by the time you process this callback.
///
/// Also note that callbacks will be posted when connections are created and destroyed by your own API calls.
SteamNetConnectionStatusChangedCallback_t :: struct {}

/// A struct used to describe our readiness to participate in authenticated,
/// encrypted communication.  In order to do this we need:
///
/// - The list of trusted CA certificates that might be relevant for this
///   app.
/// - A valid certificate issued by a CA.
///
/// This callback is posted whenever the state of our readiness changes.
SteamNetAuthenticationStatus_t :: struct {}

//-----------------------------------------------------------------------------
/// Misc networking utilities for checking the local networking environment
/// and estimating pings.
ISteamNetworkingUtils :: struct {
    vtable: *ISteamNetworkingUtils_VTable;
}
ISteamNetworkingUtils_VTable :: struct #type_info_none {
    AllocateMessage: *void;

    GetRelayNetworkStatus: *void;

    GetLocalPingLocation: *void;

    EstimatePingTimeBetweenTwoLocations: *void;

    EstimatePingTimeFromLocalHost: *void;

    ConvertPingLocationToString: *void;

    ParsePingLocationString: *void;

    CheckPingDataUpToDate: *void;

    GetPingToDataCenter: *void;

    GetDirectPingToPOP: *void;

    GetPOPCount: *void;

    GetPOPList: *void;

    GetLocalTimestamp: *void;

    SetDebugOutputFunction: *void;

    GetIPv4FakeIPType: *void;

    GetRealIdentityForFakeIP: *void;

    SetConfigValue: *void;

    GetConfigValue: *void;

    GetConfigValueInfo: *void;

    IterateGenericEditableConfigValues: *void;

    SteamNetworkingIPAddr_ToString: *void;
    SteamNetworkingIPAddr_ParseString: *void;
    SteamNetworkingIPAddr_GetFakeIPType: *void;
    SteamNetworkingIdentity_ToString: *void;
    SteamNetworkingIdentity_ParseString: *void;
}

vtable :: (obj: *ISteamNetworkingUtils) -> *ISteamNetworkingUtils_VTable { return obj.vtable; }


/// A struct used to describe our readiness to use the relay network.
/// To do this we first need to fetch the network configuration,
/// which describes what POPs are available.
SteamRelayNetworkStatus_t :: struct {}

//-----------------------------------------------------------------------------
// Purpose: Functions for authenticating users via Steam to play on a game server
//-----------------------------------------------------------------------------
ISteamGameServer :: struct {
    vtable: *ISteamGameServer_VTable;
}
ISteamGameServer_VTable :: struct #type_info_none {
    InitGameServer: *void;

    SetProduct: *void;

    SetGameDescription: *void;

    SetModDir: *void;

    SetDedicatedServer: *void;

    LogOn: *void;

    LogOnAnonymous: *void;

    LogOff: *void;

    BLoggedOn: *void;
    BSecure: *void;
    GetSteamID: *void;

    WasRestartRequested: *void;

    SetMaxPlayerCount: *void;

    SetBotPlayerCount: *void;

    SetServerName: *void;

    SetMapName: *void;

    SetPasswordProtected: *void;

    SetSpectatorPort: *void;

    SetSpectatorServerName: *void;

    ClearAllKeyValues: *void;

    SetKeyValue: *void;

    SetGameTags: *void;

    SetGameData: *void;

    SetRegion: *void;

    SetAdvertiseServerActive: *void;

    GetAuthSessionTicket: *void;

    BeginAuthSession: *void;

    EndAuthSession: *void;

    CancelAuthTicket: *void;

    UserHasLicenseForApp: *void;

    RequestUserGroupStatus: *void;

    GetGameplayStats: *void;

    GetServerReputation: *void;

    GetPublicIP: *void;

    HandleIncomingPacket: *void;

    GetNextOutgoingPacket: *void;

    AssociateWithClan: *void;

    ComputeNewPlayerCompatibility: *void;

    SendUserConnectAndAuthenticate_DEPRECATED: *void;

    CreateUnauthenticatedUserConnection: *void;

    SendUserDisconnect_DEPRECATED: *void;

    BUpdateUserData: *void;

    SetMasterServerHeartbeatInterval_DEPRECATED: *void;
    ForceMasterServerHeartbeat_DEPRECATED: *void;
}

vtable :: (obj: *ISteamGameServer) -> *ISteamGameServer_VTable { return obj.vtable; }


//-----------------------------------------------------------------------------
// Purpose: Functions for authenticating users via Steam to play on a game server
//-----------------------------------------------------------------------------
ISteamGameServerStats :: struct {
    vtable: *ISteamGameServerStats_VTable;
}
ISteamGameServerStats_VTable :: struct #type_info_none {
    RequestUserStats: *void;

    GetUserStat: *void;

    GetUserStat_1: *void;

    GetUserAchievement: *void;

    SetUserStat: *void;

    SetUserStat_1: *void;

    UpdateUserAvgRateStat: *void;

    SetUserAchievement: *void;
    ClearUserAchievement: *void;

    StoreUserStats: *void;
}

vtable :: (obj: *ISteamGameServerStats) -> *ISteamGameServerStats_VTable { return obj.vtable; }


uint64_steamid :: uint64;
uint64_gameid :: uint64;

// ISteamClient
SteamAPI_ISteamClient_CreateSteamPipe :: (self: *ISteamClient) -> HSteamPipe #foreign steam_api64;
SteamAPI_ISteamClient_BReleaseSteamPipe :: (self: *ISteamClient, hSteamPipe: HSteamPipe) -> bool #foreign steam_api64;
SteamAPI_ISteamClient_ConnectToGlobalUser :: (self: *ISteamClient, hSteamPipe: HSteamPipe) -> HSteamUser #foreign steam_api64;
SteamAPI_ISteamClient_CreateLocalUser :: (self: *ISteamClient, phSteamPipe: *HSteamPipe, eAccountType: EAccountType) -> HSteamUser #foreign steam_api64;
SteamAPI_ISteamClient_ReleaseUser :: (self: *ISteamClient, hSteamPipe: HSteamPipe, hUser: HSteamUser) -> void #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamUser :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUser #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamGameServer :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamGameServer #foreign steam_api64;
SteamAPI_ISteamClient_SetLocalIPBinding :: (self: *ISteamClient, unIP: *SteamIPAddress_t, usPort: uint16) -> void #foreign steam_api64;
SteamAPI_ISteamClient_SetLocalIPBinding :: (self: *ISteamClient, unIP: SteamIPAddress_t, usPort: uint16) #no_context {
    SteamAPI_ISteamClient_SetLocalIPBinding(self, *unIP, usPort);
}
SteamAPI_ISteamClient_GetISteamFriends :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamFriends #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamUtils :: (self: *ISteamClient, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUtils #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamMatchmaking :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMatchmaking #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamMatchmakingServers :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMatchmakingServers #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamGenericInterface :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *void #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamUserStats :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUserStats #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamGameServerStats :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamGameServerStats #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamApps :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamApps #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamNetworking :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamNetworking #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamRemoteStorage :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamRemoteStorage #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamScreenshots :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamScreenshots #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamGameSearch :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamGameSearch #foreign steam_api64;
SteamAPI_ISteamClient_GetIPCCallCount :: (self: *ISteamClient) -> uint32 #foreign steam_api64;
SteamAPI_ISteamClient_SetWarningMessageHook :: (self: *ISteamClient, pFunction: SteamAPIWarningMessageHook_t) -> void #foreign steam_api64;
SteamAPI_ISteamClient_BShutdownIfAllPipesClosed :: (self: *ISteamClient) -> bool #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamHTTP :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamHTTP #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamController :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamController #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamUGC :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUGC #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamMusic :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMusic #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamMusicRemote :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMusicRemote #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamHTMLSurface :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamHTMLSurface #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamInventory :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamInventory #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamVideo :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamVideo #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamParentalSettings :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamParentalSettings #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamInput :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamInput #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamParties :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamParties #foreign steam_api64;
SteamAPI_ISteamClient_GetISteamRemotePlay :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamRemotePlay #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamUser_v023 :: () -> *ISteamUser #foreign steam_api64;

SteamAPI_ISteamUser_GetHSteamUser :: (self: *ISteamUser) -> HSteamUser #foreign steam_api64;
SteamAPI_ISteamUser_BLoggedOn :: (self: *ISteamUser) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_GetSteamID :: (self: *ISteamUser) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamUser_InitiateGameConnection_DEPRECATED :: (self: *ISteamUser, pAuthBlob: *void, cbMaxAuthBlob: s32, steamIDGameServer: uint64_steamid, unIPServer: uint32, usPortServer: uint16, bSecure: bool) -> s32 #foreign steam_api64;
SteamAPI_ISteamUser_TerminateGameConnection_DEPRECATED :: (self: *ISteamUser, unIPServer: uint32, usPortServer: uint16) -> void #foreign steam_api64;
SteamAPI_ISteamUser_TrackAppUsageEvent :: (self: *ISteamUser, gameID: uint64_gameid, eAppUsageEvent: s32, pchExtraInfo: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamUser_GetUserDataFolder :: (self: *ISteamUser, pchBuffer: *u8, cubBuffer: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_StartVoiceRecording :: (self: *ISteamUser) -> void #foreign steam_api64;
SteamAPI_ISteamUser_StopVoiceRecording :: (self: *ISteamUser) -> void #foreign steam_api64;
SteamAPI_ISteamUser_GetAvailableVoice :: (self: *ISteamUser, pcbCompressed: *uint32, pcbUncompressed_Deprecated: *uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: uint32) -> EVoiceResult #foreign steam_api64;
SteamAPI_ISteamUser_GetVoice :: (self: *ISteamUser, bWantCompressed: bool, pDestBuffer: *void, cbDestBufferSize: uint32, nBytesWritten: *uint32, bWantUncompressed_Deprecated: bool, pUncompressedDestBuffer_Deprecated: *void, cbUncompressedDestBufferSize_Deprecated: uint32, nUncompressBytesWritten_Deprecated: *uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: uint32) -> EVoiceResult #foreign steam_api64;
SteamAPI_ISteamUser_DecompressVoice :: (self: *ISteamUser, pCompressed: *void, cbCompressed: uint32, pDestBuffer: *void, cbDestBufferSize: uint32, nBytesWritten: *uint32, nDesiredSampleRate: uint32) -> EVoiceResult #foreign steam_api64;
SteamAPI_ISteamUser_GetVoiceOptimalSampleRate :: (self: *ISteamUser) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUser_GetAuthSessionTicket :: (self: *ISteamUser, pTicket: *void, cbMaxTicket: s32, pcbTicket: *uint32, pSteamNetworkingIdentity: *SteamNetworkingIdentity) -> HAuthTicket #foreign steam_api64;
SteamAPI_ISteamUser_GetAuthTicketForWebApi :: (self: *ISteamUser, pchIdentity: *u8) -> HAuthTicket #foreign steam_api64;
SteamAPI_ISteamUser_BeginAuthSession :: (self: *ISteamUser, pAuthTicket: *void, cbAuthTicket: s32, steamID: uint64_steamid) -> EBeginAuthSessionResult #foreign steam_api64;
SteamAPI_ISteamUser_EndAuthSession :: (self: *ISteamUser, steamID: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamUser_CancelAuthTicket :: (self: *ISteamUser, hAuthTicket: HAuthTicket) -> void #foreign steam_api64;
SteamAPI_ISteamUser_UserHasLicenseForApp :: (self: *ISteamUser, steamID: uint64_steamid, appID: AppId_t) -> EUserHasLicenseForAppResult #foreign steam_api64;
SteamAPI_ISteamUser_BIsBehindNAT :: (self: *ISteamUser) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_AdvertiseGame :: (self: *ISteamUser, steamIDGameServer: uint64_steamid, unIPServer: uint32, usPortServer: uint16) -> void #foreign steam_api64;
SteamAPI_ISteamUser_RequestEncryptedAppTicket :: (self: *ISteamUser, pDataToInclude: *void, cbDataToInclude: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUser_GetEncryptedAppTicket :: (self: *ISteamUser, pTicket: *void, cbMaxTicket: s32, pcbTicket: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_GetGameBadgeLevel :: (self: *ISteamUser, nSeries: s32, bFoil: bool) -> s32 #foreign steam_api64;
SteamAPI_ISteamUser_GetPlayerSteamLevel :: (self: *ISteamUser) -> s32 #foreign steam_api64;
SteamAPI_ISteamUser_RequestStoreAuthURL :: (self: *ISteamUser, pchRedirectURL: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUser_BIsPhoneVerified :: (self: *ISteamUser) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_BIsTwoFactorEnabled :: (self: *ISteamUser) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_BIsPhoneIdentifying :: (self: *ISteamUser) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_BIsPhoneRequiringVerification :: (self: *ISteamUser) -> bool #foreign steam_api64;
SteamAPI_ISteamUser_GetMarketEligibility :: (self: *ISteamUser) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUser_GetDurationControl :: (self: *ISteamUser) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUser_BSetDurationControlOnlineState :: (self: *ISteamUser, eNewState: EDurationControlOnlineState) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamFriends_v017 :: () -> *ISteamFriends #foreign steam_api64;

SteamAPI_ISteamFriends_GetPersonaName :: (self: *ISteamFriends) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_SetPersonaName :: (self: *ISteamFriends, pchPersonaName: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_GetPersonaState :: (self: *ISteamFriends) -> EPersonaState #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendCount :: (self: *ISteamFriends, iFriendFlags: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendByIndex :: (self: *ISteamFriends, iFriend: s32, iFriendFlags: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendRelationship :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> EFriendRelationship #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendPersonaState :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> EPersonaState #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendPersonaName :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendGamePlayed :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pFriendGameInfo: *FriendGameInfo_t) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendPersonaNameHistory :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iPersonaName: s32) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendSteamLevel :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetPlayerNickname :: (self: *ISteamFriends, steamIDPlayer: uint64_steamid) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendsGroupCount :: (self: *ISteamFriends) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex :: (self: *ISteamFriends, iFG: s32) -> FriendsGroupID_t #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendsGroupName :: (self: *ISteamFriends, friendsGroupID: FriendsGroupID_t) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendsGroupMembersCount :: (self: *ISteamFriends, friendsGroupID: FriendsGroupID_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendsGroupMembersList :: (self: *ISteamFriends, friendsGroupID: FriendsGroupID_t, pOutSteamIDMembers: *CSteamID, nMembersCount: s32) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_HasFriend :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iFriendFlags: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanCount :: (self: *ISteamFriends) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanByIndex :: (self: *ISteamFriends, iClan: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanName :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanTag :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanActivityCounts :: (self: *ISteamFriends, steamIDClan: uint64_steamid, pnOnline: *s32, pnInGame: *s32, pnChatting: *s32) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_DownloadClanActivityCounts :: (self: *ISteamFriends, psteamIDClans: *CSteamID, cClansToRequest: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendCountFromSource :: (self: *ISteamFriends, steamIDSource: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendFromSourceByIndex :: (self: *ISteamFriends, steamIDSource: uint64_steamid, iFriend: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_IsUserInSource :: (self: *ISteamFriends, steamIDUser: uint64_steamid, steamIDSource: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_SetInGameVoiceSpeaking :: (self: *ISteamFriends, steamIDUser: uint64_steamid, bSpeaking: bool) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlay :: (self: *ISteamFriends, pchDialog: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlayToUser :: (self: *ISteamFriends, pchDialog: *u8, steamID: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage :: (self: *ISteamFriends, pchURL: *u8, eMode: EActivateGameOverlayToWebPageMode) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlayToStore :: (self: *ISteamFriends, nAppID: AppId_t, eFlag: EOverlayToStoreFlag) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_SetPlayedWith :: (self: *ISteamFriends, steamIDUserPlayedWith: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog :: (self: *ISteamFriends, steamIDLobby: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_GetSmallFriendAvatar :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetMediumFriendAvatar :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetLargeFriendAvatar :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_RequestUserInformation :: (self: *ISteamFriends, steamIDUser: uint64_steamid, bRequireNameOnly: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_RequestClanOfficerList :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanOwner :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanOfficerCount :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanOfficerByIndex :: (self: *ISteamFriends, steamIDClan: uint64_steamid, iOfficer: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_GetUserRestrictions :: (self: *ISteamFriends) -> uint32 #foreign steam_api64;
SteamAPI_ISteamFriends_SetRichPresence :: (self: *ISteamFriends, pchKey: *u8, pchValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_ClearRichPresence :: (self: *ISteamFriends) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendRichPresence :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pchKey: *u8) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iKey: s32) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_RequestFriendRichPresence :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_InviteUserToGame :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pchConnectString: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetCoplayFriendCount :: (self: *ISteamFriends) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetCoplayFriend :: (self: *ISteamFriends, iCoplayFriend: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendCoplayTime :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendCoplayGame :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> AppId_t #foreign steam_api64;
SteamAPI_ISteamFriends_JoinClanChatRoom :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_LeaveClanChatRoom :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanChatMemberCount :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetChatMemberByIndex :: (self: *ISteamFriends, steamIDClan: uint64_steamid, iUser: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamFriends_SendClanChatMessage :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid, pchText: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetClanChatMessage :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid, iMessage: s32, prgchText: *void, cchTextMax: s32, peChatEntryType: *EChatEntryType, psteamidChatter: *CSteamID) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_IsClanChatAdmin :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid, steamIDUser: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_OpenClanChatWindowInSteam :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_CloseClanChatWindowInSteam :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_SetListenForFriendsMessages :: (self: *ISteamFriends, bInterceptEnabled: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_ReplyToFriendMessage :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pchMsgToSend: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetFriendMessage :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iMessageID: s32, pvData: *void, cubData: s32, peChatEntryType: *EChatEntryType) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_GetFollowerCount :: (self: *ISteamFriends, steamID: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_IsFollowing :: (self: *ISteamFriends, steamID: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_EnumerateFollowingList :: (self: *ISteamFriends, unStartIndex: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_IsClanPublic :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_IsClanOfficialGameGroup :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages :: (self: *ISteamFriends) -> s32 #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog :: (self: *ISteamFriends, steamIDLobby: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser :: (self: *ISteamFriends, pchProtocol: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString :: (self: *ISteamFriends, pchConnectString: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamFriends_RequestEquippedProfileItems :: (self: *ISteamFriends, steamID: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamFriends_BHasEquippedProfileItem :: (self: *ISteamFriends, steamID: uint64_steamid, itemType: ECommunityProfileItemType) -> bool #foreign steam_api64;
SteamAPI_ISteamFriends_GetProfileItemPropertyString :: (self: *ISteamFriends, steamID: uint64_steamid, itemType: ECommunityProfileItemType, prop: ECommunityProfileItemProperty) -> *u8 #foreign steam_api64;
SteamAPI_ISteamFriends_GetProfileItemPropertyUint :: (self: *ISteamFriends, steamID: uint64_steamid, itemType: ECommunityProfileItemType, prop: ECommunityProfileItemProperty) -> uint32 #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamUtils_v010 :: () -> *ISteamUtils #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerUtils_v010 :: () -> *ISteamUtils #foreign steam_api64;

SteamAPI_ISteamUtils_GetSecondsSinceAppActive :: (self: *ISteamUtils) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUtils_GetSecondsSinceComputerActive :: (self: *ISteamUtils) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUtils_GetConnectedUniverse :: (self: *ISteamUtils) -> EUniverse #foreign steam_api64;
SteamAPI_ISteamUtils_GetServerRealTime :: (self: *ISteamUtils) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUtils_GetIPCountry :: (self: *ISteamUtils) -> *u8 #foreign steam_api64;
SteamAPI_ISteamUtils_GetImageSize :: (self: *ISteamUtils, iImage: s32, pnWidth: *uint32, pnHeight: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_GetImageRGBA :: (self: *ISteamUtils, iImage: s32, pubDest: *uint8, nDestBufferSize: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_GetCurrentBatteryPower :: (self: *ISteamUtils) -> uint8 #foreign steam_api64;
SteamAPI_ISteamUtils_GetAppID :: (self: *ISteamUtils) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUtils_SetOverlayNotificationPosition :: (self: *ISteamUtils, eNotificationPosition: ENotificationPosition) -> void #foreign steam_api64;
SteamAPI_ISteamUtils_IsAPICallCompleted :: (self: *ISteamUtils, hSteamAPICall: SteamAPICall_t, pbFailed: *bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_GetAPICallFailureReason :: (self: *ISteamUtils, hSteamAPICall: SteamAPICall_t) -> ESteamAPICallFailure #foreign steam_api64;
SteamAPI_ISteamUtils_GetAPICallResult :: (self: *ISteamUtils, hSteamAPICall: SteamAPICall_t, pCallback: *void, cubCallback: s32, iCallbackExpected: s32, pbFailed: *bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_GetIPCCallCount :: (self: *ISteamUtils) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUtils_SetWarningMessageHook :: (self: *ISteamUtils, pFunction: SteamAPIWarningMessageHook_t) -> void #foreign steam_api64;
SteamAPI_ISteamUtils_IsOverlayEnabled :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_BOverlayNeedsPresent :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_CheckFileSignature :: (self: *ISteamUtils, szFileName: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUtils_ShowGamepadTextInput :: (self: *ISteamUtils, eInputMode: EGamepadTextInputMode, eLineInputMode: EGamepadTextInputLineMode, pchDescription: *u8, unCharMax: uint32, pchExistingText: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_GetEnteredGamepadTextLength :: (self: *ISteamUtils) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUtils_GetEnteredGamepadTextInput :: (self: *ISteamUtils, pchText: *u8, cchText: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_GetSteamUILanguage :: (self: *ISteamUtils) -> *u8 #foreign steam_api64;
SteamAPI_ISteamUtils_IsSteamRunningInVR :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_SetOverlayNotificationInset :: (self: *ISteamUtils, nHorizontalInset: s32, nVerticalInset: s32) -> void #foreign steam_api64;
SteamAPI_ISteamUtils_IsSteamInBigPictureMode :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_StartVRDashboard :: (self: *ISteamUtils) -> void #foreign steam_api64;
SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled :: (self: *ISteamUtils, bEnabled: bool) -> void #foreign steam_api64;
SteamAPI_ISteamUtils_IsSteamChinaLauncher :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_InitFilterText :: (self: *ISteamUtils, unFilterOptions: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_FilterText :: (self: *ISteamUtils, eContext: ETextFilteringContext, sourceSteamID: uint64_steamid, pchInputMessage: *u8, pchOutFilteredText: *u8, nByteSizeOutFilteredText: uint32) -> s32 #foreign steam_api64;
SteamAPI_ISteamUtils_GetIPv6ConnectivityState :: (self: *ISteamUtils, eProtocol: ESteamIPv6ConnectivityProtocol) -> ESteamIPv6ConnectivityState #foreign steam_api64;
SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput :: (self: *ISteamUtils, eKeyboardMode: EFloatingGamepadTextInputMode, nTextFieldXPosition: s32, nTextFieldYPosition: s32, nTextFieldWidth: s32, nTextFieldHeight: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_SetGameLauncherMode :: (self: *ISteamUtils, bLauncherMode: bool) -> void #foreign steam_api64;
SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput :: (self: *ISteamUtils) -> bool #foreign steam_api64;
SteamAPI_ISteamUtils_DismissGamepadTextInput :: (self: *ISteamUtils) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamMatchmaking_v009 :: () -> *ISteamMatchmaking #foreign steam_api64;

SteamAPI_ISteamMatchmaking_GetFavoriteGameCount :: (self: *ISteamMatchmaking) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetFavoriteGame :: (self: *ISteamMatchmaking, iGame: s32, pnAppID: *AppId_t, pnIP: *uint32, pnConnPort: *uint16, pnQueryPort: *uint16, punFlags: *uint32, pRTime32LastPlayedOnServer: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddFavoriteGame :: (self: *ISteamMatchmaking, nAppID: AppId_t, nIP: uint32, nConnPort: uint16, nQueryPort: uint16, unFlags: uint32, rTime32LastPlayedOnServer: uint32) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_RemoveFavoriteGame :: (self: *ISteamMatchmaking, nAppID: AppId_t, nIP: uint32, nConnPort: uint16, nQueryPort: uint16, unFlags: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_RequestLobbyList :: (self: *ISteamMatchmaking) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter :: (self: *ISteamMatchmaking, pchKeyToMatch: *u8, pchValueToMatch: *u8, eComparisonType: ELobbyComparison) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter :: (self: *ISteamMatchmaking, pchKeyToMatch: *u8, nValueToMatch: s32, eComparisonType: ELobbyComparison) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter :: (self: *ISteamMatchmaking, pchKeyToMatch: *u8, nValueToBeCloseTo: s32) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable :: (self: *ISteamMatchmaking, nSlotsAvailable: s32) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter :: (self: *ISteamMatchmaking, eLobbyDistanceFilter: ELobbyDistanceFilter) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter :: (self: *ISteamMatchmaking, cMaxResults: s32) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyByIndex :: (self: *ISteamMatchmaking, iLobby: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamMatchmaking_CreateLobby :: (self: *ISteamMatchmaking, eLobbyType: ELobbyType, cMaxMembers: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamMatchmaking_JoinLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamMatchmaking_LeaveLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_InviteUserToLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDInvitee: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetNumLobbyMembers :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, iMember: s32) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8) -> *u8 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8, pchValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyDataCount :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, iLobbyData: s32, pchKey: *u8, cchKeyBufferSize: s32, pchValue: *u8, cchValueBufferSize: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_DeleteLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyMemberData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDUser: uint64_steamid, pchKey: *u8) -> *u8 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyMemberData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8, pchValue: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SendLobbyChatMsg :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pvMsgBody: *void, cubMsgBody: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyChatEntry :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, iChatID: s32, pSteamIDUser: *CSteamID, pvData: *void, cubData: s32, peChatEntryType: *EChatEntryType) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_RequestLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyGameServer :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, unGameServerIP: uint32, unGameServerPort: uint16, steamIDGameServer: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyGameServer :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, punGameServerIP: *uint32, punGameServerPort: *uint16, psteamIDGameServer: *CSteamID) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, cMaxMembers: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyType :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, eLobbyType: ELobbyType) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyJoinable :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, bLobbyJoinable: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_GetLobbyOwner :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLobbyOwner :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDNewOwner: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmaking_SetLinkedLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDLobbyDependent: uint64_steamid) -> bool #foreign steam_api64;

// ISteamMatchmakingServerListResponse
SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded :: (self: *ISteamMatchmakingServerListResponse, hRequest: HServerListRequest, iServer: s32) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond :: (self: *ISteamMatchmakingServerListResponse, hRequest: HServerListRequest, iServer: s32) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete :: (self: *ISteamMatchmakingServerListResponse, hRequest: HServerListRequest, response: EMatchMakingServerResponse) -> void #foreign steam_api64;

// ISteamMatchmakingPingResponse
SteamAPI_ISteamMatchmakingPingResponse_ServerResponded :: (self: *ISteamMatchmakingPingResponse, server: *gameserveritem_t) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond :: (self: *ISteamMatchmakingPingResponse) -> void #foreign steam_api64;

// ISteamMatchmakingPlayersResponse
SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList :: (self: *ISteamMatchmakingPlayersResponse, pchName: *u8, nScore: s32, flTimePlayed: float) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond :: (self: *ISteamMatchmakingPlayersResponse) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete :: (self: *ISteamMatchmakingPlayersResponse) -> void #foreign steam_api64;

// ISteamMatchmakingRulesResponse
SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded :: (self: *ISteamMatchmakingRulesResponse, pchRule: *u8, pchValue: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond :: (self: *ISteamMatchmakingRulesResponse) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete :: (self: *ISteamMatchmakingRulesResponse) -> void #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamMatchmakingServers_v002 :: () -> *ISteamMatchmakingServers #foreign steam_api64;

SteamAPI_ISteamMatchmakingServers_RequestInternetServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RequestLANServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_ReleaseRequest :: (self: *ISteamMatchmakingServers, hServerListRequest: HServerListRequest) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_GetServerDetails :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest, iServer: s32) -> *gameserveritem_t #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_CancelQuery :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RefreshQuery :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_IsRefreshing :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> bool #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_GetServerCount :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> s32 #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_RefreshServer :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest, iServer: s32) -> void #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_PingServer :: (self: *ISteamMatchmakingServers, unIP: uint32, usPort: uint16, pRequestServersResponse: *ISteamMatchmakingPingResponse) -> HServerQuery #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_PlayerDetails :: (self: *ISteamMatchmakingServers, unIP: uint32, usPort: uint16, pRequestServersResponse: *ISteamMatchmakingPlayersResponse) -> HServerQuery #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_ServerRules :: (self: *ISteamMatchmakingServers, unIP: uint32, usPort: uint16, pRequestServersResponse: *ISteamMatchmakingRulesResponse) -> HServerQuery #foreign steam_api64;
SteamAPI_ISteamMatchmakingServers_CancelServerQuery :: (self: *ISteamMatchmakingServers, hServerQuery: HServerQuery) -> void #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameSearch_v001 :: () -> *ISteamGameSearch #foreign steam_api64;

SteamAPI_ISteamGameSearch_AddGameSearchParams :: (self: *ISteamGameSearch, pchKeyToFind: *u8, pchValuesToFind: *u8) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_SearchForGameWithLobby :: (self: *ISteamGameSearch, steamIDLobby: uint64_steamid, nPlayerMin: s32, nPlayerMax: s32) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_SearchForGameSolo :: (self: *ISteamGameSearch, nPlayerMin: s32, nPlayerMax: s32) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_AcceptGame :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_DeclineGame :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_RetrieveConnectionDetails :: (self: *ISteamGameSearch, steamIDHost: uint64_steamid, pchConnectionDetails: *u8, cubConnectionDetails: s32) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_EndGameSearch :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_SetGameHostParams :: (self: *ISteamGameSearch, pchKey: *u8, pchValue: *u8) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_SetConnectionDetails :: (self: *ISteamGameSearch, pchConnectionDetails: *u8, cubConnectionDetails: s32) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_RequestPlayersForGame :: (self: *ISteamGameSearch, nPlayerMin: s32, nPlayerMax: s32, nMaxTeamSize: s32) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_HostConfirmGameStart :: (self: *ISteamGameSearch, ullUniqueGameID: uint64) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_SubmitPlayerResult :: (self: *ISteamGameSearch, ullUniqueGameID: uint64, steamIDPlayer: uint64_steamid, EPlayerResult: EPlayerResult_t) -> EGameSearchErrorCode_t #foreign steam_api64;
SteamAPI_ISteamGameSearch_EndGame :: (self: *ISteamGameSearch, ullUniqueGameID: uint64) -> EGameSearchErrorCode_t #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamParties_v002 :: () -> *ISteamParties #foreign steam_api64;

SteamAPI_ISteamParties_GetNumActiveBeacons :: (self: *ISteamParties) -> uint32 #foreign steam_api64;
SteamAPI_ISteamParties_GetBeaconByIndex :: (self: *ISteamParties, unIndex: uint32) -> PartyBeaconID_t #foreign steam_api64;
SteamAPI_ISteamParties_GetBeaconDetails :: (self: *ISteamParties, ulBeaconID: PartyBeaconID_t, pSteamIDBeaconOwner: *CSteamID, pLocation: *SteamPartyBeaconLocation_t, pchMetadata: *u8, cchMetadata: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamParties_JoinParty :: (self: *ISteamParties, ulBeaconID: PartyBeaconID_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamParties_GetNumAvailableBeaconLocations :: (self: *ISteamParties, puNumLocations: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamParties_GetAvailableBeaconLocations :: (self: *ISteamParties, pLocationList: *SteamPartyBeaconLocation_t, uMaxNumLocations: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamParties_CreateBeacon :: (self: *ISteamParties, unOpenSlots: uint32, pBeaconLocation: *SteamPartyBeaconLocation_t, pchConnectString: *u8, pchMetadata: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamParties_OnReservationCompleted :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t, steamIDUser: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamParties_CancelReservation :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t, steamIDUser: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamParties_ChangeNumOpenSlots :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t, unOpenSlots: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamParties_DestroyBeacon :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t) -> bool #foreign steam_api64;
SteamAPI_ISteamParties_GetBeaconLocationData :: (self: *ISteamParties, BeaconLocation: SteamPartyBeaconLocation_t, eData: ESteamPartyBeaconLocationData, pchDataStringOut: *u8, cchDataStringOut: s32) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamRemoteStorage_v016 :: () -> *ISteamRemoteStorage #foreign steam_api64;

SteamAPI_ISteamRemoteStorage_FileWrite :: (self: *ISteamRemoteStorage, pchFile: *u8, pvData: *void, cubData: int32) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileRead :: (self: *ISteamRemoteStorage, pchFile: *u8, pvData: *void, cubDataToRead: int32) -> int32 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileWriteAsync :: (self: *ISteamRemoteStorage, pchFile: *u8, pvData: *void, cubData: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileReadAsync :: (self: *ISteamRemoteStorage, pchFile: *u8, nOffset: uint32, cubToRead: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete :: (self: *ISteamRemoteStorage, hReadCall: SteamAPICall_t, pvBuffer: *void, cubToRead: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileForget :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileDelete :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileShare :: (self: *ISteamRemoteStorage, pchFile: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_SetSyncPlatforms :: (self: *ISteamRemoteStorage, pchFile: *u8, eRemoteStoragePlatform: ERemoteStoragePlatform) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen :: (self: *ISteamRemoteStorage, pchFile: *u8) -> UGCFileWriteStreamHandle_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk :: (self: *ISteamRemoteStorage, writeHandle: UGCFileWriteStreamHandle_t, pvData: *void, cubData: int32) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileWriteStreamClose :: (self: *ISteamRemoteStorage, writeHandle: UGCFileWriteStreamHandle_t) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel :: (self: *ISteamRemoteStorage, writeHandle: UGCFileWriteStreamHandle_t) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FileExists :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_FilePersisted :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetFileSize :: (self: *ISteamRemoteStorage, pchFile: *u8) -> int32 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetFileTimestamp :: (self: *ISteamRemoteStorage, pchFile: *u8) -> int64 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetSyncPlatforms :: (self: *ISteamRemoteStorage, pchFile: *u8) -> ERemoteStoragePlatform #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetFileCount :: (self: *ISteamRemoteStorage) -> int32 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetFileNameAndSize :: (self: *ISteamRemoteStorage, iFile: s32, pnFileSizeInBytes: *int32) -> *u8 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetQuota :: (self: *ISteamRemoteStorage, pnTotalBytes: *uint64, puAvailableBytes: *uint64) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount :: (self: *ISteamRemoteStorage) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp :: (self: *ISteamRemoteStorage) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp :: (self: *ISteamRemoteStorage, bEnabled: bool) -> void #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UGCDownload :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, unPriority: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pnBytesDownloaded: *int32, pnBytesExpected: *int32) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetUGCDetails :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pnAppID: *AppId_t, ppchName: **u8, pnFileSizeInBytes: *int32, pSteamIDOwner: *CSteamID) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UGCRead :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pvData: *void, cubDataToRead: int32, cOffset: uint32, eAction: EUGCReadAction) -> int32 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetCachedUGCCount :: (self: *ISteamRemoteStorage) -> int32 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle :: (self: *ISteamRemoteStorage, iCachedContent: int32) -> UGCHandle_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_PublishWorkshopFile :: (self: *ISteamRemoteStorage, pchFile: *u8, pchPreviewFile: *u8, nConsumerAppId: AppId_t, pchTitle: *u8, pchDescription: *u8, eVisibility: ERemoteStoragePublishedFileVisibility, pTags: *SteamParamStringArray_t, eWorkshopFileType: EWorkshopFileType) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> PublishedFileUpdateHandle_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchPreviewFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchTitle: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchDescription: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, eVisibility: ERemoteStoragePublishedFileVisibility) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pTags: *SteamParamStringArray_t) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t, unMaxSecondsOld: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_DeletePublishedFile :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles :: (self: *ISteamRemoteStorage, unStartIndex: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_SubscribePublishedFile :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles :: (self: *ISteamRemoteStorage, unStartIndex: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchChangeDescription: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t, bVoteUp: bool) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles :: (self: *ISteamRemoteStorage, steamId: uint64_steamid, unStartIndex: uint32, pRequiredTags: *SteamParamStringArray_t, pExcludedTags: *SteamParamStringArray_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_PublishVideo :: (self: *ISteamRemoteStorage, eVideoProvider: EWorkshopVideoProvider, pchVideoAccount: *u8, pchVideoIdentifier: *u8, pchPreviewFile: *u8, nConsumerAppId: AppId_t, pchTitle: *u8, pchDescription: *u8, eVisibility: ERemoteStoragePublishedFileVisibility, pTags: *SteamParamStringArray_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t, eAction: EWorkshopFileAction) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction :: (self: *ISteamRemoteStorage, eAction: EWorkshopFileAction, unStartIndex: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles :: (self: *ISteamRemoteStorage, eEnumerationType: EWorkshopEnumerationType, unStartIndex: uint32, unCount: uint32, unDays: uint32, pTags: *SteamParamStringArray_t, pUserTags: *SteamParamStringArray_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pchLocation: *u8, unPriority: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount :: (self: *ISteamRemoteStorage) -> int32 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_GetLocalFileChange :: (self: *ISteamRemoteStorage, iFile: s32, pEChangeType: *ERemoteStorageLocalFileChange, pEFilePathType: *ERemoteStorageFilePathType) -> *u8 #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch :: (self: *ISteamRemoteStorage) -> bool #foreign steam_api64;
SteamAPI_ISteamRemoteStorage_EndFileWriteBatch :: (self: *ISteamRemoteStorage) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamUserStats_v012 :: () -> *ISteamUserStats #foreign steam_api64;

SteamAPI_ISteamUserStats_RequestCurrentStats :: (self: *ISteamUserStats) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetStatInt32 :: (self: *ISteamUserStats, pchName: *u8, pData: *int32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetStatFloat :: (self: *ISteamUserStats, pchName: *u8, pData: *float) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_SetStatInt32 :: (self: *ISteamUserStats, pchName: *u8, nData: int32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_SetStatFloat :: (self: *ISteamUserStats, pchName: *u8, fData: float) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_UpdateAvgRateStat :: (self: *ISteamUserStats, pchName: *u8, flCountThisSession: float, dSessionLength: float64) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievement :: (self: *ISteamUserStats, pchName: *u8, pbAchieved: *bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_SetAchievement :: (self: *ISteamUserStats, pchName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_ClearAchievement :: (self: *ISteamUserStats, pchName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime :: (self: *ISteamUserStats, pchName: *u8, pbAchieved: *bool, punUnlockTime: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_StoreStats :: (self: *ISteamUserStats) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementIcon :: (self: *ISteamUserStats, pchName: *u8) -> s32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute :: (self: *ISteamUserStats, pchName: *u8, pchKey: *u8) -> *u8 #foreign steam_api64;
SteamAPI_ISteamUserStats_IndicateAchievementProgress :: (self: *ISteamUserStats, pchName: *u8, nCurProgress: uint32, nMaxProgress: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetNumAchievements :: (self: *ISteamUserStats) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementName :: (self: *ISteamUserStats, iAchievement: uint32) -> *u8 #foreign steam_api64;
SteamAPI_ISteamUserStats_RequestUserStats :: (self: *ISteamUserStats, steamIDUser: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_GetUserStatInt32 :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *int32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetUserStatFloat :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *float) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetUserAchievement :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pbAchieved: *bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pbAchieved: *bool, punUnlockTime: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_ResetAllStats :: (self: *ISteamUserStats, bAchievementsToo: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_FindOrCreateLeaderboard :: (self: *ISteamUserStats, pchLeaderboardName: *u8, eLeaderboardSortMethod: ELeaderboardSortMethod, eLeaderboardDisplayType: ELeaderboardDisplayType) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_FindLeaderboard :: (self: *ISteamUserStats, pchLeaderboardName: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_GetLeaderboardName :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> *u8 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetLeaderboardEntryCount :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetLeaderboardSortMethod :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> ELeaderboardSortMethod #foreign steam_api64;
SteamAPI_ISteamUserStats_GetLeaderboardDisplayType :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> ELeaderboardDisplayType #foreign steam_api64;
SteamAPI_ISteamUserStats_DownloadLeaderboardEntries :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, eLeaderboardDataRequest: ELeaderboardDataRequest, nRangeStart: s32, nRangeEnd: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, prgUsers: *CSteamID, cUsers: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry :: (self: *ISteamUserStats, hSteamLeaderboardEntries: SteamLeaderboardEntries_t, index: s32, pLeaderboardEntry: *LeaderboardEntry_t, pDetails: *int32, cDetailsMax: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_UploadLeaderboardScore :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, eLeaderboardUploadScoreMethod: ELeaderboardUploadScoreMethod, nScore: int32, pScoreDetails: *int32, cScoreDetailsCount: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_AttachLeaderboardUGC :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, hUGC: UGCHandle_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers :: (self: *ISteamUserStats) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages :: (self: *ISteamUserStats) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo :: (self: *ISteamUserStats, pchName: *u8, unNameBufLen: uint32, pflPercent: *float, pbAchieved: *bool) -> s32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo :: (self: *ISteamUserStats, iIteratorPrevious: s32, pchName: *u8, unNameBufLen: uint32, pflPercent: *float, pbAchieved: *bool) -> s32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementAchievedPercent :: (self: *ISteamUserStats, pchName: *u8, pflPercent: *float) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_RequestGlobalStats :: (self: *ISteamUserStats, nHistoryDays: s32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUserStats_GetGlobalStatInt64 :: (self: *ISteamUserStats, pchStatName: *u8, pData: *int64) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetGlobalStatDouble :: (self: *ISteamUserStats, pchStatName: *u8, pData: *float64) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64 :: (self: *ISteamUserStats, pchStatName: *u8, pData: *int64, cubData: uint32) -> int32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble :: (self: *ISteamUserStats, pchStatName: *u8, pData: *float64, cubData: uint32) -> int32 #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32 :: (self: *ISteamUserStats, pchName: *u8, pnMinProgress: *int32, pnMaxProgress: *int32) -> bool #foreign steam_api64;
SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat :: (self: *ISteamUserStats, pchName: *u8, pfMinProgress: *float, pfMaxProgress: *float) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamApps_v008 :: () -> *ISteamApps #foreign steam_api64;

SteamAPI_ISteamApps_BIsSubscribed :: (self: *ISteamApps) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_BIsLowViolence :: (self: *ISteamApps) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_BIsCybercafe :: (self: *ISteamApps) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_BIsVACBanned :: (self: *ISteamApps) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetCurrentGameLanguage :: (self: *ISteamApps) -> *u8 #foreign steam_api64;
SteamAPI_ISteamApps_GetAvailableGameLanguages :: (self: *ISteamApps) -> *u8 #foreign steam_api64;
SteamAPI_ISteamApps_BIsSubscribedApp :: (self: *ISteamApps, appID: AppId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_BIsDlcInstalled :: (self: *ISteamApps, appID: AppId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime :: (self: *ISteamApps, nAppID: AppId_t) -> uint32 #foreign steam_api64;
SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend :: (self: *ISteamApps) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetDLCCount :: (self: *ISteamApps) -> s32 #foreign steam_api64;
SteamAPI_ISteamApps_BGetDLCDataByIndex :: (self: *ISteamApps, iDLC: s32, pAppID: *AppId_t, pbAvailable: *bool, pchName: *u8, cchNameBufferSize: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_InstallDLC :: (self: *ISteamApps, nAppID: AppId_t) -> void #foreign steam_api64;
SteamAPI_ISteamApps_UninstallDLC :: (self: *ISteamApps, nAppID: AppId_t) -> void #foreign steam_api64;
SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey :: (self: *ISteamApps, nAppID: AppId_t) -> void #foreign steam_api64;
SteamAPI_ISteamApps_GetCurrentBetaName :: (self: *ISteamApps, pchName: *u8, cchNameBufferSize: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_MarkContentCorrupt :: (self: *ISteamApps, bMissingFilesOnly: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetInstalledDepots :: (self: *ISteamApps, appID: AppId_t, pvecDepots: *DepotId_t, cMaxDepots: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamApps_GetAppInstallDir :: (self: *ISteamApps, appID: AppId_t, pchFolder: *u8, cchFolderBufferSize: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamApps_BIsAppInstalled :: (self: *ISteamApps, appID: AppId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetAppOwner :: (self: *ISteamApps) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamApps_GetLaunchQueryParam :: (self: *ISteamApps, pchKey: *u8) -> *u8 #foreign steam_api64;
SteamAPI_ISteamApps_GetDlcDownloadProgress :: (self: *ISteamApps, nAppID: AppId_t, punBytesDownloaded: *uint64, punBytesTotal: *uint64) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetAppBuildId :: (self: *ISteamApps) -> s32 #foreign steam_api64;
SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys :: (self: *ISteamApps) -> void #foreign steam_api64;
SteamAPI_ISteamApps_GetFileDetails :: (self: *ISteamApps, pszFileName: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamApps_GetLaunchCommandLine :: (self: *ISteamApps, pszCommandLine: *u8, cubCommandLine: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing :: (self: *ISteamApps) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_BIsTimedTrial :: (self: *ISteamApps, punSecondsAllowed: *uint32, punSecondsPlayed: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_SetDlcContext :: (self: *ISteamApps, nAppID: AppId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_GetNumBetas :: (self: *ISteamApps, unAppID: AppId_t, pnAvailable: *s32, pnPrivate: *s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamApps_GetBetaInfo :: (self: *ISteamApps, unAppID: AppId_t, iBetaIndex: s32, punFlags: *uint32, punBuildID: *uint32, pchBetaName: *u8, cchBetaName: s32, pchDescription: *u8, cchDescription: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamApps_SetActiveBeta :: (self: *ISteamApps, unAppID: AppId_t, pchBetaName: *u8) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamNetworking_v006 :: () -> *ISteamNetworking #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerNetworking_v006 :: () -> *ISteamNetworking #foreign steam_api64;

SteamAPI_ISteamNetworking_SendP2PPacket :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid, pubData: *void, cubData: uint32, eP2PSendType: EP2PSend, nChannel: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_IsP2PPacketAvailable :: (self: *ISteamNetworking, pcubMsgSize: *uint32, nChannel: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_ReadP2PPacket :: (self: *ISteamNetworking, pubDest: *void, cubDest: uint32, pcubMsgSize: *uint32, psteamIDRemote: *CSteamID, nChannel: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_CloseP2PSessionWithUser :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_CloseP2PChannelWithUser :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid, nChannel: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_GetP2PSessionState :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid, pConnectionState: *P2PSessionState_t) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_AllowP2PPacketRelay :: (self: *ISteamNetworking, bAllow: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_CreateListenSocket :: (self: *ISteamNetworking, nVirtualP2PPort: s32, nIP: SteamIPAddress_t, nPort: uint16, bAllowUseOfPacketRelay: bool) -> SNetListenSocket_t #foreign steam_api64;
SteamAPI_ISteamNetworking_CreateP2PConnectionSocket :: (self: *ISteamNetworking, steamIDTarget: uint64_steamid, nVirtualPort: s32, nTimeoutSec: s32, bAllowUseOfPacketRelay: bool) -> SNetSocket_t #foreign steam_api64;
SteamAPI_ISteamNetworking_CreateConnectionSocket :: (self: *ISteamNetworking, nIP: SteamIPAddress_t, nPort: uint16, nTimeoutSec: s32) -> SNetSocket_t #foreign steam_api64;
SteamAPI_ISteamNetworking_DestroySocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, bNotifyRemoteEnd: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_DestroyListenSocket :: (self: *ISteamNetworking, hSocket: SNetListenSocket_t, bNotifyRemoteEnd: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_SendDataOnSocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pubData: *void, cubData: uint32, bReliable: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_IsDataAvailableOnSocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pcubMsgSize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_RetrieveDataFromSocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pubDest: *void, cubDest: uint32, pcubMsgSize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_IsDataAvailable :: (self: *ISteamNetworking, hListenSocket: SNetListenSocket_t, pcubMsgSize: *uint32, phSocket: *SNetSocket_t) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_RetrieveData :: (self: *ISteamNetworking, hListenSocket: SNetListenSocket_t, pubDest: *void, cubDest: uint32, pcubMsgSize: *uint32, phSocket: *SNetSocket_t) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_GetSocketInfo :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pSteamIDRemote: *CSteamID, peSocketStatus: *s32, punIPRemote: *SteamIPAddress_t, punPortRemote: *uint16) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_GetListenSocketInfo :: (self: *ISteamNetworking, hListenSocket: SNetListenSocket_t, pnIP: *SteamIPAddress_t, pnPort: *uint16) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworking_GetSocketConnectionType :: (self: *ISteamNetworking, hSocket: SNetSocket_t) -> ESNetSocketConnectionType #foreign steam_api64;
SteamAPI_ISteamNetworking_GetMaxPacketSize :: (self: *ISteamNetworking, hSocket: SNetSocket_t) -> s32 #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamScreenshots_v003 :: () -> *ISteamScreenshots #foreign steam_api64;

SteamAPI_ISteamScreenshots_WriteScreenshot :: (self: *ISteamScreenshots, pubRGB: *void, cubRGB: uint32, nWidth: s32, nHeight: s32) -> ScreenshotHandle #foreign steam_api64;
SteamAPI_ISteamScreenshots_AddScreenshotToLibrary :: (self: *ISteamScreenshots, pchFilename: *u8, pchThumbnailFilename: *u8, nWidth: s32, nHeight: s32) -> ScreenshotHandle #foreign steam_api64;
SteamAPI_ISteamScreenshots_TriggerScreenshot :: (self: *ISteamScreenshots) -> void #foreign steam_api64;
SteamAPI_ISteamScreenshots_HookScreenshots :: (self: *ISteamScreenshots, bHook: bool) -> void #foreign steam_api64;
SteamAPI_ISteamScreenshots_SetLocation :: (self: *ISteamScreenshots, hScreenshot: ScreenshotHandle, pchLocation: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamScreenshots_TagUser :: (self: *ISteamScreenshots, hScreenshot: ScreenshotHandle, steamID: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamScreenshots_TagPublishedFile :: (self: *ISteamScreenshots, hScreenshot: ScreenshotHandle, unPublishedFileID: PublishedFileId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamScreenshots_IsScreenshotsHooked :: (self: *ISteamScreenshots) -> bool #foreign steam_api64;
SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary :: (self: *ISteamScreenshots, eType: EVRScreenshotType, pchFilename: *u8, pchVRFilename: *u8) -> ScreenshotHandle #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamMusic_v001 :: () -> *ISteamMusic #foreign steam_api64;

SteamAPI_ISteamMusic_BIsEnabled :: (self: *ISteamMusic) -> bool #foreign steam_api64;
SteamAPI_ISteamMusic_BIsPlaying :: (self: *ISteamMusic) -> bool #foreign steam_api64;
SteamAPI_ISteamMusic_GetPlaybackStatus :: (self: *ISteamMusic) -> AudioPlayback_Status #foreign steam_api64;
SteamAPI_ISteamMusic_Play :: (self: *ISteamMusic) -> void #foreign steam_api64;
SteamAPI_ISteamMusic_Pause :: (self: *ISteamMusic) -> void #foreign steam_api64;
SteamAPI_ISteamMusic_PlayPrevious :: (self: *ISteamMusic) -> void #foreign steam_api64;
SteamAPI_ISteamMusic_PlayNext :: (self: *ISteamMusic) -> void #foreign steam_api64;
SteamAPI_ISteamMusic_SetVolume :: (self: *ISteamMusic, flVolume: float) -> void #foreign steam_api64;
SteamAPI_ISteamMusic_GetVolume :: (self: *ISteamMusic) -> float #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamMusicRemote_v001 :: () -> *ISteamMusicRemote #foreign steam_api64;

SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote :: (self: *ISteamMusicRemote, pchName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_BActivationSuccess :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_SetDisplayName :: (self: *ISteamMusicRemote, pchDisplayName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64 :: (self: *ISteamMusicRemote, pvBuffer: *void, cbBufferLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_EnablePlayPrevious :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_EnablePlayNext :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_EnableShuffled :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_EnableLooped :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_EnableQueue :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_EnablePlaylists :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus :: (self: *ISteamMusicRemote, nStatus: AudioPlayback_Status) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdateShuffled :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdateLooped :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdateVolume :: (self: *ISteamMusicRemote, flValue: float) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_CurrentEntryWillChange :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable :: (self: *ISteamMusicRemote, bAvailable: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText :: (self: *ISteamMusicRemote, pchText: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds :: (self: *ISteamMusicRemote, nValue: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt :: (self: *ISteamMusicRemote, pvBuffer: *void, cbBufferLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_CurrentEntryDidChange :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_QueueWillChange :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_ResetQueueEntries :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_SetQueueEntry :: (self: *ISteamMusicRemote, nID: s32, nPosition: s32, pchEntryText: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry :: (self: *ISteamMusicRemote, nID: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_QueueDidChange :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_PlaylistWillChange :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_ResetPlaylistEntries :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_SetPlaylistEntry :: (self: *ISteamMusicRemote, nID: s32, nPosition: s32, pchEntryText: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry :: (self: *ISteamMusicRemote, nID: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamMusicRemote_PlaylistDidChange :: (self: *ISteamMusicRemote) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamHTTP_v003 :: () -> *ISteamHTTP #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerHTTP_v003 :: () -> *ISteamHTTP #foreign steam_api64;

SteamAPI_ISteamHTTP_CreateHTTPRequest :: (self: *ISteamHTTP, eHTTPRequestMethod: EHTTPMethod, pchAbsoluteURL: *u8) -> HTTPRequestHandle #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestContextValue :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, ulContextValue: uint64) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, unTimeoutSeconds: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchHeaderName: *u8, pchHeaderValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchParamName: *u8, pchParamValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SendHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pCallHandle: *SteamAPICall_t) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pCallHandle: *SteamAPICall_t) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_DeferHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_PrioritizeHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchHeaderName: *u8, unResponseHeaderSize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchHeaderName: *u8, pHeaderValueBuffer: *uint8, unBufferSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPResponseBodySize :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, unBodySize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPResponseBodyData :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pBodyDataBuffer: *uint8, unBufferSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, cOffset: uint32, pBodyDataBuffer: *uint8, unBufferSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_ReleaseHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pflPercentOut: *float) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchContentType: *u8, pubBody: *uint8, unBodyLen: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_CreateCookieContainer :: (self: *ISteamHTTP, bAllowResponsesToModify: bool) -> HTTPCookieContainerHandle #foreign steam_api64;
SteamAPI_ISteamHTTP_ReleaseCookieContainer :: (self: *ISteamHTTP, hCookieContainer: HTTPCookieContainerHandle) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetCookie :: (self: *ISteamHTTP, hCookieContainer: HTTPCookieContainerHandle, pchHost: *u8, pchUrl: *u8, pchCookie: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, hCookieContainer: HTTPCookieContainerHandle) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchUserAgentInfo: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, bRequireVerifiedCertificate: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, unMilliseconds: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pbWasTimedOut: *bool) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamInput_v006 :: () -> *ISteamInput #foreign steam_api64;

SteamAPI_ISteamInput_Init :: (self: *ISteamInput, bExplicitlyCallRunFrame: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_Shutdown :: (self: *ISteamInput) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_SetInputActionManifestFilePath :: (self: *ISteamInput, pchInputActionManifestAbsolutePath: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_RunFrame :: (self: *ISteamInput, bReservedValue: bool) -> void #foreign steam_api64;
SteamAPI_ISteamInput_BWaitForData :: (self: *ISteamInput, bWaitForever: bool, unTimeout: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_BNewDataAvailable :: (self: *ISteamInput) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_GetConnectedControllers :: (self: *ISteamInput, handlesOut: *InputHandle_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamInput_EnableDeviceCallbacks :: (self: *ISteamInput) -> void #foreign steam_api64;
SteamAPI_ISteamInput_EnableActionEventCallbacks :: (self: *ISteamInput, pCallback: SteamInputActionEventCallbackPointer) -> void #foreign steam_api64;
SteamAPI_ISteamInput_GetActionSetHandle :: (self: *ISteamInput, pszActionSetName: *u8) -> InputActionSetHandle_t #foreign steam_api64;
SteamAPI_ISteamInput_ActivateActionSet :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetHandle: InputActionSetHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamInput_GetCurrentActionSet :: (self: *ISteamInput, inputHandle: InputHandle_t) -> InputActionSetHandle_t #foreign steam_api64;
SteamAPI_ISteamInput_ActivateActionSetLayer :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetLayerHandle: InputActionSetHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamInput_DeactivateActionSetLayer :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetLayerHandle: InputActionSetHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamInput_DeactivateAllActionSetLayers :: (self: *ISteamInput, inputHandle: InputHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamInput_GetActiveActionSetLayers :: (self: *ISteamInput, inputHandle: InputHandle_t, handlesOut: *InputActionSetHandle_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamInput_GetDigitalActionHandle :: (self: *ISteamInput, pszActionName: *u8) -> InputDigitalActionHandle_t #foreign steam_api64;
SteamAPI_ISteamInput_GetDigitalActionData :: (self: *ISteamInput, inputHandle: InputHandle_t, digitalActionHandle: InputDigitalActionHandle_t) -> InputDigitalActionData_t #foreign steam_api64;
SteamAPI_ISteamInput_GetDigitalActionOrigins :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetHandle: InputActionSetHandle_t, digitalActionHandle: InputDigitalActionHandle_t, originsOut: *EInputActionOrigin) -> s32 #foreign steam_api64;
SteamAPI_ISteamInput_GetStringForDigitalActionName :: (self: *ISteamInput, eActionHandle: InputDigitalActionHandle_t) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetAnalogActionHandle :: (self: *ISteamInput, pszActionName: *u8) -> InputAnalogActionHandle_t #foreign steam_api64;
SteamAPI_ISteamInput_GetAnalogActionData :: (self: *ISteamInput, inputHandle: InputHandle_t, analogActionHandle: InputAnalogActionHandle_t) -> InputAnalogActionData_t #foreign steam_api64;
SteamAPI_ISteamInput_GetAnalogActionOrigins :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetHandle: InputActionSetHandle_t, analogActionHandle: InputAnalogActionHandle_t, originsOut: *EInputActionOrigin) -> s32 #foreign steam_api64;
SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin :: (self: *ISteamInput, eOrigin: EInputActionOrigin, eSize: ESteamInputGlyphSize, unFlags: uint32) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin :: (self: *ISteamInput, eOrigin: EInputActionOrigin, unFlags: uint32) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy :: (self: *ISteamInput, eOrigin: EInputActionOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetStringForActionOrigin :: (self: *ISteamInput, eOrigin: EInputActionOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetStringForAnalogActionName :: (self: *ISteamInput, eActionHandle: InputAnalogActionHandle_t) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_StopAnalogActionMomentum :: (self: *ISteamInput, inputHandle: InputHandle_t, eAction: InputAnalogActionHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamInput_GetMotionData :: (self: *ISteamInput, inputHandle: InputHandle_t) -> InputMotionData_t #foreign steam_api64;
SteamAPI_ISteamInput_TriggerVibration :: (self: *ISteamInput, inputHandle: InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16) -> void #foreign steam_api64;
SteamAPI_ISteamInput_TriggerVibrationExtended :: (self: *ISteamInput, inputHandle: InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, usLeftTriggerSpeed: u16, usRightTriggerSpeed: u16) -> void #foreign steam_api64;
SteamAPI_ISteamInput_TriggerSimpleHapticEvent :: (self: *ISteamInput, inputHandle: InputHandle_t, eHapticLocation: EControllerHapticLocation, nIntensity: uint8, nGainDB: u8, nOtherIntensity: uint8, nOtherGainDB: u8) -> void #foreign steam_api64;
SteamAPI_ISteamInput_SetLEDColor :: (self: *ISteamInput, inputHandle: InputHandle_t, nColorR: uint8, nColorG: uint8, nColorB: uint8, nFlags: u32) -> void #foreign steam_api64;
SteamAPI_ISteamInput_Legacy_TriggerHapticPulse :: (self: *ISteamInput, inputHandle: InputHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16) -> void #foreign steam_api64;
SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse :: (self: *ISteamInput, inputHandle: InputHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) -> void #foreign steam_api64;
SteamAPI_ISteamInput_ShowBindingPanel :: (self: *ISteamInput, inputHandle: InputHandle_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_GetInputTypeForHandle :: (self: *ISteamInput, inputHandle: InputHandle_t) -> ESteamInputType #foreign steam_api64;
SteamAPI_ISteamInput_GetControllerForGamepadIndex :: (self: *ISteamInput, nIndex: s32) -> InputHandle_t #foreign steam_api64;
SteamAPI_ISteamInput_GetGamepadIndexForController :: (self: *ISteamInput, ulinputHandle: InputHandle_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamInput_GetStringForXboxOrigin :: (self: *ISteamInput, eOrigin: EXboxOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetGlyphForXboxOrigin :: (self: *ISteamInput, eOrigin: EXboxOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin :: (self: *ISteamInput, inputHandle: InputHandle_t, eOrigin: EXboxOrigin) -> EInputActionOrigin #foreign steam_api64;
SteamAPI_ISteamInput_TranslateActionOrigin :: (self: *ISteamInput, eDestinationInputType: ESteamInputType, eSourceOrigin: EInputActionOrigin) -> EInputActionOrigin #foreign steam_api64;
SteamAPI_ISteamInput_GetDeviceBindingRevision :: (self: *ISteamInput, inputHandle: InputHandle_t, pMajor: *s32, pMinor: *s32) -> bool #foreign steam_api64;
SteamAPI_ISteamInput_GetRemotePlaySessionID :: (self: *ISteamInput, inputHandle: InputHandle_t) -> uint32 #foreign steam_api64;
SteamAPI_ISteamInput_GetSessionInputConfigurationSettings :: (self: *ISteamInput) -> uint16 #foreign steam_api64;
SteamAPI_ISteamInput_SetDualSenseTriggerEffect :: (self: *ISteamInput, inputHandle: InputHandle_t, pParam: *ScePadTriggerEffectParam) -> void #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamController_v008 :: () -> *ISteamController #foreign steam_api64;

SteamAPI_ISteamController_Init :: (self: *ISteamController) -> bool #foreign steam_api64;
SteamAPI_ISteamController_Shutdown :: (self: *ISteamController) -> bool #foreign steam_api64;
SteamAPI_ISteamController_RunFrame :: (self: *ISteamController) -> void #foreign steam_api64;
SteamAPI_ISteamController_GetConnectedControllers :: (self: *ISteamController, handlesOut: *ControllerHandle_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamController_GetActionSetHandle :: (self: *ISteamController, pszActionSetName: *u8) -> ControllerActionSetHandle_t #foreign steam_api64;
SteamAPI_ISteamController_ActivateActionSet :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetHandle: ControllerActionSetHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamController_GetCurrentActionSet :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> ControllerActionSetHandle_t #foreign steam_api64;
SteamAPI_ISteamController_ActivateActionSetLayer :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetLayerHandle: ControllerActionSetHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamController_DeactivateActionSetLayer :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetLayerHandle: ControllerActionSetHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamController_DeactivateAllActionSetLayers :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamController_GetActiveActionSetLayers :: (self: *ISteamController, controllerHandle: ControllerHandle_t, handlesOut: *ControllerActionSetHandle_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamController_GetDigitalActionHandle :: (self: *ISteamController, pszActionName: *u8) -> ControllerDigitalActionHandle_t #foreign steam_api64;
SteamAPI_ISteamController_GetDigitalActionData :: (self: *ISteamController, controllerHandle: ControllerHandle_t, digitalActionHandle: ControllerDigitalActionHandle_t) -> InputDigitalActionData_t #foreign steam_api64;
SteamAPI_ISteamController_GetDigitalActionOrigins :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetHandle: ControllerActionSetHandle_t, digitalActionHandle: ControllerDigitalActionHandle_t, originsOut: *EControllerActionOrigin) -> s32 #foreign steam_api64;
SteamAPI_ISteamController_GetAnalogActionHandle :: (self: *ISteamController, pszActionName: *u8) -> ControllerAnalogActionHandle_t #foreign steam_api64;
SteamAPI_ISteamController_GetAnalogActionData :: (self: *ISteamController, controllerHandle: ControllerHandle_t, analogActionHandle: ControllerAnalogActionHandle_t) -> InputAnalogActionData_t #foreign steam_api64;
SteamAPI_ISteamController_GetAnalogActionOrigins :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetHandle: ControllerActionSetHandle_t, analogActionHandle: ControllerAnalogActionHandle_t, originsOut: *EControllerActionOrigin) -> s32 #foreign steam_api64;
SteamAPI_ISteamController_GetGlyphForActionOrigin :: (self: *ISteamController, eOrigin: EControllerActionOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamController_GetStringForActionOrigin :: (self: *ISteamController, eOrigin: EControllerActionOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamController_StopAnalogActionMomentum :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eAction: ControllerAnalogActionHandle_t) -> void #foreign steam_api64;
SteamAPI_ISteamController_GetMotionData :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> InputMotionData_t #foreign steam_api64;
SteamAPI_ISteamController_TriggerHapticPulse :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16) -> void #foreign steam_api64;
SteamAPI_ISteamController_TriggerRepeatedHapticPulse :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) -> void #foreign steam_api64;
SteamAPI_ISteamController_TriggerVibration :: (self: *ISteamController, controllerHandle: ControllerHandle_t, usLeftSpeed: u16, usRightSpeed: u16) -> void #foreign steam_api64;
SteamAPI_ISteamController_SetLEDColor :: (self: *ISteamController, controllerHandle: ControllerHandle_t, nColorR: uint8, nColorG: uint8, nColorB: uint8, nFlags: u32) -> void #foreign steam_api64;
SteamAPI_ISteamController_ShowBindingPanel :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> bool #foreign steam_api64;
SteamAPI_ISteamController_GetInputTypeForHandle :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> ESteamInputType #foreign steam_api64;
SteamAPI_ISteamController_GetControllerForGamepadIndex :: (self: *ISteamController, nIndex: s32) -> ControllerHandle_t #foreign steam_api64;
SteamAPI_ISteamController_GetGamepadIndexForController :: (self: *ISteamController, ulControllerHandle: ControllerHandle_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamController_GetStringForXboxOrigin :: (self: *ISteamController, eOrigin: EXboxOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamController_GetGlyphForXboxOrigin :: (self: *ISteamController, eOrigin: EXboxOrigin) -> *u8 #foreign steam_api64;
SteamAPI_ISteamController_GetActionOriginFromXboxOrigin :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eOrigin: EXboxOrigin) -> EControllerActionOrigin #foreign steam_api64;
SteamAPI_ISteamController_TranslateActionOrigin :: (self: *ISteamController, eDestinationInputType: ESteamInputType, eSourceOrigin: EControllerActionOrigin) -> EControllerActionOrigin #foreign steam_api64;
SteamAPI_ISteamController_GetControllerBindingRevision :: (self: *ISteamController, controllerHandle: ControllerHandle_t, pMajor: *s32, pMinor: *s32) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamUGC_v020 :: () -> *ISteamUGC #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerUGC_v020 :: () -> *ISteamUGC #foreign steam_api64;

SteamAPI_ISteamUGC_CreateQueryUserUGCRequest :: (self: *ISteamUGC, unAccountID: AccountID_t, eListType: EUserUGCList, eMatchingUGCType: EUGCMatchingUGCType, eSortOrder: EUserUGCListSortOrder, nCreatorAppID: AppId_t, nConsumerAppID: AppId_t, unPage: uint32) -> UGCQueryHandle_t #foreign steam_api64;
SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage :: (self: *ISteamUGC, eQueryType: EUGCQuery, eMatchingeMatchingUGCTypeFileType: EUGCMatchingUGCType, nCreatorAppID: AppId_t, nConsumerAppID: AppId_t, unPage: uint32) -> UGCQueryHandle_t #foreign steam_api64;
SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor :: (self: *ISteamUGC, eQueryType: EUGCQuery, eMatchingeMatchingUGCTypeFileType: EUGCMatchingUGCType, nCreatorAppID: AppId_t, nConsumerAppID: AppId_t, pchCursor: *u8) -> UGCQueryHandle_t #foreign steam_api64;
SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, unNumPublishedFileIDs: uint32) -> UGCQueryHandle_t #foreign steam_api64;
SteamAPI_ISteamUGC_SendQueryUGCRequest :: (self: *ISteamUGC, handle: UGCQueryHandle_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCResult :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pDetails: *SteamUGCDetails_t) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCNumTags :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, indexTag: uint32, pchValue: *u8, cchValueSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, indexTag: uint32, pchValue: *u8, cchValueSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCPreviewURL :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pchURL: *u8, cchURLSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCMetadata :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pchMetadata: *u8, cchMetadatasize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCChildren :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pvecPublishedFileID: *PublishedFileId_t, cMaxEntries: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCStatistic :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, eStatType: EItemStatistic, pStatValue: *uint64) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, previewIndex: uint32, pchURLOrVideoID: *u8, cchURLSize: uint32, pchOriginalFileName: *u8, cchOriginalFileNameSize: uint32, pPreviewType: *EItemPreviewType) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, keyValueTagIndex: uint32, pchKey: *u8, cchKeySize: uint32, pchValue: *u8, cchValueSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pchKey: *u8, pchValue: *u8, cchValueSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetNumSupportedGameVersions :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetSupportedGameVersionData :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, versionIndex: uint32, pchGameBranchMin: *u8, pchGameBranchMax: *u8, cchGameBranchSize: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetQueryUGCContentDescriptors :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pvecDescriptors: *EUGCContentDescriptorID, cMaxEntries: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_ReleaseQueryUGCRequest :: (self: *ISteamUGC, handle: UGCQueryHandle_t) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddRequiredTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pTagName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddRequiredTagGroup :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pTagGroups: *SteamParamStringArray_t) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddExcludedTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pTagName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnOnlyIDs :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnOnlyIDs: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnKeyValueTags :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnKeyValueTags: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnLongDescription :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnLongDescription: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnMetadata :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnMetadata: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnChildren :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnChildren: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnAdditionalPreviews :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnAdditionalPreviews: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnTotalOnly :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnTotalOnly: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetReturnPlaytimeStats :: (self: *ISteamUGC, handle: UGCQueryHandle_t, unDays: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetLanguage :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pchLanguage: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetAllowCachedResponse :: (self: *ISteamUGC, handle: UGCQueryHandle_t, unMaxAgeSeconds: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetAdminQuery :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, bAdminQuery: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetCloudFileNameFilter :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pMatchCloudFileName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetMatchAnyTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bMatchAnyTag: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetSearchText :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pSearchText: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetRankedByTrendDays :: (self: *ISteamUGC, handle: UGCQueryHandle_t, unDays: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetTimeCreatedDateRange :: (self: *ISteamUGC, handle: UGCQueryHandle_t, rtStart: RTime32, rtEnd: RTime32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetTimeUpdatedDateRange :: (self: *ISteamUGC, handle: UGCQueryHandle_t, rtStart: RTime32, rtEnd: RTime32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddRequiredKeyValueTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pKey: *u8, pValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_RequestUGCDetails :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, unMaxAgeSeconds: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_CreateItem :: (self: *ISteamUGC, nConsumerAppId: AppId_t, eFileType: EWorkshopFileType) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_StartItemUpdate :: (self: *ISteamUGC, nConsumerAppId: AppId_t, nPublishedFileID: PublishedFileId_t) -> UGCUpdateHandle_t #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemTitle :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchTitle: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemDescription :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchDescription: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemUpdateLanguage :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchLanguage: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemMetadata :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchMetaData: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemVisibility :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, eVisibility: ERemoteStoragePublishedFileVisibility) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemTags :: (self: *ISteamUGC, updateHandle: UGCUpdateHandle_t, pTags: *SteamParamStringArray_t, bAllowAdminTags: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemContent :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszContentFolder: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetItemPreview :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszPreviewFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetAllowLegacyUpload :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, bAllowLegacyUpload: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags :: (self: *ISteamUGC, handle: UGCUpdateHandle_t) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveItemKeyValueTags :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchKey: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddItemKeyValueTag :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchKey: *u8, pchValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddItemPreviewFile :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszPreviewFile: *u8, type: EItemPreviewType) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddItemPreviewVideo :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszVideoID: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_UpdateItemPreviewFile :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, index: uint32, pszPreviewFile: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_UpdateItemPreviewVideo :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, index: uint32, pszVideoID: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveItemPreview :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, index: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_AddContentDescriptor :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, descid: EUGCContentDescriptorID) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveContentDescriptor :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, descid: EUGCContentDescriptorID) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SetRequiredGameVersions :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszGameBranchMin: *u8, pszGameBranchMax: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SubmitItemUpdate :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchChangeNote: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_GetItemUpdateProgress :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, punBytesProcessed: *uint64, punBytesTotal: *uint64) -> EItemUpdateStatus #foreign steam_api64;
SteamAPI_ISteamUGC_SetUserItemVote :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, bVoteUp: bool) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_GetUserItemVote :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_AddItemToFavorites :: (self: *ISteamUGC, nAppId: AppId_t, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveItemFromFavorites :: (self: *ISteamUGC, nAppId: AppId_t, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_SubscribeItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_UnsubscribeItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_GetNumSubscribedItems :: (self: *ISteamUGC) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetSubscribedItems :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, cMaxEntries: uint32) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetItemState :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> uint32 #foreign steam_api64;
SteamAPI_ISteamUGC_GetItemInstallInfo :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, punSizeOnDisk: *uint64, pchFolder: *u8, cchFolderSize: uint32, punTimeStamp: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetItemDownloadInfo :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, punBytesDownloaded: *uint64, punBytesTotal: *uint64) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_DownloadItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, bHighPriority: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_BInitWorkshopForGameServer :: (self: *ISteamUGC, unWorkshopDepotID: DepotId_t, pszFolder: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_SuspendDownloads :: (self: *ISteamUGC, bSuspend: bool) -> void #foreign steam_api64;
SteamAPI_ISteamUGC_StartPlaytimeTracking :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, unNumPublishedFileIDs: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_StopPlaytimeTracking :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, unNumPublishedFileIDs: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems :: (self: *ISteamUGC) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_AddDependency :: (self: *ISteamUGC, nParentPublishedFileID: PublishedFileId_t, nChildPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveDependency :: (self: *ISteamUGC, nParentPublishedFileID: PublishedFileId_t, nChildPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_AddAppDependency :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, nAppID: AppId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_RemoveAppDependency :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, nAppID: AppId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_GetAppDependencies :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_DeleteItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_ShowWorkshopEULA :: (self: *ISteamUGC) -> bool #foreign steam_api64;
SteamAPI_ISteamUGC_GetWorkshopEULAStatus :: (self: *ISteamUGC) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamUGC_GetUserContentDescriptorPreferences :: (self: *ISteamUGC, pvecDescriptors: *EUGCContentDescriptorID, cMaxEntries: uint32) -> uint32 #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamHTMLSurface_v005 :: () -> *ISteamHTMLSurface #foreign steam_api64;

SteamAPI_ISteamHTMLSurface_Init :: (self: *ISteamHTMLSurface) -> bool #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_Shutdown :: (self: *ISteamHTMLSurface) -> bool #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_CreateBrowser :: (self: *ISteamHTMLSurface, pchUserAgent: *u8, pchUserCSS: *u8) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_RemoveBrowser :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_LoadURL :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchURL: *u8, pchPostData: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetSize :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, unWidth: uint32, unHeight: uint32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_StopLoad :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_Reload :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_GoBack :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_GoForward :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_AddHeader :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchKey: *u8, pchValue: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_ExecuteJavascript :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchScript: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_MouseUp :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, eMouseButton: ISteamHTMLSurface.EHTMLMouseButton) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_MouseDown :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, eMouseButton: ISteamHTMLSurface.EHTMLMouseButton) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_MouseDoubleClick :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, eMouseButton: ISteamHTMLSurface.EHTMLMouseButton) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_MouseMove :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, x: s32, y: s32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_MouseWheel :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nDelta: int32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_KeyDown :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nNativeKeyCode: uint32, eHTMLKeyModifiers: ISteamHTMLSurface.EHTMLKeyModifiers, bIsSystemKey: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_KeyUp :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nNativeKeyCode: uint32, eHTMLKeyModifiers: ISteamHTMLSurface.EHTMLKeyModifiers) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_KeyChar :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, cUnicodeChar: uint32, eHTMLKeyModifiers: ISteamHTMLSurface.EHTMLKeyModifiers) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetHorizontalScroll :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nAbsolutePixelScroll: uint32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetVerticalScroll :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nAbsolutePixelScroll: uint32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetKeyFocus :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bHasKeyFocus: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_ViewSource :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_CopyToClipboard :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_PasteFromClipboard :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_Find :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchSearchStr: *u8, bCurrentlyInFind: bool, bReverse: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_StopFind :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_GetLinkAtPosition :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, x: s32, y: s32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetCookie :: (self: *ISteamHTMLSurface, pchHostname: *u8, pchKey: *u8, pchValue: *u8, pchPath: *u8, nExpires: RTime32, bSecure: bool, bHTTPOnly: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetPageScaleFactor :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, flZoom: float, nPointX: s32, nPointY: s32) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetBackgroundMode :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bBackgroundMode: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, flDPIScaling: float) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_OpenDeveloperTools :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_AllowStartRequest :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bAllowed: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_JSDialogResponse :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bResult: bool) -> void #foreign steam_api64;
SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchSelectedFiles: **u8) -> void #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamInventory_v003 :: () -> *ISteamInventory #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerInventory_v003 :: () -> *ISteamInventory #foreign steam_api64;

SteamAPI_ISteamInventory_GetResultStatus :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t) -> EResult #foreign steam_api64;
SteamAPI_ISteamInventory_GetResultItems :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, pOutItemsArray: *SteamItemDetails_t, punOutItemsArraySize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GetResultItemProperty :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, unItemIndex: uint32, pchPropertyName: *u8, pchValueBuffer: *u8, punValueBufferSizeOut: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GetResultTimestamp :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t) -> uint32 #foreign steam_api64;
SteamAPI_ISteamInventory_CheckResultSteamID :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, steamIDExpected: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_DestroyResult :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t) -> void #foreign steam_api64;
SteamAPI_ISteamInventory_GetAllItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GetItemsByID :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pInstanceIDs: *SteamItemInstanceID_t, unCountInstanceIDs: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SerializeResult :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, pOutBuffer: *void, punOutBufferSize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_DeserializeResult :: (self: *ISteamInventory, pOutResultHandle: *SteamInventoryResult_t, pBuffer: *void, unBufferSize: uint32, bRESERVED_MUST_BE_FALSE: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GenerateItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pArrayItemDefs: *SteamItemDef_t, punArrayQuantity: *uint32, unArrayLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GrantPromoItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_AddPromoItem :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, itemDef: SteamItemDef_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_AddPromoItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pArrayItemDefs: *SteamItemDef_t, unArrayLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_ConsumeItem :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, itemConsume: SteamItemInstanceID_t, unQuantity: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_ExchangeItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pArrayGenerate: *SteamItemDef_t, punArrayGenerateQuantity: *uint32, unArrayGenerateLength: uint32, pArrayDestroy: *SteamItemInstanceID_t, punArrayDestroyQuantity: *uint32, unArrayDestroyLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_TransferItemQuantity :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, itemIdSource: SteamItemInstanceID_t, unQuantity: uint32, itemIdDest: SteamItemInstanceID_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SendItemDropHeartbeat :: (self: *ISteamInventory) -> void #foreign steam_api64;
SteamAPI_ISteamInventory_TriggerItemDrop :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, dropListDefinition: SteamItemDef_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_TradeItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, steamIDTradePartner: uint64_steamid, pArrayGive: *SteamItemInstanceID_t, pArrayGiveQuantity: *uint32, nArrayGiveLength: uint32, pArrayGet: *SteamItemInstanceID_t, pArrayGetQuantity: *uint32, nArrayGetLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_LoadItemDefinitions :: (self: *ISteamInventory) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GetItemDefinitionIDs :: (self: *ISteamInventory, pItemDefIDs: *SteamItemDef_t, punItemDefIDsArraySize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GetItemDefinitionProperty :: (self: *ISteamInventory, iDefinition: SteamItemDef_t, pchPropertyName: *u8, pchValueBuffer: *u8, punValueBufferSizeOut: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs :: (self: *ISteamInventory, steamID: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs :: (self: *ISteamInventory, steamID: uint64_steamid, pItemDefIDs: *SteamItemDef_t, punItemDefIDsArraySize: *uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_StartPurchase :: (self: *ISteamInventory, pArrayItemDefs: *SteamItemDef_t, punArrayQuantity: *uint32, unArrayLength: uint32) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamInventory_RequestPrices :: (self: *ISteamInventory) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamInventory_GetNumItemsWithPrices :: (self: *ISteamInventory) -> uint32 #foreign steam_api64;
SteamAPI_ISteamInventory_GetItemsWithPrices :: (self: *ISteamInventory, pArrayItemDefs: *SteamItemDef_t, pCurrentPrices: *uint64, pBasePrices: *uint64, unArrayLength: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_GetItemPrice :: (self: *ISteamInventory, iDefinition: SteamItemDef_t, pCurrentPrice: *uint64, pBasePrice: *uint64) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_StartUpdateProperties :: (self: *ISteamInventory) -> SteamInventoryUpdateHandle_t #foreign steam_api64;
SteamAPI_ISteamInventory_RemoveProperty :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SetPropertyString :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, pchPropertyValue: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SetPropertyBool :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, bValue: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SetPropertyInt64 :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, nValue: int64) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SetPropertyFloat :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, flValue: float) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_SubmitUpdateProperties :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, pResultHandle: *SteamInventoryResult_t) -> bool #foreign steam_api64;
SteamAPI_ISteamInventory_InspectItem :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pchItemToken: *u8) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamTimeline_v001 :: () -> *ISteamTimeline #foreign steam_api64;

SteamAPI_ISteamTimeline_SetTimelineStateDescription :: (self: *ISteamTimeline, pchDescription: *u8, flTimeDelta: float) -> void #foreign steam_api64;
SteamAPI_ISteamTimeline_ClearTimelineStateDescription :: (self: *ISteamTimeline, flTimeDelta: float) -> void #foreign steam_api64;
SteamAPI_ISteamTimeline_AddTimelineEvent :: (self: *ISteamTimeline, pchIcon: *u8, pchTitle: *u8, pchDescription: *u8, unPriority: uint32, flStartOffsetSeconds: float, flDurationSeconds: float, ePossibleClip: ETimelineEventClipPriority) -> void #foreign steam_api64;
SteamAPI_ISteamTimeline_SetTimelineGameMode :: (self: *ISteamTimeline, eMode: ETimelineGameMode) -> void #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamVideo_v007 :: () -> *ISteamVideo #foreign steam_api64;

SteamAPI_ISteamVideo_GetVideoURL :: (self: *ISteamVideo, unVideoAppID: AppId_t) -> void #foreign steam_api64;
SteamAPI_ISteamVideo_IsBroadcasting :: (self: *ISteamVideo, pnNumViewers: *s32) -> bool #foreign steam_api64;
SteamAPI_ISteamVideo_GetOPFSettings :: (self: *ISteamVideo, unVideoAppID: AppId_t) -> void #foreign steam_api64;
SteamAPI_ISteamVideo_GetOPFStringForApp :: (self: *ISteamVideo, unVideoAppID: AppId_t, pchBuffer: *u8, pnBufferSize: *int32) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamParentalSettings_v001 :: () -> *ISteamParentalSettings #foreign steam_api64;

SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled :: (self: *ISteamParentalSettings) -> bool #foreign steam_api64;
SteamAPI_ISteamParentalSettings_BIsParentalLockLocked :: (self: *ISteamParentalSettings) -> bool #foreign steam_api64;
SteamAPI_ISteamParentalSettings_BIsAppBlocked :: (self: *ISteamParentalSettings, nAppID: AppId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamParentalSettings_BIsAppInBlockList :: (self: *ISteamParentalSettings, nAppID: AppId_t) -> bool #foreign steam_api64;
SteamAPI_ISteamParentalSettings_BIsFeatureBlocked :: (self: *ISteamParentalSettings, eFeature: EParentalFeature) -> bool #foreign steam_api64;
SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList :: (self: *ISteamParentalSettings, eFeature: EParentalFeature) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamRemotePlay_v002 :: () -> *ISteamRemotePlay #foreign steam_api64;

SteamAPI_ISteamRemotePlay_GetSessionCount :: (self: *ISteamRemotePlay) -> uint32 #foreign steam_api64;
SteamAPI_ISteamRemotePlay_GetSessionID :: (self: *ISteamRemotePlay, iSessionIndex: s32) -> RemotePlaySessionID_t #foreign steam_api64;
SteamAPI_ISteamRemotePlay_GetSessionSteamID :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamRemotePlay_GetSessionClientName :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t) -> *u8 #foreign steam_api64;
SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t) -> ESteamDeviceFormFactor #foreign steam_api64;
SteamAPI_ISteamRemotePlay_BGetSessionClientResolution :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t, pnResolutionX: *s32, pnResolutionY: *s32) -> bool #foreign steam_api64;
SteamAPI_ISteamRemotePlay_BStartRemotePlayTogether :: (self: *ISteamRemotePlay, bShowOverlay: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite :: (self: *ISteamRemotePlay, steamIDFriend: uint64_steamid) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamNetworkingMessages_SteamAPI_v002 :: () -> *ISteamNetworkingMessages #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002 :: () -> *ISteamNetworkingMessages #foreign steam_api64;

SteamAPI_ISteamNetworkingMessages_SendMessageToUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity, pubData: *void, cubData: uint32, nSendFlags: s32, nRemoteChannel: s32) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingMessages_SendMessageToUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity, pubData: *void, cubData: uint32, nSendFlags: s32, nRemoteChannel: s32) -> EResult #no_context {
    return SteamAPI_ISteamNetworkingMessages_SendMessageToUser(self, *identityRemote, pubData, cubData, nSendFlags, nRemoteChannel);
}
SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel :: (self: *ISteamNetworkingMessages, nLocalChannel: s32, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser(self, *identityRemote);
}
SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser(self, *identityRemote);
}
SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity, nLocalChannel: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity, nLocalChannel: s32) -> bool #no_context {
    return SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser(self, *identityRemote, nLocalChannel);
}
SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity, pConnectionInfo: *SteamNetConnectionInfo_t, pQuickStatus: *SteamNetConnectionRealTimeStatus_t) -> ESteamNetworkingConnectionState #foreign steam_api64;
SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity, pConnectionInfo: *SteamNetConnectionInfo_t, pQuickStatus: *SteamNetConnectionRealTimeStatus_t) -> ESteamNetworkingConnectionState #no_context {
    return SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo(self, *identityRemote, pConnectionInfo, pQuickStatus);
}

// A versioned accessor is exported by the library
SteamAPI_SteamNetworkingSockets_SteamAPI_v012 :: () -> *ISteamNetworkingSockets #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012 :: () -> *ISteamNetworkingSockets #foreign steam_api64;

SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #no_context {
    return SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP(self, *localAddress, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress(self, *address, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P :: (self: *ISteamNetworkingSockets, nLocalVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectP2P(self, *identityRemote, nRemoteVirtualPort, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_AcceptConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CloseConnection :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nReason: s32, pszDebug: *u8, bEnableLinger: bool) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CloseListenSocket :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_SetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nUserData: int64) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection) -> int64 #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_SetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8, nMaxLen: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_SendMessageToConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pData: *void, cbData: uint32, nSendFlags: s32, pOutMessageNumber: *int64) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_SendMessages :: (self: *ISteamNetworkingSockets, nMessages: s32, pMessages: **SteamNetworkingMessage_t, pOutMessageNumberOrResult: *int64) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetConnectionInfo :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pInfo: *SteamNetConnectionInfo_t) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pStatus: *SteamNetConnectionRealTimeStatus_t, nLanes: s32, pLanes: *SteamNetConnectionRealTimeLaneStatus_t) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pszBuf: *u8, cbBuf: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket, address: *SteamNetworkingIPAddr) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CreateSocketPair :: (self: *ISteamNetworkingSockets, pOutConnection1: *HSteamNetConnection, pOutConnection2: *HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: *SteamNetworkingIdentity, pIdentity2: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, nNumLanes: s32, pLanePriorities: *s32, pLaneWeights: *uint16) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetIdentity :: (self: *ISteamNetworkingSockets, pIdentity: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_InitAuthentication :: (self: *ISteamNetworkingSockets) -> ESteamNetworkingAvailability #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus :: (self: *ISteamNetworkingSockets, pDetails: *SteamNetAuthenticationStatus_t) -> ESteamNetworkingAvailability #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CreatePollGroup :: (self: *ISteamNetworkingSockets) -> HSteamNetPollGroup #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_DestroyPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, hPollGroup: HSteamNetPollGroup) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket :: (self: *ISteamNetworkingSockets, pvTicket: *void, cbTicket: s32, pOutParsedTicket: *SteamDatagramRelayAuthTicket) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer :: (self: *ISteamNetworkingSockets, identityGameServer: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, pOutParsedTicket: *SteamDatagramRelayAuthTicket) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer :: (self: *ISteamNetworkingSockets, identityGameServer: SteamNetworkingIdentity, nRemoteVirtualPort: s32, pOutParsedTicket: *SteamDatagramRelayAuthTicket) -> s32 #no_context {
    return SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer(self, *identityGameServer, nRemoteVirtualPort, pOutParsedTicket);
}
SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer :: (self: *ISteamNetworkingSockets, identityTarget: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer :: (self: *ISteamNetworkingSockets, identityTarget: SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer(self, *identityTarget, nRemoteVirtualPort, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort :: (self: *ISteamNetworkingSockets) -> uint16 #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID :: (self: *ISteamNetworkingSockets) -> SteamNetworkingPOPID #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress :: (self: *ISteamNetworkingSockets, pRouting: *SteamDatagramHostedAddress) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket :: (self: *ISteamNetworkingSockets, nLocalVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin :: (self: *ISteamNetworkingSockets, pLoginInfo: *SteamDatagramGameCoordinatorServerLogin, pcbSignedBlob: *s32, pBlob: *void) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling :: (self: *ISteamNetworkingSockets, pSignaling: *ISteamNetworkingConnectionSignaling, pPeerIdentity: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal :: (self: *ISteamNetworkingSockets, pMsg: *void, cbMsg: s32, pContext: *ISteamNetworkingSignalingRecvContext) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetCertificateRequest :: (self: *ISteamNetworkingSockets, pcbBlob: *s32, pBlob: *void, errMsg: *SteamNetworkingErrMsg) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_SetCertificate :: (self: *ISteamNetworkingSockets, pCertificate: *void, cbCertificate: s32, errMsg: *SteamNetworkingErrMsg) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_ResetIdentity :: (self: *ISteamNetworkingSockets, pIdentity: *SteamNetworkingIdentity) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_RunCallbacks :: (self: *ISteamNetworkingSockets) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP :: (self: *ISteamNetworkingSockets, nNumPorts: s32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetFakeIP :: (self: *ISteamNetworkingSockets, idxFirstPort: s32, pInfo: *SteamNetworkingFakeIPResult_t) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP :: (self: *ISteamNetworkingSockets, idxFakePort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pOutAddr: *SteamNetworkingIPAddr) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort :: (self: *ISteamNetworkingSockets, idxFakeServerPort: s32) -> *ISteamNetworkingFakeUDPPort #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamNetworkingUtils_SteamAPI_v004 :: () -> *ISteamNetworkingUtils #foreign steam_api64;

SteamAPI_ISteamNetworkingUtils_AllocateMessage :: (self: *ISteamNetworkingUtils, cbAllocateBuffer: s32) -> *SteamNetworkingMessage_t #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess :: (self: *ISteamNetworkingUtils) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus :: (self: *ISteamNetworkingUtils, pDetails: *SteamRelayNetworkStatus_t) -> ESteamNetworkingAvailability #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation :: (self: *ISteamNetworkingUtils, result: *SteamNetworkPingLocation_t) -> float #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations :: (self: *ISteamNetworkingUtils, location1: *SteamNetworkPingLocation_t, location2: *SteamNetworkPingLocation_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations :: (self: *ISteamNetworkingUtils, location1: SteamNetworkPingLocation_t, location2: SteamNetworkPingLocation_t) -> s32 #no_context {
    return SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations(self, *location1, *location2);
}
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost :: (self: *ISteamNetworkingUtils, remoteLocation: *SteamNetworkPingLocation_t) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost :: (self: *ISteamNetworkingUtils, remoteLocation: SteamNetworkPingLocation_t) -> s32 #no_context {
    return SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost(self, *remoteLocation);
}
SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString :: (self: *ISteamNetworkingUtils, location: *SteamNetworkPingLocation_t, pszBuf: *u8, cchBufSize: s32) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString :: (self: *ISteamNetworkingUtils, location: SteamNetworkPingLocation_t, pszBuf: *u8, cchBufSize: s32) #no_context {
    SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString(self, *location, pszBuf, cchBufSize);
}
SteamAPI_ISteamNetworkingUtils_ParsePingLocationString :: (self: *ISteamNetworkingUtils, pszString: *u8, result: *SteamNetworkPingLocation_t) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate :: (self: *ISteamNetworkingUtils, flMaxAgeSeconds: float) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter :: (self: *ISteamNetworkingUtils, popID: SteamNetworkingPOPID, pViaRelayPoP: *SteamNetworkingPOPID) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP :: (self: *ISteamNetworkingUtils, popID: SteamNetworkingPOPID) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetPOPCount :: (self: *ISteamNetworkingUtils) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetPOPList :: (self: *ISteamNetworkingUtils, list: *SteamNetworkingPOPID, nListSz: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp :: (self: *ISteamNetworkingUtils) -> SteamNetworkingMicroseconds #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction :: (self: *ISteamNetworkingUtils, eDetailLevel: ESteamNetworkingSocketsDebugOutputType, pfnFunc: FSteamNetworkingSocketsDebugOutput) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_IsFakeIPv4 :: (self: *ISteamNetworkingUtils, nIPv4: uint32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType :: (self: *ISteamNetworkingUtils, nIPv4: uint32) -> ESteamNetworkingFakeIPType #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP :: (self: *ISteamNetworkingUtils, fakeIP: *SteamNetworkingIPAddr, pOutRealIdentity: *SteamNetworkingIdentity) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP :: (self: *ISteamNetworkingUtils, fakeIP: SteamNetworkingIPAddr, pOutRealIdentity: *SteamNetworkingIdentity) -> EResult #no_context {
    return SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP(self, *fakeIP, pOutRealIdentity);
}
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32 :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *void) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32 :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetConnectionStatusChanged) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetAuthenticationStatusChanged) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamRelayNetworkStatusChanged) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_FakeIPResult :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetworkingFakeIPResult) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionRequest :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetworkingMessagesSessionRequest) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionFailed :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetworkingMessagesSessionFailed) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, eDataType: ESteamNetworkingConfigDataType, pArg: *void) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: *SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #no_context {
    return SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct(self, *opt, eScopeType, scopeObj);
}
SteamAPI_ISteamNetworkingUtils_GetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, pOutDataType: *ESteamNetworkingConfigDataType, pResult: *void, cbResult: *u64) -> ESteamNetworkingGetConfigValueResult #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, pOutDataType: *ESteamNetworkingConfigDataType, pOutScope: *ESteamNetworkingConfigScope) -> *u8 #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues :: (self: *ISteamNetworkingUtils, eCurrent: ESteamNetworkingConfigValue, bEnumerateDevVars: bool) -> ESteamNetworkingConfigValue #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString :: (self: *ISteamNetworkingUtils, addr: *SteamNetworkingIPAddr, buf: *u8, cbBuf: uint32, bWithPort: bool) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString :: (self: *ISteamNetworkingUtils, addr: SteamNetworkingIPAddr, buf: *u8, cbBuf: uint32, bWithPort: bool) #no_context {
    SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString(self, *addr, buf, cbBuf, bWithPort);
}
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString :: (self: *ISteamNetworkingUtils, pAddr: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType :: (self: *ISteamNetworkingUtils, addr: *SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType :: (self: *ISteamNetworkingUtils, addr: SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #no_context {
    return SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType(self, *addr);
}
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString :: (self: *ISteamNetworkingUtils, identity: *SteamNetworkingIdentity, buf: *u8, cbBuf: uint32) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString :: (self: *ISteamNetworkingUtils, identity: SteamNetworkingIdentity, buf: *u8, cbBuf: uint32) #no_context {
    SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString(self, *identity, buf, cbBuf);
}
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString :: (self: *ISteamNetworkingUtils, pIdentity: *SteamNetworkingIdentity, pszStr: *u8) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServer_v015 :: () -> *ISteamGameServer #foreign steam_api64;

SteamAPI_ISteamGameServer_SetProduct :: (self: *ISteamGameServer, pszProduct: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetGameDescription :: (self: *ISteamGameServer, pszGameDescription: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetModDir :: (self: *ISteamGameServer, pszModDir: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetDedicatedServer :: (self: *ISteamGameServer, bDedicated: bool) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_LogOn :: (self: *ISteamGameServer, pszToken: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_LogOnAnonymous :: (self: *ISteamGameServer) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_LogOff :: (self: *ISteamGameServer) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_BLoggedOn :: (self: *ISteamGameServer) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServer_BSecure :: (self: *ISteamGameServer) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServer_GetSteamID :: (self: *ISteamGameServer) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamGameServer_WasRestartRequested :: (self: *ISteamGameServer) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServer_SetMaxPlayerCount :: (self: *ISteamGameServer, cPlayersMax: s32) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetBotPlayerCount :: (self: *ISteamGameServer, cBotplayers: s32) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetServerName :: (self: *ISteamGameServer, pszServerName: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetMapName :: (self: *ISteamGameServer, pszMapName: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetPasswordProtected :: (self: *ISteamGameServer, bPasswordProtected: bool) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetSpectatorPort :: (self: *ISteamGameServer, unSpectatorPort: uint16) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetSpectatorServerName :: (self: *ISteamGameServer, pszSpectatorServerName: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_ClearAllKeyValues :: (self: *ISteamGameServer) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetKeyValue :: (self: *ISteamGameServer, pKey: *u8, pValue: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetGameTags :: (self: *ISteamGameServer, pchGameTags: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetGameData :: (self: *ISteamGameServer, pchGameData: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetRegion :: (self: *ISteamGameServer, pszRegion: *u8) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_SetAdvertiseServerActive :: (self: *ISteamGameServer, bActive: bool) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_GetAuthSessionTicket :: (self: *ISteamGameServer, pTicket: *void, cbMaxTicket: s32, pcbTicket: *uint32, pSnid: *SteamNetworkingIdentity) -> HAuthTicket #foreign steam_api64;
SteamAPI_ISteamGameServer_BeginAuthSession :: (self: *ISteamGameServer, pAuthTicket: *void, cbAuthTicket: s32, steamID: uint64_steamid) -> EBeginAuthSessionResult #foreign steam_api64;
SteamAPI_ISteamGameServer_EndAuthSession :: (self: *ISteamGameServer, steamID: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_CancelAuthTicket :: (self: *ISteamGameServer, hAuthTicket: HAuthTicket) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_UserHasLicenseForApp :: (self: *ISteamGameServer, steamID: uint64_steamid, appID: AppId_t) -> EUserHasLicenseForAppResult #foreign steam_api64;
SteamAPI_ISteamGameServer_RequestUserGroupStatus :: (self: *ISteamGameServer, steamIDUser: uint64_steamid, steamIDGroup: uint64_steamid) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServer_GetGameplayStats :: (self: *ISteamGameServer) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_GetServerReputation :: (self: *ISteamGameServer) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamGameServer_GetPublicIP :: (self: *ISteamGameServer) -> SteamIPAddress_t #foreign steam_api64;
SteamAPI_ISteamGameServer_HandleIncomingPacket :: (self: *ISteamGameServer, pData: *void, cbData: s32, srcIP: uint32, srcPort: uint16) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServer_GetNextOutgoingPacket :: (self: *ISteamGameServer, pOut: *void, cbMaxOut: s32, pNetAdr: *uint32, pPort: *uint16) -> s32 #foreign steam_api64;
SteamAPI_ISteamGameServer_AssociateWithClan :: (self: *ISteamGameServer, steamIDClan: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility :: (self: *ISteamGameServer, steamIDNewPlayer: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamGameServer_SendUserConnectAndAuthenticate_DEPRECATED :: (self: *ISteamGameServer, unIPClient: uint32, pvAuthBlob: *void, cubAuthBlobSize: uint32, pSteamIDUser: *CSteamID) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection :: (self: *ISteamGameServer) -> uint64_steamid #foreign steam_api64;
SteamAPI_ISteamGameServer_SendUserDisconnect_DEPRECATED :: (self: *ISteamGameServer, steamIDUser: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_ISteamGameServer_BUpdateUserData :: (self: *ISteamGameServer, steamIDUser: uint64_steamid, pchPlayerName: *u8, uScore: uint32) -> bool #foreign steam_api64;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerStats_v001 :: () -> *ISteamGameServerStats #foreign steam_api64;

SteamAPI_ISteamGameServerStats_RequestUserStats :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;
SteamAPI_ISteamGameServerStats_GetUserStatInt32 :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *int32) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_GetUserStatFloat :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *float) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_GetUserAchievement :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, pbAchieved: *bool) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_SetUserStatInt32 :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, nData: int32) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_SetUserStatFloat :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, fData: float) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, flCountThisSession: float, dSessionLength: float64) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_SetUserAchievement :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_ClearUserAchievement :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8) -> bool #foreign steam_api64;
SteamAPI_ISteamGameServerStats_StoreUserStats :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid) -> SteamAPICall_t #foreign steam_api64;

// ISteamNetworkingFakeUDPPort
SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort :: (self: *ISteamNetworkingFakeUDPPort) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: *SteamNetworkingIPAddr, pData: *void, cbData: uint32, nSendFlags: s32) -> EResult #foreign steam_api64;
SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: SteamNetworkingIPAddr, pData: *void, cbData: uint32, nSendFlags: s32) -> EResult #no_context {
    return SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP(self, *remoteAddress, pData, cbData, nSendFlags);
}
SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages :: (self: *ISteamNetworkingFakeUDPPort, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign steam_api64;
SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: *SteamNetworkingIPAddr) -> void #foreign steam_api64;
SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: SteamNetworkingIPAddr) #no_context {
    SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup(self, *remoteAddress);
}

// SteamIPAddress_t
SteamAPI_SteamIPAddress_t_IsSet :: (self: *SteamIPAddress_t) -> bool #foreign steam_api64;

// MatchMakingKeyValuePair_t
SteamAPI_MatchMakingKeyValuePair_t_Construct :: (self: *MatchMakingKeyValuePair_t) -> void #foreign steam_api64;

// servernetadr_t
SteamAPI_servernetadr_t_Construct :: (self: *servernetadr_t) -> void #foreign steam_api64;
SteamAPI_servernetadr_t_Init :: (self: *servernetadr_t, ip: u32, usQueryPort: uint16, usConnectionPort: uint16) -> void #foreign steam_api64;
SteamAPI_servernetadr_t_GetQueryPort :: (self: *servernetadr_t) -> uint16 #foreign steam_api64;
SteamAPI_servernetadr_t_SetQueryPort :: (self: *servernetadr_t, usPort: uint16) -> void #foreign steam_api64;
SteamAPI_servernetadr_t_GetConnectionPort :: (self: *servernetadr_t) -> uint16 #foreign steam_api64;
SteamAPI_servernetadr_t_SetConnectionPort :: (self: *servernetadr_t, usPort: uint16) -> void #foreign steam_api64;
SteamAPI_servernetadr_t_GetIP :: (self: *servernetadr_t) -> uint32 #foreign steam_api64;
SteamAPI_servernetadr_t_SetIP :: (self: *servernetadr_t, unIP: uint32) -> void #foreign steam_api64;
SteamAPI_servernetadr_t_GetConnectionAddressString :: (self: *servernetadr_t) -> *u8 #foreign steam_api64;
SteamAPI_servernetadr_t_GetQueryAddressString :: (self: *servernetadr_t) -> *u8 #foreign steam_api64;
SteamAPI_servernetadr_t_IsLessThan :: (self: *servernetadr_t, netadr: *servernetadr_t) -> bool #foreign steam_api64;
SteamAPI_servernetadr_t_IsLessThan :: (self: *servernetadr_t, netadr: servernetadr_t) -> bool #no_context {
    return SteamAPI_servernetadr_t_IsLessThan(self, *netadr);
}
SteamAPI_servernetadr_t_Assign :: (self: *servernetadr_t, that: *servernetadr_t) -> void #foreign steam_api64;
SteamAPI_servernetadr_t_Assign :: (self: *servernetadr_t, that: servernetadr_t) #no_context {
    SteamAPI_servernetadr_t_Assign(self, *that);
}

// gameserveritem_t
SteamAPI_gameserveritem_t_Construct :: (self: *gameserveritem_t) -> void #foreign steam_api64;
SteamAPI_gameserveritem_t_GetName :: (self: *gameserveritem_t) -> *u8 #foreign steam_api64;
SteamAPI_gameserveritem_t_SetName :: (self: *gameserveritem_t, pName: *u8) -> void #foreign steam_api64;

// SteamNetworkingIPAddr
SteamAPI_SteamNetworkingIPAddr_Clear :: (self: *SteamNetworkingIPAddr) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros :: (self: *SteamNetworkingIPAddr) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_SetIPv6 :: (self: *SteamNetworkingIPAddr, ipv6: *uint8, nPort: uint16) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_SetIPv4 :: (self: *SteamNetworkingIPAddr, nIP: uint32, nPort: uint16) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_IsIPv4 :: (self: *SteamNetworkingIPAddr) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_GetIPv4 :: (self: *SteamNetworkingIPAddr) -> uint32 #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost :: (self: *SteamNetworkingIPAddr, nPort: uint16) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_IsLocalHost :: (self: *SteamNetworkingIPAddr) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_ToString :: (self: *SteamNetworkingIPAddr, buf: *u8, cbBuf: uint32, bWithPort: bool) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_ParseString :: (self: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: *SteamNetworkingIPAddr) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: SteamNetworkingIPAddr) -> bool #no_context {
    return SteamAPI_SteamNetworkingIPAddr_IsEqualTo(self, *x);
}
SteamAPI_SteamNetworkingIPAddr_GetFakeIPType :: (self: *SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #foreign steam_api64;
SteamAPI_SteamNetworkingIPAddr_IsFakeIP :: (self: *SteamNetworkingIPAddr) -> bool #foreign steam_api64;

// SteamNetworkingIdentity
SteamAPI_SteamNetworkingIdentity_Clear :: (self: *SteamNetworkingIdentity) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_IsInvalid :: (self: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetSteamID :: (self: *SteamNetworkingIdentity, steamID: uint64_steamid) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetSteamID :: (self: *SteamNetworkingIdentity) -> uint64_steamid #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetSteamID64 :: (self: *SteamNetworkingIdentity, steamID: uint64) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetSteamID64 :: (self: *SteamNetworkingIdentity) -> uint64 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID :: (self: *SteamNetworkingIdentity) -> *u8 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetPSNID :: (self: *SteamNetworkingIdentity, id: uint64) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetPSNID :: (self: *SteamNetworkingIdentity) -> uint64 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetStadiaID :: (self: *SteamNetworkingIdentity, id: uint64) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetStadiaID :: (self: *SteamNetworkingIdentity) -> uint64 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: *SteamNetworkingIPAddr) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: SteamNetworkingIPAddr) #no_context {
    SteamAPI_SteamNetworkingIdentity_SetIPAddr(self, *addr);
}
SteamAPI_SteamNetworkingIdentity_GetIPAddr :: (self: *SteamNetworkingIdentity) -> *SteamNetworkingIPAddr #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetIPv4Addr :: (self: *SteamNetworkingIdentity, nIPv4: uint32, nPort: uint16) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetIPv4 :: (self: *SteamNetworkingIdentity) -> uint32 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetFakeIPType :: (self: *SteamNetworkingIdentity) -> ESteamNetworkingFakeIPType #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_IsFakeIP :: (self: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetLocalHost :: (self: *SteamNetworkingIdentity) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_IsLocalHost :: (self: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetGenericString :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetGenericString :: (self: *SteamNetworkingIdentity) -> *u8 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_SetGenericBytes :: (self: *SteamNetworkingIdentity, data: *void, cbLen: uint32) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_GetGenericBytes :: (self: *SteamNetworkingIdentity, cbLen: *s32) -> *uint8 #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: *SteamNetworkingIdentity) -> bool #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_SteamNetworkingIdentity_IsEqualTo(self, *x);
}
SteamAPI_SteamNetworkingIdentity_ToString :: (self: *SteamNetworkingIdentity, buf: *u8, cbBuf: uint32) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingIdentity_ParseString :: (self: *SteamNetworkingIdentity, pszStr: *u8) -> bool #foreign steam_api64;

// SteamNetworkingMessage_t
SteamAPI_SteamNetworkingMessage_t_Release :: (self: *SteamNetworkingMessage_t) -> void #foreign steam_api64;

// SteamNetworkingConfigValue_t
SteamAPI_SteamNetworkingConfigValue_t_SetInt32 :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: s32) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingConfigValue_t_SetInt64 :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: s64) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingConfigValue_t_SetFloat :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: float) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingConfigValue_t_SetPtr :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: *void) -> void #foreign steam_api64;
SteamAPI_SteamNetworkingConfigValue_t_SetString :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: *u8) -> void #foreign steam_api64;

// SteamDatagramHostedAddress
SteamAPI_SteamDatagramHostedAddress_Clear :: (self: *SteamDatagramHostedAddress) -> void #foreign steam_api64;
SteamAPI_SteamDatagramHostedAddress_GetPopID :: (self: *SteamDatagramHostedAddress) -> SteamNetworkingPOPID #foreign steam_api64;
SteamAPI_SteamDatagramHostedAddress_SetDevAddress :: (self: *SteamDatagramHostedAddress, nIP: uint32, nPort: uint16, popid: SteamNetworkingPOPID) -> void #foreign steam_api64;

#scope_file

steam_api64 :: #library "bin/windows/steam_api64";
