//
// This file was auto-generated using the following command:
//
// jai generate.jai ../
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

ESteamIPType :: enum u32 {
    ESteamIPTypeIPv4 :: 0;
    ESteamIPTypeIPv6 :: 1;

    k_ESteamIPTypeIPv4 :: ESteamIPTypeIPv4;
    k_ESteamIPTypeIPv6 :: ESteamIPTypeIPv6;
}

SteamIPAddress_t :: struct {
    union {
        m_unIPv4:    uint32 #align 1; // Host order
        m_rgubIPv6:  [16] uint8; // Network order! Same as inaddr_in6.  (0011:2233:4455:6677:8899:aabb:ccdd:eeff)

        m_ipv6Qword: [2] uint64 #align 1; // big endian
    }

    m_eType: ESteamIPType #align 1;
}

// Steam universes.  Each universe is a self-contained Steam instance.
EUniverse :: enum u32 {
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
EResult :: enum u32 {
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
EVoiceResult :: enum u32 {
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

// Result codes to GSHandleClientDeny/Kick
EDenyReason :: enum u32 {
    EDenyInvalid                 :: 0;
    EDenyInvalidVersion          :: 1;
    EDenyGeneric                 :: 2;
    EDenyNotLoggedOn             :: 3;
    EDenyNoLicense               :: 4;
    EDenyCheater                 :: 5;
    EDenyLoggedInElseWhere       :: 6;
    EDenyUnknownText             :: 7;
    EDenyIncompatibleAnticheat   :: 8;
    EDenyMemoryCorruption        :: 9;
    EDenyIncompatibleSoftware    :: 10;
    EDenySteamConnectionLost     :: 11;
    EDenySteamConnectionError    :: 12;
    EDenySteamResponseTimedOut   :: 13;
    EDenySteamValidationStalled  :: 14;
    EDenySteamOwnerLeftGuestUser :: 15;

    k_EDenyInvalid                 :: EDenyInvalid;
    k_EDenyInvalidVersion          :: EDenyInvalidVersion;
    k_EDenyGeneric                 :: EDenyGeneric;
    k_EDenyNotLoggedOn             :: EDenyNotLoggedOn;
    k_EDenyNoLicense               :: EDenyNoLicense;
    k_EDenyCheater                 :: EDenyCheater;
    k_EDenyLoggedInElseWhere       :: EDenyLoggedInElseWhere;
    k_EDenyUnknownText             :: EDenyUnknownText;
    k_EDenyIncompatibleAnticheat   :: EDenyIncompatibleAnticheat;
    k_EDenyMemoryCorruption        :: EDenyMemoryCorruption;
    k_EDenyIncompatibleSoftware    :: EDenyIncompatibleSoftware;
    k_EDenySteamConnectionLost     :: EDenySteamConnectionLost;
    k_EDenySteamConnectionError    :: EDenySteamConnectionError;
    k_EDenySteamResponseTimedOut   :: EDenySteamResponseTimedOut;
    k_EDenySteamValidationStalled  :: EDenySteamValidationStalled;
    k_EDenySteamOwnerLeftGuestUser :: EDenySteamOwnerLeftGuestUser;
}

// return type of GetAuthSessionTicket
HAuthTicket :: uint32;

// results from BeginAuthSession
EBeginAuthSessionResult :: enum u32 {
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

// Callback values for callback ValidateAuthTicketResponse_t which is a response to BeginAuthSession
EAuthSessionResponse :: enum u32 {
    EAuthSessionResponseOK                               :: 0;
    EAuthSessionResponseUserNotConnectedToSteam          :: 1;
    EAuthSessionResponseNoLicenseOrExpired               :: 2;
    EAuthSessionResponseVACBanned                        :: 3;
    EAuthSessionResponseLoggedInElseWhere                :: 4;
    EAuthSessionResponseVACCheckTimedOut                 :: 5;
    EAuthSessionResponseAuthTicketCanceled               :: 6;
    EAuthSessionResponseAuthTicketInvalidAlreadyUsed     :: 7;
    EAuthSessionResponseAuthTicketInvalid                :: 8;
    EAuthSessionResponsePublisherIssuedBan               :: 9;
    EAuthSessionResponseAuthTicketNetworkIdentityFailure :: 10;

    k_EAuthSessionResponseOK                               :: EAuthSessionResponseOK;
    k_EAuthSessionResponseUserNotConnectedToSteam          :: EAuthSessionResponseUserNotConnectedToSteam;
    k_EAuthSessionResponseNoLicenseOrExpired               :: EAuthSessionResponseNoLicenseOrExpired;
    k_EAuthSessionResponseVACBanned                        :: EAuthSessionResponseVACBanned;
    k_EAuthSessionResponseLoggedInElseWhere                :: EAuthSessionResponseLoggedInElseWhere;
    k_EAuthSessionResponseVACCheckTimedOut                 :: EAuthSessionResponseVACCheckTimedOut;
    k_EAuthSessionResponseAuthTicketCanceled               :: EAuthSessionResponseAuthTicketCanceled;
    k_EAuthSessionResponseAuthTicketInvalidAlreadyUsed     :: EAuthSessionResponseAuthTicketInvalidAlreadyUsed;
    k_EAuthSessionResponseAuthTicketInvalid                :: EAuthSessionResponseAuthTicketInvalid;
    k_EAuthSessionResponsePublisherIssuedBan               :: EAuthSessionResponsePublisherIssuedBan;
    k_EAuthSessionResponseAuthTicketNetworkIdentityFailure :: EAuthSessionResponseAuthTicketNetworkIdentityFailure;
}

// results from UserHasLicenseForApp
EUserHasLicenseForAppResult :: enum u32 {
    EUserHasLicenseResultHasLicense         :: 0;
    EUserHasLicenseResultDoesNotHaveLicense :: 1;
    EUserHasLicenseResultNoAuth             :: 2;

    k_EUserHasLicenseResultHasLicense         :: EUserHasLicenseResultHasLicense;
    k_EUserHasLicenseResultDoesNotHaveLicense :: EUserHasLicenseResultDoesNotHaveLicense;
    k_EUserHasLicenseResultNoAuth             :: EUserHasLicenseResultNoAuth;
}

// Steam account types
EAccountType :: enum u32 {
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
EChatEntryType :: enum u32 {
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
// Purpose: Chat Room Enter Responses
//-----------------------------------------------------------------------------
EChatRoomEnterResponse :: enum u32 {
    EChatRoomEnterResponseSuccess           :: 1;
    EChatRoomEnterResponseDoesntExist       :: 2;
    EChatRoomEnterResponseNotAllowed        :: 3;
    EChatRoomEnterResponseFull              :: 4;
    EChatRoomEnterResponseError             :: 5;
    EChatRoomEnterResponseBanned            :: 6;
    EChatRoomEnterResponseLimited           :: 7;
    EChatRoomEnterResponseClanDisabled      :: 8;
    EChatRoomEnterResponseCommunityBan      :: 9;
    EChatRoomEnterResponseMemberBlockedYou  :: 10;
    EChatRoomEnterResponseYouBlockedMember  :: 11;

    EChatRoomEnterResponseRatelimitExceeded :: 15;

    k_EChatRoomEnterResponseSuccess           :: EChatRoomEnterResponseSuccess;
    k_EChatRoomEnterResponseDoesntExist       :: EChatRoomEnterResponseDoesntExist;
    k_EChatRoomEnterResponseNotAllowed        :: EChatRoomEnterResponseNotAllowed;
    k_EChatRoomEnterResponseFull              :: EChatRoomEnterResponseFull;
    k_EChatRoomEnterResponseError             :: EChatRoomEnterResponseError;
    k_EChatRoomEnterResponseBanned            :: EChatRoomEnterResponseBanned;
    k_EChatRoomEnterResponseLimited           :: EChatRoomEnterResponseLimited;
    k_EChatRoomEnterResponseClanDisabled      :: EChatRoomEnterResponseClanDisabled;
    k_EChatRoomEnterResponseCommunityBan      :: EChatRoomEnterResponseCommunityBan;
    k_EChatRoomEnterResponseMemberBlockedYou  :: EChatRoomEnterResponseMemberBlockedYou;
    k_EChatRoomEnterResponseYouBlockedMember  :: EChatRoomEnterResponseYouBlockedMember;

    k_EChatRoomEnterResponseRatelimitExceeded :: EChatRoomEnterResponseRatelimitExceeded;
}

// Special flags for Chat accounts - they go in the top 8 bits
// of the steam ID's "instance", leaving 12 for the actual instances
EChatSteamIDInstanceFlags :: enum u32 {
    EChatAccountInstanceMask  :: 4095;

    EChatInstanceFlagClan     :: 524288;
    EChatInstanceFlagLobby    :: 262144;
    EChatInstanceFlagMMSLobby :: 131072;

    k_EChatAccountInstanceMask  :: EChatAccountInstanceMask;

    k_EChatInstanceFlagClan     :: EChatInstanceFlagClan;
    k_EChatInstanceFlagLobby    :: EChatInstanceFlagLobby;
    k_EChatInstanceFlagMMSLobby :: EChatInstanceFlagMMSLobby;
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

//-----------------------------------------------------------------------------
// Purpose: Broadcast upload result details
//-----------------------------------------------------------------------------
EBroadcastUploadResult :: enum u32 {
    EBroadcastUploadResultNone              :: 0;
    EBroadcastUploadResultOK                :: 1;
    EBroadcastUploadResultInitFailed        :: 2;
    EBroadcastUploadResultFrameFailed       :: 3;
    EBroadcastUploadResultTimeout           :: 4;
    EBroadcastUploadResultBandwidthExceeded :: 5;
    EBroadcastUploadResultLowFPS            :: 6;
    EBroadcastUploadResultMissingKeyFrames  :: 7;
    EBroadcastUploadResultNoConnection      :: 8;
    EBroadcastUploadResultRelayFailed       :: 9;
    EBroadcastUploadResultSettingsChanged   :: 10;
    EBroadcastUploadResultMissingAudio      :: 11;
    EBroadcastUploadResultTooFarBehind      :: 12;
    EBroadcastUploadResultTranscodeBehind   :: 13;
    EBroadcastUploadResultNotAllowedToPlay  :: 14;
    EBroadcastUploadResultBusy              :: 15;
    EBroadcastUploadResultBanned            :: 16;
    EBroadcastUploadResultAlreadyActive     :: 17;
    EBroadcastUploadResultForcedOff         :: 18;
    EBroadcastUploadResultAudioBehind       :: 19;
    EBroadcastUploadResultShutdown          :: 20;
    EBroadcastUploadResultDisconnect        :: 21;
    EBroadcastUploadResultVideoInitFailed   :: 22;
    EBroadcastUploadResultAudioInitFailed   :: 23;

    k_EBroadcastUploadResultNone              :: EBroadcastUploadResultNone;
    k_EBroadcastUploadResultOK                :: EBroadcastUploadResultOK;
    k_EBroadcastUploadResultInitFailed        :: EBroadcastUploadResultInitFailed;
    k_EBroadcastUploadResultFrameFailed       :: EBroadcastUploadResultFrameFailed;
    k_EBroadcastUploadResultTimeout           :: EBroadcastUploadResultTimeout;
    k_EBroadcastUploadResultBandwidthExceeded :: EBroadcastUploadResultBandwidthExceeded;
    k_EBroadcastUploadResultLowFPS            :: EBroadcastUploadResultLowFPS;
    k_EBroadcastUploadResultMissingKeyFrames  :: EBroadcastUploadResultMissingKeyFrames;
    k_EBroadcastUploadResultNoConnection      :: EBroadcastUploadResultNoConnection;
    k_EBroadcastUploadResultRelayFailed       :: EBroadcastUploadResultRelayFailed;
    k_EBroadcastUploadResultSettingsChanged   :: EBroadcastUploadResultSettingsChanged;
    k_EBroadcastUploadResultMissingAudio      :: EBroadcastUploadResultMissingAudio;
    k_EBroadcastUploadResultTooFarBehind      :: EBroadcastUploadResultTooFarBehind;
    k_EBroadcastUploadResultTranscodeBehind   :: EBroadcastUploadResultTranscodeBehind;
    k_EBroadcastUploadResultNotAllowedToPlay  :: EBroadcastUploadResultNotAllowedToPlay;
    k_EBroadcastUploadResultBusy              :: EBroadcastUploadResultBusy;
    k_EBroadcastUploadResultBanned            :: EBroadcastUploadResultBanned;
    k_EBroadcastUploadResultAlreadyActive     :: EBroadcastUploadResultAlreadyActive;
    k_EBroadcastUploadResultForcedOff         :: EBroadcastUploadResultForcedOff;
    k_EBroadcastUploadResultAudioBehind       :: EBroadcastUploadResultAudioBehind;
    k_EBroadcastUploadResultShutdown          :: EBroadcastUploadResultShutdown;
    k_EBroadcastUploadResultDisconnect        :: EBroadcastUploadResultDisconnect;
    k_EBroadcastUploadResultVideoInitFailed   :: EBroadcastUploadResultVideoInitFailed;
    k_EBroadcastUploadResultAudioInitFailed   :: EBroadcastUploadResultAudioInitFailed;
}

//-----------------------------------------------------------------------------
// Purpose: Reasons a user may not use the Community Market.
//          Used in MarketEligibilityResponse_t.
//-----------------------------------------------------------------------------
EMarketNotAllowedReasonFlags :: enum u32 {
    None                             :: 0;

    TemporaryFailure                 :: 1;

    AccountDisabled                  :: 2;

    AccountLockedDown                :: 4;

    AccountLimited                   :: 8;

    TradeBanned                      :: 16;

    AccountNotTrusted                :: 32;

    SteamGuardNotEnabled             :: 64;

    SteamGuardOnlyRecentlyEnabled    :: 128;

    RecentPasswordReset              :: 256;

    NewPaymentMethod                 :: 512;

    InvalidCookie                    :: 1024;

    UsingNewDevice                   :: 2048;

    RecentSelfRefund                 :: 4096;

    NewPaymentMethodCannotBeVerified :: 8192;

    NoRecentPurchases                :: 16384;

    AcceptedWalletGift               :: 32768;

    k_EMarketNotAllowedReason_None                             :: None;

    k_EMarketNotAllowedReason_TemporaryFailure                 :: TemporaryFailure;

    k_EMarketNotAllowedReason_AccountDisabled                  :: AccountDisabled;

    k_EMarketNotAllowedReason_AccountLockedDown                :: AccountLockedDown;

    k_EMarketNotAllowedReason_AccountLimited                   :: AccountLimited;

    k_EMarketNotAllowedReason_TradeBanned                      :: TradeBanned;

    k_EMarketNotAllowedReason_AccountNotTrusted                :: AccountNotTrusted;

    k_EMarketNotAllowedReason_SteamGuardNotEnabled             :: SteamGuardNotEnabled;

    k_EMarketNotAllowedReason_SteamGuardOnlyRecentlyEnabled    :: SteamGuardOnlyRecentlyEnabled;

    k_EMarketNotAllowedReason_RecentPasswordReset              :: RecentPasswordReset;

    k_EMarketNotAllowedReason_NewPaymentMethod                 :: NewPaymentMethod;

    k_EMarketNotAllowedReason_InvalidCookie                    :: InvalidCookie;

    k_EMarketNotAllowedReason_UsingNewDevice                   :: UsingNewDevice;

    k_EMarketNotAllowedReason_RecentSelfRefund                 :: RecentSelfRefund;

    k_EMarketNotAllowedReason_NewPaymentMethodCannotBeVerified :: NewPaymentMethodCannotBeVerified;

    k_EMarketNotAllowedReason_NoRecentPurchases                :: NoRecentPurchases;

    k_EMarketNotAllowedReason_AcceptedWalletGift               :: AcceptedWalletGift;
}

//
// describes XP / progress restrictions to apply for games with duration control /
// anti-indulgence enabled for minor Steam China users.
//
// WARNING: DO NOT RENUMBER
EDurationControlProgress :: enum u32 {
    EDurationControlProgress_Full   :: 0;
    EDurationControlProgress_Half   :: 1;
    EDurationControlProgress_None   :: 2;

    EDurationControl_ExitSoon_3h    :: 3;
    EDurationControl_ExitSoon_5h    :: 4;
    EDurationControl_ExitSoon_Night :: 5;

    k_EDurationControlProgress_Full   :: EDurationControlProgress_Full;
    k_EDurationControlProgress_Half   :: EDurationControlProgress_Half;
    k_EDurationControlProgress_None   :: EDurationControlProgress_None;

    k_EDurationControl_ExitSoon_3h    :: EDurationControl_ExitSoon_3h;
    k_EDurationControl_ExitSoon_5h    :: EDurationControl_ExitSoon_5h;
    k_EDurationControl_ExitSoon_Night :: EDurationControl_ExitSoon_Night;
}

//
// describes which notification timer has expired, for steam china duration control feature
//
// WARNING: DO NOT RENUMBER
EDurationControlNotification :: enum u32 {
    None           :: 0;
    _1Hour         :: 1;

    _3Hours        :: 2;
    HalfProgress   :: 3;
    NoProgress     :: 4;

    ExitSoon_3h    :: 5;
    ExitSoon_5h    :: 6;
    ExitSoon_Night :: 7;

    k_EDurationControlNotification_None           :: None;
    k_EDurationControlNotification_1Hour          :: _1Hour;

    k_EDurationControlNotification_3Hours         :: _3Hours;
    k_EDurationControlNotification_HalfProgress   :: HalfProgress;
    k_EDurationControlNotification_NoProgress     :: NoProgress;

    k_EDurationControlNotification_ExitSoon_3h    :: ExitSoon_3h;
    k_EDurationControlNotification_ExitSoon_5h    :: ExitSoon_5h;
    k_EDurationControlNotification_ExitSoon_Night :: ExitSoon_Night;
}

//
// Specifies a game's online state in relation to duration control
//
EDurationControlOnlineState :: enum u32 {
    Invalid       :: 0;
    Offline       :: 1;
    Online        :: 2;
    OnlineHighPri :: 3;

    k_EDurationControlOnlineState_Invalid       :: Invalid;
    k_EDurationControlOnlineState_Offline       :: Offline;
    k_EDurationControlOnlineState_Online        :: Online;
    k_EDurationControlOnlineState_OnlineHighPri :: OnlineHighPri;
}

EBetaBranchFlags :: enum u32 {
    None      :: 0;
    Default   :: 1;
    Available :: 2;
    Private   :: 4;
    Selected  :: 8;
    Installed :: 16;

    k_EBetaBranch_None      :: None;
    k_EBetaBranch_Default   :: Default;
    k_EBetaBranch_Available :: Available;
    k_EBetaBranch_Private   :: Private;
    k_EBetaBranch_Selected  :: Selected;
    k_EBetaBranch_Installed :: Installed;
}

// Steam ID structure (64 bits total)
CSteamID :: struct {
    // 64 bits total
    SteamID_t :: union {
        SteamIDComponent_t :: struct {
            __bitfield: [8] u8;
            /*
                m_unAccountID: uint32; /* 32 bits */ // unique account identifier
                m_unAccountInstance: u32; /* 20 bits */ // dynamic instance ID
                m_EAccountType: u32; /* 4 bits */ // type of account - can't show as EAccountType, due to signed / unsigned difference
                m_EUniverse: EUniverse; /* 8 bits */ // universe this account belongs to;
            */
        }

        m_comp:        SteamIDComponent_t;

        m_unAll64Bits: uint64 #align 1;
    }

    m_steamid: SteamID_t;
}

//-----------------------------------------------------------------------------
// Purpose: encapsulates an appID/modID pair
//-----------------------------------------------------------------------------
CGameID :: struct {
    EGameIDType :: enum u32 {
        EGameIDTypeApp      :: 0;
        EGameIDTypeGameMod  :: 1;
        EGameIDTypeShortcut :: 2;
        EGameIDTypeP2P      :: 3;

        k_EGameIDTypeApp      :: EGameIDTypeApp;
        k_EGameIDTypeGameMod  :: EGameIDTypeGameMod;
        k_EGameIDTypeShortcut :: EGameIDTypeShortcut;
        k_EGameIDTypeP2P      :: EGameIDTypeP2P;
    }

    //
    // Internal stuff.  Use the accessors above if possible
    //
    GameID_t :: struct {
        __bitfield: [8] u8;
        /*
            m_nAppID: u32; /* 24 bits */
            m_nType: u32; /* 8 bits */
            m_nModID: u32; /* 32 bits */;
        */
    }

    union {
        m_ulGameID: uint64 #align 1;
        m_gameID:   GameID_t;
    }
}

EGameSearchErrorCode_t :: enum u32 {
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

EPlayerResult_t :: enum u32 {
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

ESteamIPv6ConnectivityProtocol :: enum u32 {
    Invalid :: 0;
    HTTP    :: 1;
    UDP     :: 2;

    k_ESteamIPv6ConnectivityProtocol_Invalid :: Invalid;
    k_ESteamIPv6ConnectivityProtocol_HTTP    :: HTTP;
    k_ESteamIPv6ConnectivityProtocol_UDP     :: UDP;
}

// For the above transport protocol, what do we think the local machine's connectivity to the internet over ipv6 is like
ESteamIPv6ConnectivityState :: enum u32 {
    Unknown :: 0;
    Good    :: 1;
    Bad     :: 2;

    k_ESteamIPv6ConnectivityState_Unknown :: Unknown;
    k_ESteamIPv6ConnectivityState_Good    :: Good;
    k_ESteamIPv6ConnectivityState_Bad     :: Bad;
}

ValvePackingSentinel_t :: struct {
    m_u32: uint32;
    m_u64: uint64 #align 4;
    m_u16: uint16;
    m_d:   float64 #align 4;
}

// handle to a communication pipe to the Steam client
HSteamPipe :: int32;

// handle to single instance of a steam user
HSteamUser :: int32;

SteamErrMsg :: [1024] u8;

// function prototype
SteamAPIWarningMessageHook_t :: #type (unknown0: s32, unknown1: *u8) -> void #c_call;

// Dispatch all queued Steamworks callbacks.
//
// This is safe to call from multiple threads simultaneously,
// but if you choose to do this, callback code could be executed on any thread.
// One alternative is to call SteamAPI_RunCallbacks from the main thread only,
// and call SteamAPI_ReleaseCurrentThreadMemory regularly on other threads.
SteamAPI_RunCallbacks :: () -> void #foreign libsteam_api;

// Dispatch callbacks relevant to the gameserver client and interfaces.
// To register for these, you need to use STEAM_GAMESERVER_CALLBACK.
// (Or call SetGameserverFlag on your CCallbackBase object.)
SteamGameServer_RunCallbacks :: () -> void #foreign libsteam_api;

//-----------------------------------------------------------------------------
// Purpose: base for callbacks and call results - internal implementation detail
//-----------------------------------------------------------------------------
CCallbackBase :: struct {
    vtable: *CCallbackBase_VTable;
    k :: enum u32 {
        ECallbackFlagsRegistered :: 1;
        ECallbackFlagsGameServer :: 2;
        k_ECallbackFlagsRegistered :: ECallbackFlagsRegistered;
        k_ECallbackFlagsGameServer :: ECallbackFlagsGameServer;
    }
    m_nCallbackFlags: uint8;
    m_iCallback:      s32;
}
CCallbackBase_VTable :: struct #type_info_none {
    Run: *void;

    Run_1: *void;

    GetCallbackSizeBytes: *void;
}


//-----------------------------------------------------------------------------
// Purpose: templated base for callbacks - internal implementation detail
//-----------------------------------------------------------------------------
CCallbackImpl :: struct(sizeof_P: s32) {
    #as using ccallbackbase: CCallbackBase;
}

//-----------------------------------------------------------------------------
// Purpose: maps a steam async call result to a class member function
//			template params: T = local class, P = parameter struct
//-----------------------------------------------------------------------------
CCallResult :: struct(T: Type, P: Type) {
    #as using ccallbackbase: CCallbackBase;

    m_hAPICall: SteamAPICall_t;
    m_pObj:     *T;
}

//-----------------------------------------------------------------------------
// Purpose: maps a steam callback to a class member function
//			template params: T = local class, P = parameter struct,
//			bGameserver = listen for gameserver callbacks instead of client callbacks
//-----------------------------------------------------------------------------
CCallback :: struct(T: Type, P: Type, bGameserver := false) {
    #as using ccallbackimpl: CCallbackImpl(UnknownTemplateArgumentPlaceholder);

    m_pObj: *T;
}

//-----------------------------------------------------------------------------
// Purpose: subclass of CCallback which allows default-construction in
//			an unregistered state; you must call Register manually
//-----------------------------------------------------------------------------
CCallbackManual :: struct(T: Type, P: Type, bGameServer := false) {
    #as ccallback: CCallback(T, P, UnknownTemplateArgumentPlaceholder); // jai: no "using" to avoid name-clashes
}

// Internal functions used to locate/create interfaces
SteamAPI_GetHSteamPipe :: () -> HSteamPipe #foreign libsteam_api;
SteamAPI_GetHSteamUser :: () -> HSteamUser #foreign libsteam_api;
SteamGameServer_GetHSteamPipe :: () -> HSteamPipe #foreign libsteam_api;
SteamGameServer_GetHSteamUser :: () -> HSteamUser #foreign libsteam_api;
SteamInternal_ContextInit :: (pContextInitData: *void) -> *void #foreign libsteam_api;
SteamInternal_CreateInterface :: (ver: *u8) -> *void #foreign libsteam_api;
SteamInternal_FindOrCreateUserInterface :: (hSteamUser: HSteamUser, pszVersion: *u8) -> *void #foreign libsteam_api;
SteamInternal_FindOrCreateGameServerInterface :: (hSteamUser: HSteamUser, pszVersion: *u8) -> *void #foreign libsteam_api;

// Internal functions used by the utility CCallback objects to receive callbacks
SteamAPI_RegisterCallback :: (pCallback: *CCallbackBase, iCallback: s32) -> void #foreign libsteam_api;
SteamAPI_UnregisterCallback :: (pCallback: *CCallbackBase) -> void #foreign libsteam_api;

// Internal functions used by the utility CCallResult objects to receive async call results
SteamAPI_RegisterCallResult :: (pCallback: *CCallbackBase, hAPICall: SteamAPICall_t) -> void #foreign libsteam_api;
SteamAPI_UnregisterCallResult :: (pCallback: *CCallbackBase, hAPICall: SteamAPICall_t) -> void #foreign libsteam_api;

/// Internal structure used in manual callback dispatch
CallbackMsg_t :: struct {
    m_hSteamUser: HSteamUser; // Specific user to whom this callback applies.
    m_iCallback:  s32; // Callback identifier.  (Corresponds to the k_iCallback enum in the callback structure.)
    m_pubParam:   *uint8 #align 4; // Points to the callback structure
    m_cubParam:   s32; // Size of the data pointed to by m_pubParam
}

ISteamContentServer :: struct {}

ISteamPS3OverlayRender :: struct {}

//-----------------------------------------------------------------------------
// Purpose: Base values for callback identifiers, each callback must
//			have a unique ID.
//-----------------------------------------------------------------------------
// anon_enum :: enum u32 {
    k_iSteamUserCallbacks :: 100;
// }
// anon_enum_1 :: enum u32 {
    k_iSteamGameServerCallbacks :: 200;
// }
// anon_enum_2 :: enum u32 {
    k_iSteamFriendsCallbacks :: 300;
// }
// anon_enum_3 :: enum u32 {
    k_iSteamBillingCallbacks :: 400;
// }
// anon_enum_4 :: enum u32 {
    k_iSteamMatchmakingCallbacks :: 500;
// }
// anon_enum_5 :: enum u32 {
    k_iSteamContentServerCallbacks :: 600;
// }
// anon_enum_6 :: enum u32 {
    k_iSteamUtilsCallbacks :: 700;
// }
// anon_enum_7 :: enum u32 {
    k_iSteamAppsCallbacks :: 1000;
// }
// anon_enum_8 :: enum u32 {
    k_iSteamUserStatsCallbacks :: 1100;
// }
// anon_enum_9 :: enum u32 {
    k_iSteamNetworkingCallbacks :: 1200;
// }
// anon_enum_10 :: enum u32 {
    k_iSteamNetworkingSocketsCallbacks :: 1220;
// }
// anon_enum_11 :: enum u32 {
    k_iSteamNetworkingMessagesCallbacks :: 1250;
// }
// anon_enum_12 :: enum u32 {
    k_iSteamNetworkingUtilsCallbacks :: 1280;
// }
// anon_enum_13 :: enum u32 {
    k_iSteamRemoteStorageCallbacks :: 1300;
// }
// anon_enum_14 :: enum u32 {
    k_iSteamGameServerItemsCallbacks :: 1500;
// }
// anon_enum_15 :: enum u32 {
    k_iSteamGameCoordinatorCallbacks :: 1700;
// }
// anon_enum_16 :: enum u32 {
    k_iSteamGameServerStatsCallbacks :: 1800;
// }
// anon_enum_17 :: enum u32 {
    k_iSteam2AsyncCallbacks :: 1900;
// }
// anon_enum_18 :: enum u32 {
    k_iSteamGameStatsCallbacks :: 2000;
// }
// anon_enum_19 :: enum u32 {
    k_iSteamHTTPCallbacks :: 2100;
// }
// anon_enum_20 :: enum u32 {
    k_iSteamScreenshotsCallbacks :: 2300;
// }

// NOTE: 2500-2599 are reserved
// anon_enum_21 :: enum u32 {
    k_iSteamStreamLauncherCallbacks :: 2600;
// }
// anon_enum_22 :: enum u32 {
    k_iSteamControllerCallbacks :: 2800;
// }
// anon_enum_23 :: enum u32 {
    k_iSteamUGCCallbacks :: 3400;
// }
// anon_enum_24 :: enum u32 {
    k_iSteamStreamClientCallbacks :: 3500;
// }
// anon_enum_25 :: enum u32 {
    k_iSteamMusicCallbacks :: 4000;
// }
// anon_enum_26 :: enum u32 {
    k_iSteamMusicRemoteCallbacks :: 4100;
// }
// anon_enum_27 :: enum u32 {
    k_iSteamGameNotificationCallbacks :: 4400;
// }
// anon_enum_28 :: enum u32 {
    k_iSteamHTMLSurfaceCallbacks :: 4500;
// }
// anon_enum_29 :: enum u32 {
    k_iSteamVideoCallbacks :: 4600;
// }
// anon_enum_30 :: enum u32 {
    k_iSteamInventoryCallbacks :: 4700;
// }
// anon_enum_31 :: enum u32 {
    k_ISteamParentalSettingsCallbacks :: 5000;
// }
// anon_enum_32 :: enum u32 {
    k_iSteamGameSearchCallbacks :: 5200;
// }
// anon_enum_33 :: enum u32 {
    k_iSteamPartiesCallbacks :: 5300;
// }
// anon_enum_34 :: enum u32 {
    k_iSteamSTARCallbacks :: 5500;
// }
// anon_enum_35 :: enum u32 {
    k_iSteamRemotePlayCallbacks :: 5700;
// }
// anon_enum_36 :: enum u32 {
    k_iSteamChatCallbacks :: 5900;
// }
// anon_enum_37 :: enum u32 {
    k_iSteamTimelineCallbacks :: 6000;
// }

CSteamGameServerAPIContext :: struct {
    m_pSteamClient:               *ISteamClient;
    m_pSteamGameServer:           *ISteamGameServer;
    m_pSteamGameServerUtils:      *ISteamUtils;
    m_pSteamGameServerNetworking: *ISteamNetworking;
    m_pSteamGameServerStats:      *ISteamGameServerStats;
    m_pSteamHTTP:                 *ISteamHTTP;
    m_pSteamInventory:            *ISteamInventory;
    m_pSteamUGC:                  *ISteamUGC;
}

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


//-----------------------------------------------------------------------------
// Purpose: posted after the user gains ownership of DLC & that DLC is installed
//-----------------------------------------------------------------------------
DlcInstalled_t :: struct {
//     anon_enum_38 :: enum u32 {
        k_iCallback :: 1005;
//     }
    m_nAppID: AppId_t; // AppID of the DLC
}

//---------------------------------------------------------------------------------
// Purpose: posted after the user gains executes a Steam URL with command line or query parameters
// such as steam://run/<appid>//-commandline/?param1=value1&param2=value2&param3=value3 etc
// while the game is already running.  The new params can be queried
// with GetLaunchQueryParam and GetLaunchCommandLine
//---------------------------------------------------------------------------------
NewUrlLaunchParameters_t :: struct {
//     anon_enum_39 :: enum u32 {
        k_iCallback :: 1014;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// Purpose: response to RequestAppProofOfPurchaseKey/RequestAllProofOfPurchaseKeys
// for supporting third-party CD keys, or other proof-of-purchase systems.
//-----------------------------------------------------------------------------
AppProofOfPurchaseKeyResponse_t :: struct {
//     anon_enum_40 :: enum u32 {
        k_iCallback :: 1021;
//     }
    m_eResult:      EResult;
    m_nAppID:       uint32;
    m_cchKeyLength: uint32;
    m_rgchKey:      [240] u8;
}

//-----------------------------------------------------------------------------
// Purpose: response to GetFileDetails
//-----------------------------------------------------------------------------
FileDetailsResult_t :: struct {
//     anon_enum_41 :: enum u32 {
        k_iCallback :: 1023;
//     }
    m_eResult:    EResult;
    m_ulFileSize: uint64 #align 4; // original file size in bytes
    m_FileSHA:    [20] uint8; // original file SHA1 hash
    m_unFlags:    uint32; //
}

//-----------------------------------------------------------------------------
// Purpose: called for games in Timed Trial mode
//-----------------------------------------------------------------------------
TimedTrialStatus_t :: struct {
//     anon_enum_42 :: enum u32 {
        k_iCallback :: 1030;
//     }
    m_unAppID:          AppId_t; // appID
    m_bIsOffline:       bool; // if true, time allowed / played refers to offline time, not total time
    m_unSecondsAllowed: uint32; // how many seconds the app can be played in total
    m_unSecondsPlayed:  uint32; // how many seconds the app was already played
}

//-----------------------------------------------------------------------------
// Purpose: hand out a reasonable "future proof" view of an app ownership ticket
// the raw (signed) buffer, and indices into that buffer where the appid and
// steamid are located.  the sizes of the appid and steamid are implicit in
// (each version of) the interface - currently uin32 appid and uint64 steamid
//-----------------------------------------------------------------------------
ISteamAppTicket :: struct {
    vtable: *ISteamAppTicket_VTable;
}
ISteamAppTicket_VTable :: struct #type_info_none {
    GetAppOwnershipTicketData: *void;
}


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


EInputSourceMode :: enum u32 {
    None           :: 0;
    Dpad           :: 1;
    Buttons        :: 2;
    FourButtons    :: 3;
    AbsoluteMouse  :: 4;
    RelativeMouse  :: 5;
    JoystickMove   :: 6;
    JoystickMouse  :: 7;
    JoystickCamera :: 8;
    ScrollWheel    :: 9;
    Trigger        :: 10;
    TouchMenu      :: 11;
    MouseJoystick  :: 12;
    MouseRegion    :: 13;
    RadialMenu     :: 14;
    SingleButton   :: 15;
    Switches       :: 16;

    k_EInputSourceMode_None           :: None;
    k_EInputSourceMode_Dpad           :: Dpad;
    k_EInputSourceMode_Buttons        :: Buttons;
    k_EInputSourceMode_FourButtons    :: FourButtons;
    k_EInputSourceMode_AbsoluteMouse  :: AbsoluteMouse;
    k_EInputSourceMode_RelativeMouse  :: RelativeMouse;
    k_EInputSourceMode_JoystickMove   :: JoystickMove;
    k_EInputSourceMode_JoystickMouse  :: JoystickMouse;
    k_EInputSourceMode_JoystickCamera :: JoystickCamera;
    k_EInputSourceMode_ScrollWheel    :: ScrollWheel;
    k_EInputSourceMode_Trigger        :: Trigger;
    k_EInputSourceMode_TouchMenu      :: TouchMenu;
    k_EInputSourceMode_MouseJoystick  :: MouseJoystick;
    k_EInputSourceMode_MouseRegion    :: MouseRegion;
    k_EInputSourceMode_RadialMenu     :: RadialMenu;
    k_EInputSourceMode_SingleButton   :: SingleButton;
    k_EInputSourceMode_Switches       :: Switches;
}

// Note: Please do not use action origins as a way to identify controller types. There is no
// guarantee that they will be added in a contiguous manner - use GetInputTypeForHandle instead.
// Versions of Steam that add new controller types in the future will extend this enum so if you're
// using a lookup table please check the bounds of any origins returned by Steam.
EInputActionOrigin :: enum u32 {
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

EXboxOrigin :: enum u32 {
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

ESteamControllerPad :: enum u32 {
    Left  :: 0;
    Right :: 1;

    k_ESteamControllerPad_Left  :: Left;
    k_ESteamControllerPad_Right :: Right;
}

EControllerHapticLocation :: enum u32 {
    Left  :: 1;
    Right :: 2;
    Both  :: 3;

    k_EControllerHapticLocation_Left  :: Left;
    k_EControllerHapticLocation_Right :: Right;
    k_EControllerHapticLocation_Both  :: Both;
}

EControllerHapticType :: enum u32 {
    Off   :: 0;
    Tick  :: 1;
    Click :: 2;

    k_EControllerHapticType_Off   :: Off;
    k_EControllerHapticType_Tick  :: Tick;
    k_EControllerHapticType_Click :: Click;
}

ESteamInputType :: enum u32 {
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

// Individual values are used by the GetSessionInputConfigurationSettings bitmask
ESteamInputConfigurationEnableType :: enum u32 {
    None        :: 0;
    Playstation :: 1;
    Xbox        :: 2;
    Generic     :: 4;
    Switch      :: 8;

    k_ESteamInputConfigurationEnableType_None        :: None;
    k_ESteamInputConfigurationEnableType_Playstation :: Playstation;
    k_ESteamInputConfigurationEnableType_Xbox        :: Xbox;
    k_ESteamInputConfigurationEnableType_Generic     :: Generic;
    k_ESteamInputConfigurationEnableType_Switch      :: Switch;
}

// These values are passed into SetLEDColor
ESteamInputLEDFlag :: enum u32 {
    SetColor           :: 0;

    RestoreUserDefault :: 1;

    k_ESteamInputLEDFlag_SetColor           :: SetColor;

    k_ESteamInputLEDFlag_RestoreUserDefault :: RestoreUserDefault;
}

// These values are passed into GetGlyphPNGForActionOrigin
ESteamInputGlyphSize :: enum u32 {
    Small  :: 0;
    Medium :: 1;
    Large  :: 2;
    Count  :: 3;

    k_ESteamInputGlyphSize_Small  :: Small;
    k_ESteamInputGlyphSize_Medium :: Medium;
    k_ESteamInputGlyphSize_Large  :: Large;
    k_ESteamInputGlyphSize_Count  :: Count;
}

ESteamInputGlyphStyle :: enum u32 {
    Knockout         :: 0;

    Light            :: 1;
    Dark             :: 2;

    NeutralColorABXY :: 16;
    SolidABXY        :: 32;

    ESteamInputGlyphStyle_Knockout         :: Knockout;

    ESteamInputGlyphStyle_Light            :: Light;
    ESteamInputGlyphStyle_Dark             :: Dark;

    ESteamInputGlyphStyle_NeutralColorABXY :: NeutralColorABXY;
    ESteamInputGlyphStyle_SolidABXY        :: SolidABXY;
}

ESteamInputActionEventType :: enum u32 {
    DigitalAction :: 0;
    AnalogAction  :: 1;

    ESteamInputActionEventType_DigitalAction :: DigitalAction;
    ESteamInputActionEventType_AnalogAction  :: AnalogAction;
}

// InputHandle_t is used to refer to a specific controller.
// This handle will consistently identify a controller, even if it is disconnected and re-connected
InputHandle_t :: uint64;

// These handles are used to refer to a specific in-game action or action set
// All action handles should be queried during initialization for performance reasons
InputActionSetHandle_t :: uint64;
InputDigitalActionHandle_t :: uint64;
InputAnalogActionHandle_t :: uint64;

InputAnalogActionData_t :: struct {
    // Type of data coming from this action, this will match what got specified in the action set
    eMode:   EInputSourceMode #align 1;

    // The current state of this action; will be delta updates for mouse actions
    x:       float #align 1;
    // The current state of this action; will be delta updates for mouse actions
    y:       float #align 1;

    // Whether or not this action is currently available to be bound in the active action set
    bActive: bool;
}

InputDigitalActionData_t :: struct {
    // The current state of this action; will be true if currently pressed
    bState:  bool;

    // Whether or not this action is currently available to be bound in the active action set
    bActive: bool;
}

InputMotionData_t :: struct {
    // Sensor-fused absolute rotation; will drift in heading toward average
    rotQuatX:  float #align 1;
    rotQuatY:  float #align 1;
    rotQuatZ:  float #align 1;
    rotQuatW:  float #align 1;

    // Positional acceleration
    posAccelX: float #align 1;
    posAccelY: float #align 1;
    posAccelZ: float #align 1;

    // Angular velocity
    rotVelX:   float #align 1;
    rotVelY:   float #align 1;
    rotVelZ:   float #align 1;
}

//-----------------------------------------------------------------------------
// Purpose: when callbacks are enabled this fires each time a controller action
// state changes
//-----------------------------------------------------------------------------
SteamInputActionEvent_t :: struct {
    controllerHandle: InputHandle_t #align 1;
    eEventType:       ESteamInputActionEventType #align 1;
    AnalogAction_t :: struct {
        actionHandle:     InputAnalogActionHandle_t #align 1;
        analogActionData: InputAnalogActionData_t;
    }

    DigitalAction_t :: struct {
        actionHandle:      InputDigitalActionHandle_t #align 1;
        digitalActionData: InputDigitalActionData_t;
    }

    union {
        analogAction:  AnalogAction_t;
        digitalAction: DigitalAction_t;
    }
}

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


//-----------------------------------------------------------------------------
// Purpose: called when a new controller has been connected, will fire once
// per controller if multiple new controllers connect in the same frame
//-----------------------------------------------------------------------------
SteamInputDeviceConnected_t :: struct {
//     anon_enum_43 :: enum u32 {
        k_iCallback :: 2801;
//     }
    m_ulConnectedDeviceHandle: InputHandle_t #align 4; // Handle for device
}

//-----------------------------------------------------------------------------
// Purpose: called when a new controller has been connected, will fire once
// per controller if multiple new controllers connect in the same frame
//-----------------------------------------------------------------------------
SteamInputDeviceDisconnected_t :: struct {
//     anon_enum_44 :: enum u32 {
        k_iCallback :: 2802;
//     }
    m_ulDisconnectedDeviceHandle: InputHandle_t #align 4; // Handle for device
}

//-----------------------------------------------------------------------------
// Purpose: called when a controller configuration has been loaded, will fire once
// per controller per focus change for Steam Input enabled controllers
//-----------------------------------------------------------------------------
SteamInputConfigurationLoaded_t :: struct {
//     anon_enum_45 :: enum u32 {
        k_iCallback :: 2803;
//     }
    m_unAppID:            AppId_t;
    m_ulDeviceHandle:     InputHandle_t #align 4; // Handle for device
    m_ulMappingCreator:   CSteamID; // May differ from local user when using

    m_unMajorRevision:    uint32; // Binding revision from In-game Action File.

    // Same value as queried by GetDeviceBindingRevision
    m_unMinorRevision:    uint32;
    m_bUsesSteamInputAPI: bool; // Does the configuration contain any Analog/Digital actions?
    m_bUsesGamepadAPI:    bool; // Does the configuration contain any Xinput bindings?
}

//-----------------------------------------------------------------------------
// Purpose: called when controller gamepad slots change - on Linux/macOS these
// slots are shared for all running apps.
//-----------------------------------------------------------------------------
SteamInputGamepadSlotChange_t :: struct {
//     anon_enum_46 :: enum u32 {
        k_iCallback :: 2804;
//     }
    m_unAppID:         AppId_t;
    m_ulDeviceHandle:  InputHandle_t #align 4; // Handle for device
    m_eDeviceType:     ESteamInputType; // Type of device
    m_nOldGamepadSlot: s32; // Previous GamepadSlot - can be -1 controller doesn't uses gamepad bindings
    m_nNewGamepadSlot: s32; // New Gamepad Slot - can be -1 controller doesn't uses gamepad bindings
}

// Note: Please do not use action origins as a way to identify controller types. There is no
// guarantee that they will be added in a contiguous manner - use GetInputTypeForHandle instead
// Versions of Steam that add new controller types in the future will extend this enum if you're
// using a lookup table please check the bounds of any origins returned by Steam.
EControllerActionOrigin :: enum u32 {
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

ESteamControllerLEDFlag :: enum u32 {
    SetColor           :: 0;
    RestoreUserDefault :: 1;

    k_ESteamControllerLEDFlag_SetColor           :: SetColor;
    k_ESteamControllerLEDFlag_RestoreUserDefault :: RestoreUserDefault;
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


//-----------------------------------------------------------------------------
// Purpose: set of relationships to other users
//-----------------------------------------------------------------------------
EFriendRelationship :: enum u32 {
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
EPersonaState :: enum u32 {
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

//-----------------------------------------------------------------------------
// Purpose: flags for enumerating friends list, or quickly checking a the relationship between users
//-----------------------------------------------------------------------------
EFriendFlags :: enum u32 {
    EFriendFlagNone                 :: 0;
    EFriendFlagBlocked              :: 1;
    EFriendFlagFriendshipRequested  :: 2;
    EFriendFlagImmediate            :: 4;
    EFriendFlagClanMember           :: 8;
    EFriendFlagOnGameServer         :: 16;

    EFriendFlagRequestingFriendship :: 128;
    EFriendFlagRequestingInfo       :: 256;
    EFriendFlagIgnored              :: 512;
    EFriendFlagIgnoredFriend        :: 1024;

    EFriendFlagChatMember           :: 4096;
    EFriendFlagAll                  :: 65535;

    k_EFriendFlagNone                 :: EFriendFlagNone;
    k_EFriendFlagBlocked              :: EFriendFlagBlocked;
    k_EFriendFlagFriendshipRequested  :: EFriendFlagFriendshipRequested;
    k_EFriendFlagImmediate            :: EFriendFlagImmediate;
    k_EFriendFlagClanMember           :: EFriendFlagClanMember;
    k_EFriendFlagOnGameServer         :: EFriendFlagOnGameServer;

    k_EFriendFlagRequestingFriendship :: EFriendFlagRequestingFriendship;
    k_EFriendFlagRequestingInfo       :: EFriendFlagRequestingInfo;
    k_EFriendFlagIgnored              :: EFriendFlagIgnored;
    k_EFriendFlagIgnoredFriend        :: EFriendFlagIgnoredFriend;

    k_EFriendFlagChatMember           :: EFriendFlagChatMember;
    k_EFriendFlagAll                  :: EFriendFlagAll;
}

FriendGameInfo_t :: struct {
    m_gameID:       CGameID;
    m_unGameIP:     uint32;
    m_usGamePort:   uint16;
    m_usQueryPort:  uint16;
    m_steamIDLobby: CSteamID;
}

// maximum number of characters in a user's name. Two flavors; one for UTF-8 and one for UTF-16.
// The UTF-8 version has to be very generous to accomodate characters that get large when encoded
// in UTF-8.
k_1 :: enum u32 {
    cchPersonaNameMax  :: 128;
    cwchPersonaNameMax :: 32;

    k_cchPersonaNameMax  :: cchPersonaNameMax;
    k_cwchPersonaNameMax :: cwchPersonaNameMax;
}

//-----------------------------------------------------------------------------
// Purpose: user restriction flags
//-----------------------------------------------------------------------------
EUserRestriction :: enum u32 {
    nUserRestrictionNone        :: 0;
    nUserRestrictionUnknown     :: 1;
    nUserRestrictionAnyChat     :: 2;
    nUserRestrictionVoiceChat   :: 4;
    nUserRestrictionGroupChat   :: 8;
    nUserRestrictionRating      :: 16;
    nUserRestrictionGameInvites :: 32;
    nUserRestrictionTrading     :: 64;

    k_nUserRestrictionNone        :: nUserRestrictionNone;
    k_nUserRestrictionUnknown     :: nUserRestrictionUnknown;
    k_nUserRestrictionAnyChat     :: nUserRestrictionAnyChat;
    k_nUserRestrictionVoiceChat   :: nUserRestrictionVoiceChat;
    k_nUserRestrictionGroupChat   :: nUserRestrictionGroupChat;
    k_nUserRestrictionRating      :: nUserRestrictionRating;
    k_nUserRestrictionGameInvites :: nUserRestrictionGameInvites;
    k_nUserRestrictionTrading     :: nUserRestrictionTrading;
}

// size limits on Rich Presence data
// anon_enum_47 :: enum u32 {
    k_cchMaxRichPresenceKeys :: 30;
// }
// anon_enum_48 :: enum u32 {
    k_cchMaxRichPresenceKeyLength :: 64;
// }
// anon_enum_49 :: enum u32 {
    k_cchMaxRichPresenceValueLength :: 256;
// }

// These values are passed as parameters to the store
EOverlayToStoreFlag :: enum u32 {
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
EActivateGameOverlayToWebPageMode :: enum u32 {
    Default :: 0;

    Modal   :: 1;

    k_EActivateGameOverlayToWebPageMode_Default :: Default;

    k_EActivateGameOverlayToWebPageMode_Modal   :: Modal;
}

//-----------------------------------------------------------------------------
// Purpose: See GetProfileItemPropertyString and GetProfileItemPropertyUint
//-----------------------------------------------------------------------------
ECommunityProfileItemType :: enum u32 {
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

ECommunityProfileItemProperty :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: called when a friends' status changes
//-----------------------------------------------------------------------------
PersonaStateChange_t :: struct {
//     anon_enum_50 :: enum u32 {
        k_iCallback :: 304;
//     }

    m_ulSteamID:    uint64 #align 4; // steamID of the friend who changed
    m_nChangeFlags: s32; // what's changed
}

// used in PersonaStateChange_t::m_nChangeFlags to describe what's changed about a user
// these flags describe what the client has learned has changed recently, so on startup you'll see a name, avatar & relationship change for every friend
EPersonaChange :: enum u32 {
    EPersonaChangeName                :: 1;
    EPersonaChangeStatus              :: 2;
    EPersonaChangeComeOnline          :: 4;
    EPersonaChangeGoneOffline         :: 8;
    EPersonaChangeGamePlayed          :: 16;
    EPersonaChangeGameServer          :: 32;
    EPersonaChangeAvatar              :: 64;
    EPersonaChangeJoinedSource        :: 128;
    EPersonaChangeLeftSource          :: 256;
    EPersonaChangeRelationshipChanged :: 512;
    EPersonaChangeNameFirstSet        :: 1024;
    EPersonaChangeBroadcast           :: 2048;
    EPersonaChangeNickname            :: 4096;
    EPersonaChangeSteamLevel          :: 8192;
    EPersonaChangeRichPresence        :: 16384;

    k_EPersonaChangeName                :: EPersonaChangeName;
    k_EPersonaChangeStatus              :: EPersonaChangeStatus;
    k_EPersonaChangeComeOnline          :: EPersonaChangeComeOnline;
    k_EPersonaChangeGoneOffline         :: EPersonaChangeGoneOffline;
    k_EPersonaChangeGamePlayed          :: EPersonaChangeGamePlayed;
    k_EPersonaChangeGameServer          :: EPersonaChangeGameServer;
    k_EPersonaChangeAvatar              :: EPersonaChangeAvatar;
    k_EPersonaChangeJoinedSource        :: EPersonaChangeJoinedSource;
    k_EPersonaChangeLeftSource          :: EPersonaChangeLeftSource;
    k_EPersonaChangeRelationshipChanged :: EPersonaChangeRelationshipChanged;
    k_EPersonaChangeNameFirstSet        :: EPersonaChangeNameFirstSet;
    k_EPersonaChangeBroadcast           :: EPersonaChangeBroadcast;
    k_EPersonaChangeNickname            :: EPersonaChangeNickname;
    k_EPersonaChangeSteamLevel          :: EPersonaChangeSteamLevel;
    k_EPersonaChangeRichPresence        :: EPersonaChangeRichPresence;
}

//-----------------------------------------------------------------------------
// Purpose: posted when game overlay activates or deactivates
//			the game can use this to be pause or resume single player games
//-----------------------------------------------------------------------------
GameOverlayActivated_t :: struct {
//     anon_enum_51 :: enum u32 {
        k_iCallback :: 331;
//     }
    m_bActive:        uint8; // true if it's just been activated, false otherwise
    m_bUserInitiated: bool; // true if the user asked for the overlay to be activated/deactivated
    m_nAppID:         AppId_t; // the appID of the game (should always be the current game)
    m_dwOverlayPID:   uint32; // used internally
}

//-----------------------------------------------------------------------------
// Purpose: called when the user tries to join a different game server from their friends list
//			game client should attempt to connect to specified server when this is received
//-----------------------------------------------------------------------------
GameServerChangeRequested_t :: struct {
//     anon_enum_52 :: enum u32 {
        k_iCallback :: 332;
//     }
    m_rgchServer:   [64] u8; // server address ("127.0.0.1:27015", "tf2.valvesoftware.com")
    m_rgchPassword: [64] u8; // server password, if any
}

//-----------------------------------------------------------------------------
// Purpose: called when the user tries to join a lobby from their friends list
//			game client should attempt to connect to specified lobby when this is received
//-----------------------------------------------------------------------------
GameLobbyJoinRequested_t :: struct {
//     anon_enum_53 :: enum u32 {
        k_iCallback :: 333;
//     }
    m_steamIDLobby:  CSteamID;

    // The friend they did the join via (will be invalid if not directly via a friend)
    //
    // On PS3, the friend will be invalid if this was triggered by a PSN invite via the XMB, but
    // the account type will be console user so you can tell at least that this was from a PSN friend
    // rather than a Steam friend.
    m_steamIDFriend: CSteamID;
}

//-----------------------------------------------------------------------------
// Purpose: called when an avatar is loaded in from a previous GetLargeFriendAvatar() call
//			if the image wasn't already available
//-----------------------------------------------------------------------------
AvatarImageLoaded_t :: struct {
//     anon_enum_54 :: enum u32 {
        k_iCallback :: 334;
//     }
    m_steamID: CSteamID; // steamid the avatar has been loaded for
    m_iImage:  s32; // the image index of the now loaded image
    m_iWide:   s32; // width of the loaded image
    m_iTall:   s32; // height of the loaded image
}

//-----------------------------------------------------------------------------
// Purpose: marks the return of a request officer list call
//-----------------------------------------------------------------------------
ClanOfficerListResponse_t :: struct {
//     anon_enum_55 :: enum u32 {
        k_iCallback :: 335;
//     }
    m_steamIDClan: CSteamID;
    m_cOfficers:   s32;
    m_bSuccess:    uint8;
}

//-----------------------------------------------------------------------------
// Purpose: callback indicating updated data about friends rich presence information
//-----------------------------------------------------------------------------
FriendRichPresenceUpdate_t :: struct {
//     anon_enum_56 :: enum u32 {
        k_iCallback :: 336;
//     }
    m_steamIDFriend: CSteamID; // friend who's rich presence has changed
    m_nAppID:        AppId_t; // the appID of the game (should always be the current game)
}

//-----------------------------------------------------------------------------
// Purpose: called when the user tries to join a game from their friends list
//			rich presence will have been set with the "connect" key which is set here
//-----------------------------------------------------------------------------
GameRichPresenceJoinRequested_t :: struct {
//     anon_enum_57 :: enum u32 {
        k_iCallback :: 337;
//     }
    m_steamIDFriend: CSteamID; // the friend they did the join via (will be invalid if not directly via a friend)
    m_rgchConnect:   [256] u8;
}

//-----------------------------------------------------------------------------
// Purpose: a chat message has been received for a clan chat the game has joined
//-----------------------------------------------------------------------------
GameConnectedClanChatMsg_t :: struct {
//     anon_enum_58 :: enum u32 {
        k_iCallback :: 338;
//     }
    m_steamIDClanChat: CSteamID;
    m_steamIDUser:     CSteamID;
    m_iMessageID:      s32;
}

//-----------------------------------------------------------------------------
// Purpose: a user has joined a clan chat
//-----------------------------------------------------------------------------
GameConnectedChatJoin_t :: struct {
//     anon_enum_59 :: enum u32 {
        k_iCallback :: 339;
//     }
    m_steamIDClanChat: CSteamID;
    m_steamIDUser:     CSteamID;
}

//-----------------------------------------------------------------------------
// Purpose: a user has left the chat we're in
//-----------------------------------------------------------------------------
GameConnectedChatLeave_t :: struct {
//     anon_enum_60 :: enum u32 {
        k_iCallback :: 340;
//     }
    m_steamIDClanChat: CSteamID;
    m_steamIDUser:     CSteamID;
    m_bKicked:         bool; // true if admin kicked
    m_bDropped:        bool; // true if Steam connection dropped
}

//-----------------------------------------------------------------------------
// Purpose: a DownloadClanActivityCounts() call has finished
//-----------------------------------------------------------------------------
DownloadClanActivityCountsResult_t :: struct {
//     anon_enum_61 :: enum u32 {
        k_iCallback :: 341;
//     }
    m_bSuccess: bool;
}

//-----------------------------------------------------------------------------
// Purpose: a JoinClanChatRoom() call has finished
//-----------------------------------------------------------------------------
JoinClanChatRoomCompletionResult_t :: struct {
//     anon_enum_62 :: enum u32 {
        k_iCallback :: 342;
//     }
    m_steamIDClanChat:        CSteamID;
    m_eChatRoomEnterResponse: EChatRoomEnterResponse;
}

//-----------------------------------------------------------------------------
// Purpose: a chat message has been received from a user
//-----------------------------------------------------------------------------
GameConnectedFriendChatMsg_t :: struct {
//     anon_enum_63 :: enum u32 {
        k_iCallback :: 343;
//     }
    m_steamIDUser: CSteamID;
    m_iMessageID:  s32;
}

FriendsGetFollowerCount_t :: struct {
//     anon_enum_64 :: enum u32 {
        k_iCallback :: 344;
//     }
    m_eResult: EResult;
    m_steamID: CSteamID;
    m_nCount:  s32;
}

FriendsIsFollowing_t :: struct {
//     anon_enum_65 :: enum u32 {
        k_iCallback :: 345;
//     }
    m_eResult:      EResult;
    m_steamID:      CSteamID;
    m_bIsFollowing: bool;
}

FriendsEnumerateFollowingList_t :: struct {
//     anon_enum_66 :: enum u32 {
        k_iCallback :: 346;
//     }
    m_eResult:           EResult;
    m_rgSteamID:         [50] CSteamID;
    m_nResultsReturned:  int32;
    m_nTotalResultCount: int32;
}

//-----------------------------------------------------------------------------
// Purpose: reports the result of an attempt to change the user's persona name
//-----------------------------------------------------------------------------
SetPersonaNameResponse_t :: struct {
//     anon_enum_67 :: enum u32 {
        k_iCallback :: 347;
//     }

    m_bSuccess:      bool; // true if name change succeeded completely.
    m_bLocalSuccess: bool; // true if name change was retained locally.  (We might not have been able to communicate with Steam)
    m_result:        EResult; // detailed result code
}

//-----------------------------------------------------------------------------
// Purpose: Invoked when the status of unread messages changes
//-----------------------------------------------------------------------------
UnreadChatMessagesChanged_t :: struct {
//     anon_enum_68 :: enum u32 {
        k_iCallback :: 348;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// Purpose: Dispatched when an overlay browser instance is navigated to a protocol/scheme registered by RegisterProtocolInOverlayBrowser()
//-----------------------------------------------------------------------------
OverlayBrowserProtocolNavigation_t :: struct {
//     anon_enum_69 :: enum u32 {
        k_iCallback :: 349;
//     }
    rgchURI: [1024] u8;
}

//-----------------------------------------------------------------------------
// Purpose: A user's equipped profile items have changed
//-----------------------------------------------------------------------------
EquippedProfileItemsChanged_t :: struct {
//     anon_enum_70 :: enum u32 {
        k_iCallback :: 350;
//     }
    m_steamID: CSteamID;
}

//-----------------------------------------------------------------------------
// Purpose:
//-----------------------------------------------------------------------------
EquippedProfileItems_t :: struct {
//     anon_enum_71 :: enum u32 {
        k_iCallback :: 351;
//     }
    m_eResult:                   EResult;
    m_steamID:                   CSteamID;
    m_bHasAnimatedAvatar:        bool;
    m_bHasAvatarFrame:           bool;
    m_bHasProfileModifier:       bool;
    m_bHasProfileBackground:     bool;
    m_bHasMiniProfileBackground: bool;
}

// list of possible return values from the ISteamGameCoordinator API
EGCResults :: enum u32 {
    EGCResultOK             :: 0;
    EGCResultNoMessage      :: 1;
    EGCResultBufferTooSmall :: 2;
    EGCResultNotLoggedOn    :: 3;
    EGCResultInvalidMessage :: 4;

    k_EGCResultOK             :: EGCResultOK;
    k_EGCResultNoMessage      :: EGCResultNoMessage;
    k_EGCResultBufferTooSmall :: EGCResultBufferTooSmall;
    k_EGCResultNotLoggedOn    :: EGCResultNotLoggedOn;
    k_EGCResultInvalidMessage :: EGCResultInvalidMessage;
}

//-----------------------------------------------------------------------------
// Purpose: Functions for sending and receiving messages from the Game Coordinator
//			for this application
//-----------------------------------------------------------------------------
ISteamGameCoordinator :: struct {
    vtable: *ISteamGameCoordinator_VTable;
}
ISteamGameCoordinator_VTable :: struct #type_info_none {
    SendMessage: *void;

    IsMessageAvailable: *void;

    RetrieveMessage: *void;
}


// callback notification - A new message is available for reading from the message queue
GCMessageAvailable_t :: struct {
//     anon_enum_72 :: enum u32 {
        k_iCallback :: 1701;
//     }
    m_nMessageSize: uint32;
}

// callback notification - A message failed to make it to the GC. It may be down temporarily
GCMessageFailed_t :: struct {
//     anon_enum_73 :: enum u32 {
        k_iCallback :: 1702;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

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


// client has been approved to connect to this game server
GSClientApprove_t :: struct {
//     anon_enum_74 :: enum u32 {
        k_iCallback :: 201;
//     }
    m_SteamID:      CSteamID; // SteamID of approved player
    m_OwnerSteamID: CSteamID; // SteamID of original owner for game license
}

// client has been denied to connection to this game server
GSClientDeny_t :: struct {
//     anon_enum_75 :: enum u32 {
        k_iCallback :: 202;
//     }
    m_SteamID:          CSteamID;
    m_eDenyReason:      EDenyReason;
    m_rgchOptionalText: [128] u8;
}

// request the game server should kick the user
GSClientKick_t :: struct {
//     anon_enum_76 :: enum u32 {
        k_iCallback :: 203;
//     }
    m_SteamID:     CSteamID;
    m_eDenyReason: EDenyReason;
}

// client achievement info
GSClientAchievementStatus_t :: struct {
//     anon_enum_77 :: enum u32 {
        k_iCallback :: 206;
//     }
    m_SteamID:        uint64 #align 4;
    m_pchAchievement: [128] u8;
    m_bUnlocked:      bool;
}

// received when the game server requests to be displayed as secure (VAC protected)
// m_bSecure is true if the game server should display itself as secure to users, false otherwise
GSPolicyResponse_t :: struct {
//     anon_enum_78 :: enum u32 {
        k_iCallback :: 115;
//     }
    m_bSecure: uint8;
}

// GS gameplay stats info
GSGameplayStats_t :: struct {
//     anon_enum_79 :: enum u32 {
        k_iCallback :: 207;
//     }
    m_eResult:              EResult; // Result of the call
    m_nRank:                int32; // Overall rank of the server (0-based)
    m_unTotalConnects:      uint32; // Total number of clients who have ever connected to the server
    m_unTotalMinutesPlayed: uint32; // Total number of minutes ever played on the server
}

// send as a reply to RequestUserGroupStatus()
GSClientGroupStatus_t :: struct {
//     anon_enum_80 :: enum u32 {
        k_iCallback :: 208;
//     }
    m_SteamIDUser:  CSteamID;
    m_SteamIDGroup: CSteamID;
    m_bMember:      bool;
    m_bOfficer:     bool;
}

// Sent as a reply to GetServerReputation()
GSReputation_t :: struct {
//     anon_enum_81 :: enum u32 {
        k_iCallback :: 209;
//     }
    m_eResult:           EResult; // Result of the call;
    m_unReputationScore: uint32; // The reputation score for the game server
    m_bBanned:           bool; // True if the server is banned from the Steam

    m_unBannedIP:        uint32; // The IP of the banned server
    m_usBannedPort:      uint16; // The port of the banned server
    m_ulBannedGameID:    uint64 #align 4; // The game ID the banned server is serving
    m_unBanExpires:      uint32; // Time the ban expires, expressed in the Unix epoch (seconds since 1/1/1970)
}

// Sent as a reply to AssociateWithClan()
AssociateWithClanResult_t :: struct {
//     anon_enum_82 :: enum u32 {
        k_iCallback :: 210;
//     }
    m_eResult: EResult; // Result of the call;
}

// Sent as a reply to ComputeNewPlayerCompatibility()
ComputeNewPlayerCompatibilityResult_t :: struct {
//     anon_enum_83 :: enum u32 {
        k_iCallback :: 211;
//     }
    m_eResult:                           EResult; // Result of the call;
    m_cPlayersThatDontLikeCandidate:     s32;
    m_cPlayersThatCandidateDoesntLike:   s32;
    m_cClanPlayersThatDontLikeCandidate: s32;
    m_SteamIDCandidate:                  CSteamID;
}

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


//-----------------------------------------------------------------------------
// Purpose: called when the latests stats and achievements have been received
//			from the server
//-----------------------------------------------------------------------------
GSStatsReceived_t :: struct {
//     anon_enum_84 :: enum u32 {
        k_iCallback :: 1800;
//     }
    m_eResult:     EResult; // Success / error fetching the stats
    m_steamIDUser: CSteamID; // The user for whom the stats are retrieved for
}

//-----------------------------------------------------------------------------
// Purpose: result of a request to store the user stats for a game
//-----------------------------------------------------------------------------
GSStatsStored_t :: struct {
//     anon_enum_85 :: enum u32 {
        k_iCallback :: 1801;
//     }
    m_eResult:     EResult; // success / error
    m_steamIDUser: CSteamID; // The user for whom the stats were stored
}

//-----------------------------------------------------------------------------
// Purpose: Callback indicating that a user's stats have been unloaded.
//  Call RequestUserStats again to access stats for this user
//-----------------------------------------------------------------------------
GSStatsUnloaded_t :: struct {
//     anon_enum_86 :: enum u32 {
        k_iCallback :: 1108;
//     }
    m_steamIDUser: CSteamID; // User whose stats have been unloaded
}

HHTMLBrowser :: uint32;

//-----------------------------------------------------------------------------
// Purpose: Functions for displaying HTML pages and interacting with them
//-----------------------------------------------------------------------------
ISteamHTMLSurface :: struct {
    vtable: *ISteamHTMLSurface_VTable;
    EHTMLMouseButton :: enum u32 {
        Left   :: 0;
        Right  :: 1;
        Middle :: 2;

        eHTMLMouseButton_Left   :: Left;
        eHTMLMouseButton_Right  :: Right;
        eHTMLMouseButton_Middle :: Middle;
    }

    EMouseCursor :: enum u32 {
        user           :: 0;
        none           :: 1;
        arrow          :: 2;
        ibeam          :: 3;
        hourglass      :: 4;
        waitarrow      :: 5;
        crosshair      :: 6;
        up             :: 7;
        sizenw         :: 8;
        sizese         :: 9;
        sizene         :: 10;
        sizesw         :: 11;
        sizew          :: 12;
        sizee          :: 13;
        sizen          :: 14;
        sizes          :: 15;
        sizewe         :: 16;
        sizens         :: 17;
        sizeall        :: 18;
        no             :: 19;
        hand           :: 20;
        blank          :: 21;
        middle_pan     :: 22;
        north_pan      :: 23;
        north_east_pan :: 24;
        east_pan       :: 25;
        south_east_pan :: 26;
        south_pan      :: 27;
        south_west_pan :: 28;
        west_pan       :: 29;
        north_west_pan :: 30;
        alias          :: 31;
        cell           :: 32;
        colresize      :: 33;
        copycur        :: 34;
        verticaltext   :: 35;
        rowresize      :: 36;
        zoomin         :: 37;
        zoomout        :: 38;
        help           :: 39;
        custom         :: 40;

        last           :: 41;

        dc_user           :: user;
        dc_none           :: none;
        dc_arrow          :: arrow;
        dc_ibeam          :: ibeam;
        dc_hourglass      :: hourglass;
        dc_waitarrow      :: waitarrow;
        dc_crosshair      :: crosshair;
        dc_up             :: up;
        dc_sizenw         :: sizenw;
        dc_sizese         :: sizese;
        dc_sizene         :: sizene;
        dc_sizesw         :: sizesw;
        dc_sizew          :: sizew;
        dc_sizee          :: sizee;
        dc_sizen          :: sizen;
        dc_sizes          :: sizes;
        dc_sizewe         :: sizewe;
        dc_sizens         :: sizens;
        dc_sizeall        :: sizeall;
        dc_no             :: no;
        dc_hand           :: hand;
        dc_blank          :: blank;
        dc_middle_pan     :: middle_pan;
        dc_north_pan      :: north_pan;
        dc_north_east_pan :: north_east_pan;
        dc_east_pan       :: east_pan;
        dc_south_east_pan :: south_east_pan;
        dc_south_pan      :: south_pan;
        dc_south_west_pan :: south_west_pan;
        dc_west_pan       :: west_pan;
        dc_north_west_pan :: north_west_pan;
        dc_alias          :: alias;
        dc_cell           :: cell;
        dc_colresize      :: colresize;
        dc_copycur        :: copycur;
        dc_verticaltext   :: verticaltext;
        dc_rowresize      :: rowresize;
        dc_zoomin         :: zoomin;
        dc_zoomout        :: zoomout;
        dc_help           :: help;
        dc_custom         :: custom;

        dc_last           :: last;
    }

    EHTMLKeyModifiers :: enum u32 {
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
    Destructor_Deleting: *void;

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


//-----------------------------------------------------------------------------
// Purpose: The browser is ready for use
//-----------------------------------------------------------------------------
HTML_BrowserReady_t :: struct {
//     anon_enum_87 :: enum u32 {
        k_iCallback :: 4501;
//     }
    unBrowserHandle: HHTMLBrowser; // this browser is now fully created and ready to navigate to pages
}

//-----------------------------------------------------------------------------
// Purpose: the browser has a pending paint
//-----------------------------------------------------------------------------
HTML_NeedsPaint_t :: struct {
//     anon_enum_88 :: enum u32 {
        k_iCallback :: 4502;
//     }
    unBrowserHandle: HHTMLBrowser; // the browser that needs the paint
    pBGRA:           *u8 #align 4; // a pointer to the B8G8R8A8 data for this surface, valid until SteamAPI_RunCallbacks is next called
    unWide:          uint32; // the total width of the pBGRA texture
    unTall:          uint32; // the total height of the pBGRA texture
    unUpdateX:       uint32; // the offset in X for the damage rect for this update
    unUpdateY:       uint32; // the offset in Y for the damage rect for this update
    unUpdateWide:    uint32; // the width of the damage rect for this update
    unUpdateTall:    uint32; // the height of the damage rect for this update
    unScrollX:       uint32; // the page scroll the browser was at when this texture was rendered
    unScrollY:       uint32; // the page scroll the browser was at when this texture was rendered
    flPageScale:     float; // the page scale factor on this page when rendered
    unPageSerial:    uint32; // incremented on each new page load, you can use this to reject draws while navigating to new pages
}

//-----------------------------------------------------------------------------
// Purpose: The browser wanted to navigate to a new page
//   NOTE - you MUST call AllowStartRequest in response to this callback
//-----------------------------------------------------------------------------
HTML_StartRequest_t :: struct {
//     anon_enum_89 :: enum u32 {
        k_iCallback :: 4503;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface navigating
    pchURL:          *u8 #align 4; // the url they wish to navigate to
    pchTarget:       *u8 #align 4; // the html link target type  (i.e _blank, _self, _parent, _top )
    pchPostData:     *u8 #align 4; // any posted data for the request
    bIsRedirect:     bool; // true if this was a http/html redirect from the last load request
}

//-----------------------------------------------------------------------------
// Purpose: The browser has been requested to close due to user interaction (usually from a javascript window.close() call)
//-----------------------------------------------------------------------------
HTML_CloseBrowser_t :: struct {
//     anon_enum_90 :: enum u32 {
        k_iCallback :: 4504;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
}

//-----------------------------------------------------------------------------
// Purpose: the browser is navigating to a new url
//-----------------------------------------------------------------------------
HTML_URLChanged_t :: struct {
//     anon_enum_91 :: enum u32 {
        k_iCallback :: 4505;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface navigating
    pchURL:          *u8 #align 4; // the url they wish to navigate to
    pchPostData:     *u8 #align 4; // any posted data for the request
    bIsRedirect:     bool; // true if this was a http/html redirect from the last load request
    pchPageTitle:    *u8 #align 4; // the title of the page
    bNewNavigation:  bool; // true if this was from a fresh tab and not a click on an existing page
}

//-----------------------------------------------------------------------------
// Purpose: A page is finished loading
//-----------------------------------------------------------------------------
HTML_FinishedRequest_t :: struct {
//     anon_enum_92 :: enum u32 {
        k_iCallback :: 4506;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchURL:          *u8 #align 4; //
    pchPageTitle:    *u8 #align 4; //
}

//-----------------------------------------------------------------------------
// Purpose: a request to load this url in a new tab
//-----------------------------------------------------------------------------
HTML_OpenLinkInNewTab_t :: struct {
//     anon_enum_93 :: enum u32 {
        k_iCallback :: 4507;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchURL:          *u8 #align 4; //
}

//-----------------------------------------------------------------------------
// Purpose: the page has a new title now
//-----------------------------------------------------------------------------
HTML_ChangedTitle_t :: struct {
//     anon_enum_94 :: enum u32 {
        k_iCallback :: 4508;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchTitle:        *u8 #align 4; //
}

//-----------------------------------------------------------------------------
// Purpose: results from a search
//-----------------------------------------------------------------------------
HTML_SearchResults_t :: struct {
//     anon_enum_95 :: enum u32 {
        k_iCallback :: 4509;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    unResults:       uint32; //
    unCurrentMatch:  uint32; //
}

//-----------------------------------------------------------------------------
// Purpose: page history status changed on the ability to go backwards and forward
//-----------------------------------------------------------------------------
HTML_CanGoBackAndForward_t :: struct {
//     anon_enum_96 :: enum u32 {
        k_iCallback :: 4510;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    bCanGoBack:      bool; //
    bCanGoForward:   bool; //
}

//-----------------------------------------------------------------------------
// Purpose: details on the visibility and size of the horizontal scrollbar
//-----------------------------------------------------------------------------
HTML_HorizontalScroll_t :: struct {
//     anon_enum_97 :: enum u32 {
        k_iCallback :: 4511;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    unScrollMax:     uint32; //
    unScrollCurrent: uint32; //
    flPageScale:     float; //
    bVisible:        bool; //
    unPageSize:      uint32; //
}

//-----------------------------------------------------------------------------
// Purpose: details on the visibility and size of the vertical scrollbar
//-----------------------------------------------------------------------------
HTML_VerticalScroll_t :: struct {
//     anon_enum_98 :: enum u32 {
        k_iCallback :: 4512;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    unScrollMax:     uint32; //
    unScrollCurrent: uint32; //
    flPageScale:     float; //
    bVisible:        bool; //
    unPageSize:      uint32; //
}

//-----------------------------------------------------------------------------
// Purpose: response to GetLinkAtPosition call
//-----------------------------------------------------------------------------
HTML_LinkAtPosition_t :: struct {
//     anon_enum_99 :: enum u32 {
        k_iCallback :: 4513;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    x:               uint32; // NOTE - Not currently set
    y:               uint32; // NOTE - Not currently set
    pchURL:          *u8 #align 4; //
    bInput:          bool; //
    bLiveLink:       bool; //
}

//-----------------------------------------------------------------------------
// Purpose: show a Javascript alert dialog, call JSDialogResponse
//   when the user dismisses this dialog (or right away to ignore it)
//-----------------------------------------------------------------------------
HTML_JSAlert_t :: struct {
//     anon_enum_100 :: enum u32 {
        k_iCallback :: 4514;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchMessage:      *u8 #align 4; //
}

//-----------------------------------------------------------------------------
// Purpose: show a Javascript confirmation dialog, call JSDialogResponse
//   when the user dismisses this dialog (or right away to ignore it)
//-----------------------------------------------------------------------------
HTML_JSConfirm_t :: struct {
//     anon_enum_101 :: enum u32 {
        k_iCallback :: 4515;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchMessage:      *u8 #align 4; //
}

//-----------------------------------------------------------------------------
// Purpose: when received show a file open dialog
//   then call FileLoadDialogResponse with the file(s) the user selected.
//-----------------------------------------------------------------------------
HTML_FileOpenDialog_t :: struct {
//     anon_enum_102 :: enum u32 {
        k_iCallback :: 4516;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchTitle:        *u8 #align 4; //
    pchInitialFile:  *u8 #align 4; //
}

//-----------------------------------------------------------------------------
// Purpose: a new html window is being created.
//
// IMPORTANT NOTE: at this time, the API does not allow you to acknowledge or
// render the contents of this new window, so the new window is always destroyed
// immediately. The URL and other parameters of the new window are passed here
// to give your application the opportunity to call CreateBrowser and set up
// a new browser in response to the attempted popup, if you wish to do so.
//-----------------------------------------------------------------------------
HTML_NewWindow_t :: struct {
//     anon_enum_103 :: enum u32 {
        k_iCallback :: 4521;
//     }
    unBrowserHandle:                  HHTMLBrowser; // the handle of the current surface
    pchURL:                           *u8 #align 4; // the page to load
    unX:                              uint32; // the x pos into the page to display the popup
    unY:                              uint32; // the y pos into the page to display the popup
    unWide:                           uint32; // the total width of the pBGRA texture
    unTall:                           uint32; // the total height of the pBGRA texture
    unNewWindow_BrowserHandle_IGNORE: HHTMLBrowser;
}

//-----------------------------------------------------------------------------
// Purpose: change the cursor to display
//-----------------------------------------------------------------------------
HTML_SetCursor_t :: struct {
//     anon_enum_104 :: enum u32 {
        k_iCallback :: 4522;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    eMouseCursor:    uint32; // the EMouseCursor to display
}

//-----------------------------------------------------------------------------
// Purpose: informational message from the browser
//-----------------------------------------------------------------------------
HTML_StatusText_t :: struct {
//     anon_enum_105 :: enum u32 {
        k_iCallback :: 4523;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchMsg:          *u8 #align 4; // the EMouseCursor to display
}

//-----------------------------------------------------------------------------
// Purpose: show a tooltip
//-----------------------------------------------------------------------------
HTML_ShowToolTip_t :: struct {
//     anon_enum_106 :: enum u32 {
        k_iCallback :: 4524;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchMsg:          *u8 #align 4; // the EMouseCursor to display
}

//-----------------------------------------------------------------------------
// Purpose: update the text of an existing tooltip
//-----------------------------------------------------------------------------
HTML_UpdateToolTip_t :: struct {
//     anon_enum_107 :: enum u32 {
        k_iCallback :: 4525;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
    pchMsg:          *u8 #align 4; // the EMouseCursor to display
}

//-----------------------------------------------------------------------------
// Purpose: hide the tooltip you are showing
//-----------------------------------------------------------------------------
HTML_HideToolTip_t :: struct {
//     anon_enum_108 :: enum u32 {
        k_iCallback :: 4526;
//     }
    unBrowserHandle: HHTMLBrowser; // the handle of the surface
}

//-----------------------------------------------------------------------------
// Purpose: The browser has restarted due to an internal failure, use this new handle value
//-----------------------------------------------------------------------------
HTML_BrowserRestarted_t :: struct {
//     anon_enum_109 :: enum u32 {
        k_iCallback :: 4527;
//     }
    unBrowserHandle:    HHTMLBrowser; // this is the new browser handle after the restart
    unOldBrowserHandle: HHTMLBrowser; // the handle for the browser before the restart, if your handle was this then switch to using unBrowserHandle for API calls
}

// This enum is used in client API methods, do not re-number existing values.
EHTTPMethod :: enum u32 {
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

// HTTP Status codes that the server can send in response to a request, see rfc2616 section 10.3 for descriptions
// of each of these.
EHTTPStatusCode :: enum u32 {
    EHTTPStatusCodeInvalid                         :: 0;

    EHTTPStatusCode100Continue                     :: 100;
    EHTTPStatusCode101SwitchingProtocols           :: 101;

    EHTTPStatusCode200OK                           :: 200;
    EHTTPStatusCode201Created                      :: 201;
    EHTTPStatusCode202Accepted                     :: 202;
    EHTTPStatusCode203NonAuthoritative             :: 203;
    EHTTPStatusCode204NoContent                    :: 204;
    EHTTPStatusCode205ResetContent                 :: 205;
    EHTTPStatusCode206PartialContent               :: 206;

    EHTTPStatusCode300MultipleChoices              :: 300;
    EHTTPStatusCode301MovedPermanently             :: 301;
    EHTTPStatusCode302Found                        :: 302;
    EHTTPStatusCode303SeeOther                     :: 303;
    EHTTPStatusCode304NotModified                  :: 304;
    EHTTPStatusCode305UseProxy                     :: 305;

    EHTTPStatusCode307TemporaryRedirect            :: 307;
    EHTTPStatusCode308PermanentRedirect            :: 308;

    EHTTPStatusCode400BadRequest                   :: 400;
    EHTTPStatusCode401Unauthorized                 :: 401;
    EHTTPStatusCode402PaymentRequired              :: 402;
    EHTTPStatusCode403Forbidden                    :: 403;
    EHTTPStatusCode404NotFound                     :: 404;
    EHTTPStatusCode405MethodNotAllowed             :: 405;
    EHTTPStatusCode406NotAcceptable                :: 406;
    EHTTPStatusCode407ProxyAuthRequired            :: 407;
    EHTTPStatusCode408RequestTimeout               :: 408;
    EHTTPStatusCode409Conflict                     :: 409;
    EHTTPStatusCode410Gone                         :: 410;
    EHTTPStatusCode411LengthRequired               :: 411;
    EHTTPStatusCode412PreconditionFailed           :: 412;
    EHTTPStatusCode413RequestEntityTooLarge        :: 413;
    EHTTPStatusCode414RequestURITooLong            :: 414;
    EHTTPStatusCode415UnsupportedMediaType         :: 415;
    EHTTPStatusCode416RequestedRangeNotSatisfiable :: 416;
    EHTTPStatusCode417ExpectationFailed            :: 417;
    EHTTPStatusCode4xxUnknown                      :: 418;
    EHTTPStatusCode429TooManyRequests              :: 429;
    EHTTPStatusCode444ConnectionClosed             :: 444;

    EHTTPStatusCode500InternalServerError          :: 500;
    EHTTPStatusCode501NotImplemented               :: 501;
    EHTTPStatusCode502BadGateway                   :: 502;
    EHTTPStatusCode503ServiceUnavailable           :: 503;
    EHTTPStatusCode504GatewayTimeout               :: 504;
    EHTTPStatusCode505HTTPVersionNotSupported      :: 505;
    EHTTPStatusCode5xxUnknown                      :: 599;

    k_EHTTPStatusCodeInvalid                         :: EHTTPStatusCodeInvalid;

    k_EHTTPStatusCode100Continue                     :: EHTTPStatusCode100Continue;
    k_EHTTPStatusCode101SwitchingProtocols           :: EHTTPStatusCode101SwitchingProtocols;

    k_EHTTPStatusCode200OK                           :: EHTTPStatusCode200OK;
    k_EHTTPStatusCode201Created                      :: EHTTPStatusCode201Created;
    k_EHTTPStatusCode202Accepted                     :: EHTTPStatusCode202Accepted;
    k_EHTTPStatusCode203NonAuthoritative             :: EHTTPStatusCode203NonAuthoritative;
    k_EHTTPStatusCode204NoContent                    :: EHTTPStatusCode204NoContent;
    k_EHTTPStatusCode205ResetContent                 :: EHTTPStatusCode205ResetContent;
    k_EHTTPStatusCode206PartialContent               :: EHTTPStatusCode206PartialContent;

    k_EHTTPStatusCode300MultipleChoices              :: EHTTPStatusCode300MultipleChoices;
    k_EHTTPStatusCode301MovedPermanently             :: EHTTPStatusCode301MovedPermanently;
    k_EHTTPStatusCode302Found                        :: EHTTPStatusCode302Found;
    k_EHTTPStatusCode303SeeOther                     :: EHTTPStatusCode303SeeOther;
    k_EHTTPStatusCode304NotModified                  :: EHTTPStatusCode304NotModified;
    k_EHTTPStatusCode305UseProxy                     :: EHTTPStatusCode305UseProxy;

    k_EHTTPStatusCode307TemporaryRedirect            :: EHTTPStatusCode307TemporaryRedirect;
    k_EHTTPStatusCode308PermanentRedirect            :: EHTTPStatusCode308PermanentRedirect;

    k_EHTTPStatusCode400BadRequest                   :: EHTTPStatusCode400BadRequest;
    k_EHTTPStatusCode401Unauthorized                 :: EHTTPStatusCode401Unauthorized;
    k_EHTTPStatusCode402PaymentRequired              :: EHTTPStatusCode402PaymentRequired;
    k_EHTTPStatusCode403Forbidden                    :: EHTTPStatusCode403Forbidden;
    k_EHTTPStatusCode404NotFound                     :: EHTTPStatusCode404NotFound;
    k_EHTTPStatusCode405MethodNotAllowed             :: EHTTPStatusCode405MethodNotAllowed;
    k_EHTTPStatusCode406NotAcceptable                :: EHTTPStatusCode406NotAcceptable;
    k_EHTTPStatusCode407ProxyAuthRequired            :: EHTTPStatusCode407ProxyAuthRequired;
    k_EHTTPStatusCode408RequestTimeout               :: EHTTPStatusCode408RequestTimeout;
    k_EHTTPStatusCode409Conflict                     :: EHTTPStatusCode409Conflict;
    k_EHTTPStatusCode410Gone                         :: EHTTPStatusCode410Gone;
    k_EHTTPStatusCode411LengthRequired               :: EHTTPStatusCode411LengthRequired;
    k_EHTTPStatusCode412PreconditionFailed           :: EHTTPStatusCode412PreconditionFailed;
    k_EHTTPStatusCode413RequestEntityTooLarge        :: EHTTPStatusCode413RequestEntityTooLarge;
    k_EHTTPStatusCode414RequestURITooLong            :: EHTTPStatusCode414RequestURITooLong;
    k_EHTTPStatusCode415UnsupportedMediaType         :: EHTTPStatusCode415UnsupportedMediaType;
    k_EHTTPStatusCode416RequestedRangeNotSatisfiable :: EHTTPStatusCode416RequestedRangeNotSatisfiable;
    k_EHTTPStatusCode417ExpectationFailed            :: EHTTPStatusCode417ExpectationFailed;
    k_EHTTPStatusCode4xxUnknown                      :: EHTTPStatusCode4xxUnknown;
    k_EHTTPStatusCode429TooManyRequests              :: EHTTPStatusCode429TooManyRequests;
    k_EHTTPStatusCode444ConnectionClosed             :: EHTTPStatusCode444ConnectionClosed;

    k_EHTTPStatusCode500InternalServerError          :: EHTTPStatusCode500InternalServerError;
    k_EHTTPStatusCode501NotImplemented               :: EHTTPStatusCode501NotImplemented;
    k_EHTTPStatusCode502BadGateway                   :: EHTTPStatusCode502BadGateway;
    k_EHTTPStatusCode503ServiceUnavailable           :: EHTTPStatusCode503ServiceUnavailable;
    k_EHTTPStatusCode504GatewayTimeout               :: EHTTPStatusCode504GatewayTimeout;
    k_EHTTPStatusCode505HTTPVersionNotSupported      :: EHTTPStatusCode505HTTPVersionNotSupported;
    k_EHTTPStatusCode5xxUnknown                      :: EHTTPStatusCode5xxUnknown;
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


HTTPRequestCompleted_t :: struct {
//     anon_enum_110 :: enum u32 {
        k_iCallback :: 2101;
//     }

    // Handle value for the request that has completed.
    m_hRequest:           HTTPRequestHandle;

    // Context value that the user defined on the request that this callback is associated with, 0 if
    // no context value was set.
    m_ulContextValue:     uint64 #align 4;

    // This will be true if we actually got any sort of response from the server (even an error).
    // It will be false if we failed due to an internal error or client side network failure.
    m_bRequestSuccessful: bool;

    // Will be the HTTP status code value returned by the server, k_EHTTPStatusCode200OK is the normal
    // OK response, if you get something else you probably need to treat it as a failure.
    m_eStatusCode:        EHTTPStatusCode;

    m_unBodySize:         uint32; // Same as GetHTTPResponseBodySize()
}

HTTPRequestHeadersReceived_t :: struct {
//     anon_enum_111 :: enum u32 {
        k_iCallback :: 2102;
//     }

    // Handle value for the request that has received headers.
    m_hRequest:       HTTPRequestHandle;

    // Context value that the user defined on the request that this callback is associated with, 0 if
    // no context value was set.
    m_ulContextValue: uint64 #align 4;
}

HTTPRequestDataReceived_t :: struct {
//     anon_enum_112 :: enum u32 {
        k_iCallback :: 2103;
//     }

    // Handle value for the request that has received data.
    m_hRequest:       HTTPRequestHandle;

    // Context value that the user defined on the request that this callback is associated with, 0 if
    // no context value was set.
    m_ulContextValue: uint64 #align 4;

    // Offset to provide to GetHTTPStreamingResponseBodyData to get this chunk of data
    m_cOffset:        uint32;

    // Size to provide to GetHTTPStreamingResponseBodyData to get this chunk of data
    m_cBytesReceived: uint32;
}

// Every individual instance of an item has a globally-unique ItemInstanceID.
// This ID is unique to the combination of (player, specific item instance)
// and will not be transferred to another player or re-used for another item.
SteamItemInstanceID_t :: uint64;

// Types of items in your game are identified by a 32-bit "item definition number".
// Valid definition numbers are between 1 and 999999999; numbers less than or equal to
// zero are invalid, and numbers greater than or equal to one billion (1x10^9) are
// reserved for internal Steam use.
SteamItemDef_t :: int32;

ESteamItemFlags :: enum u32 {
    ESteamItemNoTrade  :: 1;

    ESteamItemRemoved  :: 256;
    ESteamItemConsumed :: 512;

    k_ESteamItemNoTrade  :: ESteamItemNoTrade;

    k_ESteamItemRemoved  :: ESteamItemRemoved;
    k_ESteamItemConsumed :: ESteamItemConsumed;
}

SteamItemDetails_t :: struct {
    m_itemId:      SteamItemInstanceID_t #align 4;
    m_iDefinition: SteamItemDef_t;
    m_unQuantity:  uint16;
    m_unFlags:     uint16; // see ESteamItemFlags
}

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


// SteamInventoryResultReady_t callbacks are fired whenever asynchronous
// results transition from "Pending" to "OK" or an error state. There will
// always be exactly one callback per handle.
SteamInventoryResultReady_t :: struct {
//     anon_enum_113 :: enum u32 {
        k_iCallback :: 4700;
//     }
    m_handle: SteamInventoryResult_t;
    m_result: EResult;
}

// SteamInventoryFullUpdate_t callbacks are triggered when GetAllItems
// successfully returns a result which is newer / fresher than the last
// known result. (It will not trigger if the inventory hasn't changed,
// or if results from two overlapping calls are reversed in flight and
// the earlier result is already known to be stale/out-of-date.)
// The normal ResultReady callback will still be triggered immediately
// afterwards; this is an additional notification for your convenience.
SteamInventoryFullUpdate_t :: struct {
//     anon_enum_114 :: enum u32 {
        k_iCallback :: 4701;
//     }
    m_handle: SteamInventoryResult_t;
}

// A SteamInventoryDefinitionUpdate_t callback is triggered whenever
// item definitions have been updated, which could be in response to
// LoadItemDefinitions() or any other async request which required
// a definition update in order to process results from the server.
SteamInventoryDefinitionUpdate_t :: struct {
//     anon_enum_115 :: enum u32 {
        k_iCallback :: 4702;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

// Returned
SteamInventoryEligiblePromoItemDefIDs_t :: struct {
//     anon_enum_116 :: enum u32 {
        k_iCallback :: 4703;
//     }
    m_result:                   EResult;
    m_steamID:                  CSteamID;
    m_numEligiblePromoItemDefs: s32;
    m_bCachedData:              bool; // indicates that the data was retrieved from the cache and not the server
}

// Triggered from StartPurchase call
SteamInventoryStartPurchaseResult_t :: struct {
//     anon_enum_117 :: enum u32 {
        k_iCallback :: 4704;
//     }
    m_result:    EResult;
    m_ulOrderID: uint64 #align 4;
    m_ulTransID: uint64 #align 4;
}

// Triggered from RequestPrices
SteamInventoryRequestPricesResult_t :: struct {
//     anon_enum_118 :: enum u32 {
        k_iCallback :: 4705;
//     }
    m_result:       EResult;
    m_rgchCurrency: [4] u8;
}

/// Store key/value pair used in matchmaking queries.
///
/// Actually, the name Key/Value is a bit misleading.  The "key" is better
/// understood as "filter operation code" and the "value" is the operand to this
/// filter operation.  The meaning of the operand depends upon the filter.
MatchMakingKeyValuePair_t :: struct {
    m_szKey:   [256] u8;
    m_szValue: [256] u8;
}

EMatchMakingServerResponse :: enum u32 {
    ServerResponded               :: 0;
    ServerFailedToRespond         :: 1;
    NoServersListedOnMasterServer :: 2;

    eServerResponded               :: ServerResponded;
    eServerFailedToRespond         :: ServerFailedToRespond;
    eNoServersListedOnMasterServer :: NoServersListedOnMasterServer;
}

// servernetadr_t is all the addressing info the serverbrowser needs to know about a game server,
// namely: its IP, its connection port, and its query port.
servernetadr_t :: struct {
    m_usConnectionPort: uint16; // (in HOST byte order)
    m_usQueryPort:      uint16;
    m_unIP:             uint32;
}

//-----------------------------------------------------------------------------
// Purpose: Data describing a single server
//-----------------------------------------------------------------------------
gameserveritem_t :: struct {
    m_NetAdr:                 servernetadr_t; ///< IP/Query Port/Connection Port for this server
    m_nPing:                  s32; ///< current ping time in milliseconds
    m_bHadSuccessfulResponse: bool; ///< server has responded successfully in the past
    m_bDoNotRefresh:          bool; ///< server is marked as not responding and should no longer be refreshed
    m_szGameDir:              [32] u8; ///< current game directory
    m_szMap:                  [32] u8; ///< current map
    m_szGameDescription:      [64] u8; ///< game description
    m_nAppID:                 uint32; ///< Steam App ID of this server
    m_nPlayers:               s32; ///< total number of players currently on the server.  INCLUDES BOTS!!
    m_nMaxPlayers:            s32; ///< Maximum players that can join this server
    m_nBotPlayers:            s32; ///< Number of bots (i.e simulated players) on this server
    m_bPassword:              bool; ///< true if this server needs a password to join
    m_bSecure:                bool; ///< Is this server protected by VAC
    m_ulTimeLastPlayed:       uint32; ///< time (in unix time) when this server was last played on (for favorite/history servers)
    m_nServerVersion:         s32; ///< server version as reported to Steam

    /// Game server name
    m_szServerName:           [64] u8;

    /// the tags this server exposes
    m_szGameTags:             [128] u8;

    /// steamID of the game server - invalid if it's doesn't have one (old server, or not connected to Steam)
    m_steamID:                CSteamID;
}

// lobby type description
ELobbyType :: enum u32 {
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
ELobbyDistanceFilter :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: Used in ChatInfo messages - fields specific to a chat member - must fit in a uint32
//-----------------------------------------------------------------------------
EChatMemberStateChange :: enum u32 {
    EChatMemberStateChangeEntered      :: 1;
    EChatMemberStateChangeLeft         :: 2;
    EChatMemberStateChangeDisconnected :: 4;
    EChatMemberStateChangeKicked       :: 8;
    EChatMemberStateChangeBanned       :: 16;

    k_EChatMemberStateChangeEntered      :: EChatMemberStateChangeEntered;
    k_EChatMemberStateChangeLeft         :: EChatMemberStateChangeLeft;
    k_EChatMemberStateChangeDisconnected :: EChatMemberStateChangeDisconnected;
    k_EChatMemberStateChangeKicked       :: EChatMemberStateChangeKicked;
    k_EChatMemberStateChangeBanned       :: EChatMemberStateChangeBanned;
}

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


//-----------------------------------------------------------------------------
// Purpose: Functions for quickly creating a Party with friends or acquaintances,
//			EG from chat rooms.
//-----------------------------------------------------------------------------
ESteamPartyBeaconLocationType :: enum u32 {
    Invalid   :: 0;
    ChatGroup :: 1;

    Max       :: 2;

    k_ESteamPartyBeaconLocationType_Invalid   :: Invalid;
    k_ESteamPartyBeaconLocationType_ChatGroup :: ChatGroup;

    k_ESteamPartyBeaconLocationType_Max       :: Max;
}

SteamPartyBeaconLocation_t :: struct {
    m_eType:        ESteamPartyBeaconLocationType;
    m_ulLocationID: uint64 #align 4;
}

ESteamPartyBeaconLocationData :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: a server was added/removed from the favorites list, you should refresh now
//-----------------------------------------------------------------------------
FavoritesListChanged_t :: struct {
//     anon_enum_119 :: enum u32 {
        k_iCallback :: 502;
//     }
    m_nIP:         uint32; // an IP of 0 means reload the whole list, any other value means just one server
    m_nQueryPort:  uint32;
    m_nConnPort:   uint32;
    m_nAppID:      uint32;
    m_nFlags:      uint32;
    m_bAdd:        bool; // true if this is adding the entry, otherwise it is a remove
    m_unAccountId: AccountID_t;
}

//-----------------------------------------------------------------------------
// Purpose: Someone has invited you to join a Lobby
//			normally you don't need to do anything with this, since
//			the Steam UI will also display a '<user> has invited you to the lobby, join?' dialog
//
//			if the user outside a game chooses to join, your game will be launched with the parameter "+connect_lobby <64-bit lobby id>",
//			or with the callback GameLobbyJoinRequested_t if they're already in-game
//-----------------------------------------------------------------------------
LobbyInvite_t :: struct {
//     anon_enum_120 :: enum u32 {
        k_iCallback :: 503;
//     }

    m_ulSteamIDUser:  uint64 #align 4; // Steam ID of the person making the invite
    m_ulSteamIDLobby: uint64 #align 4; // Steam ID of the Lobby
    m_ulGameID:       uint64 #align 4; // GameID of the Lobby
}

//-----------------------------------------------------------------------------
// Purpose: Sent on entering a lobby, or on failing to enter
//			m_EChatRoomEnterResponse will be set to k_EChatRoomEnterResponseSuccess on success,
//			or a higher value on failure (see enum EChatRoomEnterResponse)
//-----------------------------------------------------------------------------
LobbyEnter_t :: struct {
//     anon_enum_121 :: enum u32 {
        k_iCallback :: 504;
//     }

    m_ulSteamIDLobby:         uint64 #align 4; // SteamID of the Lobby you have entered
    m_rgfChatPermissions:     uint32; // Permissions of the current user
    m_bLocked:                bool; // If true, then only invited users may join
    m_EChatRoomEnterResponse: uint32; // EChatRoomEnterResponse
}

//-----------------------------------------------------------------------------
// Purpose: The lobby metadata has changed
//			if m_ulSteamIDMember is the steamID of a lobby member, use GetLobbyMemberData() to access per-user details
//			if m_ulSteamIDMember == m_ulSteamIDLobby, use GetLobbyData() to access lobby metadata
//-----------------------------------------------------------------------------
LobbyDataUpdate_t :: struct {
//     anon_enum_122 :: enum u32 {
        k_iCallback :: 505;
//     }

    m_ulSteamIDLobby:  uint64 #align 4; // steamID of the Lobby
    m_ulSteamIDMember: uint64 #align 4; // steamID of the member whose data changed, or the room itself
    m_bSuccess:        uint8; // true if we lobby data was successfully changed;
}

//-----------------------------------------------------------------------------
// Purpose: The lobby chat room state has changed
//			this is usually sent when a user has joined or left the lobby
//-----------------------------------------------------------------------------
LobbyChatUpdate_t :: struct {
//     anon_enum_123 :: enum u32 {
        k_iCallback :: 506;
//     }

    m_ulSteamIDLobby:           uint64 #align 4; // Lobby ID
    m_ulSteamIDUserChanged:     uint64 #align 4; // user who's status in the lobby just changed - can be recipient
    m_ulSteamIDMakingChange:    uint64 #align 4; // Chat member who made the change (different from SteamIDUserChange if kicking, muting, etc.)

    m_rgfChatMemberStateChange: uint32; // bitfield of EChatMemberStateChange values
}

//-----------------------------------------------------------------------------
// Purpose: A chat message for this lobby has been sent
//			use GetLobbyChatEntry( m_iChatID ) to retrieve the contents of this message
//-----------------------------------------------------------------------------
LobbyChatMsg_t :: struct {
//     anon_enum_124 :: enum u32 {
        k_iCallback :: 507;
//     }

    m_ulSteamIDLobby: uint64 #align 4; // the lobby id this is in
    m_ulSteamIDUser:  uint64 #align 4; // steamID of the user who has sent this message
    m_eChatEntryType: uint8; // type of message
    m_iChatID:        uint32; // index of the chat entry to lookup
}

//-----------------------------------------------------------------------------
// Purpose: A game created a game for all the members of the lobby to join,
//			as triggered by a SetLobbyGameServer()
//			it's up to the individual clients to take action on this; the usual
//			game behavior is to leave the lobby and connect to the specified game server
//-----------------------------------------------------------------------------
LobbyGameCreated_t :: struct {
//     anon_enum_125 :: enum u32 {
        k_iCallback :: 509;
//     }

    m_ulSteamIDLobby:      uint64 #align 4; // the lobby we were in
    m_ulSteamIDGameServer: uint64 #align 4; // the new game server that has been created or found for the lobby members
    m_unIP:                uint32; // IP & Port of the game server (if any)
    m_usPort:              uint16;
}

//-----------------------------------------------------------------------------
// Purpose: Number of matching lobbies found
//			iterate the returned lobbies with GetLobbyByIndex(), from values 0 to m_nLobbiesMatching-1
//-----------------------------------------------------------------------------
LobbyMatchList_t :: struct {
//     anon_enum_126 :: enum u32 {
        k_iCallback :: 510;
//     }
    m_nLobbiesMatching: uint32; // Number of lobbies that matched search criteria and we have SteamIDs for
}

//-----------------------------------------------------------------------------
// Purpose: posted if a user is forcefully removed from a lobby
//			can occur if a user loses connection to Steam
//-----------------------------------------------------------------------------
LobbyKicked_t :: struct {
//     anon_enum_127 :: enum u32 {
        k_iCallback :: 512;
//     }
    m_ulSteamIDLobby:         uint64 #align 4; // Lobby
    m_ulSteamIDAdmin:         uint64 #align 4; // User who kicked you - possibly the ID of the lobby itself
    m_bKickedDueToDisconnect: uint8; // true if you were kicked from the lobby due to the user losing connection to Steam (currently always true)
}

//-----------------------------------------------------------------------------
// Purpose: Result of our request to create a Lobby
//			m_eResult == k_EResultOK on success
//			at this point, the lobby has been joined and is ready for use
//			a LobbyEnter_t callback will also be received (since the local user is joining their own lobby)
//-----------------------------------------------------------------------------
LobbyCreated_t :: struct {
//     anon_enum_128 :: enum u32 {
        k_iCallback :: 513;
//     }

    m_eResult:        EResult; // k_EResultOK - the lobby was successfully created

    m_ulSteamIDLobby: uint64 #align 4; // chat room, zero if failed
}

//-----------------------------------------------------------------------------
// Purpose: Result of CheckForPSNGameBootInvite
//			m_eResult == k_EResultOK on success
//			at this point, the local user may not have finishing joining this lobby;
//			game code should wait until the subsequent LobbyEnter_t callback is received
//-----------------------------------------------------------------------------
PSNGameBootInviteResult_t :: struct {
//     anon_enum_129 :: enum u32 {
        k_iCallback :: 515;
//     }

    m_bGameBootInviteExists: bool;
    m_steamIDLobby:          CSteamID; // Should be valid if m_bGameBootInviteExists == true
}

//-----------------------------------------------------------------------------
// Purpose: Result of our request to create a Lobby
//			m_eResult == k_EResultOK on success
//			at this point, the lobby has been joined and is ready for use
//			a LobbyEnter_t callback will also be received (since the local user is joining their own lobby)
//-----------------------------------------------------------------------------
FavoritesListAccountsUpdated_t :: struct {
//     anon_enum_130 :: enum u32 {
        k_iCallback :: 516;
//     }

    m_eResult: EResult;
}

//-----------------------------------------------------------------------------
// Callbacks for ISteamGameSearch (which go through the regular Steam callback registration system)
SearchForGameProgressCallback_t :: struct {
//     anon_enum_131 :: enum u32 {
        k_iCallback :: 5201;
//     }

    m_ullSearchID:               uint64 #align 4; // all future callbacks referencing this search will include this Search ID

    m_eResult:                   EResult; // if search has started this result will be k_EResultOK, any other value indicates search has failed to start or has terminated
    m_lobbyID:                   CSteamID; // lobby ID if lobby search, invalid steamID otherwise
    m_steamIDEndedSearch:        CSteamID; // if search was terminated, steamID that terminated search

    m_nSecondsRemainingEstimate: int32;
    m_cPlayersSearching:         int32;
}

// notification to all players searching that a game has been found
SearchForGameResultCallback_t :: struct {
//     anon_enum_132 :: enum u32 {
        k_iCallback :: 5202;
//     }

    m_ullSearchID:         uint64 #align 4;

    m_eResult:             EResult; // if game/host was lost this will be an error value

    // if m_bGameFound is true the following are non-zero
    m_nCountPlayersInGame: int32;
    m_nCountAcceptedGame:  int32;

    // if m_steamIDHost is valid the host has started the game
    m_steamIDHost:         CSteamID;
    m_bFinalCallback:      bool;
}

// callback from RequestPlayersForGame when the matchmaking service has started or ended search
// callback will also follow a call from CancelRequestPlayersForGame - m_bSearchInProgress will be false
RequestPlayersForGameProgressCallback_t :: struct {
//     anon_enum_133 :: enum u32 {
        k_iCallback :: 5211;
//     }

    m_eResult:     EResult; // m_ullSearchID will be non-zero if this is k_EResultOK
    m_ullSearchID: uint64 #align 4; // all future callbacks referencing this search will include this Search ID
}

// callback from RequestPlayersForGame
// one of these will be sent per player
// followed by additional callbacks when players accept or decline the game
RequestPlayersForGameResultCallback_t :: struct {
//     anon_enum_134 :: enum u32 {
        k_iCallback :: 5212;
//     }

    m_eResult:                   EResult; // m_ullSearchID will be non-zero if this is k_EResultOK
    m_ullSearchID:               uint64 #align 4;

    m_SteamIDPlayerFound:        CSteamID; // player steamID
    m_SteamIDLobby:              CSteamID; // if the player is in a lobby, the lobby ID
    PlayerAcceptState_t :: enum u32 {
        EStateUnknown        :: 0;
        EStatePlayerAccepted :: 1;
        EStatePlayerDeclined :: 2;

        k_EStateUnknown        :: EStateUnknown;
        k_EStatePlayerAccepted :: EStatePlayerAccepted;
        k_EStatePlayerDeclined :: EStatePlayerDeclined;
    }

    m_ePlayerAcceptState:        PlayerAcceptState_t;
    m_nPlayerIndex:              int32;
    m_nTotalPlayersFound:        int32; // expect this many callbacks at minimum
    m_nTotalPlayersAcceptedGame: int32;
    m_nSuggestedTeamIndex:       int32;
    m_ullUniqueGameID:           uint64 #align 4;
}

RequestPlayersForGameFinalResultCallback_t :: struct {
//     anon_enum_135 :: enum u32 {
        k_iCallback :: 5213;
//     }

    m_eResult:         EResult;
    m_ullSearchID:     uint64 #align 4;
    m_ullUniqueGameID: uint64 #align 4;
}

// this callback confirms that results were received by the matchmaking service for this player
SubmitPlayerResultResultCallback_t :: struct {
//     anon_enum_136 :: enum u32 {
        k_iCallback :: 5214;
//     }

    m_eResult:       EResult;
    ullUniqueGameID: uint64 #align 4;
    steamIDPlayer:   CSteamID;
}

// this callback confirms that the game is recorded as complete on the matchmaking service
// the next call to RequestPlayersForGame will generate a new unique game ID
EndGameResultCallback_t :: struct {
//     anon_enum_137 :: enum u32 {
        k_iCallback :: 5215;
//     }

    m_eResult:       EResult;
    ullUniqueGameID: uint64 #align 4;
}

// Steam has responded to the user request to join a party via the given Beacon ID.
// If successful, the connect string contains game-specific instructions to connect
// to the game with that party.
JoinPartyCallback_t :: struct {
//     anon_enum_138 :: enum u32 {
        k_iCallback :: 5301;
//     }

    m_eResult:            EResult;
    m_ulBeaconID:         PartyBeaconID_t #align 4;
    m_SteamIDBeaconOwner: CSteamID;
    m_rgchConnectString:  [256] u8;
}

// Response to CreateBeacon request. If successful, the beacon ID is provided.
CreateBeaconCallback_t :: struct {
//     anon_enum_139 :: enum u32 {
        k_iCallback :: 5302;
//     }

    m_eResult:    EResult;
    m_ulBeaconID: PartyBeaconID_t #align 4;
}

// Someone has used the beacon to join your party - they are in-flight now
// and we've reserved one of the open slots for them.
// You should confirm when they join your party by calling OnReservationCompleted().
// Otherwise, Steam may timeout their reservation eventually.
ReservationNotificationCallback_t :: struct {
//     anon_enum_140 :: enum u32 {
        k_iCallback :: 5303;
//     }

    m_ulBeaconID:    PartyBeaconID_t #align 4;
    m_steamIDJoiner: CSteamID;
}

// Response to ChangeNumOpenSlots call
ChangeNumOpenSlotsCallback_t :: struct {
//     anon_enum_141 :: enum u32 {
        k_iCallback :: 5304;
//     }

    m_eResult: EResult;
}

// The list of possible Party beacon locations has changed
AvailableBeaconLocationsUpdated_t :: struct {
//     anon_enum_142 :: enum u32 {
        k_iCallback :: 5305;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

// The list of active beacons may have changed
ActiveBeaconsUpdated_t :: struct {
//     anon_enum_143 :: enum u32 {
        k_iCallback :: 5306;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// Purpose:
//-----------------------------------------------------------------------------
AudioPlayback_Status :: enum u32 {
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


PlaybackStatusHasChanged_t :: struct {
//     anon_enum_144 :: enum u32 {
        k_iCallback :: 4001;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

VolumeHasChanged_t :: struct {
//     anon_enum_145 :: enum u32 {
        k_iCallback :: 4002;
//     }
    m_flNewVolume: float;
}

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


MusicPlayerRemoteWillActivate_t :: struct {
//     anon_enum_146 :: enum u32 {
        k_iCallback :: 4101;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerRemoteWillDeactivate_t :: struct {
//     anon_enum_147 :: enum u32 {
        k_iCallback :: 4102;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerRemoteToFront_t :: struct {
//     anon_enum_148 :: enum u32 {
        k_iCallback :: 4103;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerWillQuit_t :: struct {
//     anon_enum_149 :: enum u32 {
        k_iCallback :: 4104;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerWantsPlay_t :: struct {
//     anon_enum_150 :: enum u32 {
        k_iCallback :: 4105;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerWantsPause_t :: struct {
//     anon_enum_151 :: enum u32 {
        k_iCallback :: 4106;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerWantsPlayPrevious_t :: struct {
//     anon_enum_152 :: enum u32 {
        k_iCallback :: 4107;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerWantsPlayNext_t :: struct {
//     anon_enum_153 :: enum u32 {
        k_iCallback :: 4108;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

MusicPlayerWantsShuffled_t :: struct {
//     anon_enum_154 :: enum u32 {
        k_iCallback :: 4109;
//     }
    m_bShuffled: bool;
}

MusicPlayerWantsLooped_t :: struct {
//     anon_enum_155 :: enum u32 {
        k_iCallback :: 4110;
//     }
    m_bLooped: bool;
}

MusicPlayerWantsVolume_t :: struct {
//     anon_enum_156 :: enum u32 {
        k_iCallback :: 4011;
//     }
    m_flNewVolume: float;
}

MusicPlayerSelectsQueueEntry_t :: struct {
//     anon_enum_157 :: enum u32 {
        k_iCallback :: 4012;
//     }
    nID: s32;
}

MusicPlayerSelectsPlaylistEntry_t :: struct {
//     anon_enum_158 :: enum u32 {
        k_iCallback :: 4013;
//     }
    nID: s32;
}

MusicPlayerWantsPlayingRepeatStatus_t :: struct {
//     anon_enum_159 :: enum u32 {
        k_iCallback :: 4114;
//     }
    m_nPlayingRepeatStatus: s32;
}

// list of possible errors returned by SendP2PPacket() API
// these will be posted in the P2PSessionConnectFail_t callback
EP2PSessionError :: enum u32 {
    EP2PSessionErrorNone                           :: 0;
    EP2PSessionErrorNoRightsToApp                  :: 2;
    EP2PSessionErrorTimeout                        :: 4;

    EP2PSessionErrorNotRunningApp_DELETED          :: 1;
    EP2PSessionErrorDestinationNotLoggedIn_DELETED :: 3;

    EP2PSessionErrorMax                            :: 5;

    k_EP2PSessionErrorNone                           :: EP2PSessionErrorNone;
    k_EP2PSessionErrorNoRightsToApp                  :: EP2PSessionErrorNoRightsToApp;
    k_EP2PSessionErrorTimeout                        :: EP2PSessionErrorTimeout;

    k_EP2PSessionErrorNotRunningApp_DELETED          :: EP2PSessionErrorNotRunningApp_DELETED;
    k_EP2PSessionErrorDestinationNotLoggedIn_DELETED :: EP2PSessionErrorDestinationNotLoggedIn_DELETED;

    k_EP2PSessionErrorMax                            :: EP2PSessionErrorMax;
}

// SendP2PPacket() send types
// Typically k_EP2PSendUnreliable is what you want for UDP-like packets, k_EP2PSendReliable for TCP-like packets
EP2PSend :: enum u32 {
    EP2PSendUnreliable            :: 0;

    EP2PSendUnreliableNoDelay     :: 1;

    EP2PSendReliable              :: 2;

    EP2PSendReliableWithBuffering :: 3;

    k_EP2PSendUnreliable            :: EP2PSendUnreliable;

    k_EP2PSendUnreliableNoDelay     :: EP2PSendUnreliableNoDelay;

    k_EP2PSendReliable              :: EP2PSendReliable;

    k_EP2PSendReliableWithBuffering :: EP2PSendReliableWithBuffering;
}

P2PSessionState_t :: struct {
    m_bConnectionActive:     uint8; // true if we've got an active open connection
    m_bConnecting:           uint8; // true if we're currently trying to establish a connection
    m_eP2PSessionError:      uint8; // last error recorded (see enum above)
    m_bUsingRelay:           uint8; // true if it's going through a relay server (TURN)
    m_nBytesQueuedForSend:   int32;
    m_nPacketsQueuedForSend: int32;
    m_nRemoteIP:             uint32; // potential IP:Port of remote host. Could be TURN server.
    m_nRemotePort:           uint16; // Only exists for compatibility with older authentication api's
}

// handle to a socket
SNetSocket_t :: uint32;
SNetListenSocket_t :: uint32;

// connection progress indicators, used by CreateP2PConnectionSocket()
ESNetSocketState :: enum u32 {
    ESNetSocketStateInvalid                  :: 0;

    ESNetSocketStateConnected                :: 1;

    ESNetSocketStateInitiated                :: 10;

    ESNetSocketStateLocalCandidatesFound     :: 11;
    ESNetSocketStateReceivedRemoteCandidates :: 12;

    ESNetSocketStateChallengeHandshake       :: 15;

    ESNetSocketStateDisconnecting            :: 21;
    ESNetSocketStateLocalDisconnect          :: 22;
    ESNetSocketStateTimeoutDuringConnect     :: 23;
    ESNetSocketStateRemoteEndDisconnected    :: 24;
    ESNetSocketStateConnectionBroken         :: 25;

    k_ESNetSocketStateInvalid                  :: ESNetSocketStateInvalid;

    k_ESNetSocketStateConnected                :: ESNetSocketStateConnected;

    k_ESNetSocketStateInitiated                :: ESNetSocketStateInitiated;

    k_ESNetSocketStateLocalCandidatesFound     :: ESNetSocketStateLocalCandidatesFound;
    k_ESNetSocketStateReceivedRemoteCandidates :: ESNetSocketStateReceivedRemoteCandidates;

    k_ESNetSocketStateChallengeHandshake       :: ESNetSocketStateChallengeHandshake;

    k_ESNetSocketStateDisconnecting            :: ESNetSocketStateDisconnecting;
    k_ESNetSocketStateLocalDisconnect          :: ESNetSocketStateLocalDisconnect;
    k_ESNetSocketStateTimeoutDuringConnect     :: ESNetSocketStateTimeoutDuringConnect;
    k_ESNetSocketStateRemoteEndDisconnected    :: ESNetSocketStateRemoteEndDisconnected;
    k_ESNetSocketStateConnectionBroken         :: ESNetSocketStateConnectionBroken;
}

// describes how the socket is currently connected
ESNetSocketConnectionType :: enum u32 {
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


// callback notification - a user wants to talk to us over the P2P channel via the SendP2PPacket() API
// in response, a call to AcceptP2PPacketsFromUser() needs to be made, if you want to talk with them
P2PSessionRequest_t :: struct {
//     anon_enum_160 :: enum u32 {
        k_iCallback :: 1202;
//     }
    m_steamIDRemote: CSteamID; // user who wants to talk to us
}

// callback notification - packets can't get through to the specified user via the SendP2PPacket() API
// all packets queued packets unsent at this point will be dropped
// further attempts to send will retry making the connection (but will be dropped if we fail again)
P2PSessionConnectFail_t :: struct {
//     anon_enum_161 :: enum u32 {
        k_iCallback :: 1203;
//     }
    m_steamIDRemote:    CSteamID; // user we were sending packets to
    m_eP2PSessionError: uint8; // EP2PSessionError indicating why we're having trouble
}

// callback notification - status of a socket has changed
// used as part of the CreateListenSocket() / CreateP2PConnectionSocket()
SocketStatusCallback_t :: struct {
//     anon_enum_162 :: enum u32 {
        k_iCallback :: 1201;
//     }
    m_hSocket:          SNetSocket_t; // the socket used to send/receive data to the remote host
    m_hListenSocket:    SNetListenSocket_t; // this is the server socket that we were listening on; NULL if this was an outgoing connection
    m_steamIDRemote:    CSteamID; // remote steamID we have connected to, if it has one
    m_eSNetSocketState: s32; // socket state, ESNetSocketState
}

SteamDatagramRelayAuthTicket :: struct {}
SteamDatagramHostedAddress :: struct {}
SteamDatagramGameCoordinatorServerLogin :: struct {}

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

/// Different methods of describing the identity of a network host
ESteamNetworkingIdentityType :: enum u32 {
    Invalid        :: 0;

    SteamID        :: 16;
    XboxPairwiseID :: 17;
    SonyPSN        :: 18;
    GoogleStadia   :: 19;

    IPAddress      :: 1;

    GenericString  :: 2;
    GenericBytes   :: 3;

    UnknownType    :: 4;

    Force32bit     :: 2147483647;

    k_ESteamNetworkingIdentityType_Invalid        :: Invalid;

    k_ESteamNetworkingIdentityType_SteamID        :: SteamID;
    k_ESteamNetworkingIdentityType_XboxPairwiseID :: XboxPairwiseID;
    k_ESteamNetworkingIdentityType_SonyPSN        :: SonyPSN;
    k_ESteamNetworkingIdentityType_GoogleStadia   :: GoogleStadia;

    k_ESteamNetworkingIdentityType_IPAddress      :: IPAddress;

    k_ESteamNetworkingIdentityType_GenericString  :: GenericString;
    k_ESteamNetworkingIdentityType_GenericBytes   :: GenericBytes;

    k_ESteamNetworkingIdentityType_UnknownType    :: UnknownType;

    k_ESteamNetworkingIdentityType__Force32bit    :: Force32bit;
}

/// "Fake IPs" are assigned to hosts, to make it easier to interface with
/// older code that assumed all hosts will have an IPv4 address
ESteamNetworkingFakeIPType :: enum u32 {
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
SteamNetworkingIPAddr :: struct {
    // Max length of the buffer needed to hold IP formatted using ToString, including '\0'
    // ([0123:4567:89ab:cdef:0123:4567:89ab:cdef]:12345)
//     anon_enum_163 :: enum u32 {
        k_cchMaxString :: 48;
//     }

    /// RFC4038, section 4.2
    IPv4MappedAddress :: struct {
        m_8zeros: uint64 #align 1;
        m_0000:   uint16 #align 1;
        m_ffff:   uint16 #align 1;
        m_ip:     [4] uint8; // NOTE: As bytes, i.e. network byte order
    }

    union {
        m_ipv6: [16] uint8;
        m_ipv4: IPv4MappedAddress;
    }

    m_port: uint16 #align 1; // Host byte order
}

// Forward declare types
SteamNetworkingIdentity :: struct {
    /// Type of identity.
    m_eType:  ESteamNetworkingIdentityType #align 1;

    // Max sizes
    k_2 :: enum u32 {
        cchMaxString         :: 128;
        cchMaxGenericString  :: 32;
        cchMaxXboxPairwiseID :: 33;
        cbMaxGenericBytes    :: 32;

        k_cchMaxString         :: cchMaxString;
        k_cchMaxGenericString  :: cchMaxGenericString;
        k_cchMaxXboxPairwiseID :: cchMaxXboxPairwiseID;
        k_cbMaxGenericBytes    :: cbMaxGenericBytes;
    }

    //
    // Internal representation.  Don't access this directly, use the accessors!
    //
    // Number of bytes that are relevant below.  This MUST ALWAYS be
    // set.  (Use the accessors!)  This is important to enable old code to work
    // with new identity types.
    m_cbSize: s32 #align 1;
    union {
        m_steamID64:          uint64 #align 1;
        m_PSNID:              uint64 #align 1;
        m_stadiaID:           uint64 #align 1;
        m_szGenericString:    [32] u8;
        m_szXboxPairwiseID:   [33] u8;
        m_genericBytes:       [32] uint8;
        m_szUnknownRawString: [128] u8;
        m_ip:                 SteamNetworkingIPAddr;
        m_reserved:           [32] uint32 #align 1; // Pad structure to leave easy room for future expansion
    }
}

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

/// Enumerate various causes of connection termination.  These are designed to work similar
/// to HTTP error codes: the numeric range gives you a rough classification as to the source
/// of the problem.
ESteamNetConnectionEnd :: enum u32 {
    Invalid                          :: 0;

    App_Min                          :: 1000;
    App_Generic                      :: 1000;

    App_Max                          :: 1999;

    AppException_Min                 :: 2000;
    AppException_Generic             :: 2000;

    AppException_Max                 :: 2999;

    Local_Min                        :: 3000;

    Local_OfflineMode                :: 3001;

    Local_ManyRelayConnectivity      :: 3002;

    Local_HostedServerPrimaryRelay   :: 3003;

    Local_NetworkConfig              :: 3004;

    Local_Rights                     :: 3005;

    Local_P2P_ICE_NoPublicAddresses  :: 3006;

    Local_Max                        :: 3999;

    Remote_Min                       :: 4000;

    Remote_Timeout                   :: 4001;

    Remote_BadCrypt                  :: 4002;

    Remote_BadCert                   :: 4003;

    Remote_BadProtocolVersion        :: 4006;

    Remote_P2P_ICE_NoPublicAddresses :: 4007;

    Remote_Max                       :: 4999;

    Misc_Min                         :: 5000;

    Misc_Generic                     :: 5001;

    Misc_InternalError               :: 5002;

    Misc_Timeout                     :: 5003;

    Misc_SteamConnectivity           :: 5005;

    Misc_NoRelaySessionsToClient     :: 5006;

    Misc_P2P_Rendezvous              :: 5008;

    Misc_P2P_NAT_Firewall            :: 5009;

    Misc_PeerSentNoConnection        :: 5010;

    Misc_Max                         :: 5999;

    Force32Bit                       :: 2147483647;

    k_ESteamNetConnectionEnd_Invalid                          :: Invalid;

    k_ESteamNetConnectionEnd_App_Min                          :: App_Min;
    k_ESteamNetConnectionEnd_App_Generic                      :: App_Generic;

    k_ESteamNetConnectionEnd_App_Max                          :: App_Max;

    k_ESteamNetConnectionEnd_AppException_Min                 :: AppException_Min;
    k_ESteamNetConnectionEnd_AppException_Generic             :: AppException_Generic;

    k_ESteamNetConnectionEnd_AppException_Max                 :: AppException_Max;

    k_ESteamNetConnectionEnd_Local_Min                        :: Local_Min;

    k_ESteamNetConnectionEnd_Local_OfflineMode                :: Local_OfflineMode;

    k_ESteamNetConnectionEnd_Local_ManyRelayConnectivity      :: Local_ManyRelayConnectivity;

    k_ESteamNetConnectionEnd_Local_HostedServerPrimaryRelay   :: Local_HostedServerPrimaryRelay;

    k_ESteamNetConnectionEnd_Local_NetworkConfig              :: Local_NetworkConfig;

    k_ESteamNetConnectionEnd_Local_Rights                     :: Local_Rights;

    k_ESteamNetConnectionEnd_Local_P2P_ICE_NoPublicAddresses  :: Local_P2P_ICE_NoPublicAddresses;

    k_ESteamNetConnectionEnd_Local_Max                        :: Local_Max;

    k_ESteamNetConnectionEnd_Remote_Min                       :: Remote_Min;

    k_ESteamNetConnectionEnd_Remote_Timeout                   :: Remote_Timeout;

    k_ESteamNetConnectionEnd_Remote_BadCrypt                  :: Remote_BadCrypt;

    k_ESteamNetConnectionEnd_Remote_BadCert                   :: Remote_BadCert;

    k_ESteamNetConnectionEnd_Remote_BadProtocolVersion        :: Remote_BadProtocolVersion;

    k_ESteamNetConnectionEnd_Remote_P2P_ICE_NoPublicAddresses :: Remote_P2P_ICE_NoPublicAddresses;

    k_ESteamNetConnectionEnd_Remote_Max                       :: Remote_Max;

    k_ESteamNetConnectionEnd_Misc_Min                         :: Misc_Min;

    k_ESteamNetConnectionEnd_Misc_Generic                     :: Misc_Generic;

    k_ESteamNetConnectionEnd_Misc_InternalError               :: Misc_InternalError;

    k_ESteamNetConnectionEnd_Misc_Timeout                     :: Misc_Timeout;

    k_ESteamNetConnectionEnd_Misc_SteamConnectivity           :: Misc_SteamConnectivity;

    k_ESteamNetConnectionEnd_Misc_NoRelaySessionsToClient     :: Misc_NoRelaySessionsToClient;

    k_ESteamNetConnectionEnd_Misc_P2P_Rendezvous              :: Misc_P2P_Rendezvous;

    k_ESteamNetConnectionEnd_Misc_P2P_NAT_Firewall            :: Misc_P2P_NAT_Firewall;

    k_ESteamNetConnectionEnd_Misc_PeerSentNoConnection        :: Misc_PeerSentNoConnection;

    k_ESteamNetConnectionEnd_Misc_Max                         :: Misc_Max;

    k_ESteamNetConnectionEnd__Force32Bit                      :: Force32Bit;
}

/// Describe the state of a connection.
SteamNetConnectionInfo_t :: struct {
    /// Who is on the other end?  Depending on the connection type and phase of the connection, we might not know
    m_identityRemote:          SteamNetworkingIdentity;

    /// Arbitrary user data set by the local application code
    m_nUserData:               int64 #align 4;

    /// Handle to listen socket this was connected on, or k_HSteamListenSocket_Invalid if we initiated the connection
    m_hListenSocket:           HSteamListenSocket;

    /// Remote address.  Might be all 0's if we don't know it, or if this is N/A.
    /// (E.g. Basically everything except direct UDP connection.)
    m_addrRemote:              SteamNetworkingIPAddr;
    m__pad1:                   uint16;

    /// What data center is the remote host in?  (0 if we don't know.)
    m_idPOPRemote:             SteamNetworkingPOPID;

    /// What relay are we using to communicate with the remote host?
    /// (0 if not applicable.)
    m_idPOPRelay:              SteamNetworkingPOPID;

    /// High level state of the connection
    m_eState:                  ESteamNetworkingConnectionState;

    /// Basic cause of the connection termination or problem.
    /// See ESteamNetConnectionEnd for the values used
    m_eEndReason:              s32;

    /// Human-readable, but non-localized explanation for connection
    /// termination or problem.  This is intended for debugging /
    /// diagnostic purposes only, not to display to users.  It might
    /// have some details specific to the issue.
    m_szEndDebug:              [128] u8;

    /// Debug description.  This includes the internal connection ID,
    /// connection type (and peer information), and any name
    /// given to the connection by the app.  This string is used in various
    /// internal logging messages.
    ///
    /// Note that the connection ID *usually* matches the HSteamNetConnection
    /// handle, but in certain cases with symmetric connections it might not.
    m_szConnectionDescription: [128] u8;

    /// Misc flags.  Bitmask of k_nSteamNetworkConnectionInfoFlags_Xxxx
    m_nFlags:                  s32;

    /// Internal stuff, room to change API easily
    reserved:                  [63] uint32;
}

/// Quick connection state, pared down to something you could call
/// more frequently without it being too big of a perf hit.
SteamNetConnectionRealTimeStatus_t :: struct {
    /// High level state of the connection
    m_eState:                    ESteamNetworkingConnectionState;

    /// Current ping (ms)
    m_nPing:                     s32;

    /// Connection quality measured locally, 0...1.  (Percentage of packets delivered
    /// end-to-end in order).
    m_flConnectionQualityLocal:  float;

    /// Packet delivery success rate as observed from remote host
    m_flConnectionQualityRemote: float;

    /// Current data rates from recent history.
    m_flOutPacketsPerSec:        float;
    m_flOutBytesPerSec:          float;
    m_flInPacketsPerSec:         float;
    m_flInBytesPerSec:           float;

    /// Estimate rate that we believe that we can send data to our peer.
    /// Note that this could be significantly higher than m_flOutBytesPerSec,
    /// meaning the capacity of the channel is higher than you are sending data.
    /// (That's OK!)
    m_nSendRateBytesPerSecond:   s32;

    /// Number of bytes pending to be sent.  This is data that you have recently
    /// requested to be sent but has not yet actually been put on the wire.  The
    /// reliable number ALSO includes data that was previously placed on the wire,
    /// but has now been scheduled for re-transmission.  Thus, it's possible to
    /// observe m_cbPendingReliable increasing between two checks, even if no
    /// calls were made to send reliable data between the checks.  Data that is
    /// awaiting the Nagle delay will appear in these numbers.
    m_cbPendingUnreliable:       s32;
    m_cbPendingReliable:         s32;

    /// Number of bytes of reliable data that has been placed the wire, but
    /// for which we have not yet received an acknowledgment, and thus we may
    /// have to re-transmit.
    m_cbSentUnackedReliable:     s32;

    /// If you queued a message right now, approximately how long would that message
    /// wait in the queue before we actually started putting its data on the wire in
    /// a packet?
    ///
    /// In general, data that is sent by the application is limited by the bandwidth
    /// of the channel.  If you send data faster than this, it must be queued and
    /// put on the wire at a metered rate.  Even sending a small amount of data (e.g.
    /// a few MTU, say ~3k) will require some of the data to be delayed a bit.
    ///
    /// Ignoring multiple lanes, the estimated delay will be approximately equal to
    ///
    ///		( m_cbPendingUnreliable+m_cbPendingReliable ) / m_nSendRateBytesPerSecond
    ///
    /// plus or minus one MTU.  It depends on how much time has elapsed since the last
    /// packet was put on the wire.  For example, the queue might have *just* been emptied,
    /// and the last packet placed on the wire, and we are exactly up against the send
    /// rate limit.  In that case we might need to wait for one packet's worth of time to
    /// elapse before we can send again.  On the other extreme, the queue might have data
    /// in it waiting for Nagle.  (This will always be less than one packet, because as
    /// soon as we have a complete packet we would send it.)  In that case, we might be
    /// ready to send data now, and this value will be 0.
    ///
    /// This value is only valid if multiple lanes are not used.  If multiple lanes are
    /// in use, then the queue time will be different for each lane, and you must use
    /// the value in SteamNetConnectionRealTimeLaneStatus_t.
    ///
    /// Nagle delay is ignored for the purposes of this calculation.
    m_usecQueueTime:             SteamNetworkingMicroseconds #align 4;

    // Internal stuff, room to change API easily
    reserved:                    [16] uint32;
}

/// Quick status of a particular lane
SteamNetConnectionRealTimeLaneStatus_t :: struct {
    // Counters for this particular lane.  See the corresponding variables
    // in SteamNetConnectionRealTimeStatus_t
    m_cbPendingUnreliable:   s32;
    m_cbPendingReliable:     s32;
    m_cbSentUnackedReliable: s32;
    _reservePad1:            s32; // Reserved for future use

    /// Lane-specific queue time.  This value takes into consideration lane priorities
    /// and weights, and how much data is queued in each lane, and attempts to predict
    /// how any data currently queued will be sent out.
    m_usecQueueTime:         SteamNetworkingMicroseconds #align 4;

    // Internal stuff, room to change API easily
    reserved:                [10] uint32;
}

/// A message that has been received.
SteamNetworkingMessage_t :: struct {
    /// Message payload
    m_pData:            *void;

    /// Size of the payload.
    m_cbSize:           s32;

    /// For messages received on connections: what connection did this come from?
    /// For outgoing messages: what connection to send it to?
    /// Not used when using the ISteamNetworkingMessages interface
    m_conn:             HSteamNetConnection;

    /// For inbound messages: Who sent this to us?
    /// For outbound messages on connections: not used.
    /// For outbound messages on the ad-hoc ISteamNetworkingMessages interface: who should we send this to?
    m_identityPeer:     SteamNetworkingIdentity;

    /// For messages received on connections, this is the user data
    /// associated with the connection.
    ///
    /// This is *usually* the same as calling GetConnection() and then
    /// fetching the user data associated with that connection, but for
    /// the following subtle differences:
    ///
    /// - This user data will match the connection's user data at the time
    ///   is captured at the time the message is returned by the API.
    ///   If you subsequently change the userdata on the connection,
    ///   this won't be updated.
    /// - This is an inline call, so it's *much* faster.
    /// - You might have closed the connection, so fetching the user data
    ///   would not be possible.
    ///
    /// Not used when sending messages.
    m_nConnUserData:    int64;

    /// Local timestamp when the message was received
    /// Not used for outbound messages.
    m_usecTimeReceived: SteamNetworkingMicroseconds;

    /// Message number assigned by the sender.  This is not used for outbound
    /// messages.  Note that if multiple lanes are used, each lane has its own
    /// message numbers, which are assigned sequentially, so messages from
    /// different lanes will share the same numbers.
    m_nMessageNumber:   int64;

    /// Function used to free up m_pData.  This mechanism exists so that
    /// apps can create messages with buffers allocated from their own
    /// heap, and pass them into the library.  This function will
    /// usually be something like:
    ///
    /// free( pMsg->m_pData );
    m_pfnFreeData:      #type (pMsg: *SteamNetworkingMessage_t) -> void #c_call;

    /// Function to used to decrement the internal reference count and, if
    /// it's zero, release the message.  You should not set this function pointer,
    /// or need to access this directly!  Use the Release() function instead!
    m_pfnRelease:       #type (pMsg: *SteamNetworkingMessage_t) -> void #c_call;

    /// When using ISteamNetworkingMessages, the channel number the message was received on
    /// (Not used for messages sent or received on "connections")
    m_nChannel:         s32;

    /// Bitmask of k_nSteamNetworkingSend_xxx flags.
    /// For received messages, only the k_nSteamNetworkingSend_Reliable bit is valid.
    /// For outbound messages, all bits are relevant
    m_nFlags:           s32;

    /// Arbitrary user data that you can use when sending messages using
    /// ISteamNetworkingUtils::AllocateMessage and ISteamNetworkingSockets::SendMessage.
    /// (The callback you set in m_pfnFreeData might use this field.)
    ///
    /// Not used for received messages.
    m_nUserData:        int64;

    /// For outbound messages, which lane to use?  See ISteamNetworkingSockets::ConfigureConnectionLanes.
    /// For inbound messages, what lane was the message received on?
    m_idxLane:          uint16;
    _pad1__:            uint16;
}

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
SteamNetworkPingLocation_t :: struct {
    m_data: [512] uint8;
}

/// Configuration values can be applied to different types of objects.
ESteamNetworkingConfigScope :: enum u32 {
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
ESteamNetworkingConfigDataType :: enum u32 {
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
ESteamNetworkingConfigValue :: enum u32 {
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
SteamNetworkingConfigValue_t :: struct {
    /// Which option is being set
    m_eValue:    ESteamNetworkingConfigValue;

    /// Which field below did you fill in?
    m_eDataType: ESteamNetworkingConfigDataType;

    m_val:       union {
        m_int32:  s32;
        m_int64:  s64;
        m_float:  float;
        m_string: *u8; // Points to your '\0'-terminated buffer
        m_ptr:    *void;
    };
}

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
ESteamNetworkingSocketsDebugOutputType :: enum u32 {
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

/// Utility class for printing a SteamNetworkingPOPID.
SteamNetworkingPOPIDRender :: struct {
    buf: [8] u8;
}

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


/// Posted when a remote host is sending us a message, and we do not already have a session with them
SteamNetworkingMessagesSessionRequest_t :: struct {
//     anon_enum_164 :: enum u32 {
        k_iCallback :: 1251;
//     }
    m_identityRemote: SteamNetworkingIdentity; // user who wants to talk to us
}

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
SteamNetworkingMessagesSessionFailed_t :: struct {
//     anon_enum_165 :: enum u32 {
        k_iCallback :: 1252;
//     }

    /// Detailed info about the session that failed.
    /// SteamNetConnectionInfo_t::m_identityRemote indicates who this session
    /// was with.
    m_info: SteamNetConnectionInfo_t #align 1;
}

ISteamNetworkingConnectionSignaling :: struct {}
ISteamNetworkingSignalingRecvContext :: struct {}

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
SteamNetConnectionStatusChangedCallback_t :: struct {
//     anon_enum_166 :: enum u32 {
        k_iCallback :: 1221;
//     }

    /// Connection handle
    m_hConn:     HSteamNetConnection;

    /// Full connection info
    m_info:      SteamNetConnectionInfo_t;

    /// Previous state.  (Current state is in m_info.m_eState)
    m_eOldState: ESteamNetworkingConnectionState;
}

/// A struct used to describe our readiness to participate in authenticated,
/// encrypted communication.  In order to do this we need:
///
/// - The list of trusted CA certificates that might be relevant for this
///   app.
/// - A valid certificate issued by a CA.
///
/// This callback is posted whenever the state of our readiness changes.
SteamNetAuthenticationStatus_t :: struct {
//     anon_enum_167 :: enum u32 {
        k_iCallback :: 1222;
//     }

    /// Status
    m_eAvail:   ESteamNetworkingAvailability;

    /// Non-localized English language status.  For diagnostic/debugging
    /// purposes only.
    m_debugMsg: [256] u8;
}

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


/// A struct used to describe our readiness to use the relay network.
/// To do this we first need to fetch the network configuration,
/// which describes what POPs are available.
SteamRelayNetworkStatus_t :: struct {
//     anon_enum_168 :: enum u32 {
        k_iCallback :: 1281;
//     }

    /// Summary status.  When this is "current", initialization has
    /// completed.  Anything else means you are not ready yet, or
    /// there is a significant problem.
    m_eAvail:                     ESteamNetworkingAvailability;

    /// Nonzero if latency measurement is in progress (or pending,
    /// awaiting a prerequisite).
    m_bPingMeasurementInProgress: s32;

    /// Status obtaining the network config.  This is a prerequisite
    /// for relay network access.
    ///
    /// Failure to obtain the network config almost always indicates
    /// a problem with the local internet connection.
    m_eAvailNetworkConfig:        ESteamNetworkingAvailability;

    /// Current ability to communicate with ANY relay.  Note that
    /// the complete failure to communicate with any relays almost
    /// always indicates a problem with the local Internet connection.
    /// (However, just because you can reach a single relay doesn't
    /// mean that the local connection is in perfect health.)
    m_eAvailAnyRelay:             ESteamNetworkingAvailability;

    /// Non-localized English language status.  For diagnostic/debugging
    /// purposes only.
    m_debugMsg:                   [256] u8;
}

/// Utility class for printing a SteamNetworkingIdentity.
/// E.g. printf( "Identity is '%s'\n", SteamNetworkingIdentityRender( identity ).c_str() );
SteamNetworkingIdentityRender :: struct {
    buf: [128] u8;
}

/// Utility class for printing a SteamNetworkingIPAddrRender.
SteamNetworkingIPAddrRender :: struct {
    buf: [48] u8;
}

// Feature types for parental settings
EParentalFeature :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: Callback for querying UGC
//-----------------------------------------------------------------------------
SteamParentalSettingsChanged_t :: struct {
//     anon_enum_169 :: enum u32 {
        k_iCallback :: 5001;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// Purpose: The form factor of a device
//-----------------------------------------------------------------------------
ESteamDeviceFormFactor :: enum u32 {
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


SteamRemotePlaySessionConnected_t :: struct {
//     anon_enum_170 :: enum u32 {
        k_iCallback :: 5701;
//     }
    m_unSessionID: RemotePlaySessionID_t;
}

SteamRemotePlaySessionDisconnected_t :: struct {
//     anon_enum_171 :: enum u32 {
        k_iCallback :: 5702;
//     }
    m_unSessionID: RemotePlaySessionID_t;
}

SteamRemotePlayTogetherGuestInvite_t :: struct {
//     anon_enum_172 :: enum u32 {
        k_iCallback :: 5703;
//     }
    m_szConnectURL: [1024] u8;
}

SteamParamStringArray_t :: struct {
    m_ppStrings:   **u8 #align 4;
    m_nNumStrings: int32;
}

// A handle to a piece of user generated content
UGCHandle_t :: uint64;
PublishedFileUpdateHandle_t :: uint64;
PublishedFileId_t :: uint64;

// Handle for writing to Steam Cloud
UGCFileWriteStreamHandle_t :: uint64;

ERemoteStoragePlatform :: enum u32 {
    ERemoteStoragePlatformNone    :: 0;
    ERemoteStoragePlatformWindows :: 1;
    ERemoteStoragePlatformOSX     :: 2;
    ERemoteStoragePlatformPS3     :: 4;
    ERemoteStoragePlatformLinux   :: 8;
    ERemoteStoragePlatformSwitch  :: 16;
    ERemoteStoragePlatformAndroid :: 32;
    ERemoteStoragePlatformIOS     :: 64;

    ERemoteStoragePlatformAll     :: 4294967295;

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

ERemoteStoragePublishedFileVisibility :: enum u32 {
    ERemoteStoragePublishedFileVisibilityPublic      :: 0;
    ERemoteStoragePublishedFileVisibilityFriendsOnly :: 1;
    ERemoteStoragePublishedFileVisibilityPrivate     :: 2;
    ERemoteStoragePublishedFileVisibilityUnlisted    :: 3;

    k_ERemoteStoragePublishedFileVisibilityPublic      :: ERemoteStoragePublishedFileVisibilityPublic;
    k_ERemoteStoragePublishedFileVisibilityFriendsOnly :: ERemoteStoragePublishedFileVisibilityFriendsOnly;
    k_ERemoteStoragePublishedFileVisibilityPrivate     :: ERemoteStoragePublishedFileVisibilityPrivate;
    k_ERemoteStoragePublishedFileVisibilityUnlisted    :: ERemoteStoragePublishedFileVisibilityUnlisted;
}

EWorkshopFileType :: enum u32 {
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

EWorkshopVote :: enum u32 {
    EWorkshopVoteUnvoted :: 0;
    EWorkshopVoteFor     :: 1;
    EWorkshopVoteAgainst :: 2;
    EWorkshopVoteLater   :: 3;

    k_EWorkshopVoteUnvoted :: EWorkshopVoteUnvoted;
    k_EWorkshopVoteFor     :: EWorkshopVoteFor;
    k_EWorkshopVoteAgainst :: EWorkshopVoteAgainst;
    k_EWorkshopVoteLater   :: EWorkshopVoteLater;
}

EWorkshopFileAction :: enum u32 {
    EWorkshopFileActionPlayed    :: 0;
    EWorkshopFileActionCompleted :: 1;

    k_EWorkshopFileActionPlayed    :: EWorkshopFileActionPlayed;
    k_EWorkshopFileActionCompleted :: EWorkshopFileActionCompleted;
}

EWorkshopEnumerationType :: enum u32 {
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

EWorkshopVideoProvider :: enum u32 {
    EWorkshopVideoProviderNone    :: 0;
    EWorkshopVideoProviderYoutube :: 1;

    k_EWorkshopVideoProviderNone    :: EWorkshopVideoProviderNone;
    k_EWorkshopVideoProviderYoutube :: EWorkshopVideoProviderYoutube;
}

EUGCReadAction :: enum u32 {
    ContinueReadingUntilFinished :: 0;

    ContinueReading              :: 1;

    Close                        :: 2;

    k_EUGCRead_ContinueReadingUntilFinished :: ContinueReadingUntilFinished;

    k_EUGCRead_ContinueReading              :: ContinueReading;

    k_EUGCRead_Close                        :: Close;
}

ERemoteStorageLocalFileChange :: enum u32 {
    Invalid     :: 0;

    FileUpdated :: 1;

    FileDeleted :: 2;

    k_ERemoteStorageLocalFileChange_Invalid     :: Invalid;

    k_ERemoteStorageLocalFileChange_FileUpdated :: FileUpdated;

    k_ERemoteStorageLocalFileChange_FileDeleted :: FileDeleted;
}

ERemoteStorageFilePathType :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: The result of a call to FileShare()
//-----------------------------------------------------------------------------
RemoteStorageFileShareResult_t :: struct {
//     anon_enum_173 :: enum u32 {
        k_iCallback :: 1307;
//     }
    m_eResult:      EResult; // The result of the operation
    m_hFile:        UGCHandle_t #align 4; // The handle that can be shared with users and features
    m_rgchFilename: [260] u8; // The name of the file that was shared
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to PublishFile()
//-----------------------------------------------------------------------------
RemoteStoragePublishFileResult_t :: struct {
//     anon_enum_174 :: enum u32 {
        k_iCallback :: 1309;
//     }
    m_eResult:                                  EResult; // The result of the operation.
    m_nPublishedFileId:                         PublishedFileId_t #align 4;
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to DeletePublishedFile()
//-----------------------------------------------------------------------------
RemoteStorageDeletePublishedFileResult_t :: struct {
//     anon_enum_175 :: enum u32 {
        k_iCallback :: 1311;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to EnumerateUserPublishedFiles()
//-----------------------------------------------------------------------------
RemoteStorageEnumerateUserPublishedFilesResult_t :: struct {
//     anon_enum_176 :: enum u32 {
        k_iCallback :: 1312;
//     }
    m_eResult:           EResult; // The result of the operation.
    m_nResultsReturned:  int32;
    m_nTotalResultCount: int32;
    m_rgPublishedFileId: [50] PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to SubscribePublishedFile()
//-----------------------------------------------------------------------------
RemoteStorageSubscribePublishedFileResult_t :: struct {
//     anon_enum_177 :: enum u32 {
        k_iCallback :: 1313;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to EnumerateSubscribePublishedFiles()
//-----------------------------------------------------------------------------
RemoteStorageEnumerateUserSubscribedFilesResult_t :: struct {
//     anon_enum_178 :: enum u32 {
        k_iCallback :: 1314;
//     }
    m_eResult:           EResult; // The result of the operation.
    m_nResultsReturned:  int32;
    m_nTotalResultCount: int32;
    m_rgPublishedFileId: [50] PublishedFileId_t #align 4;
    m_rgRTimeSubscribed: [50] uint32;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to UnsubscribePublishedFile()
//-----------------------------------------------------------------------------
RemoteStorageUnsubscribePublishedFileResult_t :: struct {
//     anon_enum_179 :: enum u32 {
        k_iCallback :: 1315;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to CommitPublishedFileUpdate()
//-----------------------------------------------------------------------------
RemoteStorageUpdatePublishedFileResult_t :: struct {
//     anon_enum_180 :: enum u32 {
        k_iCallback :: 1316;
//     }
    m_eResult:                                  EResult; // The result of the operation.
    m_nPublishedFileId:                         PublishedFileId_t #align 4;
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to UGCDownload()
//-----------------------------------------------------------------------------
RemoteStorageDownloadUGCResult_t :: struct {
//     anon_enum_181 :: enum u32 {
        k_iCallback :: 1317;
//     }
    m_eResult:        EResult; // The result of the operation.
    m_hFile:          UGCHandle_t #align 4; // The handle to the file that was attempted to be downloaded.
    m_nAppID:         AppId_t; // ID of the app that created this file.
    m_nSizeInBytes:   int32; // The size of the file that was downloaded, in bytes.
    m_pchFileName:    [260] u8; // The name of the file that was downloaded.
    m_ulSteamIDOwner: uint64 #align 4; // Steam ID of the user who created this content.
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to GetPublishedFileDetails()
//-----------------------------------------------------------------------------
RemoteStorageGetPublishedFileDetailsResult_t :: struct {
//     anon_enum_182 :: enum u32 {
        k_iCallback :: 1318;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_nCreatorAppID:    AppId_t; // ID of the app that created this file.
    m_nConsumerAppID:   AppId_t; // ID of the app that will consume this file.
    m_rgchTitle:        [129] u8; // title of document
    m_rgchDescription:  [8000] u8; // description of document
    m_hFile:            UGCHandle_t #align 4; // The handle of the primary file
    m_hPreviewFile:     UGCHandle_t #align 4; // The handle of the preview file
    m_ulSteamIDOwner:   uint64 #align 4; // Steam ID of the user who created this content.
    m_rtimeCreated:     uint32; // time when the published file was created
    m_rtimeUpdated:     uint32; // time when the published file was last updated
    m_eVisibility:      ERemoteStoragePublishedFileVisibility;
    m_bBanned:          bool;
    m_rgchTags:         [1025] u8; // comma separated list of all tags associated with this file
    m_bTagsTruncated:   bool; // whether the list of tags was too long to be returned in the provided buffer
    m_pchFileName:      [260] u8; // The name of the primary file
    m_nFileSize:        int32; // Size of the primary file
    m_nPreviewFileSize: int32; // Size of the preview file
    m_rgchURL:          [256] u8; // URL (for a video or a website)
    m_eFileType:        EWorkshopFileType; // Type of the file
    m_bAcceptedForUse:  bool; // developer has specifically flagged this item as accepted in the Workshop
}

RemoteStorageEnumerateWorkshopFilesResult_t :: struct {
//     anon_enum_183 :: enum u32 {
        k_iCallback :: 1319;
//     }
    m_eResult:           EResult;
    m_nResultsReturned:  int32;
    m_nTotalResultCount: int32;
    m_rgPublishedFileId: [50] PublishedFileId_t #align 4;
    m_rgScore:           [50] float;
    m_nAppId:            AppId_t;
    m_unStartIndex:      uint32;
}

//-----------------------------------------------------------------------------
// Purpose: The result of GetPublishedItemVoteDetails
//-----------------------------------------------------------------------------
RemoteStorageGetPublishedItemVoteDetailsResult_t :: struct {
//     anon_enum_184 :: enum u32 {
        k_iCallback :: 1320;
//     }
    m_eResult:           EResult;
    m_unPublishedFileId: PublishedFileId_t #align 4;
    m_nVotesFor:         int32;
    m_nVotesAgainst:     int32;
    m_nReports:          int32;
    m_fScore:            float;
}

//-----------------------------------------------------------------------------
// Purpose: User subscribed to a file for the app (from within the app or on the web)
//-----------------------------------------------------------------------------
RemoteStoragePublishedFileSubscribed_t :: struct {
//     anon_enum_185 :: enum u32 {
        k_iCallback :: 1321;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
    m_nAppID:           AppId_t; // ID of the app that will consume this file.
}

//-----------------------------------------------------------------------------
// Purpose: User unsubscribed from a file for the app (from within the app or on the web)
//-----------------------------------------------------------------------------
RemoteStoragePublishedFileUnsubscribed_t :: struct {
//     anon_enum_186 :: enum u32 {
        k_iCallback :: 1322;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
    m_nAppID:           AppId_t; // ID of the app that will consume this file.
}

//-----------------------------------------------------------------------------
// Purpose: Published file that a user owns was deleted (from within the app or the web)
//-----------------------------------------------------------------------------
RemoteStoragePublishedFileDeleted_t :: struct {
//     anon_enum_187 :: enum u32 {
        k_iCallback :: 1323;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
    m_nAppID:           AppId_t; // ID of the app that will consume this file.
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to UpdateUserPublishedItemVote()
//-----------------------------------------------------------------------------
RemoteStorageUpdateUserPublishedItemVoteResult_t :: struct {
//     anon_enum_188 :: enum u32 {
        k_iCallback :: 1324;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to GetUserPublishedItemVoteDetails()
//-----------------------------------------------------------------------------
RemoteStorageUserVoteDetails_t :: struct {
//     anon_enum_189 :: enum u32 {
        k_iCallback :: 1325;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
    m_eVote:            EWorkshopVote; // what the user voted
}

RemoteStorageEnumerateUserSharedWorkshopFilesResult_t :: struct {
//     anon_enum_190 :: enum u32 {
        k_iCallback :: 1326;
//     }
    m_eResult:           EResult; // The result of the operation.
    m_nResultsReturned:  int32;
    m_nTotalResultCount: int32;
    m_rgPublishedFileId: [50] PublishedFileId_t #align 4;
}

RemoteStorageSetUserPublishedFileActionResult_t :: struct {
//     anon_enum_191 :: enum u32 {
        k_iCallback :: 1327;
//     }
    m_eResult:          EResult; // The result of the operation.
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
    m_eAction:          EWorkshopFileAction; // the action that was attempted
}

RemoteStorageEnumeratePublishedFilesByUserActionResult_t :: struct {
//     anon_enum_192 :: enum u32 {
        k_iCallback :: 1328;
//     }
    m_eResult:           EResult; // The result of the operation.
    m_eAction:           EWorkshopFileAction; // the action that was filtered on
    m_nResultsReturned:  int32;
    m_nTotalResultCount: int32;
    m_rgPublishedFileId: [50] PublishedFileId_t #align 4;
    m_rgRTimeUpdated:    [50] uint32;
}

//-----------------------------------------------------------------------------
// Purpose: Called periodically while a PublishWorkshopFile is in progress
//-----------------------------------------------------------------------------
RemoteStoragePublishFileProgress_t :: struct {
//     anon_enum_193 :: enum u32 {
        k_iCallback :: 1329;
//     }
    m_dPercentFile: float64 #align 4;
    m_bPreview:     bool;
}

//-----------------------------------------------------------------------------
// Purpose: Called when the content for a published file is updated
//-----------------------------------------------------------------------------
RemoteStoragePublishedFileUpdated_t :: struct {
//     anon_enum_194 :: enum u32 {
        k_iCallback :: 1330;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4; // The published file id
    m_nAppID:           AppId_t; // ID of the app that will consume this file.
    m_ulUnused:         uint64 #align 4; // not used anymore
}

//-----------------------------------------------------------------------------
// Purpose: Called when a FileWriteAsync completes
//-----------------------------------------------------------------------------
RemoteStorageFileWriteAsyncComplete_t :: struct {
//     anon_enum_195 :: enum u32 {
        k_iCallback :: 1331;
//     }
    m_eResult: EResult; // result
}

//-----------------------------------------------------------------------------
// Purpose: Called when a FileReadAsync completes
//-----------------------------------------------------------------------------
RemoteStorageFileReadAsyncComplete_t :: struct {
//     anon_enum_196 :: enum u32 {
        k_iCallback :: 1332;
//     }
    m_hFileReadAsync: SteamAPICall_t #align 4; // call handle of the async read which was made
    m_eResult:        EResult; // result
    m_nOffset:        uint32; // offset in the file this read was at
    m_cubRead:        uint32; // amount read - will the <= the amount requested
}

//-----------------------------------------------------------------------------
// Purpose: one or more files for this app have changed locally after syncing
//			to remote session changes
//			Note: only posted if this happens DURING the local app session
//-----------------------------------------------------------------------------
RemoteStorageLocalFileChange_t :: struct {
//     anon_enum_197 :: enum u32 {
        k_iCallback :: 1333;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

// Handle is valid for the lifetime of your process and no longer
ScreenshotHandle :: uint32;

EVRScreenshotType :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: Screenshot successfully written or otherwise added to the library
// and can now be tagged
//-----------------------------------------------------------------------------
ScreenshotReady_t :: struct {
//     anon_enum_198 :: enum u32 {
        k_iCallback :: 2301;
//     }
    m_hLocal:  ScreenshotHandle;
    m_eResult: EResult;
}

//-----------------------------------------------------------------------------
// Purpose: Screenshot has been requested by the user.  Only sent if
// HookScreenshots() has been called, in which case Steam will not take
// the screenshot itself.
//-----------------------------------------------------------------------------
ScreenshotRequested_t :: struct {
//     anon_enum_199 :: enum u32 {
        k_iCallback :: 2302;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

// Controls the color of the timeline bar segments. The value names listed here map to a multiplayer game, where
// the user starts a game (in menus), then joins a multiplayer session that first has a character selection lobby
// then finally the multiplayer session starts. However, you can also map these values to any type of game. In a single
// player game where you visit towns & dungeons, you could set k_ETimelineGameMode_Menus when the player is in a town
// buying items, k_ETimelineGameMode_Staging for when a dungeon is loading and k_ETimelineGameMode_Playing for when
// inside the dungeon fighting monsters.
ETimelineGameMode :: enum u32 {
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
ETimelineEventClipPriority :: enum u32 {
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
EUserUGCList :: enum u32 {
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
EUserUGCListSortOrder :: enum u32 {
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
EUGCQuery :: enum u32 {
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

EItemUpdateStatus :: enum u32 {
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

EItemState :: enum u32 {
    EItemStateNone            :: 0;
    EItemStateSubscribed      :: 1;
    EItemStateLegacyItem      :: 2;
    EItemStateInstalled       :: 4;
    EItemStateNeedsUpdate     :: 8;
    EItemStateDownloading     :: 16;
    EItemStateDownloadPending :: 32;
    EItemStateDisabledLocally :: 64;

    k_EItemStateNone            :: EItemStateNone;
    k_EItemStateSubscribed      :: EItemStateSubscribed;
    k_EItemStateLegacyItem      :: EItemStateLegacyItem;
    k_EItemStateInstalled       :: EItemStateInstalled;
    k_EItemStateNeedsUpdate     :: EItemStateNeedsUpdate;
    k_EItemStateDownloading     :: EItemStateDownloading;
    k_EItemStateDownloadPending :: EItemStateDownloadPending;
    k_EItemStateDisabledLocally :: EItemStateDisabledLocally;
}

EItemStatistic :: enum u32 {
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

EItemPreviewType :: enum u32 {
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

EUGCContentDescriptorID :: enum u32 {
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
SteamUGCDetails_t :: struct {
    m_nPublishedFileId:     PublishedFileId_t #align 4;
    m_eResult:              EResult; // The result of the operation.
    m_eFileType:            EWorkshopFileType; // Type of the file
    m_nCreatorAppID:        AppId_t; // ID of the app that created this file.
    m_nConsumerAppID:       AppId_t; // ID of the app that will consume this file.
    m_rgchTitle:            [129] u8; // title of document
    m_rgchDescription:      [8000] u8; // description of document
    m_ulSteamIDOwner:       uint64 #align 4; // Steam ID of the user who created this content.
    m_rtimeCreated:         uint32; // time when the published file was created
    m_rtimeUpdated:         uint32; // time when the published file was last updated
    m_rtimeAddedToUserList: uint32; // time when the user added the published file to their list (not always applicable)
    m_eVisibility:          ERemoteStoragePublishedFileVisibility; // visibility
    m_bBanned:              bool; // whether the file was banned
    m_bAcceptedForUse:      bool; // developer has specifically flagged this item as accepted in the Workshop
    m_bTagsTruncated:       bool; // whether the list of tags was too long to be returned in the provided buffer
    m_rgchTags:             [1025] u8; // comma separated list of all tags associated with this file

    m_hFile:                UGCHandle_t #align 4; // The handle of the primary file
    m_hPreviewFile:         UGCHandle_t #align 4; // The handle of the preview file
    m_pchFileName:          [260] u8; // The cloud filename of the primary file
    m_nFileSize:            int32; // Size of the primary file (for legacy items which only support one file). This may not be accurate for non-legacy items which can be greater than 4gb in size.
    m_nPreviewFileSize:     int32; // Size of the preview file
    m_rgchURL:              [256] u8; // URL (for a video or a website)

    m_unVotesUp:            uint32; // number of votes up
    m_unVotesDown:          uint32; // number of votes down
    m_flScore:              float; // calculated score

    // collection details
    m_unNumChildren:        uint32;
    m_ulTotalFilesSize:     uint64 #align 4; // Total size of all files (non-legacy), excluding the preview file
}

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


//-----------------------------------------------------------------------------
// Purpose: Callback for querying UGC
//-----------------------------------------------------------------------------
SteamUGCQueryCompleted_t :: struct {
//     anon_enum_200 :: enum u32 {
        k_iCallback :: 3401;
//     }
    m_handle:                 UGCQueryHandle_t #align 4;
    m_eResult:                EResult;
    m_unNumResultsReturned:   uint32;
    m_unTotalMatchingResults: uint32;
    m_bCachedData:            bool; // indicates whether this data was retrieved from the local on-disk cache
    m_rgchNextCursor:         [256] u8; // If a paging cursor was used, then this will be the next cursor to get the next result set.
}

//-----------------------------------------------------------------------------
// Purpose: Callback for requesting details on one piece of UGC
//-----------------------------------------------------------------------------
SteamUGCRequestUGCDetailsResult_t :: struct {
//     anon_enum_201 :: enum u32 {
        k_iCallback :: 3402;
//     }
    m_details:     SteamUGCDetails_t;
    m_bCachedData: bool; // indicates whether this data was retrieved from the local on-disk cache
}

//-----------------------------------------------------------------------------
// Purpose: result for ISteamUGC::CreateItem()
//-----------------------------------------------------------------------------
CreateItemResult_t :: struct {
//     anon_enum_202 :: enum u32 {
        k_iCallback :: 3403;
//     }
    m_eResult:                                  EResult;
    m_nPublishedFileId:                         PublishedFileId_t #align 4; // new item got this UGC PublishFileID
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool;
}

//-----------------------------------------------------------------------------
// Purpose: result for ISteamUGC::SubmitItemUpdate()
//-----------------------------------------------------------------------------
SubmitItemUpdateResult_t :: struct {
//     anon_enum_203 :: enum u32 {
        k_iCallback :: 3404;
//     }
    m_eResult:                                  EResult;
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool;
    m_nPublishedFileId:                         PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: a Workshop item has been installed or updated
//-----------------------------------------------------------------------------
ItemInstalled_t :: struct {
//     anon_enum_204 :: enum u32 {
        k_iCallback :: 3405;
//     }
    m_unAppID:          AppId_t;
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_hLegacyContent:   UGCHandle_t #align 4;
    m_unManifestID:     uint64 #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: result of DownloadItem(), existing item files can be accessed again
//-----------------------------------------------------------------------------
DownloadItemResult_t :: struct {
//     anon_enum_205 :: enum u32 {
        k_iCallback :: 3406;
//     }
    m_unAppID:          AppId_t;
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_eResult:          EResult;
}

//-----------------------------------------------------------------------------
// Purpose: result of AddItemToFavorites() or RemoveItemFromFavorites()
//-----------------------------------------------------------------------------
UserFavoriteItemsListChanged_t :: struct {
//     anon_enum_206 :: enum u32 {
        k_iCallback :: 3407;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_eResult:          EResult;
    m_bWasAddRequest:   bool;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to SetUserItemVote()
//-----------------------------------------------------------------------------
SetUserItemVoteResult_t :: struct {
//     anon_enum_207 :: enum u32 {
        k_iCallback :: 3408;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_eResult:          EResult;
    m_bVoteUp:          bool;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to GetUserItemVote()
//-----------------------------------------------------------------------------
GetUserItemVoteResult_t :: struct {
//     anon_enum_208 :: enum u32 {
        k_iCallback :: 3409;
//     }
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_eResult:          EResult;
    m_bVotedUp:         bool;
    m_bVotedDown:       bool;
    m_bVoteSkipped:     bool;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to StartPlaytimeTracking()
//-----------------------------------------------------------------------------
StartPlaytimeTrackingResult_t :: struct {
//     anon_enum_209 :: enum u32 {
        k_iCallback :: 3410;
//     }
    m_eResult: EResult;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to StopPlaytimeTracking()
//-----------------------------------------------------------------------------
StopPlaytimeTrackingResult_t :: struct {
//     anon_enum_210 :: enum u32 {
        k_iCallback :: 3411;
//     }
    m_eResult: EResult;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to AddDependency
//-----------------------------------------------------------------------------
AddUGCDependencyResult_t :: struct {
//     anon_enum_211 :: enum u32 {
        k_iCallback :: 3412;
//     }
    m_eResult:               EResult;
    m_nPublishedFileId:      PublishedFileId_t #align 4;
    m_nChildPublishedFileId: PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to RemoveDependency
//-----------------------------------------------------------------------------
RemoveUGCDependencyResult_t :: struct {
//     anon_enum_212 :: enum u32 {
        k_iCallback :: 3413;
//     }
    m_eResult:               EResult;
    m_nPublishedFileId:      PublishedFileId_t #align 4;
    m_nChildPublishedFileId: PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to AddAppDependency
//-----------------------------------------------------------------------------
AddAppDependencyResult_t :: struct {
//     anon_enum_213 :: enum u32 {
        k_iCallback :: 3414;
//     }
    m_eResult:          EResult;
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_nAppID:           AppId_t;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to RemoveAppDependency
//-----------------------------------------------------------------------------
RemoveAppDependencyResult_t :: struct {
//     anon_enum_214 :: enum u32 {
        k_iCallback :: 3415;
//     }
    m_eResult:          EResult;
    m_nPublishedFileId: PublishedFileId_t #align 4;
    m_nAppID:           AppId_t;
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to GetAppDependencies.  Callback may be called
//			multiple times until all app dependencies have been returned.
//-----------------------------------------------------------------------------
GetAppDependenciesResult_t :: struct {
//     anon_enum_215 :: enum u32 {
        k_iCallback :: 3416;
//     }
    m_eResult:                  EResult;
    m_nPublishedFileId:         PublishedFileId_t #align 4;
    m_rgAppIDs:                 [32] AppId_t;
    m_nNumAppDependencies:      uint32; // number returned in this struct
    m_nTotalNumAppDependencies: uint32; // total found
}

//-----------------------------------------------------------------------------
// Purpose: The result of a call to DeleteItem
//-----------------------------------------------------------------------------
DeleteItemResult_t :: struct {
//     anon_enum_216 :: enum u32 {
        k_iCallback :: 3417;
//     }
    m_eResult:          EResult;
    m_nPublishedFileId: PublishedFileId_t #align 4;
}

//-----------------------------------------------------------------------------
// Purpose: signal that the list of subscribed items changed
//-----------------------------------------------------------------------------
UserSubscribedItemsListChanged_t :: struct {
//     anon_enum_217 :: enum u32 {
        k_iCallback :: 3418;
//     }
    m_nAppID: AppId_t;
}

//-----------------------------------------------------------------------------
// Purpose: Status of the user's acceptable/rejection of the app's specific Workshop EULA
//-----------------------------------------------------------------------------
WorkshopEULAStatus_t :: struct {
//     anon_enum_218 :: enum u32 {
        k_iCallback :: 3420;
//     }
    m_eResult:      EResult;
    m_nAppID:       AppId_t;
    m_unVersion:    uint32;
    m_rtAction:     RTime32;
    m_bAccepted:    bool;
    m_bNeedsAction: bool;
}

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


//-----------------------------------------------------------------------------
// Purpose: Called when an authenticated connection to the Steam back-end has been established.
//			This means the Steam client now has a working connection to the Steam servers.
//			Usually this will have occurred before the game has launched, and should
//			only be seen if the user has dropped connection due to a networking issue
//			or a Steam server update.
//-----------------------------------------------------------------------------
SteamServersConnected_t :: struct {
//     anon_enum_219 :: enum u32 {
        k_iCallback :: 101;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// Purpose: called when a connection attempt has failed
//			this will occur periodically if the Steam client is not connected,
//			and has failed in it's retry to establish a connection
//-----------------------------------------------------------------------------
SteamServerConnectFailure_t :: struct {
//     anon_enum_220 :: enum u32 {
        k_iCallback :: 102;
//     }
    m_eResult:        EResult;
    m_bStillRetrying: bool;
}

//-----------------------------------------------------------------------------
// Purpose: called if the client has lost connection to the Steam servers
//			real-time services will be disabled until a matching SteamServersConnected_t has been posted
//-----------------------------------------------------------------------------
SteamServersDisconnected_t :: struct {
//     anon_enum_221 :: enum u32 {
        k_iCallback :: 103;
//     }
    m_eResult: EResult;
}

//-----------------------------------------------------------------------------
// Purpose: Sent by the Steam server to the client telling it to disconnect from the specified game server,
//			which it may be in the process of or already connected to.
//			The game client should immediately disconnect upon receiving this message.
//			This can usually occur if the user doesn't have rights to play on the game server.
//-----------------------------------------------------------------------------
ClientGameServerDeny_t :: struct {
//     anon_enum_222 :: enum u32 {
        k_iCallback :: 113;
//     }

    m_uAppID:           uint32;
    m_unGameServerIP:   uint32;
    m_usGameServerPort: uint16;
    m_bSecure:          uint16;
    m_uReason:          uint32;
}

//-----------------------------------------------------------------------------
// Purpose: called when the callback system for this client is in an error state (and has flushed pending callbacks)
//			When getting this message the client should disconnect from Steam, reset any stored Steam state and reconnect.
//			This usually occurs in the rare event the Steam client has some kind of fatal error.
//-----------------------------------------------------------------------------
IPCFailure_t :: struct {
//     anon_enum_223 :: enum u32 {
        k_iCallback :: 117;
//     }
    EFailureType :: enum u32 {
        EFailureFlushedCallbackQueue :: 0;
        EFailurePipeFail             :: 1;

        k_EFailureFlushedCallbackQueue :: EFailureFlushedCallbackQueue;
        k_EFailurePipeFail             :: EFailurePipeFail;
    }

    m_eFailureType: uint8;
}

//-----------------------------------------------------------------------------
// Purpose: Signaled whenever licenses change
//-----------------------------------------------------------------------------
LicensesUpdated_t :: struct {
//     anon_enum_224 :: enum u32 {
        k_iCallback :: 125;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// callback for BeginAuthSession
//-----------------------------------------------------------------------------
ValidateAuthTicketResponse_t :: struct {
//     anon_enum_225 :: enum u32 {
        k_iCallback :: 143;
//     }
    m_SteamID:              CSteamID;
    m_eAuthSessionResponse: EAuthSessionResponse;
    m_OwnerSteamID:         CSteamID; // different from m_SteamID if borrowed
}

//-----------------------------------------------------------------------------
// Purpose: called when a user has responded to a microtransaction authorization request
//-----------------------------------------------------------------------------
MicroTxnAuthorizationResponse_t :: struct {
//     anon_enum_226 :: enum u32 {
        k_iCallback :: 152;
//     }

    m_unAppID:     uint32; // AppID for this microtransaction
    m_ulOrderID:   uint64 #align 4; // OrderID provided for the microtransaction
    m_bAuthorized: uint8; // if user authorized transaction
}

//-----------------------------------------------------------------------------
// Purpose: Result from RequestEncryptedAppTicket
//-----------------------------------------------------------------------------
EncryptedAppTicketResponse_t :: struct {
//     anon_enum_227 :: enum u32 {
        k_iCallback :: 154;
//     }

    m_eResult: EResult;
}

//-----------------------------------------------------------------------------
// callback for GetAuthSessionTicket
//-----------------------------------------------------------------------------
GetAuthSessionTicketResponse_t :: struct {
//     anon_enum_228 :: enum u32 {
        k_iCallback :: 163;
//     }
    m_hAuthTicket: HAuthTicket;
    m_eResult:     EResult;
}

//-----------------------------------------------------------------------------
// Purpose: sent to your game in response to a steam://gamewebcallback/ command
//-----------------------------------------------------------------------------
GameWebCallback_t :: struct {
//     anon_enum_229 :: enum u32 {
        k_iCallback :: 164;
//     }
    m_szURL: [256] u8;
}

//-----------------------------------------------------------------------------
// Purpose: sent to your game in response to ISteamUser::RequestStoreAuthURL
//-----------------------------------------------------------------------------
StoreAuthURLResponse_t :: struct {
//     anon_enum_230 :: enum u32 {
        k_iCallback :: 165;
//     }
    m_szURL: [512] u8;
}

//-----------------------------------------------------------------------------
// Purpose: sent in response to ISteamUser::GetMarketEligibility
//-----------------------------------------------------------------------------
MarketEligibilityResponse_t :: struct {
//     anon_enum_231 :: enum u32 {
        k_iCallback :: 166;
//     }
    m_bAllowed:                   bool;
    m_eNotAllowedReason:          EMarketNotAllowedReasonFlags;
    m_rtAllowedAtTime:            RTime32;

    m_cdaySteamGuardRequiredDays: s32; // The number of days any user is required to have had Steam Guard before they can use the market
    m_cdayNewDeviceCooldown:      s32; // The number of days after initial device authorization a user must wait before using the market on that device
}

//-----------------------------------------------------------------------------
// Purpose: sent for games with enabled anti indulgence / duration control, for
// enabled users. Lets the game know whether the user can keep playing or
// whether the game should exit, and returns info about remaining gameplay time.
//
// This callback is fired asynchronously in response to timers triggering.
// It is also fired in response to calls to GetDurationControl().
//-----------------------------------------------------------------------------
DurationControl_t :: struct {
//     anon_enum_232 :: enum u32 {
        k_iCallback :: 167;
//     }

    m_eResult:        EResult; // result of call (always k_EResultOK for asynchronous timer-based notifications)
    m_appid:          AppId_t; // appid generating playtime

    m_bApplicable:    bool; // is duration control applicable to user + game combination
    m_csecsLast5h:    int32; // playtime since most recent 5 hour gap in playtime, only counting up to regulatory limit of playtime, in seconds

    m_progress:       EDurationControlProgress; // recommended progress (either everything is fine, or please exit game)
    m_notification:   EDurationControlNotification; // notification to show, if any (always k_EDurationControlNotification_None for API calls)

    m_csecsToday:     int32; // playtime on current calendar day
    m_csecsRemaining: int32; // playtime remaining until the user hits a regulatory limit
}

//-----------------------------------------------------------------------------
// callback for GetTicketForWebApi
//-----------------------------------------------------------------------------
GetTicketForWebApiResponse_t :: struct {
//     anon_enum_233 :: enum u32 {
        k_iCallback :: 168;
//     }
    m_hAuthTicket:         HAuthTicket;
    m_eResult:             EResult;
    m_cubTicket:           s32;
    k_nCubTicketMaxLength: s32 : 2560;
    m_rgubTicket:          [2560] uint8;
}

// size limit on stat or achievement name (UTF-8 encoded)
// anon_enum_234 :: enum u32 {
    k_cchStatNameMax :: 128;
// }

// maximum number of bytes for a leaderboard name (UTF-8 encoded)
// anon_enum_235 :: enum u32 {
    k_cchLeaderboardNameMax :: 128;
// }

// maximum number of details int32's storable for a single leaderboard entry
// anon_enum_236 :: enum u32 {
    k_cLeaderboardDetailsMax :: 64;
// }

// handle to a single leaderboard
SteamLeaderboard_t :: uint64;

// handle to a set of downloaded entries in a leaderboard
SteamLeaderboardEntries_t :: uint64;

// type of data request, when downloading leaderboard entries
ELeaderboardDataRequest :: enum u32 {
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
ELeaderboardSortMethod :: enum u32 {
    ELeaderboardSortMethodNone       :: 0;
    ELeaderboardSortMethodAscending  :: 1;
    ELeaderboardSortMethodDescending :: 2;

    k_ELeaderboardSortMethodNone       :: ELeaderboardSortMethodNone;
    k_ELeaderboardSortMethodAscending  :: ELeaderboardSortMethodAscending;
    k_ELeaderboardSortMethodDescending :: ELeaderboardSortMethodDescending;
}

// the display type (used by the Steam Community web site) for a leaderboard
ELeaderboardDisplayType :: enum u32 {
    ELeaderboardDisplayTypeNone             :: 0;
    ELeaderboardDisplayTypeNumeric          :: 1;
    ELeaderboardDisplayTypeTimeSeconds      :: 2;
    ELeaderboardDisplayTypeTimeMilliSeconds :: 3;

    k_ELeaderboardDisplayTypeNone             :: ELeaderboardDisplayTypeNone;
    k_ELeaderboardDisplayTypeNumeric          :: ELeaderboardDisplayTypeNumeric;
    k_ELeaderboardDisplayTypeTimeSeconds      :: ELeaderboardDisplayTypeTimeSeconds;
    k_ELeaderboardDisplayTypeTimeMilliSeconds :: ELeaderboardDisplayTypeTimeMilliSeconds;
}

ELeaderboardUploadScoreMethod :: enum u32 {
    ELeaderboardUploadScoreMethodNone        :: 0;
    ELeaderboardUploadScoreMethodKeepBest    :: 1;
    ELeaderboardUploadScoreMethodForceUpdate :: 2;

    k_ELeaderboardUploadScoreMethodNone        :: ELeaderboardUploadScoreMethodNone;
    k_ELeaderboardUploadScoreMethodKeepBest    :: ELeaderboardUploadScoreMethodKeepBest;
    k_ELeaderboardUploadScoreMethodForceUpdate :: ELeaderboardUploadScoreMethodForceUpdate;
}

LeaderboardEntry_t :: struct {
    m_steamIDUser: CSteamID; // user with the entry - use SteamFriends()->GetFriendPersonaName() & SteamFriends()->GetFriendAvatar() to get more info
    m_nGlobalRank: int32; // [1..N], where N is the number of users with an entry in the leaderboard
    m_nScore:      int32; // score as set in the leaderboard
    m_cDetails:    int32; // number of int32 details available for this entry
    m_hUGC:        UGCHandle_t #align 4; // handle for UGC attached to the entry
}

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


//-----------------------------------------------------------------------------
// Purpose: called when the latests stats and achievements have been received
//			from the server
//-----------------------------------------------------------------------------
UserStatsReceived_t :: struct {
//     anon_enum_237 :: enum u32 {
        k_iCallback :: 1101;
//     }
    m_nGameID:     uint64 #align 4; // Game these stats are for
    m_eResult:     EResult; // Success / error fetching the stats
    m_steamIDUser: CSteamID; // The user for whom the stats are retrieved for
}

//-----------------------------------------------------------------------------
// Purpose: result of a request to store the user stats for a game
//-----------------------------------------------------------------------------
UserStatsStored_t :: struct {
//     anon_enum_238 :: enum u32 {
        k_iCallback :: 1102;
//     }
    m_nGameID: uint64 #align 4; // Game these stats are for
    m_eResult: EResult; // success / error
}

//-----------------------------------------------------------------------------
// Purpose: result of a request to store the achievements for a game, or an
//			"indicate progress" call. If both m_nCurProgress and m_nMaxProgress
//			are zero, that means the achievement has been fully unlocked.
//-----------------------------------------------------------------------------
UserAchievementStored_t :: struct {
//     anon_enum_239 :: enum u32 {
        k_iCallback :: 1103;
//     }

    m_nGameID:             uint64 #align 4; // Game this is for
    m_bGroupAchievement:   bool; // if this is a "group" achievement
    m_rgchAchievementName: [128] u8; // name of the achievement
    m_nCurProgress:        uint32; // current progress towards the achievement
    m_nMaxProgress:        uint32; // "out of" this many
}

//-----------------------------------------------------------------------------
// Purpose: call result for finding a leaderboard, returned as a result of FindOrCreateLeaderboard() or FindLeaderboard()
//			use CCallResult<> to map this async result to a member function
//-----------------------------------------------------------------------------
LeaderboardFindResult_t :: struct {
//     anon_enum_240 :: enum u32 {
        k_iCallback :: 1104;
//     }
    m_hSteamLeaderboard: SteamLeaderboard_t #align 4; // handle to the leaderboard serarched for, 0 if no leaderboard found
    m_bLeaderboardFound: uint8; // 0 if no leaderboard found
}

//-----------------------------------------------------------------------------
// Purpose: call result indicating scores for a leaderboard have been downloaded and are ready to be retrieved, returned as a result of DownloadLeaderboardEntries()
//			use CCallResult<> to map this async result to a member function
//-----------------------------------------------------------------------------
LeaderboardScoresDownloaded_t :: struct {
//     anon_enum_241 :: enum u32 {
        k_iCallback :: 1105;
//     }
    m_hSteamLeaderboard:        SteamLeaderboard_t #align 4;
    m_hSteamLeaderboardEntries: SteamLeaderboardEntries_t #align 4; // the handle to pass into GetDownloadedLeaderboardEntries()
    m_cEntryCount:              s32; // the number of entries downloaded
}

//-----------------------------------------------------------------------------
// Purpose: call result indicating scores has been uploaded, returned as a result of UploadLeaderboardScore()
//			use CCallResult<> to map this async result to a member function
//-----------------------------------------------------------------------------
LeaderboardScoreUploaded_t :: struct {
//     anon_enum_242 :: enum u32 {
        k_iCallback :: 1106;
//     }
    m_bSuccess:            uint8; // 1 if the call was successful
    m_hSteamLeaderboard:   SteamLeaderboard_t #align 4; // the leaderboard handle that was
    m_nScore:              int32; // the score that was attempted to set
    m_bScoreChanged:       uint8; // true if the score in the leaderboard change, false if the existing score was better
    m_nGlobalRankNew:      s32; // the new global rank of the user in this leaderboard
    m_nGlobalRankPrevious: s32; // the previous global rank of the user in this leaderboard; 0 if the user had no existing entry in the leaderboard
}

NumberOfCurrentPlayers_t :: struct {
//     anon_enum_243 :: enum u32 {
        k_iCallback :: 1107;
//     }
    m_bSuccess: uint8; // 1 if the call was successful
    m_cPlayers: int32; // Number of players currently playing
}

//-----------------------------------------------------------------------------
// Purpose: Callback indicating that a user's stats have been unloaded.
//  Call RequestUserStats again to access stats for this user
//-----------------------------------------------------------------------------
UserStatsUnloaded_t :: struct {
//     anon_enum_244 :: enum u32 {
        k_iCallback :: 1108;
//     }
    m_steamIDUser: CSteamID; // User whose stats have been unloaded
}

//-----------------------------------------------------------------------------
// Purpose: Callback indicating that an achievement icon has been fetched
//-----------------------------------------------------------------------------
UserAchievementIconFetched_t :: struct {
//     anon_enum_245 :: enum u32 {
        k_iCallback :: 1109;
//     }

    m_nGameID:             CGameID; // Game this is for
    m_rgchAchievementName: [128] u8; // name of the achievement
    m_bAchieved:           bool; // Is the icon for the achieved or not achieved version?
    m_nIconHandle:         s32; // Handle to the image, which can be used in SteamUtils()->GetImageRGBA(), 0 means no image is set for the achievement
}

//-----------------------------------------------------------------------------
// Purpose: Callback indicating that global achievement percentages are fetched
//-----------------------------------------------------------------------------
GlobalAchievementPercentagesReady_t :: struct {
//     anon_enum_246 :: enum u32 {
        k_iCallback :: 1110;
//     }

    m_nGameID: uint64 #align 4; // Game this is for
    m_eResult: EResult; // Result of the operation
}

//-----------------------------------------------------------------------------
// Purpose: call result indicating UGC has been uploaded, returned as a result of SetLeaderboardUGC()
//-----------------------------------------------------------------------------
LeaderboardUGCSet_t :: struct {
//     anon_enum_247 :: enum u32 {
        k_iCallback :: 1111;
//     }
    m_eResult:           EResult; // The result of the operation
    m_hSteamLeaderboard: SteamLeaderboard_t #align 4; // the leaderboard handle that was
}

//-----------------------------------------------------------------------------
// Purpose: callback indicating that PS3 trophies have been installed
//-----------------------------------------------------------------------------
PS3TrophiesInstalled_t :: struct {
//     anon_enum_248 :: enum u32 {
        k_iCallback :: 1112;
//     }
    m_nGameID:             uint64 #align 4; // Game these stats are for
    m_eResult:             EResult; // The result of the operation
    m_ulRequiredDiskSpace: uint64 #align 4; // If m_eResult is k_EResultDiskFull, will contain the amount of space needed to install trophies
}

//-----------------------------------------------------------------------------
// Purpose: callback indicating global stats have been received.
//	Returned as a result of RequestGlobalStats()
//-----------------------------------------------------------------------------
GlobalStatsReceived_t :: struct {
//     anon_enum_249 :: enum u32 {
        k_iCallback :: 1112;
//     }
    m_nGameID: uint64 #align 4; // Game global stats were requested for
    m_eResult: EResult; // The result of the request
}

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
EGamepadTextInputMode :: enum u32 {
    EGamepadTextInputModeNormal   :: 0;
    EGamepadTextInputModePassword :: 1;

    k_EGamepadTextInputModeNormal   :: EGamepadTextInputModeNormal;
    k_EGamepadTextInputModePassword :: EGamepadTextInputModePassword;
}

// Controls number of allowed lines for the Big Picture gamepad text entry
EGamepadTextInputLineMode :: enum u32 {
    EGamepadTextInputLineModeSingleLine    :: 0;
    EGamepadTextInputLineModeMultipleLines :: 1;

    k_EGamepadTextInputLineModeSingleLine    :: EGamepadTextInputLineModeSingleLine;
    k_EGamepadTextInputLineModeMultipleLines :: EGamepadTextInputLineModeMultipleLines;
}

EFloatingGamepadTextInputMode :: enum u32 {
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
ETextFilteringContext :: enum u32 {
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


//-----------------------------------------------------------------------------
// Purpose: The country of the user changed
//-----------------------------------------------------------------------------
IPCountry_t :: struct {
//     anon_enum_251 :: enum u32 {
        k_iCallback :: 701;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// Purpose: Fired when running on a handheld PC or laptop with less than 10 minutes of battery is left, fires then every minute
//-----------------------------------------------------------------------------
LowBatteryPower_t :: struct {
//     anon_enum_252 :: enum u32 {
        k_iCallback :: 702;
//     }
    m_nMinutesBatteryLeft: uint8;
}

//-----------------------------------------------------------------------------
// Purpose: called when a SteamAsyncCall_t has completed (or failed)
//-----------------------------------------------------------------------------
SteamAPICallCompleted_t :: struct {
//     anon_enum_253 :: enum u32 {
        k_iCallback :: 703;
//     }
    m_hAsyncCall: SteamAPICall_t #align 4;
    m_iCallback:  s32;
    m_cubParam:   uint32;
}

//-----------------------------------------------------------------------------
// called when Steam wants to shutdown
//-----------------------------------------------------------------------------
SteamShutdown_t :: struct {
//     anon_enum_254 :: enum u32 {
        k_iCallback :: 704;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// results for CheckFileSignature
//-----------------------------------------------------------------------------
ECheckFileSignature :: enum u32 {
    ECheckFileSignatureInvalidSignature             :: 0;
    ECheckFileSignatureValidSignature               :: 1;
    ECheckFileSignatureFileNotFound                 :: 2;
    ECheckFileSignatureNoSignaturesFoundForThisApp  :: 3;
    ECheckFileSignatureNoSignaturesFoundForThisFile :: 4;

    k_ECheckFileSignatureInvalidSignature             :: ECheckFileSignatureInvalidSignature;
    k_ECheckFileSignatureValidSignature               :: ECheckFileSignatureValidSignature;
    k_ECheckFileSignatureFileNotFound                 :: ECheckFileSignatureFileNotFound;
    k_ECheckFileSignatureNoSignaturesFoundForThisApp  :: ECheckFileSignatureNoSignaturesFoundForThisApp;
    k_ECheckFileSignatureNoSignaturesFoundForThisFile :: ECheckFileSignatureNoSignaturesFoundForThisFile;
}

//-----------------------------------------------------------------------------
// callback for CheckFileSignature
//-----------------------------------------------------------------------------
CheckFileSignature_t :: struct {
//     anon_enum_255 :: enum u32 {
        k_iCallback :: 705;
//     }
    m_eCheckFileSignature: ECheckFileSignature;
}

//-----------------------------------------------------------------------------
// Full Screen gamepad text input has been closed
//-----------------------------------------------------------------------------
GamepadTextInputDismissed_t :: struct {
//     anon_enum_256 :: enum u32 {
        k_iCallback :: 714;
//     }
    m_bSubmitted:      bool; // true if user entered & accepted text (Call ISteamUtils::GetEnteredGamepadTextInput() for text), false if canceled input
    m_unSubmittedText: uint32;
    m_unAppID:         AppId_t;
}

// k_iSteamUtilsCallbacks + 15 through 35 are taken
AppResumingFromSuspend_t :: struct {
//     anon_enum_257 :: enum u32 {
        k_iCallback :: 736;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// The floating on-screen keyboard has been closed
//-----------------------------------------------------------------------------
FloatingGamepadTextInputDismissed_t :: struct {
//     anon_enum_258 :: enum u32 {
        k_iCallback :: 738;
//     }
    __empty_struct_padding: u8; // C++ makes empty structs have length 1
}

//-----------------------------------------------------------------------------
// The text filtering dictionary has changed
//-----------------------------------------------------------------------------
FilterTextDictionaryChanged_t :: struct {
//     anon_enum_259 :: enum u32 {
        k_iCallback :: 739;
//     }
    m_eLanguage: s32; // One of ELanguage, or k_LegallyRequiredFiltering
}

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


GetVideoURLResult_t :: struct {
//     anon_enum_260 :: enum u32 {
        k_iCallback :: 4611;
//     }
    m_eResult:      EResult;
    m_unVideoAppID: AppId_t;
    m_rgchURL:      [256] u8;
}

GetOPFSettingsResult_t :: struct {
//     anon_enum_261 :: enum u32 {
        k_iCallback :: 4624;
//     }
    m_eResult:      EResult;
    m_unVideoAppID: AppId_t;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------------//
//	Steam API setup & shutdown
//
//	These functions manage loading, initializing and shutdown of the steamclient.dll
//
//----------------------------------------------------------------------------------------------------------------------------------------------------------//
ESteamAPIInitResult :: enum u32 {
    OK              :: 0;
    FailedGeneric   :: 1;
    NoSteamClient   :: 2;
    VersionMismatch :: 3;

    k_ESteamAPIInitResult_OK              :: OK;
    k_ESteamAPIInitResult_FailedGeneric   :: FailedGeneric;
    k_ESteamAPIInitResult_NoSteamClient   :: NoSteamClient;
    k_ESteamAPIInitResult_VersionMismatch :: VersionMismatch;
}

// See "Initializing the Steamworks SDK" above for how to choose an init method.
// Same usage as SteamAPI_InitEx(), however does not verify ISteam* interfaces are
// supported by the user's client and is exported from the dll
SteamAPI_InitFlat :: (pOutErrMsg: *SteamErrMsg) -> ESteamAPIInitResult #foreign libsteam_api;

// SteamAPI_Shutdown should be called during process shutdown if possible.
SteamAPI_Shutdown :: () -> void #foreign libsteam_api;

// SteamAPI_RestartAppIfNecessary ensures that your executable was launched through Steam.
//
// Returns true if the current process should terminate. Steam is now re-launching your application.
//
// Returns false if no action needs to be taken. This means that your executable was started through
// the Steam client, or a steam_appid.txt file is present in your game's directory (for development).
// Your current process should continue if false is returned.
//
// NOTE: If you use the Steam DRM wrapper on your primary executable file, this check is unnecessary
// since the DRM wrapper will ensure that your application was launched properly through Steam.
SteamAPI_RestartAppIfNecessary :: (unOwnAppID: uint32) -> bool #foreign libsteam_api;

// Many Steam API functions allocate a small amount of thread-local memory for parameter storage.
// SteamAPI_ReleaseCurrentThreadMemory() will free API memory associated with the calling thread.
// This function is also called automatically by SteamAPI_RunCallbacks(), so a single-threaded
// program never needs to explicitly call this function.
SteamAPI_ReleaseCurrentThreadMemory :: () -> void #foreign libsteam_api;

// crash dump recording functions
SteamAPI_WriteMiniDump :: (uStructuredExceptionCode: uint32, pvExceptionInfo: *void, uBuildID: uint32) -> void #foreign libsteam_api;
SteamAPI_SetMiniDumpComment :: (pchMsg: *u8) -> void #foreign libsteam_api;

// SteamAPI_IsSteamRunning() returns true if Steam is currently running
SteamAPI_IsSteamRunning :: () -> bool #foreign libsteam_api;

// returns the filename path of the current running Steam process, used if you need to load an explicit steam dll by name.
// DEPRECATED - implementation is Windows only, and the path returned is a UTF-8 string which must be converted to UTF-16 for use with Win32 APIs
SteamAPI_GetSteamInstallPath :: () -> *u8 #foreign libsteam_api;

// sets whether or not Steam_RunCallbacks() should do a try {} catch (...) {} around calls to issuing callbacks
// This is ignored if you are using the manual callback dispatch method
SteamAPI_SetTryCatchCallbacks :: (bTryCatchCallbacks: bool) -> void #foreign libsteam_api;

/// Inform the API that you wish to use manual event dispatch.  This must be called after SteamAPI_Init, but before
/// you use any of the other manual dispatch functions below.
SteamAPI_ManualDispatch_Init :: () -> void #foreign libsteam_api;

/// Perform certain periodic actions that need to be performed.
SteamAPI_ManualDispatch_RunFrame :: (hSteamPipe: HSteamPipe) -> void #foreign libsteam_api;

/// Fetch the next pending callback on the given pipe, if any.  If a callback is available, true is returned
/// and the structure is populated.  In this case, you MUST call SteamAPI_ManualDispatch_FreeLastCallback
/// (after dispatching the callback) before calling SteamAPI_ManualDispatch_GetNextCallback again.
SteamAPI_ManualDispatch_GetNextCallback :: (hSteamPipe: HSteamPipe, pCallbackMsg: *CallbackMsg_t) -> bool #foreign libsteam_api;

/// You must call this after dispatching the callback, if SteamAPI_ManualDispatch_GetNextCallback returns true.
SteamAPI_ManualDispatch_FreeLastCallback :: (hSteamPipe: HSteamPipe) -> void #foreign libsteam_api;

/// Return the call result for the specified call on the specified pipe.  You really should
/// only call this in a handler for SteamAPICallCompleted_t callback.
SteamAPI_ManualDispatch_GetAPICallResult :: (hSteamPipe: HSteamPipe, hSteamAPICall: SteamAPICall_t, pCallback: *void, cubCallback: s32, iCallbackExpected: s32, pbFailed: *bool) -> bool #foreign libsteam_api;

// Internal implementation of SteamAPI_InitEx.  This is done in a way that checks
// all of the versions of interfaces from headers being compiled into this code.
SteamInternal_SteamAPI_Init :: (pszInternalCheckInterfaceVersions: *u8, pOutErrMsg: *SteamErrMsg) -> ESteamAPIInitResult #foreign libsteam_api;

uint64_steamid :: uint64;
uint64_gameid :: uint64;

// ISteamClient
SteamAPI_ISteamClient_CreateSteamPipe :: (self: *ISteamClient) -> HSteamPipe #foreign libsteam_api;
SteamAPI_ISteamClient_BReleaseSteamPipe :: (self: *ISteamClient, hSteamPipe: HSteamPipe) -> bool #foreign libsteam_api;
SteamAPI_ISteamClient_ConnectToGlobalUser :: (self: *ISteamClient, hSteamPipe: HSteamPipe) -> HSteamUser #foreign libsteam_api;
SteamAPI_ISteamClient_CreateLocalUser :: (self: *ISteamClient, phSteamPipe: *HSteamPipe, eAccountType: EAccountType) -> HSteamUser #foreign libsteam_api;
SteamAPI_ISteamClient_ReleaseUser :: (self: *ISteamClient, hSteamPipe: HSteamPipe, hUser: HSteamUser) -> void #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamUser :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUser #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamGameServer :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamGameServer #foreign libsteam_api;
SteamAPI_ISteamClient_SetLocalIPBinding :: (self: *ISteamClient, unIP: *SteamIPAddress_t, usPort: uint16) -> void #foreign libsteam_api;
SteamAPI_ISteamClient_SetLocalIPBinding :: (self: *ISteamClient, unIP: SteamIPAddress_t, usPort: uint16) #no_context {
    SteamAPI_ISteamClient_SetLocalIPBinding(self, *unIP, usPort);
}
SteamAPI_ISteamClient_GetISteamFriends :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamFriends #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamUtils :: (self: *ISteamClient, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUtils #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamMatchmaking :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMatchmaking #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamMatchmakingServers :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMatchmakingServers #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamGenericInterface :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *void #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamUserStats :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUserStats #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamGameServerStats :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamGameServerStats #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamApps :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamApps #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamNetworking :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamNetworking #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamRemoteStorage :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamRemoteStorage #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamScreenshots :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamScreenshots #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamGameSearch :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamGameSearch #foreign libsteam_api;
SteamAPI_ISteamClient_GetIPCCallCount :: (self: *ISteamClient) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamClient_SetWarningMessageHook :: (self: *ISteamClient, pFunction: SteamAPIWarningMessageHook_t) -> void #foreign libsteam_api;
SteamAPI_ISteamClient_BShutdownIfAllPipesClosed :: (self: *ISteamClient) -> bool #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamHTTP :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamHTTP #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamController :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamController #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamUGC :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamUGC #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamMusic :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMusic #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamMusicRemote :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamMusicRemote #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamHTMLSurface :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamHTMLSurface #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamInventory :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamInventory #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamVideo :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamVideo #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamParentalSettings :: (self: *ISteamClient, hSteamuser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamParentalSettings #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamInput :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamInput #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamParties :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamParties #foreign libsteam_api;
SteamAPI_ISteamClient_GetISteamRemotePlay :: (self: *ISteamClient, hSteamUser: HSteamUser, hSteamPipe: HSteamPipe, pchVersion: *u8) -> *ISteamRemotePlay #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamUser_v023 :: () -> *ISteamUser #foreign libsteam_api;

SteamAPI_ISteamUser_GetHSteamUser :: (self: *ISteamUser) -> HSteamUser #foreign libsteam_api;
SteamAPI_ISteamUser_BLoggedOn :: (self: *ISteamUser) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_GetSteamID :: (self: *ISteamUser) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamUser_InitiateGameConnection_DEPRECATED :: (self: *ISteamUser, pAuthBlob: *void, cbMaxAuthBlob: s32, steamIDGameServer: uint64_steamid, unIPServer: uint32, usPortServer: uint16, bSecure: bool) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUser_TerminateGameConnection_DEPRECATED :: (self: *ISteamUser, unIPServer: uint32, usPortServer: uint16) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_TrackAppUsageEvent :: (self: *ISteamUser, gameID: uint64_gameid, eAppUsageEvent: s32, pchExtraInfo: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_GetUserDataFolder :: (self: *ISteamUser, pchBuffer: *u8, cubBuffer: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_StartVoiceRecording :: (self: *ISteamUser) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_StopVoiceRecording :: (self: *ISteamUser) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_GetAvailableVoice :: (self: *ISteamUser, pcbCompressed: *uint32, pcbUncompressed_Deprecated: *uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: uint32) -> EVoiceResult #foreign libsteam_api;
SteamAPI_ISteamUser_GetVoice :: (self: *ISteamUser, bWantCompressed: bool, pDestBuffer: *void, cbDestBufferSize: uint32, nBytesWritten: *uint32, bWantUncompressed_Deprecated: bool, pUncompressedDestBuffer_Deprecated: *void, cbUncompressedDestBufferSize_Deprecated: uint32, nUncompressBytesWritten_Deprecated: *uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: uint32) -> EVoiceResult #foreign libsteam_api;
SteamAPI_ISteamUser_DecompressVoice :: (self: *ISteamUser, pCompressed: *void, cbCompressed: uint32, pDestBuffer: *void, cbDestBufferSize: uint32, nBytesWritten: *uint32, nDesiredSampleRate: uint32) -> EVoiceResult #foreign libsteam_api;
SteamAPI_ISteamUser_GetVoiceOptimalSampleRate :: (self: *ISteamUser) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUser_GetAuthSessionTicket :: (self: *ISteamUser, pTicket: *void, cbMaxTicket: s32, pcbTicket: *uint32, pSteamNetworkingIdentity: *SteamNetworkingIdentity) -> HAuthTicket #foreign libsteam_api;
SteamAPI_ISteamUser_GetAuthTicketForWebApi :: (self: *ISteamUser, pchIdentity: *u8) -> HAuthTicket #foreign libsteam_api;
SteamAPI_ISteamUser_BeginAuthSession :: (self: *ISteamUser, pAuthTicket: *void, cbAuthTicket: s32, steamID: uint64_steamid) -> EBeginAuthSessionResult #foreign libsteam_api;
SteamAPI_ISteamUser_EndAuthSession :: (self: *ISteamUser, steamID: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_CancelAuthTicket :: (self: *ISteamUser, hAuthTicket: HAuthTicket) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_UserHasLicenseForApp :: (self: *ISteamUser, steamID: uint64_steamid, appID: AppId_t) -> EUserHasLicenseForAppResult #foreign libsteam_api;
SteamAPI_ISteamUser_BIsBehindNAT :: (self: *ISteamUser) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_AdvertiseGame :: (self: *ISteamUser, steamIDGameServer: uint64_steamid, unIPServer: uint32, usPortServer: uint16) -> void #foreign libsteam_api;
SteamAPI_ISteamUser_RequestEncryptedAppTicket :: (self: *ISteamUser, pDataToInclude: *void, cbDataToInclude: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUser_GetEncryptedAppTicket :: (self: *ISteamUser, pTicket: *void, cbMaxTicket: s32, pcbTicket: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_GetGameBadgeLevel :: (self: *ISteamUser, nSeries: s32, bFoil: bool) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUser_GetPlayerSteamLevel :: (self: *ISteamUser) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUser_RequestStoreAuthURL :: (self: *ISteamUser, pchRedirectURL: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUser_BIsPhoneVerified :: (self: *ISteamUser) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_BIsTwoFactorEnabled :: (self: *ISteamUser) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_BIsPhoneIdentifying :: (self: *ISteamUser) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_BIsPhoneRequiringVerification :: (self: *ISteamUser) -> bool #foreign libsteam_api;
SteamAPI_ISteamUser_GetMarketEligibility :: (self: *ISteamUser) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUser_GetDurationControl :: (self: *ISteamUser) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUser_BSetDurationControlOnlineState :: (self: *ISteamUser, eNewState: EDurationControlOnlineState) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamFriends_v017 :: () -> *ISteamFriends #foreign libsteam_api;

SteamAPI_ISteamFriends_GetPersonaName :: (self: *ISteamFriends) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_SetPersonaName :: (self: *ISteamFriends, pchPersonaName: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_GetPersonaState :: (self: *ISteamFriends) -> EPersonaState #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendCount :: (self: *ISteamFriends, iFriendFlags: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendByIndex :: (self: *ISteamFriends, iFriend: s32, iFriendFlags: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendRelationship :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> EFriendRelationship #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendPersonaState :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> EPersonaState #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendPersonaName :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendGamePlayed :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pFriendGameInfo: *FriendGameInfo_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendPersonaNameHistory :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iPersonaName: s32) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendSteamLevel :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetPlayerNickname :: (self: *ISteamFriends, steamIDPlayer: uint64_steamid) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendsGroupCount :: (self: *ISteamFriends) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex :: (self: *ISteamFriends, iFG: s32) -> FriendsGroupID_t #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendsGroupName :: (self: *ISteamFriends, friendsGroupID: FriendsGroupID_t) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendsGroupMembersCount :: (self: *ISteamFriends, friendsGroupID: FriendsGroupID_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendsGroupMembersList :: (self: *ISteamFriends, friendsGroupID: FriendsGroupID_t, pOutSteamIDMembers: *CSteamID, nMembersCount: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_HasFriend :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iFriendFlags: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanCount :: (self: *ISteamFriends) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanByIndex :: (self: *ISteamFriends, iClan: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanName :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanTag :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanActivityCounts :: (self: *ISteamFriends, steamIDClan: uint64_steamid, pnOnline: *s32, pnInGame: *s32, pnChatting: *s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_DownloadClanActivityCounts :: (self: *ISteamFriends, psteamIDClans: *CSteamID, cClansToRequest: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendCountFromSource :: (self: *ISteamFriends, steamIDSource: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendFromSourceByIndex :: (self: *ISteamFriends, steamIDSource: uint64_steamid, iFriend: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_IsUserInSource :: (self: *ISteamFriends, steamIDUser: uint64_steamid, steamIDSource: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_SetInGameVoiceSpeaking :: (self: *ISteamFriends, steamIDUser: uint64_steamid, bSpeaking: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlay :: (self: *ISteamFriends, pchDialog: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlayToUser :: (self: *ISteamFriends, pchDialog: *u8, steamID: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage :: (self: *ISteamFriends, pchURL: *u8, eMode: EActivateGameOverlayToWebPageMode) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlayToStore :: (self: *ISteamFriends, nAppID: AppId_t, eFlag: EOverlayToStoreFlag) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_SetPlayedWith :: (self: *ISteamFriends, steamIDUserPlayedWith: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog :: (self: *ISteamFriends, steamIDLobby: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_GetSmallFriendAvatar :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetMediumFriendAvatar :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetLargeFriendAvatar :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_RequestUserInformation :: (self: *ISteamFriends, steamIDUser: uint64_steamid, bRequireNameOnly: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_RequestClanOfficerList :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanOwner :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanOfficerCount :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanOfficerByIndex :: (self: *ISteamFriends, steamIDClan: uint64_steamid, iOfficer: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_GetUserRestrictions :: (self: *ISteamFriends) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamFriends_SetRichPresence :: (self: *ISteamFriends, pchKey: *u8, pchValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_ClearRichPresence :: (self: *ISteamFriends) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendRichPresence :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pchKey: *u8) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iKey: s32) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_RequestFriendRichPresence :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_InviteUserToGame :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pchConnectString: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetCoplayFriendCount :: (self: *ISteamFriends) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetCoplayFriend :: (self: *ISteamFriends, iCoplayFriend: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendCoplayTime :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendCoplayGame :: (self: *ISteamFriends, steamIDFriend: uint64_steamid) -> AppId_t #foreign libsteam_api;
SteamAPI_ISteamFriends_JoinClanChatRoom :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_LeaveClanChatRoom :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanChatMemberCount :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetChatMemberByIndex :: (self: *ISteamFriends, steamIDClan: uint64_steamid, iUser: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamFriends_SendClanChatMessage :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid, pchText: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetClanChatMessage :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid, iMessage: s32, prgchText: *void, cchTextMax: s32, peChatEntryType: *EChatEntryType, psteamidChatter: *CSteamID) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_IsClanChatAdmin :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid, steamIDUser: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_OpenClanChatWindowInSteam :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_CloseClanChatWindowInSteam :: (self: *ISteamFriends, steamIDClanChat: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_SetListenForFriendsMessages :: (self: *ISteamFriends, bInterceptEnabled: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_ReplyToFriendMessage :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, pchMsgToSend: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFriendMessage :: (self: *ISteamFriends, steamIDFriend: uint64_steamid, iMessageID: s32, pvData: *void, cubData: s32, peChatEntryType: *EChatEntryType) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetFollowerCount :: (self: *ISteamFriends, steamID: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_IsFollowing :: (self: *ISteamFriends, steamID: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_EnumerateFollowingList :: (self: *ISteamFriends, unStartIndex: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_IsClanPublic :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_IsClanOfficialGameGroup :: (self: *ISteamFriends, steamIDClan: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages :: (self: *ISteamFriends) -> s32 #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog :: (self: *ISteamFriends, steamIDLobby: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser :: (self: *ISteamFriends, pchProtocol: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString :: (self: *ISteamFriends, pchConnectString: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamFriends_RequestEquippedProfileItems :: (self: *ISteamFriends, steamID: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamFriends_BHasEquippedProfileItem :: (self: *ISteamFriends, steamID: uint64_steamid, itemType: ECommunityProfileItemType) -> bool #foreign libsteam_api;
SteamAPI_ISteamFriends_GetProfileItemPropertyString :: (self: *ISteamFriends, steamID: uint64_steamid, itemType: ECommunityProfileItemType, prop: ECommunityProfileItemProperty) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamFriends_GetProfileItemPropertyUint :: (self: *ISteamFriends, steamID: uint64_steamid, itemType: ECommunityProfileItemType, prop: ECommunityProfileItemProperty) -> uint32 #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamUtils_v010 :: () -> *ISteamUtils #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerUtils_v010 :: () -> *ISteamUtils #foreign libsteam_api;

SteamAPI_ISteamUtils_GetSecondsSinceAppActive :: (self: *ISteamUtils) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetSecondsSinceComputerActive :: (self: *ISteamUtils) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetConnectedUniverse :: (self: *ISteamUtils) -> EUniverse #foreign libsteam_api;
SteamAPI_ISteamUtils_GetServerRealTime :: (self: *ISteamUtils) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetIPCountry :: (self: *ISteamUtils) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetImageSize :: (self: *ISteamUtils, iImage: s32, pnWidth: *uint32, pnHeight: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_GetImageRGBA :: (self: *ISteamUtils, iImage: s32, pubDest: *uint8, nDestBufferSize: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_GetCurrentBatteryPower :: (self: *ISteamUtils) -> uint8 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetAppID :: (self: *ISteamUtils) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUtils_SetOverlayNotificationPosition :: (self: *ISteamUtils, eNotificationPosition: ENotificationPosition) -> void #foreign libsteam_api;
SteamAPI_ISteamUtils_IsAPICallCompleted :: (self: *ISteamUtils, hSteamAPICall: SteamAPICall_t, pbFailed: *bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_GetAPICallFailureReason :: (self: *ISteamUtils, hSteamAPICall: SteamAPICall_t) -> ESteamAPICallFailure #foreign libsteam_api;
SteamAPI_ISteamUtils_GetAPICallResult :: (self: *ISteamUtils, hSteamAPICall: SteamAPICall_t, pCallback: *void, cubCallback: s32, iCallbackExpected: s32, pbFailed: *bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_GetIPCCallCount :: (self: *ISteamUtils) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUtils_SetWarningMessageHook :: (self: *ISteamUtils, pFunction: SteamAPIWarningMessageHook_t) -> void #foreign libsteam_api;
SteamAPI_ISteamUtils_IsOverlayEnabled :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_BOverlayNeedsPresent :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_CheckFileSignature :: (self: *ISteamUtils, szFileName: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUtils_ShowGamepadTextInput :: (self: *ISteamUtils, eInputMode: EGamepadTextInputMode, eLineInputMode: EGamepadTextInputLineMode, pchDescription: *u8, unCharMax: uint32, pchExistingText: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_GetEnteredGamepadTextLength :: (self: *ISteamUtils) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetEnteredGamepadTextInput :: (self: *ISteamUtils, pchText: *u8, cchText: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_GetSteamUILanguage :: (self: *ISteamUtils) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamUtils_IsSteamRunningInVR :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_SetOverlayNotificationInset :: (self: *ISteamUtils, nHorizontalInset: s32, nVerticalInset: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamUtils_IsSteamInBigPictureMode :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_StartVRDashboard :: (self: *ISteamUtils) -> void #foreign libsteam_api;
SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled :: (self: *ISteamUtils, bEnabled: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamUtils_IsSteamChinaLauncher :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_InitFilterText :: (self: *ISteamUtils, unFilterOptions: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_FilterText :: (self: *ISteamUtils, eContext: ETextFilteringContext, sourceSteamID: uint64_steamid, pchInputMessage: *u8, pchOutFilteredText: *u8, nByteSizeOutFilteredText: uint32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUtils_GetIPv6ConnectivityState :: (self: *ISteamUtils, eProtocol: ESteamIPv6ConnectivityProtocol) -> ESteamIPv6ConnectivityState #foreign libsteam_api;
SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput :: (self: *ISteamUtils, eKeyboardMode: EFloatingGamepadTextInputMode, nTextFieldXPosition: s32, nTextFieldYPosition: s32, nTextFieldWidth: s32, nTextFieldHeight: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_SetGameLauncherMode :: (self: *ISteamUtils, bLauncherMode: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput :: (self: *ISteamUtils) -> bool #foreign libsteam_api;
SteamAPI_ISteamUtils_DismissGamepadTextInput :: (self: *ISteamUtils) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamMatchmaking_v009 :: () -> *ISteamMatchmaking #foreign libsteam_api;

SteamAPI_ISteamMatchmaking_GetFavoriteGameCount :: (self: *ISteamMatchmaking) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetFavoriteGame :: (self: *ISteamMatchmaking, iGame: s32, pnAppID: *AppId_t, pnIP: *uint32, pnConnPort: *uint16, pnQueryPort: *uint16, punFlags: *uint32, pRTime32LastPlayedOnServer: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddFavoriteGame :: (self: *ISteamMatchmaking, nAppID: AppId_t, nIP: uint32, nConnPort: uint16, nQueryPort: uint16, unFlags: uint32, rTime32LastPlayedOnServer: uint32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_RemoveFavoriteGame :: (self: *ISteamMatchmaking, nAppID: AppId_t, nIP: uint32, nConnPort: uint16, nQueryPort: uint16, unFlags: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_RequestLobbyList :: (self: *ISteamMatchmaking) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter :: (self: *ISteamMatchmaking, pchKeyToMatch: *u8, pchValueToMatch: *u8, eComparisonType: ELobbyComparison) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter :: (self: *ISteamMatchmaking, pchKeyToMatch: *u8, nValueToMatch: s32, eComparisonType: ELobbyComparison) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter :: (self: *ISteamMatchmaking, pchKeyToMatch: *u8, nValueToBeCloseTo: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable :: (self: *ISteamMatchmaking, nSlotsAvailable: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter :: (self: *ISteamMatchmaking, eLobbyDistanceFilter: ELobbyDistanceFilter) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter :: (self: *ISteamMatchmaking, cMaxResults: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyByIndex :: (self: *ISteamMatchmaking, iLobby: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_CreateLobby :: (self: *ISteamMatchmaking, eLobbyType: ELobbyType, cMaxMembers: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_JoinLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_LeaveLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_InviteUserToLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDInvitee: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetNumLobbyMembers :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, iMember: s32) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8, pchValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyDataCount :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, iLobbyData: s32, pchKey: *u8, cchKeyBufferSize: s32, pchValue: *u8, cchValueBufferSize: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_DeleteLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyMemberData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDUser: uint64_steamid, pchKey: *u8) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyMemberData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pchKey: *u8, pchValue: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SendLobbyChatMsg :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, pvMsgBody: *void, cubMsgBody: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyChatEntry :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, iChatID: s32, pSteamIDUser: *CSteamID, pvData: *void, cubData: s32, peChatEntryType: *EChatEntryType) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_RequestLobbyData :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyGameServer :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, unGameServerIP: uint32, unGameServerPort: uint16, steamIDGameServer: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyGameServer :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, punGameServerIP: *uint32, punGameServerPort: *uint16, psteamIDGameServer: *CSteamID) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, cMaxMembers: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyType :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, eLobbyType: ELobbyType) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyJoinable :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, bLobbyJoinable: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_GetLobbyOwner :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLobbyOwner :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDNewOwner: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmaking_SetLinkedLobby :: (self: *ISteamMatchmaking, steamIDLobby: uint64_steamid, steamIDLobbyDependent: uint64_steamid) -> bool #foreign libsteam_api;

// ISteamMatchmakingServerListResponse
SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded :: (self: *ISteamMatchmakingServerListResponse, hRequest: HServerListRequest, iServer: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond :: (self: *ISteamMatchmakingServerListResponse, hRequest: HServerListRequest, iServer: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete :: (self: *ISteamMatchmakingServerListResponse, hRequest: HServerListRequest, response: EMatchMakingServerResponse) -> void #foreign libsteam_api;

// ISteamMatchmakingPingResponse
SteamAPI_ISteamMatchmakingPingResponse_ServerResponded :: (self: *ISteamMatchmakingPingResponse, server: *gameserveritem_t) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond :: (self: *ISteamMatchmakingPingResponse) -> void #foreign libsteam_api;

// ISteamMatchmakingPlayersResponse
SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList :: (self: *ISteamMatchmakingPlayersResponse, pchName: *u8, nScore: s32, flTimePlayed: float) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond :: (self: *ISteamMatchmakingPlayersResponse) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete :: (self: *ISteamMatchmakingPlayersResponse) -> void #foreign libsteam_api;

// ISteamMatchmakingRulesResponse
SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded :: (self: *ISteamMatchmakingRulesResponse, pchRule: *u8, pchValue: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond :: (self: *ISteamMatchmakingRulesResponse) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete :: (self: *ISteamMatchmakingRulesResponse) -> void #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamMatchmakingServers_v002 :: () -> *ISteamMatchmakingServers #foreign libsteam_api;

SteamAPI_ISteamMatchmakingServers_RequestInternetServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RequestLANServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList :: (self: *ISteamMatchmakingServers, iApp: AppId_t, ppchFilters: **MatchMakingKeyValuePair_t, nFilters: uint32, pRequestServersResponse: *ISteamMatchmakingServerListResponse) -> HServerListRequest #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_ReleaseRequest :: (self: *ISteamMatchmakingServers, hServerListRequest: HServerListRequest) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_GetServerDetails :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest, iServer: s32) -> *gameserveritem_t #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_CancelQuery :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RefreshQuery :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_IsRefreshing :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> bool #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_GetServerCount :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest) -> s32 #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_RefreshServer :: (self: *ISteamMatchmakingServers, hRequest: HServerListRequest, iServer: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_PingServer :: (self: *ISteamMatchmakingServers, unIP: uint32, usPort: uint16, pRequestServersResponse: *ISteamMatchmakingPingResponse) -> HServerQuery #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_PlayerDetails :: (self: *ISteamMatchmakingServers, unIP: uint32, usPort: uint16, pRequestServersResponse: *ISteamMatchmakingPlayersResponse) -> HServerQuery #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_ServerRules :: (self: *ISteamMatchmakingServers, unIP: uint32, usPort: uint16, pRequestServersResponse: *ISteamMatchmakingRulesResponse) -> HServerQuery #foreign libsteam_api;
SteamAPI_ISteamMatchmakingServers_CancelServerQuery :: (self: *ISteamMatchmakingServers, hServerQuery: HServerQuery) -> void #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameSearch_v001 :: () -> *ISteamGameSearch #foreign libsteam_api;

SteamAPI_ISteamGameSearch_AddGameSearchParams :: (self: *ISteamGameSearch, pchKeyToFind: *u8, pchValuesToFind: *u8) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_SearchForGameWithLobby :: (self: *ISteamGameSearch, steamIDLobby: uint64_steamid, nPlayerMin: s32, nPlayerMax: s32) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_SearchForGameSolo :: (self: *ISteamGameSearch, nPlayerMin: s32, nPlayerMax: s32) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_AcceptGame :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_DeclineGame :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_RetrieveConnectionDetails :: (self: *ISteamGameSearch, steamIDHost: uint64_steamid, pchConnectionDetails: *u8, cubConnectionDetails: s32) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_EndGameSearch :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_SetGameHostParams :: (self: *ISteamGameSearch, pchKey: *u8, pchValue: *u8) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_SetConnectionDetails :: (self: *ISteamGameSearch, pchConnectionDetails: *u8, cubConnectionDetails: s32) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_RequestPlayersForGame :: (self: *ISteamGameSearch, nPlayerMin: s32, nPlayerMax: s32, nMaxTeamSize: s32) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_HostConfirmGameStart :: (self: *ISteamGameSearch, ullUniqueGameID: uint64) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame :: (self: *ISteamGameSearch) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_SubmitPlayerResult :: (self: *ISteamGameSearch, ullUniqueGameID: uint64, steamIDPlayer: uint64_steamid, EPlayerResult: EPlayerResult_t) -> EGameSearchErrorCode_t #foreign libsteam_api;
SteamAPI_ISteamGameSearch_EndGame :: (self: *ISteamGameSearch, ullUniqueGameID: uint64) -> EGameSearchErrorCode_t #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamParties_v002 :: () -> *ISteamParties #foreign libsteam_api;

SteamAPI_ISteamParties_GetNumActiveBeacons :: (self: *ISteamParties) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamParties_GetBeaconByIndex :: (self: *ISteamParties, unIndex: uint32) -> PartyBeaconID_t #foreign libsteam_api;
SteamAPI_ISteamParties_GetBeaconDetails :: (self: *ISteamParties, ulBeaconID: PartyBeaconID_t, pSteamIDBeaconOwner: *CSteamID, pLocation: *SteamPartyBeaconLocation_t, pchMetadata: *u8, cchMetadata: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamParties_JoinParty :: (self: *ISteamParties, ulBeaconID: PartyBeaconID_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamParties_GetNumAvailableBeaconLocations :: (self: *ISteamParties, puNumLocations: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamParties_GetAvailableBeaconLocations :: (self: *ISteamParties, pLocationList: *SteamPartyBeaconLocation_t, uMaxNumLocations: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamParties_CreateBeacon :: (self: *ISteamParties, unOpenSlots: uint32, pBeaconLocation: *SteamPartyBeaconLocation_t, pchConnectString: *u8, pchMetadata: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamParties_OnReservationCompleted :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t, steamIDUser: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamParties_CancelReservation :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t, steamIDUser: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamParties_ChangeNumOpenSlots :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t, unOpenSlots: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamParties_DestroyBeacon :: (self: *ISteamParties, ulBeacon: PartyBeaconID_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamParties_GetBeaconLocationData :: (self: *ISteamParties, BeaconLocation: SteamPartyBeaconLocation_t, eData: ESteamPartyBeaconLocationData, pchDataStringOut: *u8, cchDataStringOut: s32) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamRemoteStorage_v016 :: () -> *ISteamRemoteStorage #foreign libsteam_api;

SteamAPI_ISteamRemoteStorage_FileWrite :: (self: *ISteamRemoteStorage, pchFile: *u8, pvData: *void, cubData: int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileRead :: (self: *ISteamRemoteStorage, pchFile: *u8, pvData: *void, cubDataToRead: int32) -> int32 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileWriteAsync :: (self: *ISteamRemoteStorage, pchFile: *u8, pvData: *void, cubData: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileReadAsync :: (self: *ISteamRemoteStorage, pchFile: *u8, nOffset: uint32, cubToRead: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete :: (self: *ISteamRemoteStorage, hReadCall: SteamAPICall_t, pvBuffer: *void, cubToRead: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileForget :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileDelete :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileShare :: (self: *ISteamRemoteStorage, pchFile: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_SetSyncPlatforms :: (self: *ISteamRemoteStorage, pchFile: *u8, eRemoteStoragePlatform: ERemoteStoragePlatform) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen :: (self: *ISteamRemoteStorage, pchFile: *u8) -> UGCFileWriteStreamHandle_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk :: (self: *ISteamRemoteStorage, writeHandle: UGCFileWriteStreamHandle_t, pvData: *void, cubData: int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileWriteStreamClose :: (self: *ISteamRemoteStorage, writeHandle: UGCFileWriteStreamHandle_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel :: (self: *ISteamRemoteStorage, writeHandle: UGCFileWriteStreamHandle_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FileExists :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_FilePersisted :: (self: *ISteamRemoteStorage, pchFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetFileSize :: (self: *ISteamRemoteStorage, pchFile: *u8) -> int32 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetFileTimestamp :: (self: *ISteamRemoteStorage, pchFile: *u8) -> int64 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetSyncPlatforms :: (self: *ISteamRemoteStorage, pchFile: *u8) -> ERemoteStoragePlatform #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetFileCount :: (self: *ISteamRemoteStorage) -> int32 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetFileNameAndSize :: (self: *ISteamRemoteStorage, iFile: s32, pnFileSizeInBytes: *int32) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetQuota :: (self: *ISteamRemoteStorage, pnTotalBytes: *uint64, puAvailableBytes: *uint64) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount :: (self: *ISteamRemoteStorage) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp :: (self: *ISteamRemoteStorage) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp :: (self: *ISteamRemoteStorage, bEnabled: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UGCDownload :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, unPriority: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pnBytesDownloaded: *int32, pnBytesExpected: *int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetUGCDetails :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pnAppID: *AppId_t, ppchName: **u8, pnFileSizeInBytes: *int32, pSteamIDOwner: *CSteamID) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UGCRead :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pvData: *void, cubDataToRead: int32, cOffset: uint32, eAction: EUGCReadAction) -> int32 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetCachedUGCCount :: (self: *ISteamRemoteStorage) -> int32 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle :: (self: *ISteamRemoteStorage, iCachedContent: int32) -> UGCHandle_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_PublishWorkshopFile :: (self: *ISteamRemoteStorage, pchFile: *u8, pchPreviewFile: *u8, nConsumerAppId: AppId_t, pchTitle: *u8, pchDescription: *u8, eVisibility: ERemoteStoragePublishedFileVisibility, pTags: *SteamParamStringArray_t, eWorkshopFileType: EWorkshopFileType) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> PublishedFileUpdateHandle_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchPreviewFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchTitle: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchDescription: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, eVisibility: ERemoteStoragePublishedFileVisibility) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pTags: *SteamParamStringArray_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t, unMaxSecondsOld: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_DeletePublishedFile :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles :: (self: *ISteamRemoteStorage, unStartIndex: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_SubscribePublishedFile :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles :: (self: *ISteamRemoteStorage, unStartIndex: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription :: (self: *ISteamRemoteStorage, updateHandle: PublishedFileUpdateHandle_t, pchChangeDescription: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t, bVoteUp: bool) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles :: (self: *ISteamRemoteStorage, steamId: uint64_steamid, unStartIndex: uint32, pRequiredTags: *SteamParamStringArray_t, pExcludedTags: *SteamParamStringArray_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_PublishVideo :: (self: *ISteamRemoteStorage, eVideoProvider: EWorkshopVideoProvider, pchVideoAccount: *u8, pchVideoIdentifier: *u8, pchPreviewFile: *u8, nConsumerAppId: AppId_t, pchTitle: *u8, pchDescription: *u8, eVisibility: ERemoteStoragePublishedFileVisibility, pTags: *SteamParamStringArray_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction :: (self: *ISteamRemoteStorage, unPublishedFileId: PublishedFileId_t, eAction: EWorkshopFileAction) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction :: (self: *ISteamRemoteStorage, eAction: EWorkshopFileAction, unStartIndex: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles :: (self: *ISteamRemoteStorage, eEnumerationType: EWorkshopEnumerationType, unStartIndex: uint32, unCount: uint32, unDays: uint32, pTags: *SteamParamStringArray_t, pUserTags: *SteamParamStringArray_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation :: (self: *ISteamRemoteStorage, hContent: UGCHandle_t, pchLocation: *u8, unPriority: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount :: (self: *ISteamRemoteStorage) -> int32 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_GetLocalFileChange :: (self: *ISteamRemoteStorage, iFile: s32, pEChangeType: *ERemoteStorageLocalFileChange, pEFilePathType: *ERemoteStorageFilePathType) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch :: (self: *ISteamRemoteStorage) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemoteStorage_EndFileWriteBatch :: (self: *ISteamRemoteStorage) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamUserStats_v012 :: () -> *ISteamUserStats #foreign libsteam_api;

SteamAPI_ISteamUserStats_RequestCurrentStats :: (self: *ISteamUserStats) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetStatInt32 :: (self: *ISteamUserStats, pchName: *u8, pData: *int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetStatFloat :: (self: *ISteamUserStats, pchName: *u8, pData: *float) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_SetStatInt32 :: (self: *ISteamUserStats, pchName: *u8, nData: int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_SetStatFloat :: (self: *ISteamUserStats, pchName: *u8, fData: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_UpdateAvgRateStat :: (self: *ISteamUserStats, pchName: *u8, flCountThisSession: float, dSessionLength: float64) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievement :: (self: *ISteamUserStats, pchName: *u8, pbAchieved: *bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_SetAchievement :: (self: *ISteamUserStats, pchName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_ClearAchievement :: (self: *ISteamUserStats, pchName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime :: (self: *ISteamUserStats, pchName: *u8, pbAchieved: *bool, punUnlockTime: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_StoreStats :: (self: *ISteamUserStats) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementIcon :: (self: *ISteamUserStats, pchName: *u8) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute :: (self: *ISteamUserStats, pchName: *u8, pchKey: *u8) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamUserStats_IndicateAchievementProgress :: (self: *ISteamUserStats, pchName: *u8, nCurProgress: uint32, nMaxProgress: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetNumAchievements :: (self: *ISteamUserStats) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementName :: (self: *ISteamUserStats, iAchievement: uint32) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamUserStats_RequestUserStats :: (self: *ISteamUserStats, steamIDUser: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetUserStatInt32 :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetUserStatFloat :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *float) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetUserAchievement :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pbAchieved: *bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime :: (self: *ISteamUserStats, steamIDUser: uint64_steamid, pchName: *u8, pbAchieved: *bool, punUnlockTime: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_ResetAllStats :: (self: *ISteamUserStats, bAchievementsToo: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_FindOrCreateLeaderboard :: (self: *ISteamUserStats, pchLeaderboardName: *u8, eLeaderboardSortMethod: ELeaderboardSortMethod, eLeaderboardDisplayType: ELeaderboardDisplayType) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_FindLeaderboard :: (self: *ISteamUserStats, pchLeaderboardName: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetLeaderboardName :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetLeaderboardEntryCount :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetLeaderboardSortMethod :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> ELeaderboardSortMethod #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetLeaderboardDisplayType :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t) -> ELeaderboardDisplayType #foreign libsteam_api;
SteamAPI_ISteamUserStats_DownloadLeaderboardEntries :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, eLeaderboardDataRequest: ELeaderboardDataRequest, nRangeStart: s32, nRangeEnd: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, prgUsers: *CSteamID, cUsers: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry :: (self: *ISteamUserStats, hSteamLeaderboardEntries: SteamLeaderboardEntries_t, index: s32, pLeaderboardEntry: *LeaderboardEntry_t, pDetails: *int32, cDetailsMax: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_UploadLeaderboardScore :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, eLeaderboardUploadScoreMethod: ELeaderboardUploadScoreMethod, nScore: int32, pScoreDetails: *int32, cScoreDetailsCount: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_AttachLeaderboardUGC :: (self: *ISteamUserStats, hSteamLeaderboard: SteamLeaderboard_t, hUGC: UGCHandle_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers :: (self: *ISteamUserStats) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages :: (self: *ISteamUserStats) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo :: (self: *ISteamUserStats, pchName: *u8, unNameBufLen: uint32, pflPercent: *float, pbAchieved: *bool) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo :: (self: *ISteamUserStats, iIteratorPrevious: s32, pchName: *u8, unNameBufLen: uint32, pflPercent: *float, pbAchieved: *bool) -> s32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementAchievedPercent :: (self: *ISteamUserStats, pchName: *u8, pflPercent: *float) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_RequestGlobalStats :: (self: *ISteamUserStats, nHistoryDays: s32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetGlobalStatInt64 :: (self: *ISteamUserStats, pchStatName: *u8, pData: *int64) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetGlobalStatDouble :: (self: *ISteamUserStats, pchStatName: *u8, pData: *float64) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64 :: (self: *ISteamUserStats, pchStatName: *u8, pData: *int64, cubData: uint32) -> int32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble :: (self: *ISteamUserStats, pchStatName: *u8, pData: *float64, cubData: uint32) -> int32 #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32 :: (self: *ISteamUserStats, pchName: *u8, pnMinProgress: *int32, pnMaxProgress: *int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat :: (self: *ISteamUserStats, pchName: *u8, pfMinProgress: *float, pfMaxProgress: *float) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamApps_v008 :: () -> *ISteamApps #foreign libsteam_api;

SteamAPI_ISteamApps_BIsSubscribed :: (self: *ISteamApps) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_BIsLowViolence :: (self: *ISteamApps) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_BIsCybercafe :: (self: *ISteamApps) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_BIsVACBanned :: (self: *ISteamApps) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetCurrentGameLanguage :: (self: *ISteamApps) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamApps_GetAvailableGameLanguages :: (self: *ISteamApps) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamApps_BIsSubscribedApp :: (self: *ISteamApps, appID: AppId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_BIsDlcInstalled :: (self: *ISteamApps, appID: AppId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime :: (self: *ISteamApps, nAppID: AppId_t) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend :: (self: *ISteamApps) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetDLCCount :: (self: *ISteamApps) -> s32 #foreign libsteam_api;
SteamAPI_ISteamApps_BGetDLCDataByIndex :: (self: *ISteamApps, iDLC: s32, pAppID: *AppId_t, pbAvailable: *bool, pchName: *u8, cchNameBufferSize: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_InstallDLC :: (self: *ISteamApps, nAppID: AppId_t) -> void #foreign libsteam_api;
SteamAPI_ISteamApps_UninstallDLC :: (self: *ISteamApps, nAppID: AppId_t) -> void #foreign libsteam_api;
SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey :: (self: *ISteamApps, nAppID: AppId_t) -> void #foreign libsteam_api;
SteamAPI_ISteamApps_GetCurrentBetaName :: (self: *ISteamApps, pchName: *u8, cchNameBufferSize: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_MarkContentCorrupt :: (self: *ISteamApps, bMissingFilesOnly: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetInstalledDepots :: (self: *ISteamApps, appID: AppId_t, pvecDepots: *DepotId_t, cMaxDepots: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamApps_GetAppInstallDir :: (self: *ISteamApps, appID: AppId_t, pchFolder: *u8, cchFolderBufferSize: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamApps_BIsAppInstalled :: (self: *ISteamApps, appID: AppId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetAppOwner :: (self: *ISteamApps) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamApps_GetLaunchQueryParam :: (self: *ISteamApps, pchKey: *u8) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamApps_GetDlcDownloadProgress :: (self: *ISteamApps, nAppID: AppId_t, punBytesDownloaded: *uint64, punBytesTotal: *uint64) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetAppBuildId :: (self: *ISteamApps) -> s32 #foreign libsteam_api;
SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys :: (self: *ISteamApps) -> void #foreign libsteam_api;
SteamAPI_ISteamApps_GetFileDetails :: (self: *ISteamApps, pszFileName: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamApps_GetLaunchCommandLine :: (self: *ISteamApps, pszCommandLine: *u8, cubCommandLine: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing :: (self: *ISteamApps) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_BIsTimedTrial :: (self: *ISteamApps, punSecondsAllowed: *uint32, punSecondsPlayed: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_SetDlcContext :: (self: *ISteamApps, nAppID: AppId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_GetNumBetas :: (self: *ISteamApps, unAppID: AppId_t, pnAvailable: *s32, pnPrivate: *s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamApps_GetBetaInfo :: (self: *ISteamApps, unAppID: AppId_t, iBetaIndex: s32, punFlags: *uint32, punBuildID: *uint32, pchBetaName: *u8, cchBetaName: s32, pchDescription: *u8, cchDescription: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamApps_SetActiveBeta :: (self: *ISteamApps, unAppID: AppId_t, pchBetaName: *u8) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamNetworking_v006 :: () -> *ISteamNetworking #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerNetworking_v006 :: () -> *ISteamNetworking #foreign libsteam_api;

SteamAPI_ISteamNetworking_SendP2PPacket :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid, pubData: *void, cubData: uint32, eP2PSendType: EP2PSend, nChannel: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_IsP2PPacketAvailable :: (self: *ISteamNetworking, pcubMsgSize: *uint32, nChannel: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_ReadP2PPacket :: (self: *ISteamNetworking, pubDest: *void, cubDest: uint32, pcubMsgSize: *uint32, psteamIDRemote: *CSteamID, nChannel: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_CloseP2PSessionWithUser :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_CloseP2PChannelWithUser :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid, nChannel: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_GetP2PSessionState :: (self: *ISteamNetworking, steamIDRemote: uint64_steamid, pConnectionState: *P2PSessionState_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_AllowP2PPacketRelay :: (self: *ISteamNetworking, bAllow: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_CreateListenSocket :: (self: *ISteamNetworking, nVirtualP2PPort: s32, nIP: SteamIPAddress_t, nPort: uint16, bAllowUseOfPacketRelay: bool) -> SNetListenSocket_t #foreign libsteam_api;
SteamAPI_ISteamNetworking_CreateP2PConnectionSocket :: (self: *ISteamNetworking, steamIDTarget: uint64_steamid, nVirtualPort: s32, nTimeoutSec: s32, bAllowUseOfPacketRelay: bool) -> SNetSocket_t #foreign libsteam_api;
SteamAPI_ISteamNetworking_CreateConnectionSocket :: (self: *ISteamNetworking, nIP: SteamIPAddress_t, nPort: uint16, nTimeoutSec: s32) -> SNetSocket_t #foreign libsteam_api;
SteamAPI_ISteamNetworking_DestroySocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, bNotifyRemoteEnd: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_DestroyListenSocket :: (self: *ISteamNetworking, hSocket: SNetListenSocket_t, bNotifyRemoteEnd: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_SendDataOnSocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pubData: *void, cubData: uint32, bReliable: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_IsDataAvailableOnSocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pcubMsgSize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_RetrieveDataFromSocket :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pubDest: *void, cubDest: uint32, pcubMsgSize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_IsDataAvailable :: (self: *ISteamNetworking, hListenSocket: SNetListenSocket_t, pcubMsgSize: *uint32, phSocket: *SNetSocket_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_RetrieveData :: (self: *ISteamNetworking, hListenSocket: SNetListenSocket_t, pubDest: *void, cubDest: uint32, pcubMsgSize: *uint32, phSocket: *SNetSocket_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_GetSocketInfo :: (self: *ISteamNetworking, hSocket: SNetSocket_t, pSteamIDRemote: *CSteamID, peSocketStatus: *s32, punIPRemote: *SteamIPAddress_t, punPortRemote: *uint16) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_GetListenSocketInfo :: (self: *ISteamNetworking, hListenSocket: SNetListenSocket_t, pnIP: *SteamIPAddress_t, pnPort: *uint16) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworking_GetSocketConnectionType :: (self: *ISteamNetworking, hSocket: SNetSocket_t) -> ESNetSocketConnectionType #foreign libsteam_api;
SteamAPI_ISteamNetworking_GetMaxPacketSize :: (self: *ISteamNetworking, hSocket: SNetSocket_t) -> s32 #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamScreenshots_v003 :: () -> *ISteamScreenshots #foreign libsteam_api;

SteamAPI_ISteamScreenshots_WriteScreenshot :: (self: *ISteamScreenshots, pubRGB: *void, cubRGB: uint32, nWidth: s32, nHeight: s32) -> ScreenshotHandle #foreign libsteam_api;
SteamAPI_ISteamScreenshots_AddScreenshotToLibrary :: (self: *ISteamScreenshots, pchFilename: *u8, pchThumbnailFilename: *u8, nWidth: s32, nHeight: s32) -> ScreenshotHandle #foreign libsteam_api;
SteamAPI_ISteamScreenshots_TriggerScreenshot :: (self: *ISteamScreenshots) -> void #foreign libsteam_api;
SteamAPI_ISteamScreenshots_HookScreenshots :: (self: *ISteamScreenshots, bHook: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamScreenshots_SetLocation :: (self: *ISteamScreenshots, hScreenshot: ScreenshotHandle, pchLocation: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamScreenshots_TagUser :: (self: *ISteamScreenshots, hScreenshot: ScreenshotHandle, steamID: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamScreenshots_TagPublishedFile :: (self: *ISteamScreenshots, hScreenshot: ScreenshotHandle, unPublishedFileID: PublishedFileId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamScreenshots_IsScreenshotsHooked :: (self: *ISteamScreenshots) -> bool #foreign libsteam_api;
SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary :: (self: *ISteamScreenshots, eType: EVRScreenshotType, pchFilename: *u8, pchVRFilename: *u8) -> ScreenshotHandle #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamMusic_v001 :: () -> *ISteamMusic #foreign libsteam_api;

SteamAPI_ISteamMusic_BIsEnabled :: (self: *ISteamMusic) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusic_BIsPlaying :: (self: *ISteamMusic) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusic_GetPlaybackStatus :: (self: *ISteamMusic) -> AudioPlayback_Status #foreign libsteam_api;
SteamAPI_ISteamMusic_Play :: (self: *ISteamMusic) -> void #foreign libsteam_api;
SteamAPI_ISteamMusic_Pause :: (self: *ISteamMusic) -> void #foreign libsteam_api;
SteamAPI_ISteamMusic_PlayPrevious :: (self: *ISteamMusic) -> void #foreign libsteam_api;
SteamAPI_ISteamMusic_PlayNext :: (self: *ISteamMusic) -> void #foreign libsteam_api;
SteamAPI_ISteamMusic_SetVolume :: (self: *ISteamMusic, flVolume: float) -> void #foreign libsteam_api;
SteamAPI_ISteamMusic_GetVolume :: (self: *ISteamMusic) -> float #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamMusicRemote_v001 :: () -> *ISteamMusicRemote #foreign libsteam_api;

SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote :: (self: *ISteamMusicRemote, pchName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_BActivationSuccess :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_SetDisplayName :: (self: *ISteamMusicRemote, pchDisplayName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64 :: (self: *ISteamMusicRemote, pvBuffer: *void, cbBufferLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_EnablePlayPrevious :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_EnablePlayNext :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_EnableShuffled :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_EnableLooped :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_EnableQueue :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_EnablePlaylists :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus :: (self: *ISteamMusicRemote, nStatus: AudioPlayback_Status) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdateShuffled :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdateLooped :: (self: *ISteamMusicRemote, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdateVolume :: (self: *ISteamMusicRemote, flValue: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_CurrentEntryWillChange :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable :: (self: *ISteamMusicRemote, bAvailable: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText :: (self: *ISteamMusicRemote, pchText: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds :: (self: *ISteamMusicRemote, nValue: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt :: (self: *ISteamMusicRemote, pvBuffer: *void, cbBufferLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_CurrentEntryDidChange :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_QueueWillChange :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_ResetQueueEntries :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_SetQueueEntry :: (self: *ISteamMusicRemote, nID: s32, nPosition: s32, pchEntryText: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry :: (self: *ISteamMusicRemote, nID: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_QueueDidChange :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_PlaylistWillChange :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_ResetPlaylistEntries :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_SetPlaylistEntry :: (self: *ISteamMusicRemote, nID: s32, nPosition: s32, pchEntryText: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry :: (self: *ISteamMusicRemote, nID: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamMusicRemote_PlaylistDidChange :: (self: *ISteamMusicRemote) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamHTTP_v003 :: () -> *ISteamHTTP #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerHTTP_v003 :: () -> *ISteamHTTP #foreign libsteam_api;

SteamAPI_ISteamHTTP_CreateHTTPRequest :: (self: *ISteamHTTP, eHTTPRequestMethod: EHTTPMethod, pchAbsoluteURL: *u8) -> HTTPRequestHandle #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestContextValue :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, ulContextValue: uint64) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, unTimeoutSeconds: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchHeaderName: *u8, pchHeaderValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchParamName: *u8, pchParamValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SendHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pCallHandle: *SteamAPICall_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pCallHandle: *SteamAPICall_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_DeferHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_PrioritizeHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchHeaderName: *u8, unResponseHeaderSize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchHeaderName: *u8, pHeaderValueBuffer: *uint8, unBufferSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPResponseBodySize :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, unBodySize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPResponseBodyData :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pBodyDataBuffer: *uint8, unBufferSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, cOffset: uint32, pBodyDataBuffer: *uint8, unBufferSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_ReleaseHTTPRequest :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pflPercentOut: *float) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchContentType: *u8, pubBody: *uint8, unBodyLen: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_CreateCookieContainer :: (self: *ISteamHTTP, bAllowResponsesToModify: bool) -> HTTPCookieContainerHandle #foreign libsteam_api;
SteamAPI_ISteamHTTP_ReleaseCookieContainer :: (self: *ISteamHTTP, hCookieContainer: HTTPCookieContainerHandle) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetCookie :: (self: *ISteamHTTP, hCookieContainer: HTTPCookieContainerHandle, pchHost: *u8, pchUrl: *u8, pchCookie: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, hCookieContainer: HTTPCookieContainerHandle) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pchUserAgentInfo: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, bRequireVerifiedCertificate: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, unMilliseconds: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut :: (self: *ISteamHTTP, hRequest: HTTPRequestHandle, pbWasTimedOut: *bool) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamInput_v006 :: () -> *ISteamInput #foreign libsteam_api;

SteamAPI_ISteamInput_Init :: (self: *ISteamInput, bExplicitlyCallRunFrame: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_Shutdown :: (self: *ISteamInput) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_SetInputActionManifestFilePath :: (self: *ISteamInput, pchInputActionManifestAbsolutePath: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_RunFrame :: (self: *ISteamInput, bReservedValue: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_BWaitForData :: (self: *ISteamInput, bWaitForever: bool, unTimeout: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_BNewDataAvailable :: (self: *ISteamInput) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_GetConnectedControllers :: (self: *ISteamInput, handlesOut: *InputHandle_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamInput_EnableDeviceCallbacks :: (self: *ISteamInput) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_EnableActionEventCallbacks :: (self: *ISteamInput, pCallback: SteamInputActionEventCallbackPointer) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_GetActionSetHandle :: (self: *ISteamInput, pszActionSetName: *u8) -> InputActionSetHandle_t #foreign libsteam_api;
SteamAPI_ISteamInput_ActivateActionSet :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetHandle: InputActionSetHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_GetCurrentActionSet :: (self: *ISteamInput, inputHandle: InputHandle_t) -> InputActionSetHandle_t #foreign libsteam_api;
SteamAPI_ISteamInput_ActivateActionSetLayer :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetLayerHandle: InputActionSetHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_DeactivateActionSetLayer :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetLayerHandle: InputActionSetHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_DeactivateAllActionSetLayers :: (self: *ISteamInput, inputHandle: InputHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_GetActiveActionSetLayers :: (self: *ISteamInput, inputHandle: InputHandle_t, handlesOut: *InputActionSetHandle_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamInput_GetDigitalActionHandle :: (self: *ISteamInput, pszActionName: *u8) -> InputDigitalActionHandle_t #foreign libsteam_api;
SteamAPI_ISteamInput_GetDigitalActionData :: (self: *ISteamInput, inputHandle: InputHandle_t, digitalActionHandle: InputDigitalActionHandle_t) -> InputDigitalActionData_t #foreign libsteam_api;
SteamAPI_ISteamInput_GetDigitalActionOrigins :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetHandle: InputActionSetHandle_t, digitalActionHandle: InputDigitalActionHandle_t, originsOut: *EInputActionOrigin) -> s32 #foreign libsteam_api;
SteamAPI_ISteamInput_GetStringForDigitalActionName :: (self: *ISteamInput, eActionHandle: InputDigitalActionHandle_t) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetAnalogActionHandle :: (self: *ISteamInput, pszActionName: *u8) -> InputAnalogActionHandle_t #foreign libsteam_api;
SteamAPI_ISteamInput_GetAnalogActionData :: (self: *ISteamInput, inputHandle: InputHandle_t, analogActionHandle: InputAnalogActionHandle_t) -> InputAnalogActionData_t #foreign libsteam_api;
SteamAPI_ISteamInput_GetAnalogActionOrigins :: (self: *ISteamInput, inputHandle: InputHandle_t, actionSetHandle: InputActionSetHandle_t, analogActionHandle: InputAnalogActionHandle_t, originsOut: *EInputActionOrigin) -> s32 #foreign libsteam_api;
SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin :: (self: *ISteamInput, eOrigin: EInputActionOrigin, eSize: ESteamInputGlyphSize, unFlags: uint32) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin :: (self: *ISteamInput, eOrigin: EInputActionOrigin, unFlags: uint32) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy :: (self: *ISteamInput, eOrigin: EInputActionOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetStringForActionOrigin :: (self: *ISteamInput, eOrigin: EInputActionOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetStringForAnalogActionName :: (self: *ISteamInput, eActionHandle: InputAnalogActionHandle_t) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_StopAnalogActionMomentum :: (self: *ISteamInput, inputHandle: InputHandle_t, eAction: InputAnalogActionHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_GetMotionData :: (self: *ISteamInput, inputHandle: InputHandle_t) -> InputMotionData_t #foreign libsteam_api;
SteamAPI_ISteamInput_TriggerVibration :: (self: *ISteamInput, inputHandle: InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_TriggerVibrationExtended :: (self: *ISteamInput, inputHandle: InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, usLeftTriggerSpeed: u16, usRightTriggerSpeed: u16) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_TriggerSimpleHapticEvent :: (self: *ISteamInput, inputHandle: InputHandle_t, eHapticLocation: EControllerHapticLocation, nIntensity: uint8, nGainDB: u8, nOtherIntensity: uint8, nOtherGainDB: u8) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_SetLEDColor :: (self: *ISteamInput, inputHandle: InputHandle_t, nColorR: uint8, nColorG: uint8, nColorB: uint8, nFlags: u32) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_Legacy_TriggerHapticPulse :: (self: *ISteamInput, inputHandle: InputHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse :: (self: *ISteamInput, inputHandle: InputHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) -> void #foreign libsteam_api;
SteamAPI_ISteamInput_ShowBindingPanel :: (self: *ISteamInput, inputHandle: InputHandle_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_GetInputTypeForHandle :: (self: *ISteamInput, inputHandle: InputHandle_t) -> ESteamInputType #foreign libsteam_api;
SteamAPI_ISteamInput_GetControllerForGamepadIndex :: (self: *ISteamInput, nIndex: s32) -> InputHandle_t #foreign libsteam_api;
SteamAPI_ISteamInput_GetGamepadIndexForController :: (self: *ISteamInput, ulinputHandle: InputHandle_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamInput_GetStringForXboxOrigin :: (self: *ISteamInput, eOrigin: EXboxOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetGlyphForXboxOrigin :: (self: *ISteamInput, eOrigin: EXboxOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin :: (self: *ISteamInput, inputHandle: InputHandle_t, eOrigin: EXboxOrigin) -> EInputActionOrigin #foreign libsteam_api;
SteamAPI_ISteamInput_TranslateActionOrigin :: (self: *ISteamInput, eDestinationInputType: ESteamInputType, eSourceOrigin: EInputActionOrigin) -> EInputActionOrigin #foreign libsteam_api;
SteamAPI_ISteamInput_GetDeviceBindingRevision :: (self: *ISteamInput, inputHandle: InputHandle_t, pMajor: *s32, pMinor: *s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInput_GetRemotePlaySessionID :: (self: *ISteamInput, inputHandle: InputHandle_t) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamInput_GetSessionInputConfigurationSettings :: (self: *ISteamInput) -> uint16 #foreign libsteam_api;
SteamAPI_ISteamInput_SetDualSenseTriggerEffect :: (self: *ISteamInput, inputHandle: InputHandle_t, pParam: *ScePadTriggerEffectParam) -> void #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamController_v008 :: () -> *ISteamController #foreign libsteam_api;

SteamAPI_ISteamController_Init :: (self: *ISteamController) -> bool #foreign libsteam_api;
SteamAPI_ISteamController_Shutdown :: (self: *ISteamController) -> bool #foreign libsteam_api;
SteamAPI_ISteamController_RunFrame :: (self: *ISteamController) -> void #foreign libsteam_api;
SteamAPI_ISteamController_GetConnectedControllers :: (self: *ISteamController, handlesOut: *ControllerHandle_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamController_GetActionSetHandle :: (self: *ISteamController, pszActionSetName: *u8) -> ControllerActionSetHandle_t #foreign libsteam_api;
SteamAPI_ISteamController_ActivateActionSet :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetHandle: ControllerActionSetHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamController_GetCurrentActionSet :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> ControllerActionSetHandle_t #foreign libsteam_api;
SteamAPI_ISteamController_ActivateActionSetLayer :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetLayerHandle: ControllerActionSetHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamController_DeactivateActionSetLayer :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetLayerHandle: ControllerActionSetHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamController_DeactivateAllActionSetLayers :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamController_GetActiveActionSetLayers :: (self: *ISteamController, controllerHandle: ControllerHandle_t, handlesOut: *ControllerActionSetHandle_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamController_GetDigitalActionHandle :: (self: *ISteamController, pszActionName: *u8) -> ControllerDigitalActionHandle_t #foreign libsteam_api;
SteamAPI_ISteamController_GetDigitalActionData :: (self: *ISteamController, controllerHandle: ControllerHandle_t, digitalActionHandle: ControllerDigitalActionHandle_t) -> InputDigitalActionData_t #foreign libsteam_api;
SteamAPI_ISteamController_GetDigitalActionOrigins :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetHandle: ControllerActionSetHandle_t, digitalActionHandle: ControllerDigitalActionHandle_t, originsOut: *EControllerActionOrigin) -> s32 #foreign libsteam_api;
SteamAPI_ISteamController_GetAnalogActionHandle :: (self: *ISteamController, pszActionName: *u8) -> ControllerAnalogActionHandle_t #foreign libsteam_api;
SteamAPI_ISteamController_GetAnalogActionData :: (self: *ISteamController, controllerHandle: ControllerHandle_t, analogActionHandle: ControllerAnalogActionHandle_t) -> InputAnalogActionData_t #foreign libsteam_api;
SteamAPI_ISteamController_GetAnalogActionOrigins :: (self: *ISteamController, controllerHandle: ControllerHandle_t, actionSetHandle: ControllerActionSetHandle_t, analogActionHandle: ControllerAnalogActionHandle_t, originsOut: *EControllerActionOrigin) -> s32 #foreign libsteam_api;
SteamAPI_ISteamController_GetGlyphForActionOrigin :: (self: *ISteamController, eOrigin: EControllerActionOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamController_GetStringForActionOrigin :: (self: *ISteamController, eOrigin: EControllerActionOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamController_StopAnalogActionMomentum :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eAction: ControllerAnalogActionHandle_t) -> void #foreign libsteam_api;
SteamAPI_ISteamController_GetMotionData :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> InputMotionData_t #foreign libsteam_api;
SteamAPI_ISteamController_TriggerHapticPulse :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16) -> void #foreign libsteam_api;
SteamAPI_ISteamController_TriggerRepeatedHapticPulse :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eTargetPad: ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) -> void #foreign libsteam_api;
SteamAPI_ISteamController_TriggerVibration :: (self: *ISteamController, controllerHandle: ControllerHandle_t, usLeftSpeed: u16, usRightSpeed: u16) -> void #foreign libsteam_api;
SteamAPI_ISteamController_SetLEDColor :: (self: *ISteamController, controllerHandle: ControllerHandle_t, nColorR: uint8, nColorG: uint8, nColorB: uint8, nFlags: u32) -> void #foreign libsteam_api;
SteamAPI_ISteamController_ShowBindingPanel :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamController_GetInputTypeForHandle :: (self: *ISteamController, controllerHandle: ControllerHandle_t) -> ESteamInputType #foreign libsteam_api;
SteamAPI_ISteamController_GetControllerForGamepadIndex :: (self: *ISteamController, nIndex: s32) -> ControllerHandle_t #foreign libsteam_api;
SteamAPI_ISteamController_GetGamepadIndexForController :: (self: *ISteamController, ulControllerHandle: ControllerHandle_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamController_GetStringForXboxOrigin :: (self: *ISteamController, eOrigin: EXboxOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamController_GetGlyphForXboxOrigin :: (self: *ISteamController, eOrigin: EXboxOrigin) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamController_GetActionOriginFromXboxOrigin :: (self: *ISteamController, controllerHandle: ControllerHandle_t, eOrigin: EXboxOrigin) -> EControllerActionOrigin #foreign libsteam_api;
SteamAPI_ISteamController_TranslateActionOrigin :: (self: *ISteamController, eDestinationInputType: ESteamInputType, eSourceOrigin: EControllerActionOrigin) -> EControllerActionOrigin #foreign libsteam_api;
SteamAPI_ISteamController_GetControllerBindingRevision :: (self: *ISteamController, controllerHandle: ControllerHandle_t, pMajor: *s32, pMinor: *s32) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamUGC_v020 :: () -> *ISteamUGC #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerUGC_v020 :: () -> *ISteamUGC #foreign libsteam_api;

SteamAPI_ISteamUGC_CreateQueryUserUGCRequest :: (self: *ISteamUGC, unAccountID: AccountID_t, eListType: EUserUGCList, eMatchingUGCType: EUGCMatchingUGCType, eSortOrder: EUserUGCListSortOrder, nCreatorAppID: AppId_t, nConsumerAppID: AppId_t, unPage: uint32) -> UGCQueryHandle_t #foreign libsteam_api;
SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage :: (self: *ISteamUGC, eQueryType: EUGCQuery, eMatchingeMatchingUGCTypeFileType: EUGCMatchingUGCType, nCreatorAppID: AppId_t, nConsumerAppID: AppId_t, unPage: uint32) -> UGCQueryHandle_t #foreign libsteam_api;
SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor :: (self: *ISteamUGC, eQueryType: EUGCQuery, eMatchingeMatchingUGCTypeFileType: EUGCMatchingUGCType, nCreatorAppID: AppId_t, nConsumerAppID: AppId_t, pchCursor: *u8) -> UGCQueryHandle_t #foreign libsteam_api;
SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, unNumPublishedFileIDs: uint32) -> UGCQueryHandle_t #foreign libsteam_api;
SteamAPI_ISteamUGC_SendQueryUGCRequest :: (self: *ISteamUGC, handle: UGCQueryHandle_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCResult :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pDetails: *SteamUGCDetails_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCNumTags :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, indexTag: uint32, pchValue: *u8, cchValueSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, indexTag: uint32, pchValue: *u8, cchValueSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCPreviewURL :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pchURL: *u8, cchURLSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCMetadata :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pchMetadata: *u8, cchMetadatasize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCChildren :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pvecPublishedFileID: *PublishedFileId_t, cMaxEntries: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCStatistic :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, eStatType: EItemStatistic, pStatValue: *uint64) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, previewIndex: uint32, pchURLOrVideoID: *u8, cchURLSize: uint32, pchOriginalFileName: *u8, cchOriginalFileNameSize: uint32, pPreviewType: *EItemPreviewType) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, keyValueTagIndex: uint32, pchKey: *u8, cchKeySize: uint32, pchValue: *u8, cchValueSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pchKey: *u8, pchValue: *u8, cchValueSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetNumSupportedGameVersions :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetSupportedGameVersionData :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, versionIndex: uint32, pchGameBranchMin: *u8, pchGameBranchMax: *u8, cchGameBranchSize: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetQueryUGCContentDescriptors :: (self: *ISteamUGC, handle: UGCQueryHandle_t, index: uint32, pvecDescriptors: *EUGCContentDescriptorID, cMaxEntries: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_ReleaseQueryUGCRequest :: (self: *ISteamUGC, handle: UGCQueryHandle_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddRequiredTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pTagName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddRequiredTagGroup :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pTagGroups: *SteamParamStringArray_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddExcludedTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pTagName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnOnlyIDs :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnOnlyIDs: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnKeyValueTags :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnKeyValueTags: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnLongDescription :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnLongDescription: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnMetadata :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnMetadata: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnChildren :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnChildren: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnAdditionalPreviews :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnAdditionalPreviews: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnTotalOnly :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bReturnTotalOnly: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetReturnPlaytimeStats :: (self: *ISteamUGC, handle: UGCQueryHandle_t, unDays: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetLanguage :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pchLanguage: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetAllowCachedResponse :: (self: *ISteamUGC, handle: UGCQueryHandle_t, unMaxAgeSeconds: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetAdminQuery :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, bAdminQuery: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetCloudFileNameFilter :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pMatchCloudFileName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetMatchAnyTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, bMatchAnyTag: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetSearchText :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pSearchText: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetRankedByTrendDays :: (self: *ISteamUGC, handle: UGCQueryHandle_t, unDays: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetTimeCreatedDateRange :: (self: *ISteamUGC, handle: UGCQueryHandle_t, rtStart: RTime32, rtEnd: RTime32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetTimeUpdatedDateRange :: (self: *ISteamUGC, handle: UGCQueryHandle_t, rtStart: RTime32, rtEnd: RTime32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddRequiredKeyValueTag :: (self: *ISteamUGC, handle: UGCQueryHandle_t, pKey: *u8, pValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_RequestUGCDetails :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, unMaxAgeSeconds: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_CreateItem :: (self: *ISteamUGC, nConsumerAppId: AppId_t, eFileType: EWorkshopFileType) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_StartItemUpdate :: (self: *ISteamUGC, nConsumerAppId: AppId_t, nPublishedFileID: PublishedFileId_t) -> UGCUpdateHandle_t #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemTitle :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchTitle: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemDescription :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchDescription: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemUpdateLanguage :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchLanguage: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemMetadata :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchMetaData: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemVisibility :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, eVisibility: ERemoteStoragePublishedFileVisibility) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemTags :: (self: *ISteamUGC, updateHandle: UGCUpdateHandle_t, pTags: *SteamParamStringArray_t, bAllowAdminTags: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemContent :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszContentFolder: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetItemPreview :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszPreviewFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetAllowLegacyUpload :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, bAllowLegacyUpload: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags :: (self: *ISteamUGC, handle: UGCUpdateHandle_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveItemKeyValueTags :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchKey: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddItemKeyValueTag :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchKey: *u8, pchValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddItemPreviewFile :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszPreviewFile: *u8, type: EItemPreviewType) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddItemPreviewVideo :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszVideoID: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_UpdateItemPreviewFile :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, index: uint32, pszPreviewFile: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_UpdateItemPreviewVideo :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, index: uint32, pszVideoID: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveItemPreview :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, index: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_AddContentDescriptor :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, descid: EUGCContentDescriptorID) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveContentDescriptor :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, descid: EUGCContentDescriptorID) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SetRequiredGameVersions :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pszGameBranchMin: *u8, pszGameBranchMax: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SubmitItemUpdate :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, pchChangeNote: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_GetItemUpdateProgress :: (self: *ISteamUGC, handle: UGCUpdateHandle_t, punBytesProcessed: *uint64, punBytesTotal: *uint64) -> EItemUpdateStatus #foreign libsteam_api;
SteamAPI_ISteamUGC_SetUserItemVote :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, bVoteUp: bool) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_GetUserItemVote :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_AddItemToFavorites :: (self: *ISteamUGC, nAppId: AppId_t, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveItemFromFavorites :: (self: *ISteamUGC, nAppId: AppId_t, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_SubscribeItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_UnsubscribeItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_GetNumSubscribedItems :: (self: *ISteamUGC) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetSubscribedItems :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, cMaxEntries: uint32) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetItemState :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamUGC_GetItemInstallInfo :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, punSizeOnDisk: *uint64, pchFolder: *u8, cchFolderSize: uint32, punTimeStamp: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetItemDownloadInfo :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, punBytesDownloaded: *uint64, punBytesTotal: *uint64) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_DownloadItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, bHighPriority: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_BInitWorkshopForGameServer :: (self: *ISteamUGC, unWorkshopDepotID: DepotId_t, pszFolder: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_SuspendDownloads :: (self: *ISteamUGC, bSuspend: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamUGC_StartPlaytimeTracking :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, unNumPublishedFileIDs: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_StopPlaytimeTracking :: (self: *ISteamUGC, pvecPublishedFileID: *PublishedFileId_t, unNumPublishedFileIDs: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems :: (self: *ISteamUGC) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_AddDependency :: (self: *ISteamUGC, nParentPublishedFileID: PublishedFileId_t, nChildPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveDependency :: (self: *ISteamUGC, nParentPublishedFileID: PublishedFileId_t, nChildPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_AddAppDependency :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, nAppID: AppId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_RemoveAppDependency :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t, nAppID: AppId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_GetAppDependencies :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_DeleteItem :: (self: *ISteamUGC, nPublishedFileID: PublishedFileId_t) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_ShowWorkshopEULA :: (self: *ISteamUGC) -> bool #foreign libsteam_api;
SteamAPI_ISteamUGC_GetWorkshopEULAStatus :: (self: *ISteamUGC) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamUGC_GetUserContentDescriptorPreferences :: (self: *ISteamUGC, pvecDescriptors: *EUGCContentDescriptorID, cMaxEntries: uint32) -> uint32 #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamHTMLSurface_v005 :: () -> *ISteamHTMLSurface #foreign libsteam_api;

SteamAPI_ISteamHTMLSurface_Init :: (self: *ISteamHTMLSurface) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_Shutdown :: (self: *ISteamHTMLSurface) -> bool #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_CreateBrowser :: (self: *ISteamHTMLSurface, pchUserAgent: *u8, pchUserCSS: *u8) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_RemoveBrowser :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_LoadURL :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchURL: *u8, pchPostData: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetSize :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, unWidth: uint32, unHeight: uint32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_StopLoad :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_Reload :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_GoBack :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_GoForward :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_AddHeader :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchKey: *u8, pchValue: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_ExecuteJavascript :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchScript: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_MouseUp :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, eMouseButton: ISteamHTMLSurface.EHTMLMouseButton) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_MouseDown :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, eMouseButton: ISteamHTMLSurface.EHTMLMouseButton) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_MouseDoubleClick :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, eMouseButton: ISteamHTMLSurface.EHTMLMouseButton) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_MouseMove :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, x: s32, y: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_MouseWheel :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nDelta: int32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_KeyDown :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nNativeKeyCode: uint32, eHTMLKeyModifiers: ISteamHTMLSurface.EHTMLKeyModifiers, bIsSystemKey: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_KeyUp :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nNativeKeyCode: uint32, eHTMLKeyModifiers: ISteamHTMLSurface.EHTMLKeyModifiers) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_KeyChar :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, cUnicodeChar: uint32, eHTMLKeyModifiers: ISteamHTMLSurface.EHTMLKeyModifiers) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetHorizontalScroll :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nAbsolutePixelScroll: uint32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetVerticalScroll :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, nAbsolutePixelScroll: uint32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetKeyFocus :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bHasKeyFocus: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_ViewSource :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_CopyToClipboard :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_PasteFromClipboard :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_Find :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchSearchStr: *u8, bCurrentlyInFind: bool, bReverse: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_StopFind :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_GetLinkAtPosition :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, x: s32, y: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetCookie :: (self: *ISteamHTMLSurface, pchHostname: *u8, pchKey: *u8, pchValue: *u8, pchPath: *u8, nExpires: RTime32, bSecure: bool, bHTTPOnly: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetPageScaleFactor :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, flZoom: float, nPointX: s32, nPointY: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetBackgroundMode :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bBackgroundMode: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, flDPIScaling: float) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_OpenDeveloperTools :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_AllowStartRequest :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bAllowed: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_JSDialogResponse :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, bResult: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse :: (self: *ISteamHTMLSurface, unBrowserHandle: HHTMLBrowser, pchSelectedFiles: **u8) -> void #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamInventory_v003 :: () -> *ISteamInventory #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerInventory_v003 :: () -> *ISteamInventory #foreign libsteam_api;

SteamAPI_ISteamInventory_GetResultStatus :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t) -> EResult #foreign libsteam_api;
SteamAPI_ISteamInventory_GetResultItems :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, pOutItemsArray: *SteamItemDetails_t, punOutItemsArraySize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GetResultItemProperty :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, unItemIndex: uint32, pchPropertyName: *u8, pchValueBuffer: *u8, punValueBufferSizeOut: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GetResultTimestamp :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamInventory_CheckResultSteamID :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, steamIDExpected: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_DestroyResult :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t) -> void #foreign libsteam_api;
SteamAPI_ISteamInventory_GetAllItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GetItemsByID :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pInstanceIDs: *SteamItemInstanceID_t, unCountInstanceIDs: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SerializeResult :: (self: *ISteamInventory, resultHandle: SteamInventoryResult_t, pOutBuffer: *void, punOutBufferSize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_DeserializeResult :: (self: *ISteamInventory, pOutResultHandle: *SteamInventoryResult_t, pBuffer: *void, unBufferSize: uint32, bRESERVED_MUST_BE_FALSE: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GenerateItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pArrayItemDefs: *SteamItemDef_t, punArrayQuantity: *uint32, unArrayLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GrantPromoItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_AddPromoItem :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, itemDef: SteamItemDef_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_AddPromoItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pArrayItemDefs: *SteamItemDef_t, unArrayLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_ConsumeItem :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, itemConsume: SteamItemInstanceID_t, unQuantity: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_ExchangeItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pArrayGenerate: *SteamItemDef_t, punArrayGenerateQuantity: *uint32, unArrayGenerateLength: uint32, pArrayDestroy: *SteamItemInstanceID_t, punArrayDestroyQuantity: *uint32, unArrayDestroyLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_TransferItemQuantity :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, itemIdSource: SteamItemInstanceID_t, unQuantity: uint32, itemIdDest: SteamItemInstanceID_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SendItemDropHeartbeat :: (self: *ISteamInventory) -> void #foreign libsteam_api;
SteamAPI_ISteamInventory_TriggerItemDrop :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, dropListDefinition: SteamItemDef_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_TradeItems :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, steamIDTradePartner: uint64_steamid, pArrayGive: *SteamItemInstanceID_t, pArrayGiveQuantity: *uint32, nArrayGiveLength: uint32, pArrayGet: *SteamItemInstanceID_t, pArrayGetQuantity: *uint32, nArrayGetLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_LoadItemDefinitions :: (self: *ISteamInventory) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GetItemDefinitionIDs :: (self: *ISteamInventory, pItemDefIDs: *SteamItemDef_t, punItemDefIDsArraySize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GetItemDefinitionProperty :: (self: *ISteamInventory, iDefinition: SteamItemDef_t, pchPropertyName: *u8, pchValueBuffer: *u8, punValueBufferSizeOut: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs :: (self: *ISteamInventory, steamID: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs :: (self: *ISteamInventory, steamID: uint64_steamid, pItemDefIDs: *SteamItemDef_t, punItemDefIDsArraySize: *uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_StartPurchase :: (self: *ISteamInventory, pArrayItemDefs: *SteamItemDef_t, punArrayQuantity: *uint32, unArrayLength: uint32) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamInventory_RequestPrices :: (self: *ISteamInventory) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamInventory_GetNumItemsWithPrices :: (self: *ISteamInventory) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamInventory_GetItemsWithPrices :: (self: *ISteamInventory, pArrayItemDefs: *SteamItemDef_t, pCurrentPrices: *uint64, pBasePrices: *uint64, unArrayLength: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_GetItemPrice :: (self: *ISteamInventory, iDefinition: SteamItemDef_t, pCurrentPrice: *uint64, pBasePrice: *uint64) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_StartUpdateProperties :: (self: *ISteamInventory) -> SteamInventoryUpdateHandle_t #foreign libsteam_api;
SteamAPI_ISteamInventory_RemoveProperty :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SetPropertyString :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, pchPropertyValue: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SetPropertyBool :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, bValue: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SetPropertyInt64 :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, nValue: int64) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SetPropertyFloat :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, nItemID: SteamItemInstanceID_t, pchPropertyName: *u8, flValue: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_SubmitUpdateProperties :: (self: *ISteamInventory, handle: SteamInventoryUpdateHandle_t, pResultHandle: *SteamInventoryResult_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamInventory_InspectItem :: (self: *ISteamInventory, pResultHandle: *SteamInventoryResult_t, pchItemToken: *u8) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamTimeline_v001 :: () -> *ISteamTimeline #foreign libsteam_api;

SteamAPI_ISteamTimeline_SetTimelineStateDescription :: (self: *ISteamTimeline, pchDescription: *u8, flTimeDelta: float) -> void #foreign libsteam_api;
SteamAPI_ISteamTimeline_ClearTimelineStateDescription :: (self: *ISteamTimeline, flTimeDelta: float) -> void #foreign libsteam_api;
SteamAPI_ISteamTimeline_AddTimelineEvent :: (self: *ISteamTimeline, pchIcon: *u8, pchTitle: *u8, pchDescription: *u8, unPriority: uint32, flStartOffsetSeconds: float, flDurationSeconds: float, ePossibleClip: ETimelineEventClipPriority) -> void #foreign libsteam_api;
SteamAPI_ISteamTimeline_SetTimelineGameMode :: (self: *ISteamTimeline, eMode: ETimelineGameMode) -> void #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamVideo_v007 :: () -> *ISteamVideo #foreign libsteam_api;

SteamAPI_ISteamVideo_GetVideoURL :: (self: *ISteamVideo, unVideoAppID: AppId_t) -> void #foreign libsteam_api;
SteamAPI_ISteamVideo_IsBroadcasting :: (self: *ISteamVideo, pnNumViewers: *s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamVideo_GetOPFSettings :: (self: *ISteamVideo, unVideoAppID: AppId_t) -> void #foreign libsteam_api;
SteamAPI_ISteamVideo_GetOPFStringForApp :: (self: *ISteamVideo, unVideoAppID: AppId_t, pchBuffer: *u8, pnBufferSize: *int32) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamParentalSettings_v001 :: () -> *ISteamParentalSettings #foreign libsteam_api;

SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled :: (self: *ISteamParentalSettings) -> bool #foreign libsteam_api;
SteamAPI_ISteamParentalSettings_BIsParentalLockLocked :: (self: *ISteamParentalSettings) -> bool #foreign libsteam_api;
SteamAPI_ISteamParentalSettings_BIsAppBlocked :: (self: *ISteamParentalSettings, nAppID: AppId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamParentalSettings_BIsAppInBlockList :: (self: *ISteamParentalSettings, nAppID: AppId_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamParentalSettings_BIsFeatureBlocked :: (self: *ISteamParentalSettings, eFeature: EParentalFeature) -> bool #foreign libsteam_api;
SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList :: (self: *ISteamParentalSettings, eFeature: EParentalFeature) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamRemotePlay_v002 :: () -> *ISteamRemotePlay #foreign libsteam_api;

SteamAPI_ISteamRemotePlay_GetSessionCount :: (self: *ISteamRemotePlay) -> uint32 #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_GetSessionID :: (self: *ISteamRemotePlay, iSessionIndex: s32) -> RemotePlaySessionID_t #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_GetSessionSteamID :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_GetSessionClientName :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t) -> ESteamDeviceFormFactor #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_BGetSessionClientResolution :: (self: *ISteamRemotePlay, unSessionID: RemotePlaySessionID_t, pnResolutionX: *s32, pnResolutionY: *s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_BStartRemotePlayTogether :: (self: *ISteamRemotePlay, bShowOverlay: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite :: (self: *ISteamRemotePlay, steamIDFriend: uint64_steamid) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamNetworkingMessages_SteamAPI_v002 :: () -> *ISteamNetworkingMessages #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002 :: () -> *ISteamNetworkingMessages #foreign libsteam_api;

SteamAPI_ISteamNetworkingMessages_SendMessageToUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity, pubData: *void, cubData: uint32, nSendFlags: s32, nRemoteChannel: s32) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingMessages_SendMessageToUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity, pubData: *void, cubData: uint32, nSendFlags: s32, nRemoteChannel: s32) -> EResult #no_context {
    return SteamAPI_ISteamNetworkingMessages_SendMessageToUser(self, *identityRemote, pubData, cubData, nSendFlags, nRemoteChannel);
}
SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel :: (self: *ISteamNetworkingMessages, nLocalChannel: s32, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser(self, *identityRemote);
}
SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser(self, *identityRemote);
}
SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity, nLocalChannel: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity, nLocalChannel: s32) -> bool #no_context {
    return SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser(self, *identityRemote, nLocalChannel);
}
SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo :: (self: *ISteamNetworkingMessages, identityRemote: *SteamNetworkingIdentity, pConnectionInfo: *SteamNetConnectionInfo_t, pQuickStatus: *SteamNetConnectionRealTimeStatus_t) -> ESteamNetworkingConnectionState #foreign libsteam_api;
SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo :: (self: *ISteamNetworkingMessages, identityRemote: SteamNetworkingIdentity, pConnectionInfo: *SteamNetConnectionInfo_t, pQuickStatus: *SteamNetConnectionRealTimeStatus_t) -> ESteamNetworkingConnectionState #no_context {
    return SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo(self, *identityRemote, pConnectionInfo, pQuickStatus);
}

// A versioned accessor is exported by the library
SteamAPI_SteamNetworkingSockets_SteamAPI_v012 :: () -> *ISteamNetworkingSockets #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012 :: () -> *ISteamNetworkingSockets #foreign libsteam_api;

SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #no_context {
    return SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP(self, *localAddress, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress(self, *address, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P :: (self: *ISteamNetworkingSockets, nLocalVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectP2P(self, *identityRemote, nRemoteVirtualPort, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_AcceptConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CloseConnection :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nReason: s32, pszDebug: *u8, bEnableLinger: bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CloseListenSocket :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_SetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nUserData: int64) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection) -> int64 #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_SetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8, nMaxLen: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_SendMessageToConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pData: *void, cbData: uint32, nSendFlags: s32, pOutMessageNumber: *int64) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_SendMessages :: (self: *ISteamNetworkingSockets, nMessages: s32, pMessages: **SteamNetworkingMessage_t, pOutMessageNumberOrResult: *int64) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetConnectionInfo :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pInfo: *SteamNetConnectionInfo_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pStatus: *SteamNetConnectionRealTimeStatus_t, nLanes: s32, pLanes: *SteamNetConnectionRealTimeLaneStatus_t) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pszBuf: *u8, cbBuf: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket, address: *SteamNetworkingIPAddr) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CreateSocketPair :: (self: *ISteamNetworkingSockets, pOutConnection1: *HSteamNetConnection, pOutConnection2: *HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: *SteamNetworkingIdentity, pIdentity2: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, nNumLanes: s32, pLanePriorities: *s32, pLaneWeights: *uint16) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetIdentity :: (self: *ISteamNetworkingSockets, pIdentity: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_InitAuthentication :: (self: *ISteamNetworkingSockets) -> ESteamNetworkingAvailability #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus :: (self: *ISteamNetworkingSockets, pDetails: *SteamNetAuthenticationStatus_t) -> ESteamNetworkingAvailability #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CreatePollGroup :: (self: *ISteamNetworkingSockets) -> HSteamNetPollGroup #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_DestroyPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, hPollGroup: HSteamNetPollGroup) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket :: (self: *ISteamNetworkingSockets, pvTicket: *void, cbTicket: s32, pOutParsedTicket: *SteamDatagramRelayAuthTicket) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer :: (self: *ISteamNetworkingSockets, identityGameServer: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, pOutParsedTicket: *SteamDatagramRelayAuthTicket) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer :: (self: *ISteamNetworkingSockets, identityGameServer: SteamNetworkingIdentity, nRemoteVirtualPort: s32, pOutParsedTicket: *SteamDatagramRelayAuthTicket) -> s32 #no_context {
    return SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer(self, *identityGameServer, nRemoteVirtualPort, pOutParsedTicket);
}
SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer :: (self: *ISteamNetworkingSockets, identityTarget: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer :: (self: *ISteamNetworkingSockets, identityTarget: SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer(self, *identityTarget, nRemoteVirtualPort, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort :: (self: *ISteamNetworkingSockets) -> uint16 #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID :: (self: *ISteamNetworkingSockets) -> SteamNetworkingPOPID #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress :: (self: *ISteamNetworkingSockets, pRouting: *SteamDatagramHostedAddress) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket :: (self: *ISteamNetworkingSockets, nLocalVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin :: (self: *ISteamNetworkingSockets, pLoginInfo: *SteamDatagramGameCoordinatorServerLogin, pcbSignedBlob: *s32, pBlob: *void) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling :: (self: *ISteamNetworkingSockets, pSignaling: *ISteamNetworkingConnectionSignaling, pPeerIdentity: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal :: (self: *ISteamNetworkingSockets, pMsg: *void, cbMsg: s32, pContext: *ISteamNetworkingSignalingRecvContext) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetCertificateRequest :: (self: *ISteamNetworkingSockets, pcbBlob: *s32, pBlob: *void, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_SetCertificate :: (self: *ISteamNetworkingSockets, pCertificate: *void, cbCertificate: s32, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_ResetIdentity :: (self: *ISteamNetworkingSockets, pIdentity: *SteamNetworkingIdentity) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_RunCallbacks :: (self: *ISteamNetworkingSockets) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP :: (self: *ISteamNetworkingSockets, nNumPorts: s32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetFakeIP :: (self: *ISteamNetworkingSockets, idxFirstPort: s32, pInfo: *SteamNetworkingFakeIPResult_t) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP :: (self: *ISteamNetworkingSockets, idxFakePort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pOutAddr: *SteamNetworkingIPAddr) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort :: (self: *ISteamNetworkingSockets, idxFakeServerPort: s32) -> *ISteamNetworkingFakeUDPPort #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamNetworkingUtils_SteamAPI_v004 :: () -> *ISteamNetworkingUtils #foreign libsteam_api;

SteamAPI_ISteamNetworkingUtils_AllocateMessage :: (self: *ISteamNetworkingUtils, cbAllocateBuffer: s32) -> *SteamNetworkingMessage_t #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess :: (self: *ISteamNetworkingUtils) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus :: (self: *ISteamNetworkingUtils, pDetails: *SteamRelayNetworkStatus_t) -> ESteamNetworkingAvailability #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation :: (self: *ISteamNetworkingUtils, result: *SteamNetworkPingLocation_t) -> float #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations :: (self: *ISteamNetworkingUtils, location1: *SteamNetworkPingLocation_t, location2: *SteamNetworkPingLocation_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations :: (self: *ISteamNetworkingUtils, location1: SteamNetworkPingLocation_t, location2: SteamNetworkPingLocation_t) -> s32 #no_context {
    return SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations(self, *location1, *location2);
}
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost :: (self: *ISteamNetworkingUtils, remoteLocation: *SteamNetworkPingLocation_t) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost :: (self: *ISteamNetworkingUtils, remoteLocation: SteamNetworkPingLocation_t) -> s32 #no_context {
    return SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost(self, *remoteLocation);
}
SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString :: (self: *ISteamNetworkingUtils, location: *SteamNetworkPingLocation_t, pszBuf: *u8, cchBufSize: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString :: (self: *ISteamNetworkingUtils, location: SteamNetworkPingLocation_t, pszBuf: *u8, cchBufSize: s32) #no_context {
    SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString(self, *location, pszBuf, cchBufSize);
}
SteamAPI_ISteamNetworkingUtils_ParsePingLocationString :: (self: *ISteamNetworkingUtils, pszString: *u8, result: *SteamNetworkPingLocation_t) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate :: (self: *ISteamNetworkingUtils, flMaxAgeSeconds: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter :: (self: *ISteamNetworkingUtils, popID: SteamNetworkingPOPID, pViaRelayPoP: *SteamNetworkingPOPID) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP :: (self: *ISteamNetworkingUtils, popID: SteamNetworkingPOPID) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetPOPCount :: (self: *ISteamNetworkingUtils) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetPOPList :: (self: *ISteamNetworkingUtils, list: *SteamNetworkingPOPID, nListSz: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp :: (self: *ISteamNetworkingUtils) -> SteamNetworkingMicroseconds #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction :: (self: *ISteamNetworkingUtils, eDetailLevel: ESteamNetworkingSocketsDebugOutputType, pfnFunc: FSteamNetworkingSocketsDebugOutput) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_IsFakeIPv4 :: (self: *ISteamNetworkingUtils, nIPv4: uint32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType :: (self: *ISteamNetworkingUtils, nIPv4: uint32) -> ESteamNetworkingFakeIPType #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP :: (self: *ISteamNetworkingUtils, fakeIP: *SteamNetworkingIPAddr, pOutRealIdentity: *SteamNetworkingIdentity) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP :: (self: *ISteamNetworkingUtils, fakeIP: SteamNetworkingIPAddr, pOutRealIdentity: *SteamNetworkingIdentity) -> EResult #no_context {
    return SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP(self, *fakeIP, pOutRealIdentity);
}
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32 :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *void) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32 :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetConnectionStatusChanged) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetAuthenticationStatusChanged) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamRelayNetworkStatusChanged) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_FakeIPResult :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetworkingFakeIPResult) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionRequest :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetworkingMessagesSessionRequest) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionFailed :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetworkingMessagesSessionFailed) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, eDataType: ESteamNetworkingConfigDataType, pArg: *void) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: *SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #no_context {
    return SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct(self, *opt, eScopeType, scopeObj);
}
SteamAPI_ISteamNetworkingUtils_GetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, pOutDataType: *ESteamNetworkingConfigDataType, pResult: *void, cbResult: *u64) -> ESteamNetworkingGetConfigValueResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, pOutDataType: *ESteamNetworkingConfigDataType, pOutScope: *ESteamNetworkingConfigScope) -> *u8 #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues :: (self: *ISteamNetworkingUtils, eCurrent: ESteamNetworkingConfigValue, bEnumerateDevVars: bool) -> ESteamNetworkingConfigValue #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString :: (self: *ISteamNetworkingUtils, addr: *SteamNetworkingIPAddr, buf: *u8, cbBuf: uint32, bWithPort: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString :: (self: *ISteamNetworkingUtils, addr: SteamNetworkingIPAddr, buf: *u8, cbBuf: uint32, bWithPort: bool) #no_context {
    SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString(self, *addr, buf, cbBuf, bWithPort);
}
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString :: (self: *ISteamNetworkingUtils, pAddr: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType :: (self: *ISteamNetworkingUtils, addr: *SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType :: (self: *ISteamNetworkingUtils, addr: SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #no_context {
    return SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType(self, *addr);
}
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString :: (self: *ISteamNetworkingUtils, identity: *SteamNetworkingIdentity, buf: *u8, cbBuf: uint32) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString :: (self: *ISteamNetworkingUtils, identity: SteamNetworkingIdentity, buf: *u8, cbBuf: uint32) #no_context {
    SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString(self, *identity, buf, cbBuf);
}
SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString :: (self: *ISteamNetworkingUtils, pIdentity: *SteamNetworkingIdentity, pszStr: *u8) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServer_v015 :: () -> *ISteamGameServer #foreign libsteam_api;

SteamAPI_ISteamGameServer_SetProduct :: (self: *ISteamGameServer, pszProduct: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetGameDescription :: (self: *ISteamGameServer, pszGameDescription: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetModDir :: (self: *ISteamGameServer, pszModDir: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetDedicatedServer :: (self: *ISteamGameServer, bDedicated: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_LogOn :: (self: *ISteamGameServer, pszToken: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_LogOnAnonymous :: (self: *ISteamGameServer) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_LogOff :: (self: *ISteamGameServer) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_BLoggedOn :: (self: *ISteamGameServer) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServer_BSecure :: (self: *ISteamGameServer) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServer_GetSteamID :: (self: *ISteamGameServer) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamGameServer_WasRestartRequested :: (self: *ISteamGameServer) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetMaxPlayerCount :: (self: *ISteamGameServer, cPlayersMax: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetBotPlayerCount :: (self: *ISteamGameServer, cBotplayers: s32) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetServerName :: (self: *ISteamGameServer, pszServerName: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetMapName :: (self: *ISteamGameServer, pszMapName: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetPasswordProtected :: (self: *ISteamGameServer, bPasswordProtected: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetSpectatorPort :: (self: *ISteamGameServer, unSpectatorPort: uint16) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetSpectatorServerName :: (self: *ISteamGameServer, pszSpectatorServerName: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_ClearAllKeyValues :: (self: *ISteamGameServer) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetKeyValue :: (self: *ISteamGameServer, pKey: *u8, pValue: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetGameTags :: (self: *ISteamGameServer, pchGameTags: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetGameData :: (self: *ISteamGameServer, pchGameData: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetRegion :: (self: *ISteamGameServer, pszRegion: *u8) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_SetAdvertiseServerActive :: (self: *ISteamGameServer, bActive: bool) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_GetAuthSessionTicket :: (self: *ISteamGameServer, pTicket: *void, cbMaxTicket: s32, pcbTicket: *uint32, pSnid: *SteamNetworkingIdentity) -> HAuthTicket #foreign libsteam_api;
SteamAPI_ISteamGameServer_BeginAuthSession :: (self: *ISteamGameServer, pAuthTicket: *void, cbAuthTicket: s32, steamID: uint64_steamid) -> EBeginAuthSessionResult #foreign libsteam_api;
SteamAPI_ISteamGameServer_EndAuthSession :: (self: *ISteamGameServer, steamID: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_CancelAuthTicket :: (self: *ISteamGameServer, hAuthTicket: HAuthTicket) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_UserHasLicenseForApp :: (self: *ISteamGameServer, steamID: uint64_steamid, appID: AppId_t) -> EUserHasLicenseForAppResult #foreign libsteam_api;
SteamAPI_ISteamGameServer_RequestUserGroupStatus :: (self: *ISteamGameServer, steamIDUser: uint64_steamid, steamIDGroup: uint64_steamid) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServer_GetGameplayStats :: (self: *ISteamGameServer) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_GetServerReputation :: (self: *ISteamGameServer) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamGameServer_GetPublicIP :: (self: *ISteamGameServer) -> SteamIPAddress_t #foreign libsteam_api;
SteamAPI_ISteamGameServer_HandleIncomingPacket :: (self: *ISteamGameServer, pData: *void, cbData: s32, srcIP: uint32, srcPort: uint16) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServer_GetNextOutgoingPacket :: (self: *ISteamGameServer, pOut: *void, cbMaxOut: s32, pNetAdr: *uint32, pPort: *uint16) -> s32 #foreign libsteam_api;
SteamAPI_ISteamGameServer_AssociateWithClan :: (self: *ISteamGameServer, steamIDClan: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility :: (self: *ISteamGameServer, steamIDNewPlayer: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamGameServer_SendUserConnectAndAuthenticate_DEPRECATED :: (self: *ISteamGameServer, unIPClient: uint32, pvAuthBlob: *void, cubAuthBlobSize: uint32, pSteamIDUser: *CSteamID) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection :: (self: *ISteamGameServer) -> uint64_steamid #foreign libsteam_api;
SteamAPI_ISteamGameServer_SendUserDisconnect_DEPRECATED :: (self: *ISteamGameServer, steamIDUser: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_ISteamGameServer_BUpdateUserData :: (self: *ISteamGameServer, steamIDUser: uint64_steamid, pchPlayerName: *u8, uScore: uint32) -> bool #foreign libsteam_api;

// A versioned accessor is exported by the library
SteamAPI_SteamGameServerStats_v001 :: () -> *ISteamGameServerStats #foreign libsteam_api;

SteamAPI_ISteamGameServerStats_RequestUserStats :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_GetUserStatInt32 :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_GetUserStatFloat :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, pData: *float) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_GetUserAchievement :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, pbAchieved: *bool) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_SetUserStatInt32 :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, nData: int32) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_SetUserStatFloat :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, fData: float) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8, flCountThisSession: float, dSessionLength: float64) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_SetUserAchievement :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_ClearUserAchievement :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid, pchName: *u8) -> bool #foreign libsteam_api;
SteamAPI_ISteamGameServerStats_StoreUserStats :: (self: *ISteamGameServerStats, steamIDUser: uint64_steamid) -> SteamAPICall_t #foreign libsteam_api;

// ISteamNetworkingFakeUDPPort
SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort :: (self: *ISteamNetworkingFakeUDPPort) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: *SteamNetworkingIPAddr, pData: *void, cbData: uint32, nSendFlags: s32) -> EResult #foreign libsteam_api;
SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: SteamNetworkingIPAddr, pData: *void, cbData: uint32, nSendFlags: s32) -> EResult #no_context {
    return SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP(self, *remoteAddress, pData, cbData, nSendFlags);
}
SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages :: (self: *ISteamNetworkingFakeUDPPort, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libsteam_api;
SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: *SteamNetworkingIPAddr) -> void #foreign libsteam_api;
SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup :: (self: *ISteamNetworkingFakeUDPPort, remoteAddress: SteamNetworkingIPAddr) #no_context {
    SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup(self, *remoteAddress);
}

// SteamIPAddress_t
SteamAPI_SteamIPAddress_t_IsSet :: (self: *SteamIPAddress_t) -> bool #foreign libsteam_api;

// MatchMakingKeyValuePair_t
SteamAPI_MatchMakingKeyValuePair_t_Construct :: (self: *MatchMakingKeyValuePair_t) -> void #foreign libsteam_api;

// servernetadr_t
SteamAPI_servernetadr_t_Construct :: (self: *servernetadr_t) -> void #foreign libsteam_api;
SteamAPI_servernetadr_t_Init :: (self: *servernetadr_t, ip: u32, usQueryPort: uint16, usConnectionPort: uint16) -> void #foreign libsteam_api;
SteamAPI_servernetadr_t_GetQueryPort :: (self: *servernetadr_t) -> uint16 #foreign libsteam_api;
SteamAPI_servernetadr_t_SetQueryPort :: (self: *servernetadr_t, usPort: uint16) -> void #foreign libsteam_api;
SteamAPI_servernetadr_t_GetConnectionPort :: (self: *servernetadr_t) -> uint16 #foreign libsteam_api;
SteamAPI_servernetadr_t_SetConnectionPort :: (self: *servernetadr_t, usPort: uint16) -> void #foreign libsteam_api;
SteamAPI_servernetadr_t_GetIP :: (self: *servernetadr_t) -> uint32 #foreign libsteam_api;
SteamAPI_servernetadr_t_SetIP :: (self: *servernetadr_t, unIP: uint32) -> void #foreign libsteam_api;
SteamAPI_servernetadr_t_GetConnectionAddressString :: (self: *servernetadr_t) -> *u8 #foreign libsteam_api;
SteamAPI_servernetadr_t_GetQueryAddressString :: (self: *servernetadr_t) -> *u8 #foreign libsteam_api;
SteamAPI_servernetadr_t_IsLessThan :: (self: *servernetadr_t, netadr: *servernetadr_t) -> bool #foreign libsteam_api;
SteamAPI_servernetadr_t_IsLessThan :: (self: *servernetadr_t, netadr: servernetadr_t) -> bool #no_context {
    return SteamAPI_servernetadr_t_IsLessThan(self, *netadr);
}
SteamAPI_servernetadr_t_Assign :: (self: *servernetadr_t, that: *servernetadr_t) -> void #foreign libsteam_api;
SteamAPI_servernetadr_t_Assign :: (self: *servernetadr_t, that: servernetadr_t) #no_context {
    SteamAPI_servernetadr_t_Assign(self, *that);
}

// gameserveritem_t
SteamAPI_gameserveritem_t_Construct :: (self: *gameserveritem_t) -> void #foreign libsteam_api;
SteamAPI_gameserveritem_t_GetName :: (self: *gameserveritem_t) -> *u8 #foreign libsteam_api;
SteamAPI_gameserveritem_t_SetName :: (self: *gameserveritem_t, pName: *u8) -> void #foreign libsteam_api;

// SteamNetworkingIPAddr
SteamAPI_SteamNetworkingIPAddr_Clear :: (self: *SteamNetworkingIPAddr) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros :: (self: *SteamNetworkingIPAddr) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_SetIPv6 :: (self: *SteamNetworkingIPAddr, ipv6: *uint8, nPort: uint16) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_SetIPv4 :: (self: *SteamNetworkingIPAddr, nIP: uint32, nPort: uint16) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_IsIPv4 :: (self: *SteamNetworkingIPAddr) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_GetIPv4 :: (self: *SteamNetworkingIPAddr) -> uint32 #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost :: (self: *SteamNetworkingIPAddr, nPort: uint16) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_IsLocalHost :: (self: *SteamNetworkingIPAddr) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_ToString :: (self: *SteamNetworkingIPAddr, buf: *u8, cbBuf: uint32, bWithPort: bool) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_ParseString :: (self: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: *SteamNetworkingIPAddr) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: SteamNetworkingIPAddr) -> bool #no_context {
    return SteamAPI_SteamNetworkingIPAddr_IsEqualTo(self, *x);
}
SteamAPI_SteamNetworkingIPAddr_GetFakeIPType :: (self: *SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #foreign libsteam_api;
SteamAPI_SteamNetworkingIPAddr_IsFakeIP :: (self: *SteamNetworkingIPAddr) -> bool #foreign libsteam_api;

// SteamNetworkingIdentity
SteamAPI_SteamNetworkingIdentity_Clear :: (self: *SteamNetworkingIdentity) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_IsInvalid :: (self: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetSteamID :: (self: *SteamNetworkingIdentity, steamID: uint64_steamid) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetSteamID :: (self: *SteamNetworkingIdentity) -> uint64_steamid #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetSteamID64 :: (self: *SteamNetworkingIdentity, steamID: uint64) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetSteamID64 :: (self: *SteamNetworkingIdentity) -> uint64 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID :: (self: *SteamNetworkingIdentity) -> *u8 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetPSNID :: (self: *SteamNetworkingIdentity, id: uint64) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetPSNID :: (self: *SteamNetworkingIdentity) -> uint64 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetStadiaID :: (self: *SteamNetworkingIdentity, id: uint64) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetStadiaID :: (self: *SteamNetworkingIdentity) -> uint64 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: *SteamNetworkingIPAddr) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: SteamNetworkingIPAddr) #no_context {
    SteamAPI_SteamNetworkingIdentity_SetIPAddr(self, *addr);
}
SteamAPI_SteamNetworkingIdentity_GetIPAddr :: (self: *SteamNetworkingIdentity) -> *SteamNetworkingIPAddr #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetIPv4Addr :: (self: *SteamNetworkingIdentity, nIPv4: uint32, nPort: uint16) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetIPv4 :: (self: *SteamNetworkingIdentity) -> uint32 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetFakeIPType :: (self: *SteamNetworkingIdentity) -> ESteamNetworkingFakeIPType #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_IsFakeIP :: (self: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetLocalHost :: (self: *SteamNetworkingIdentity) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_IsLocalHost :: (self: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetGenericString :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetGenericString :: (self: *SteamNetworkingIdentity) -> *u8 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_SetGenericBytes :: (self: *SteamNetworkingIdentity, data: *void, cbLen: uint32) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_GetGenericBytes :: (self: *SteamNetworkingIdentity, cbLen: *s32) -> *uint8 #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: *SteamNetworkingIdentity) -> bool #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_SteamNetworkingIdentity_IsEqualTo(self, *x);
}
SteamAPI_SteamNetworkingIdentity_ToString :: (self: *SteamNetworkingIdentity, buf: *u8, cbBuf: uint32) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingIdentity_ParseString :: (self: *SteamNetworkingIdentity, pszStr: *u8) -> bool #foreign libsteam_api;

// SteamNetworkingMessage_t
SteamAPI_SteamNetworkingMessage_t_Release :: (self: *SteamNetworkingMessage_t) -> void #foreign libsteam_api;

// SteamNetworkingConfigValue_t
SteamAPI_SteamNetworkingConfigValue_t_SetInt32 :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: s32) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingConfigValue_t_SetInt64 :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: s64) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingConfigValue_t_SetFloat :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: float) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingConfigValue_t_SetPtr :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: *void) -> void #foreign libsteam_api;
SteamAPI_SteamNetworkingConfigValue_t_SetString :: (self: *SteamNetworkingConfigValue_t, eVal: ESteamNetworkingConfigValue, data: *u8) -> void #foreign libsteam_api;

// SteamDatagramHostedAddress
SteamAPI_SteamDatagramHostedAddress_Clear :: (self: *SteamDatagramHostedAddress) -> void #foreign libsteam_api;
SteamAPI_SteamDatagramHostedAddress_GetPopID :: (self: *SteamDatagramHostedAddress) -> SteamNetworkingPOPID #foreign libsteam_api;
SteamAPI_SteamDatagramHostedAddress_SetDevAddress :: (self: *SteamDatagramHostedAddress, nIP: uint32, nPort: uint16, popid: SteamNetworkingPOPID) -> void #foreign libsteam_api;

EServerMode :: enum u32 {
    Invalid                 :: 0;
    NoAuthentication        :: 1;
    Authentication          :: 2;
    AuthenticationAndSecure :: 3;

    eServerModeInvalid                 :: Invalid;
    eServerModeNoAuthentication        :: NoAuthentication;
    eServerModeAuthentication          :: Authentication;
    eServerModeAuthenticationAndSecure :: AuthenticationAndSecure;
}

// Shutdown SteamGameSeverXxx interfaces, log out, and free resources.
SteamGameServer_Shutdown :: () -> void #foreign libsteam_api;

SteamGameServer_BSecure :: () -> bool #foreign libsteam_api;
SteamGameServer_GetSteamID :: () -> uint64 #foreign libsteam_api;

SteamInternal_GameServer_Init_V2 :: (unIP: uint32, usGamePort: uint16, usQueryPort: uint16, eServerMode: EServerMode, pchVersionString: *u8, pszInternalCheckInterfaceVersions: *u8, pOutErrMsg: *SteamErrMsg) -> ESteamAPIInitResult #foreign libsteam_api;

//-----------------------------------------------------------------------------
/// ISteamNetworkingFakeUDPPort
///
/// Acts like a UDP port, sending and receiving datagrams addressed using
/// FakeIP addresses.
///
/// See: ISteamNetworkingSockets::CreateFakeUDPPort
ISteamNetworkingFakeUDPPort :: struct {
    vtable: *ISteamNetworkingFakeUDPPort_VTable;
}
ISteamNetworkingFakeUDPPort_VTable :: struct #type_info_none {
    DestroyFakeUDPPort: *void;

    SendMessageToFakeIP: *void;

    ReceiveMessages: *void;

    ScheduleCleanup: *void;
}


/// A struct used to describe a "fake IP" we have been assigned to
/// use as an identifier.  This callback is posted when
/// ISteamNetworkingSoockets::BeginAsyncRequestFakeIP completes.
/// See also ISteamNetworkingSockets::GetFakeIP
SteamNetworkingFakeIPResult_t :: struct {
//     anon_enum_261 :: enum u32 {
        k_iCallback :: 1223;
//     }

    /// Status/result of the allocation request.  Possible failure values are:
    /// - k_EResultBusy - you called GetFakeIP but the request has not completed.
    /// - k_EResultInvalidParam - you called GetFakeIP with an invalid port index
    /// - k_EResultLimitExceeded - You asked for too many ports, or made an
    ///   additional request after one had already succeeded
    /// - k_EResultNoMatch - GetFakeIP was called, but no request has been made
    ///
    /// Note that, with the exception of k_EResultBusy (if you are polling),
    /// it is highly recommended to treat all failures as fatal.
    m_eResult:  EResult;

    /// Local identity of the ISteamNetworkingSockets object that made
    /// this request and is assigned the IP.  This is needed in the callback
    /// in the case where there are multiple ISteamNetworkingSockets objects.
    /// (E.g. one for the user, and another for the local gameserver).
    m_identity: SteamNetworkingIdentity;

    /// Fake IPv4 IP address that we have been assigned.  NOTE: this
    /// IP address is not exclusively ours!  Steam tries to avoid sharing
    /// IP addresses, but this may not always be possible.  The IP address
    /// may be currently in use by another host, but with different port(s).
    /// The exact same IP:port address may have been used previously.
    /// Steam tries to avoid reusing ports until they have not been in use for
    /// some time, but this may not always be possible.
    m_unIP:     uint32;

    /// Port number(s) assigned to us.  Only the first entries will contain
    /// nonzero values.  Entries corresponding to ports beyond what was
    /// allocated for you will be zero.
    ///
    /// (NOTE: At the time of this writing, the maximum number of ports you may
    /// request is 4.)
//     anon_enum_262 :: enum u32 {
        k_nMaxReturnPorts :: 8;
//     }
    m_unPorts:  [8] uint16;
}

SteamPS3Params_t :: struct {
    m_unVersion:              uint32; // set to STEAM_PS3_CURRENT_PARAMS_VER

    pReserved:                *void;
    m_nAppId:                 uint32; // set to your game's appid

    m_rgchInstallationPath:   [1055] u8; // directory containing latest steam prx's and sdata. Can be read only (BDVD)
    m_rgchSystemCache:        [1055] u8; // temp working cache, not persistent
    m_rgchGameData:           [1055] u8; // persistent game data path for storing user data
    m_rgchNpServiceID:        [32] u8;
    m_rgchNpCommunicationID:  [10] u8;
    m_rgchNpCommunicationSig: [160] u8;

    // Language should be one of the following. must be zero terminated
    // danish
    // dutch
    // english
    // finnish
    // french
    // german
    // italian
    // korean
    // norwegian
    // polish
    // portuguese
    // russian
    // schinese
    // spanish
    // swedish
    // tchinese
    m_rgchSteamLanguage:      [64] u8;

    // region codes are "SCEA", "SCEE", "SCEJ". must be zero terminated
    m_rgchRegionCode:         [16] u8;

    // Should be SYS_TTYP3 through SYS_TTYP10, if it's 0 then Steam won't spawn a
    // thread to read console input at all.  Using this let's you use Steam console commands
    // like: profile_on, profile_off, profile_dump, mem_stats, mem_validate.
    m_cSteamInputTTY:         u32;

    Ps3netInit_t :: struct {
        m_bNeedInit:   bool;
        m_pMemory:     *void;
        m_nMemorySize: s32;
        m_flags:       s32;
    }

    m_sysNetInitInfo:         Ps3netInit_t;

    Ps3jpgInit_t :: struct {
        m_bNeedInit: bool;
    }

    m_sysJpgInitInfo:         Ps3jpgInit_t;

    Ps3pngInit_t :: struct {
        m_bNeedInit: bool;
    }

    m_sysPngInitInfo:         Ps3pngInit_t;

    Ps3sysutilUserInfo_t :: struct {
        m_bNeedInit: bool;
    }

    m_sysSysUtilUserInfo:     Ps3sysutilUserInfo_t;

    m_bIncludeNewsPage:       bool;
}

SteamPS3Memory_t :: struct {
    m_bSingleAllocation: bool; // If true, Steam will request one 6MB allocation and use the returned memory for all future allocations

    // required function pointers
    m_pfMalloc:          #type (unknown0: u64) -> *void #c_call;
    m_pfRealloc:         #type (unknown0: *void, unknown1: u64) -> *void #c_call;
    m_pfFree:            #type (unknown0: *void) -> void #c_call;
    m_pUsable_size:      #type (unknown0: *void) -> u64 #c_call;
}

#scope_file

#import "Basic"; // For assert

libsteam_api :: #library "bin/linux/libsteam_api";

// user32 :: #system_library,link_always "user32";
// gdi32 :: #system_library,link_always "gdi32";
// shell32 :: #system_library,link_always "shell32";

#run {
    {
        info := type_info(SteamIPAddress_t);
        for info.members {
            if it.name == {
                case "m_eType";
                    assert(it.offset_in_bytes == 16, "SteamIPAddress_t.m_eType has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamIPAddress_t.m_eType has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamIPAddress_t) == 20, "SteamIPAddress_t has size % instead of 20", size_of(SteamIPAddress_t));
    }

    {
        info := type_info(CSteamID.SteamID_t.SteamIDComponent_t);
        for info.members {
            if it.name == {
                case "__bitfield";
                    assert(it.offset_in_bytes == 0, "CSteamID.SteamID_t.SteamIDComponent_t.__bitfield has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamID.SteamID_t.SteamIDComponent_t.__bitfield has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CSteamID.SteamID_t.SteamIDComponent_t) == 8, "CSteamID.SteamID_t.SteamIDComponent_t has size % instead of 8", size_of(CSteamID.SteamID_t.SteamIDComponent_t));
    }

    {
        info := type_info(CSteamID.SteamID_t);
        for info.members {
            if it.name == {
                case "m_comp";
                    assert(it.offset_in_bytes == 0, "CSteamID.SteamID_t.m_comp has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamID.SteamID_t.m_comp has unexpected size % instead of 8", it.type.runtime_size);
                case "m_unAll64Bits";
                    assert(it.offset_in_bytes == 0, "CSteamID.SteamID_t.m_unAll64Bits has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamID.SteamID_t.m_unAll64Bits has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CSteamID.SteamID_t) == 8, "CSteamID.SteamID_t has size % instead of 8", size_of(CSteamID.SteamID_t));
    }

    {
        info := type_info(CSteamID);
        for info.members {
            if it.name == {
                case "m_steamid";
                    assert(it.offset_in_bytes == 0, "CSteamID.m_steamid has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamID.m_steamid has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CSteamID) == 8, "CSteamID has size % instead of 8", size_of(CSteamID));
    }

    {
        info := type_info(CGameID.GameID_t);
        for info.members {
            if it.name == {
                case "__bitfield";
                    assert(it.offset_in_bytes == 0, "CGameID.GameID_t.__bitfield has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CGameID.GameID_t.__bitfield has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CGameID.GameID_t) == 8, "CGameID.GameID_t has size % instead of 8", size_of(CGameID.GameID_t));
    }

    assert(size_of(CGameID) == 8, "CGameID has size % instead of 8", size_of(CGameID));

    {
        info := type_info(ValvePackingSentinel_t);
        for info.members {
            if it.name == {
                case "m_u32";
                    assert(it.offset_in_bytes == 0, "ValvePackingSentinel_t.m_u32 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ValvePackingSentinel_t.m_u32 has unexpected size % instead of 4", it.type.runtime_size);
                case "m_u64";
                    assert(it.offset_in_bytes == 4, "ValvePackingSentinel_t.m_u64 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ValvePackingSentinel_t.m_u64 has unexpected size % instead of 8", it.type.runtime_size);
                case "m_u16";
                    assert(it.offset_in_bytes == 12, "ValvePackingSentinel_t.m_u16 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "ValvePackingSentinel_t.m_u16 has unexpected size % instead of 2", it.type.runtime_size);
                case "m_d";
                    assert(it.offset_in_bytes == 16, "ValvePackingSentinel_t.m_d has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ValvePackingSentinel_t.m_d has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ValvePackingSentinel_t) == 24, "ValvePackingSentinel_t has size % instead of 24", size_of(ValvePackingSentinel_t));
    }

    {
        info := type_info(CCallbackBase);
        for info.members {
            if it.name == {
                case "m_nCallbackFlags";
                    assert(it.offset_in_bytes == 8, "CCallbackBase.m_nCallbackFlags has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CCallbackBase.m_nCallbackFlags has unexpected size % instead of 1", it.type.runtime_size);
                case "m_iCallback";
                    assert(it.offset_in_bytes == 12, "CCallbackBase.m_iCallback has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CCallbackBase.m_iCallback has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CCallbackBase) == 16, "CCallbackBase has size % instead of 16", size_of(CCallbackBase));
    }

    {
        info := type_info(CallbackMsg_t);
        for info.members {
            if it.name == {
                case "m_hSteamUser";
                    assert(it.offset_in_bytes == 0, "CallbackMsg_t.m_hSteamUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CallbackMsg_t.m_hSteamUser has unexpected size % instead of 4", it.type.runtime_size);
                case "m_iCallback";
                    assert(it.offset_in_bytes == 4, "CallbackMsg_t.m_iCallback has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CallbackMsg_t.m_iCallback has unexpected size % instead of 4", it.type.runtime_size);
                case "m_pubParam";
                    assert(it.offset_in_bytes == 8, "CallbackMsg_t.m_pubParam has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CallbackMsg_t.m_pubParam has unexpected size % instead of 8", it.type.runtime_size);
                case "m_cubParam";
                    assert(it.offset_in_bytes == 16, "CallbackMsg_t.m_cubParam has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CallbackMsg_t.m_cubParam has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CallbackMsg_t) == 20, "CallbackMsg_t has size % instead of 20", size_of(CallbackMsg_t));
    }

    {
        info := type_info(CSteamGameServerAPIContext);
        for info.members {
            if it.name == {
                case "m_pSteamClient";
                    assert(it.offset_in_bytes == 0, "CSteamGameServerAPIContext.m_pSteamClient has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamClient has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamGameServer";
                    assert(it.offset_in_bytes == 8, "CSteamGameServerAPIContext.m_pSteamGameServer has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamGameServer has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamGameServerUtils";
                    assert(it.offset_in_bytes == 16, "CSteamGameServerAPIContext.m_pSteamGameServerUtils has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamGameServerUtils has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamGameServerNetworking";
                    assert(it.offset_in_bytes == 24, "CSteamGameServerAPIContext.m_pSteamGameServerNetworking has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamGameServerNetworking has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamGameServerStats";
                    assert(it.offset_in_bytes == 32, "CSteamGameServerAPIContext.m_pSteamGameServerStats has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamGameServerStats has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamHTTP";
                    assert(it.offset_in_bytes == 40, "CSteamGameServerAPIContext.m_pSteamHTTP has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamHTTP has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamInventory";
                    assert(it.offset_in_bytes == 48, "CSteamGameServerAPIContext.m_pSteamInventory has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamInventory has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pSteamUGC";
                    assert(it.offset_in_bytes == 56, "CSteamGameServerAPIContext.m_pSteamUGC has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CSteamGameServerAPIContext.m_pSteamUGC has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CSteamGameServerAPIContext) == 64, "CSteamGameServerAPIContext has size % instead of 64", size_of(CSteamGameServerAPIContext));
    }

    assert(size_of(ISteamApps) == 8, "ISteamApps has size % instead of 8", size_of(ISteamApps));

    {
        info := type_info(DlcInstalled_t);
        for info.members {
            if it.name == {
                case "m_nAppID";
                    assert(it.offset_in_bytes == 0, "DlcInstalled_t.m_nAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DlcInstalled_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(DlcInstalled_t) == 4, "DlcInstalled_t has size % instead of 4", size_of(DlcInstalled_t));
    }

    assert(size_of(NewUrlLaunchParameters_t) == 1, "NewUrlLaunchParameters_t has size % instead of 1", size_of(NewUrlLaunchParameters_t));

    {
        info := type_info(AppProofOfPurchaseKeyResponse_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "AppProofOfPurchaseKeyResponse_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AppProofOfPurchaseKeyResponse_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 4, "AppProofOfPurchaseKeyResponse_t.m_nAppID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AppProofOfPurchaseKeyResponse_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cchKeyLength";
                    assert(it.offset_in_bytes == 8, "AppProofOfPurchaseKeyResponse_t.m_cchKeyLength has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AppProofOfPurchaseKeyResponse_t.m_cchKeyLength has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchKey";
                    assert(it.offset_in_bytes == 12, "AppProofOfPurchaseKeyResponse_t.m_rgchKey has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 240, "AppProofOfPurchaseKeyResponse_t.m_rgchKey has unexpected size % instead of 240", it.type.runtime_size);
            }
        }
        assert(size_of(AppProofOfPurchaseKeyResponse_t) == 252, "AppProofOfPurchaseKeyResponse_t has size % instead of 252", size_of(AppProofOfPurchaseKeyResponse_t));
    }

    {
        info := type_info(FileDetailsResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "FileDetailsResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FileDetailsResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulFileSize";
                    assert(it.offset_in_bytes == 4, "FileDetailsResult_t.m_ulFileSize has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "FileDetailsResult_t.m_ulFileSize has unexpected size % instead of 8", it.type.runtime_size);
                case "m_FileSHA";
                    assert(it.offset_in_bytes == 12, "FileDetailsResult_t.m_FileSHA has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 20, "FileDetailsResult_t.m_FileSHA has unexpected size % instead of 20", it.type.runtime_size);
                case "m_unFlags";
                    assert(it.offset_in_bytes == 32, "FileDetailsResult_t.m_unFlags has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FileDetailsResult_t.m_unFlags has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FileDetailsResult_t) == 36, "FileDetailsResult_t has size % instead of 36", size_of(FileDetailsResult_t));
    }

    {
        info := type_info(TimedTrialStatus_t);
        for info.members {
            if it.name == {
                case "m_unAppID";
                    assert(it.offset_in_bytes == 0, "TimedTrialStatus_t.m_unAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "TimedTrialStatus_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bIsOffline";
                    assert(it.offset_in_bytes == 4, "TimedTrialStatus_t.m_bIsOffline has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "TimedTrialStatus_t.m_bIsOffline has unexpected size % instead of 1", it.type.runtime_size);
                case "m_unSecondsAllowed";
                    assert(it.offset_in_bytes == 8, "TimedTrialStatus_t.m_unSecondsAllowed has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "TimedTrialStatus_t.m_unSecondsAllowed has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unSecondsPlayed";
                    assert(it.offset_in_bytes == 12, "TimedTrialStatus_t.m_unSecondsPlayed has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "TimedTrialStatus_t.m_unSecondsPlayed has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(TimedTrialStatus_t) == 16, "TimedTrialStatus_t has size % instead of 16", size_of(TimedTrialStatus_t));
    }

    assert(size_of(ISteamAppTicket) == 8, "ISteamAppTicket has size % instead of 8", size_of(ISteamAppTicket));

    assert(size_of(ISteamClient) == 8, "ISteamClient has size % instead of 8", size_of(ISteamClient));

    {
        info := type_info(InputAnalogActionData_t);
        for info.members {
            if it.name == {
                case "eMode";
                    assert(it.offset_in_bytes == 0, "InputAnalogActionData_t.eMode has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputAnalogActionData_t.eMode has unexpected size % instead of 4", it.type.runtime_size);
                case "x";
                    assert(it.offset_in_bytes == 4, "InputAnalogActionData_t.x has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputAnalogActionData_t.x has unexpected size % instead of 4", it.type.runtime_size);
                case "y";
                    assert(it.offset_in_bytes == 8, "InputAnalogActionData_t.y has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputAnalogActionData_t.y has unexpected size % instead of 4", it.type.runtime_size);
                case "bActive";
                    assert(it.offset_in_bytes == 12, "InputAnalogActionData_t.bActive has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "InputAnalogActionData_t.bActive has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(InputAnalogActionData_t) == 13, "InputAnalogActionData_t has size % instead of 13", size_of(InputAnalogActionData_t));
    }

    {
        info := type_info(InputDigitalActionData_t);
        for info.members {
            if it.name == {
                case "bState";
                    assert(it.offset_in_bytes == 0, "InputDigitalActionData_t.bState has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "InputDigitalActionData_t.bState has unexpected size % instead of 1", it.type.runtime_size);
                case "bActive";
                    assert(it.offset_in_bytes == 1, "InputDigitalActionData_t.bActive has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "InputDigitalActionData_t.bActive has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(InputDigitalActionData_t) == 2, "InputDigitalActionData_t has size % instead of 2", size_of(InputDigitalActionData_t));
    }

    {
        info := type_info(InputMotionData_t);
        for info.members {
            if it.name == {
                case "rotQuatX";
                    assert(it.offset_in_bytes == 0, "InputMotionData_t.rotQuatX has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotQuatX has unexpected size % instead of 4", it.type.runtime_size);
                case "rotQuatY";
                    assert(it.offset_in_bytes == 4, "InputMotionData_t.rotQuatY has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotQuatY has unexpected size % instead of 4", it.type.runtime_size);
                case "rotQuatZ";
                    assert(it.offset_in_bytes == 8, "InputMotionData_t.rotQuatZ has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotQuatZ has unexpected size % instead of 4", it.type.runtime_size);
                case "rotQuatW";
                    assert(it.offset_in_bytes == 12, "InputMotionData_t.rotQuatW has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotQuatW has unexpected size % instead of 4", it.type.runtime_size);
                case "posAccelX";
                    assert(it.offset_in_bytes == 16, "InputMotionData_t.posAccelX has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.posAccelX has unexpected size % instead of 4", it.type.runtime_size);
                case "posAccelY";
                    assert(it.offset_in_bytes == 20, "InputMotionData_t.posAccelY has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.posAccelY has unexpected size % instead of 4", it.type.runtime_size);
                case "posAccelZ";
                    assert(it.offset_in_bytes == 24, "InputMotionData_t.posAccelZ has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.posAccelZ has unexpected size % instead of 4", it.type.runtime_size);
                case "rotVelX";
                    assert(it.offset_in_bytes == 28, "InputMotionData_t.rotVelX has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotVelX has unexpected size % instead of 4", it.type.runtime_size);
                case "rotVelY";
                    assert(it.offset_in_bytes == 32, "InputMotionData_t.rotVelY has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotVelY has unexpected size % instead of 4", it.type.runtime_size);
                case "rotVelZ";
                    assert(it.offset_in_bytes == 36, "InputMotionData_t.rotVelZ has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "InputMotionData_t.rotVelZ has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(InputMotionData_t) == 40, "InputMotionData_t has size % instead of 40", size_of(InputMotionData_t));
    }

    {
        info := type_info(SteamInputActionEvent_t.AnalogAction_t);
        for info.members {
            if it.name == {
                case "actionHandle";
                    assert(it.offset_in_bytes == 0, "SteamInputActionEvent_t.AnalogAction_t.actionHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputActionEvent_t.AnalogAction_t.actionHandle has unexpected size % instead of 8", it.type.runtime_size);
                case "analogActionData";
                    assert(it.offset_in_bytes == 8, "SteamInputActionEvent_t.AnalogAction_t.analogActionData has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 13, "SteamInputActionEvent_t.AnalogAction_t.analogActionData has unexpected size % instead of 13", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputActionEvent_t.AnalogAction_t) == 21, "SteamInputActionEvent_t.AnalogAction_t has size % instead of 21", size_of(SteamInputActionEvent_t.AnalogAction_t));
    }

    {
        info := type_info(SteamInputActionEvent_t.DigitalAction_t);
        for info.members {
            if it.name == {
                case "actionHandle";
                    assert(it.offset_in_bytes == 0, "SteamInputActionEvent_t.DigitalAction_t.actionHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputActionEvent_t.DigitalAction_t.actionHandle has unexpected size % instead of 8", it.type.runtime_size);
                case "digitalActionData";
                    assert(it.offset_in_bytes == 8, "SteamInputActionEvent_t.DigitalAction_t.digitalActionData has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamInputActionEvent_t.DigitalAction_t.digitalActionData has unexpected size % instead of 2", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputActionEvent_t.DigitalAction_t) == 10, "SteamInputActionEvent_t.DigitalAction_t has size % instead of 10", size_of(SteamInputActionEvent_t.DigitalAction_t));
    }

    {
        info := type_info(SteamInputActionEvent_t);
        for info.members {
            if it.name == {
                case "controllerHandle";
                    assert(it.offset_in_bytes == 0, "SteamInputActionEvent_t.controllerHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputActionEvent_t.controllerHandle has unexpected size % instead of 8", it.type.runtime_size);
                case "eEventType";
                    assert(it.offset_in_bytes == 8, "SteamInputActionEvent_t.eEventType has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputActionEvent_t.eEventType has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputActionEvent_t) == 33, "SteamInputActionEvent_t has size % instead of 33", size_of(SteamInputActionEvent_t));
    }

    assert(size_of(ISteamInput) == 8, "ISteamInput has size % instead of 8", size_of(ISteamInput));

    {
        info := type_info(SteamInputDeviceConnected_t);
        for info.members {
            if it.name == {
                case "m_ulConnectedDeviceHandle";
                    assert(it.offset_in_bytes == 0, "SteamInputDeviceConnected_t.m_ulConnectedDeviceHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputDeviceConnected_t.m_ulConnectedDeviceHandle has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputDeviceConnected_t) == 8, "SteamInputDeviceConnected_t has size % instead of 8", size_of(SteamInputDeviceConnected_t));
    }

    {
        info := type_info(SteamInputDeviceDisconnected_t);
        for info.members {
            if it.name == {
                case "m_ulDisconnectedDeviceHandle";
                    assert(it.offset_in_bytes == 0, "SteamInputDeviceDisconnected_t.m_ulDisconnectedDeviceHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputDeviceDisconnected_t.m_ulDisconnectedDeviceHandle has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputDeviceDisconnected_t) == 8, "SteamInputDeviceDisconnected_t has size % instead of 8", size_of(SteamInputDeviceDisconnected_t));
    }

    {
        info := type_info(SteamInputConfigurationLoaded_t);
        for info.members {
            if it.name == {
                case "m_unAppID";
                    assert(it.offset_in_bytes == 0, "SteamInputConfigurationLoaded_t.m_unAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputConfigurationLoaded_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulDeviceHandle";
                    assert(it.offset_in_bytes == 4, "SteamInputConfigurationLoaded_t.m_ulDeviceHandle has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputConfigurationLoaded_t.m_ulDeviceHandle has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulMappingCreator";
                    assert(it.offset_in_bytes == 12, "SteamInputConfigurationLoaded_t.m_ulMappingCreator has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputConfigurationLoaded_t.m_ulMappingCreator has unexpected size % instead of 8", it.type.runtime_size);
                case "m_unMajorRevision";
                    assert(it.offset_in_bytes == 20, "SteamInputConfigurationLoaded_t.m_unMajorRevision has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputConfigurationLoaded_t.m_unMajorRevision has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unMinorRevision";
                    assert(it.offset_in_bytes == 24, "SteamInputConfigurationLoaded_t.m_unMinorRevision has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputConfigurationLoaded_t.m_unMinorRevision has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bUsesSteamInputAPI";
                    assert(it.offset_in_bytes == 28, "SteamInputConfigurationLoaded_t.m_bUsesSteamInputAPI has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamInputConfigurationLoaded_t.m_bUsesSteamInputAPI has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bUsesGamepadAPI";
                    assert(it.offset_in_bytes == 29, "SteamInputConfigurationLoaded_t.m_bUsesGamepadAPI has unexpected offset % instead of 29", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamInputConfigurationLoaded_t.m_bUsesGamepadAPI has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputConfigurationLoaded_t) == 32, "SteamInputConfigurationLoaded_t has size % instead of 32", size_of(SteamInputConfigurationLoaded_t));
    }

    {
        info := type_info(SteamInputGamepadSlotChange_t);
        for info.members {
            if it.name == {
                case "m_unAppID";
                    assert(it.offset_in_bytes == 0, "SteamInputGamepadSlotChange_t.m_unAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputGamepadSlotChange_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulDeviceHandle";
                    assert(it.offset_in_bytes == 4, "SteamInputGamepadSlotChange_t.m_ulDeviceHandle has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInputGamepadSlotChange_t.m_ulDeviceHandle has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eDeviceType";
                    assert(it.offset_in_bytes == 12, "SteamInputGamepadSlotChange_t.m_eDeviceType has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputGamepadSlotChange_t.m_eDeviceType has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nOldGamepadSlot";
                    assert(it.offset_in_bytes == 16, "SteamInputGamepadSlotChange_t.m_nOldGamepadSlot has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputGamepadSlotChange_t.m_nOldGamepadSlot has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nNewGamepadSlot";
                    assert(it.offset_in_bytes == 20, "SteamInputGamepadSlotChange_t.m_nNewGamepadSlot has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInputGamepadSlotChange_t.m_nNewGamepadSlot has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInputGamepadSlotChange_t) == 24, "SteamInputGamepadSlotChange_t has size % instead of 24", size_of(SteamInputGamepadSlotChange_t));
    }

    assert(size_of(ISteamController) == 8, "ISteamController has size % instead of 8", size_of(ISteamController));

    {
        info := type_info(FriendGameInfo_t);
        for info.members {
            if it.name == {
                case "m_gameID";
                    assert(it.offset_in_bytes == 0, "FriendGameInfo_t.m_gameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "FriendGameInfo_t.m_gameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_unGameIP";
                    assert(it.offset_in_bytes == 8, "FriendGameInfo_t.m_unGameIP has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendGameInfo_t.m_unGameIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_usGamePort";
                    assert(it.offset_in_bytes == 12, "FriendGameInfo_t.m_usGamePort has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "FriendGameInfo_t.m_usGamePort has unexpected size % instead of 2", it.type.runtime_size);
                case "m_usQueryPort";
                    assert(it.offset_in_bytes == 14, "FriendGameInfo_t.m_usQueryPort has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "FriendGameInfo_t.m_usQueryPort has unexpected size % instead of 2", it.type.runtime_size);
                case "m_steamIDLobby";
                    assert(it.offset_in_bytes == 16, "FriendGameInfo_t.m_steamIDLobby has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "FriendGameInfo_t.m_steamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(FriendGameInfo_t) == 24, "FriendGameInfo_t has size % instead of 24", size_of(FriendGameInfo_t));
    }

    assert(size_of(ISteamFriends) == 8, "ISteamFriends has size % instead of 8", size_of(ISteamFriends));

    {
        info := type_info(PersonaStateChange_t);
        for info.members {
            if it.name == {
                case "m_ulSteamID";
                    assert(it.offset_in_bytes == 0, "PersonaStateChange_t.m_ulSteamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PersonaStateChange_t.m_ulSteamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nChangeFlags";
                    assert(it.offset_in_bytes == 8, "PersonaStateChange_t.m_nChangeFlags has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PersonaStateChange_t.m_nChangeFlags has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(PersonaStateChange_t) == 12, "PersonaStateChange_t has size % instead of 12", size_of(PersonaStateChange_t));
    }

    {
        info := type_info(GameOverlayActivated_t);
        for info.members {
            if it.name == {
                case "m_bActive";
                    assert(it.offset_in_bytes == 0, "GameOverlayActivated_t.m_bActive has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GameOverlayActivated_t.m_bActive has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bUserInitiated";
                    assert(it.offset_in_bytes == 1, "GameOverlayActivated_t.m_bUserInitiated has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GameOverlayActivated_t.m_bUserInitiated has unexpected size % instead of 1", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 4, "GameOverlayActivated_t.m_nAppID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GameOverlayActivated_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_dwOverlayPID";
                    assert(it.offset_in_bytes == 8, "GameOverlayActivated_t.m_dwOverlayPID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GameOverlayActivated_t.m_dwOverlayPID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GameOverlayActivated_t) == 12, "GameOverlayActivated_t has size % instead of 12", size_of(GameOverlayActivated_t));
    }

    {
        info := type_info(GameServerChangeRequested_t);
        for info.members {
            if it.name == {
                case "m_rgchServer";
                    assert(it.offset_in_bytes == 0, "GameServerChangeRequested_t.m_rgchServer has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "GameServerChangeRequested_t.m_rgchServer has unexpected size % instead of 64", it.type.runtime_size);
                case "m_rgchPassword";
                    assert(it.offset_in_bytes == 64, "GameServerChangeRequested_t.m_rgchPassword has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "GameServerChangeRequested_t.m_rgchPassword has unexpected size % instead of 64", it.type.runtime_size);
            }
        }
        assert(size_of(GameServerChangeRequested_t) == 128, "GameServerChangeRequested_t has size % instead of 128", size_of(GameServerChangeRequested_t));
    }

    {
        info := type_info(GameLobbyJoinRequested_t);
        for info.members {
            if it.name == {
                case "m_steamIDLobby";
                    assert(it.offset_in_bytes == 0, "GameLobbyJoinRequested_t.m_steamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameLobbyJoinRequested_t.m_steamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_steamIDFriend";
                    assert(it.offset_in_bytes == 8, "GameLobbyJoinRequested_t.m_steamIDFriend has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameLobbyJoinRequested_t.m_steamIDFriend has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GameLobbyJoinRequested_t) == 16, "GameLobbyJoinRequested_t has size % instead of 16", size_of(GameLobbyJoinRequested_t));
    }

    {
        info := type_info(AvatarImageLoaded_t);
        for info.members {
            if it.name == {
                case "m_steamID";
                    assert(it.offset_in_bytes == 0, "AvatarImageLoaded_t.m_steamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "AvatarImageLoaded_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_iImage";
                    assert(it.offset_in_bytes == 8, "AvatarImageLoaded_t.m_iImage has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AvatarImageLoaded_t.m_iImage has unexpected size % instead of 4", it.type.runtime_size);
                case "m_iWide";
                    assert(it.offset_in_bytes == 12, "AvatarImageLoaded_t.m_iWide has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AvatarImageLoaded_t.m_iWide has unexpected size % instead of 4", it.type.runtime_size);
                case "m_iTall";
                    assert(it.offset_in_bytes == 16, "AvatarImageLoaded_t.m_iTall has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AvatarImageLoaded_t.m_iTall has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(AvatarImageLoaded_t) == 20, "AvatarImageLoaded_t has size % instead of 20", size_of(AvatarImageLoaded_t));
    }

    {
        info := type_info(ClanOfficerListResponse_t);
        for info.members {
            if it.name == {
                case "m_steamIDClan";
                    assert(it.offset_in_bytes == 0, "ClanOfficerListResponse_t.m_steamIDClan has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ClanOfficerListResponse_t.m_steamIDClan has unexpected size % instead of 8", it.type.runtime_size);
                case "m_cOfficers";
                    assert(it.offset_in_bytes == 8, "ClanOfficerListResponse_t.m_cOfficers has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ClanOfficerListResponse_t.m_cOfficers has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bSuccess";
                    assert(it.offset_in_bytes == 12, "ClanOfficerListResponse_t.m_bSuccess has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "ClanOfficerListResponse_t.m_bSuccess has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(ClanOfficerListResponse_t) == 16, "ClanOfficerListResponse_t has size % instead of 16", size_of(ClanOfficerListResponse_t));
    }

    {
        info := type_info(FriendRichPresenceUpdate_t);
        for info.members {
            if it.name == {
                case "m_steamIDFriend";
                    assert(it.offset_in_bytes == 0, "FriendRichPresenceUpdate_t.m_steamIDFriend has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "FriendRichPresenceUpdate_t.m_steamIDFriend has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 8, "FriendRichPresenceUpdate_t.m_nAppID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendRichPresenceUpdate_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FriendRichPresenceUpdate_t) == 12, "FriendRichPresenceUpdate_t has size % instead of 12", size_of(FriendRichPresenceUpdate_t));
    }

    {
        info := type_info(GameRichPresenceJoinRequested_t);
        for info.members {
            if it.name == {
                case "m_steamIDFriend";
                    assert(it.offset_in_bytes == 0, "GameRichPresenceJoinRequested_t.m_steamIDFriend has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameRichPresenceJoinRequested_t.m_steamIDFriend has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgchConnect";
                    assert(it.offset_in_bytes == 8, "GameRichPresenceJoinRequested_t.m_rgchConnect has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "GameRichPresenceJoinRequested_t.m_rgchConnect has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(GameRichPresenceJoinRequested_t) == 264, "GameRichPresenceJoinRequested_t has size % instead of 264", size_of(GameRichPresenceJoinRequested_t));
    }

    {
        info := type_info(GameConnectedClanChatMsg_t);
        for info.members {
            if it.name == {
                case "m_steamIDClanChat";
                    assert(it.offset_in_bytes == 0, "GameConnectedClanChatMsg_t.m_steamIDClanChat has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedClanChatMsg_t.m_steamIDClanChat has unexpected size % instead of 8", it.type.runtime_size);
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 8, "GameConnectedClanChatMsg_t.m_steamIDUser has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedClanChatMsg_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_iMessageID";
                    assert(it.offset_in_bytes == 16, "GameConnectedClanChatMsg_t.m_iMessageID has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GameConnectedClanChatMsg_t.m_iMessageID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GameConnectedClanChatMsg_t) == 20, "GameConnectedClanChatMsg_t has size % instead of 20", size_of(GameConnectedClanChatMsg_t));
    }

    {
        info := type_info(GameConnectedChatJoin_t);
        for info.members {
            if it.name == {
                case "m_steamIDClanChat";
                    assert(it.offset_in_bytes == 0, "GameConnectedChatJoin_t.m_steamIDClanChat has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedChatJoin_t.m_steamIDClanChat has unexpected size % instead of 8", it.type.runtime_size);
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 8, "GameConnectedChatJoin_t.m_steamIDUser has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedChatJoin_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GameConnectedChatJoin_t) == 16, "GameConnectedChatJoin_t has size % instead of 16", size_of(GameConnectedChatJoin_t));
    }

    {
        info := type_info(GameConnectedChatLeave_t);
        for info.members {
            if it.name == {
                case "m_steamIDClanChat";
                    assert(it.offset_in_bytes == 0, "GameConnectedChatLeave_t.m_steamIDClanChat has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedChatLeave_t.m_steamIDClanChat has unexpected size % instead of 8", it.type.runtime_size);
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 8, "GameConnectedChatLeave_t.m_steamIDUser has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedChatLeave_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bKicked";
                    assert(it.offset_in_bytes == 16, "GameConnectedChatLeave_t.m_bKicked has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GameConnectedChatLeave_t.m_bKicked has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bDropped";
                    assert(it.offset_in_bytes == 17, "GameConnectedChatLeave_t.m_bDropped has unexpected offset % instead of 17", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GameConnectedChatLeave_t.m_bDropped has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(GameConnectedChatLeave_t) == 18, "GameConnectedChatLeave_t has size % instead of 18", size_of(GameConnectedChatLeave_t));
    }

    {
        info := type_info(DownloadClanActivityCountsResult_t);
        for info.members {
            if it.name == {
                case "m_bSuccess";
                    assert(it.offset_in_bytes == 0, "DownloadClanActivityCountsResult_t.m_bSuccess has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DownloadClanActivityCountsResult_t.m_bSuccess has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(DownloadClanActivityCountsResult_t) == 1, "DownloadClanActivityCountsResult_t has size % instead of 1", size_of(DownloadClanActivityCountsResult_t));
    }

    {
        info := type_info(JoinClanChatRoomCompletionResult_t);
        for info.members {
            if it.name == {
                case "m_steamIDClanChat";
                    assert(it.offset_in_bytes == 0, "JoinClanChatRoomCompletionResult_t.m_steamIDClanChat has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JoinClanChatRoomCompletionResult_t.m_steamIDClanChat has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eChatRoomEnterResponse";
                    assert(it.offset_in_bytes == 8, "JoinClanChatRoomCompletionResult_t.m_eChatRoomEnterResponse has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JoinClanChatRoomCompletionResult_t.m_eChatRoomEnterResponse has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JoinClanChatRoomCompletionResult_t) == 12, "JoinClanChatRoomCompletionResult_t has size % instead of 12", size_of(JoinClanChatRoomCompletionResult_t));
    }

    {
        info := type_info(GameConnectedFriendChatMsg_t);
        for info.members {
            if it.name == {
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 0, "GameConnectedFriendChatMsg_t.m_steamIDUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GameConnectedFriendChatMsg_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_iMessageID";
                    assert(it.offset_in_bytes == 8, "GameConnectedFriendChatMsg_t.m_iMessageID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GameConnectedFriendChatMsg_t.m_iMessageID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GameConnectedFriendChatMsg_t) == 12, "GameConnectedFriendChatMsg_t has size % instead of 12", size_of(GameConnectedFriendChatMsg_t));
    }

    {
        info := type_info(FriendsGetFollowerCount_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "FriendsGetFollowerCount_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendsGetFollowerCount_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamID";
                    assert(it.offset_in_bytes == 4, "FriendsGetFollowerCount_t.m_steamID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "FriendsGetFollowerCount_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nCount";
                    assert(it.offset_in_bytes == 12, "FriendsGetFollowerCount_t.m_nCount has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendsGetFollowerCount_t.m_nCount has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FriendsGetFollowerCount_t) == 16, "FriendsGetFollowerCount_t has size % instead of 16", size_of(FriendsGetFollowerCount_t));
    }

    {
        info := type_info(FriendsIsFollowing_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "FriendsIsFollowing_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendsIsFollowing_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamID";
                    assert(it.offset_in_bytes == 4, "FriendsIsFollowing_t.m_steamID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "FriendsIsFollowing_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bIsFollowing";
                    assert(it.offset_in_bytes == 12, "FriendsIsFollowing_t.m_bIsFollowing has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "FriendsIsFollowing_t.m_bIsFollowing has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(FriendsIsFollowing_t) == 16, "FriendsIsFollowing_t has size % instead of 16", size_of(FriendsIsFollowing_t));
    }

    {
        info := type_info(FriendsEnumerateFollowingList_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "FriendsEnumerateFollowingList_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendsEnumerateFollowingList_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgSteamID";
                    assert(it.offset_in_bytes == 4, "FriendsEnumerateFollowingList_t.m_rgSteamID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 400, "FriendsEnumerateFollowingList_t.m_rgSteamID has unexpected size % instead of 400", it.type.runtime_size);
                case "m_nResultsReturned";
                    assert(it.offset_in_bytes == 404, "FriendsEnumerateFollowingList_t.m_nResultsReturned has unexpected offset % instead of 404", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendsEnumerateFollowingList_t.m_nResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalResultCount";
                    assert(it.offset_in_bytes == 408, "FriendsEnumerateFollowingList_t.m_nTotalResultCount has unexpected offset % instead of 408", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FriendsEnumerateFollowingList_t.m_nTotalResultCount has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FriendsEnumerateFollowingList_t) == 412, "FriendsEnumerateFollowingList_t has size % instead of 412", size_of(FriendsEnumerateFollowingList_t));
    }

    {
        info := type_info(SetPersonaNameResponse_t);
        for info.members {
            if it.name == {
                case "m_bSuccess";
                    assert(it.offset_in_bytes == 0, "SetPersonaNameResponse_t.m_bSuccess has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SetPersonaNameResponse_t.m_bSuccess has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bLocalSuccess";
                    assert(it.offset_in_bytes == 1, "SetPersonaNameResponse_t.m_bLocalSuccess has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SetPersonaNameResponse_t.m_bLocalSuccess has unexpected size % instead of 1", it.type.runtime_size);
                case "m_result";
                    assert(it.offset_in_bytes == 4, "SetPersonaNameResponse_t.m_result has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SetPersonaNameResponse_t.m_result has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SetPersonaNameResponse_t) == 8, "SetPersonaNameResponse_t has size % instead of 8", size_of(SetPersonaNameResponse_t));
    }

    assert(size_of(UnreadChatMessagesChanged_t) == 1, "UnreadChatMessagesChanged_t has size % instead of 1", size_of(UnreadChatMessagesChanged_t));

    {
        info := type_info(OverlayBrowserProtocolNavigation_t);
        for info.members {
            if it.name == {
                case "rgchURI";
                    assert(it.offset_in_bytes == 0, "OverlayBrowserProtocolNavigation_t.rgchURI has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1024, "OverlayBrowserProtocolNavigation_t.rgchURI has unexpected size % instead of 1024", it.type.runtime_size);
            }
        }
        assert(size_of(OverlayBrowserProtocolNavigation_t) == 1024, "OverlayBrowserProtocolNavigation_t has size % instead of 1024", size_of(OverlayBrowserProtocolNavigation_t));
    }

    {
        info := type_info(EquippedProfileItemsChanged_t);
        for info.members {
            if it.name == {
                case "m_steamID";
                    assert(it.offset_in_bytes == 0, "EquippedProfileItemsChanged_t.m_steamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "EquippedProfileItemsChanged_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(EquippedProfileItemsChanged_t) == 8, "EquippedProfileItemsChanged_t has size % instead of 8", size_of(EquippedProfileItemsChanged_t));
    }

    {
        info := type_info(EquippedProfileItems_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "EquippedProfileItems_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "EquippedProfileItems_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamID";
                    assert(it.offset_in_bytes == 4, "EquippedProfileItems_t.m_steamID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "EquippedProfileItems_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bHasAnimatedAvatar";
                    assert(it.offset_in_bytes == 12, "EquippedProfileItems_t.m_bHasAnimatedAvatar has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "EquippedProfileItems_t.m_bHasAnimatedAvatar has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bHasAvatarFrame";
                    assert(it.offset_in_bytes == 13, "EquippedProfileItems_t.m_bHasAvatarFrame has unexpected offset % instead of 13", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "EquippedProfileItems_t.m_bHasAvatarFrame has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bHasProfileModifier";
                    assert(it.offset_in_bytes == 14, "EquippedProfileItems_t.m_bHasProfileModifier has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "EquippedProfileItems_t.m_bHasProfileModifier has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bHasProfileBackground";
                    assert(it.offset_in_bytes == 15, "EquippedProfileItems_t.m_bHasProfileBackground has unexpected offset % instead of 15", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "EquippedProfileItems_t.m_bHasProfileBackground has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bHasMiniProfileBackground";
                    assert(it.offset_in_bytes == 16, "EquippedProfileItems_t.m_bHasMiniProfileBackground has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "EquippedProfileItems_t.m_bHasMiniProfileBackground has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(EquippedProfileItems_t) == 20, "EquippedProfileItems_t has size % instead of 20", size_of(EquippedProfileItems_t));
    }

    assert(size_of(ISteamGameCoordinator) == 8, "ISteamGameCoordinator has size % instead of 8", size_of(ISteamGameCoordinator));

    {
        info := type_info(GCMessageAvailable_t);
        for info.members {
            if it.name == {
                case "m_nMessageSize";
                    assert(it.offset_in_bytes == 0, "GCMessageAvailable_t.m_nMessageSize has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GCMessageAvailable_t.m_nMessageSize has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GCMessageAvailable_t) == 4, "GCMessageAvailable_t has size % instead of 4", size_of(GCMessageAvailable_t));
    }

    assert(size_of(GCMessageFailed_t) == 1, "GCMessageFailed_t has size % instead of 1", size_of(GCMessageFailed_t));

    assert(size_of(ISteamGameServer) == 8, "ISteamGameServer has size % instead of 8", size_of(ISteamGameServer));

    {
        info := type_info(GSClientApprove_t);
        for info.members {
            if it.name == {
                case "m_SteamID";
                    assert(it.offset_in_bytes == 0, "GSClientApprove_t.m_SteamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientApprove_t.m_SteamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_OwnerSteamID";
                    assert(it.offset_in_bytes == 8, "GSClientApprove_t.m_OwnerSteamID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientApprove_t.m_OwnerSteamID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GSClientApprove_t) == 16, "GSClientApprove_t has size % instead of 16", size_of(GSClientApprove_t));
    }

    {
        info := type_info(GSClientDeny_t);
        for info.members {
            if it.name == {
                case "m_SteamID";
                    assert(it.offset_in_bytes == 0, "GSClientDeny_t.m_SteamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientDeny_t.m_SteamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eDenyReason";
                    assert(it.offset_in_bytes == 8, "GSClientDeny_t.m_eDenyReason has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSClientDeny_t.m_eDenyReason has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchOptionalText";
                    assert(it.offset_in_bytes == 12, "GSClientDeny_t.m_rgchOptionalText has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "GSClientDeny_t.m_rgchOptionalText has unexpected size % instead of 128", it.type.runtime_size);
            }
        }
        assert(size_of(GSClientDeny_t) == 140, "GSClientDeny_t has size % instead of 140", size_of(GSClientDeny_t));
    }

    {
        info := type_info(GSClientKick_t);
        for info.members {
            if it.name == {
                case "m_SteamID";
                    assert(it.offset_in_bytes == 0, "GSClientKick_t.m_SteamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientKick_t.m_SteamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eDenyReason";
                    assert(it.offset_in_bytes == 8, "GSClientKick_t.m_eDenyReason has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSClientKick_t.m_eDenyReason has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GSClientKick_t) == 12, "GSClientKick_t has size % instead of 12", size_of(GSClientKick_t));
    }

    {
        info := type_info(GSClientAchievementStatus_t);
        for info.members {
            if it.name == {
                case "m_SteamID";
                    assert(it.offset_in_bytes == 0, "GSClientAchievementStatus_t.m_SteamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientAchievementStatus_t.m_SteamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pchAchievement";
                    assert(it.offset_in_bytes == 8, "GSClientAchievementStatus_t.m_pchAchievement has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "GSClientAchievementStatus_t.m_pchAchievement has unexpected size % instead of 128", it.type.runtime_size);
                case "m_bUnlocked";
                    assert(it.offset_in_bytes == 136, "GSClientAchievementStatus_t.m_bUnlocked has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GSClientAchievementStatus_t.m_bUnlocked has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(GSClientAchievementStatus_t) == 140, "GSClientAchievementStatus_t has size % instead of 140", size_of(GSClientAchievementStatus_t));
    }

    {
        info := type_info(GSPolicyResponse_t);
        for info.members {
            if it.name == {
                case "m_bSecure";
                    assert(it.offset_in_bytes == 0, "GSPolicyResponse_t.m_bSecure has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GSPolicyResponse_t.m_bSecure has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(GSPolicyResponse_t) == 1, "GSPolicyResponse_t has size % instead of 1", size_of(GSPolicyResponse_t));
    }

    {
        info := type_info(GSGameplayStats_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GSGameplayStats_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSGameplayStats_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nRank";
                    assert(it.offset_in_bytes == 4, "GSGameplayStats_t.m_nRank has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSGameplayStats_t.m_nRank has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unTotalConnects";
                    assert(it.offset_in_bytes == 8, "GSGameplayStats_t.m_unTotalConnects has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSGameplayStats_t.m_unTotalConnects has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unTotalMinutesPlayed";
                    assert(it.offset_in_bytes == 12, "GSGameplayStats_t.m_unTotalMinutesPlayed has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSGameplayStats_t.m_unTotalMinutesPlayed has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GSGameplayStats_t) == 16, "GSGameplayStats_t has size % instead of 16", size_of(GSGameplayStats_t));
    }

    {
        info := type_info(GSClientGroupStatus_t);
        for info.members {
            if it.name == {
                case "m_SteamIDUser";
                    assert(it.offset_in_bytes == 0, "GSClientGroupStatus_t.m_SteamIDUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientGroupStatus_t.m_SteamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_SteamIDGroup";
                    assert(it.offset_in_bytes == 8, "GSClientGroupStatus_t.m_SteamIDGroup has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSClientGroupStatus_t.m_SteamIDGroup has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bMember";
                    assert(it.offset_in_bytes == 16, "GSClientGroupStatus_t.m_bMember has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GSClientGroupStatus_t.m_bMember has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bOfficer";
                    assert(it.offset_in_bytes == 17, "GSClientGroupStatus_t.m_bOfficer has unexpected offset % instead of 17", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GSClientGroupStatus_t.m_bOfficer has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(GSClientGroupStatus_t) == 18, "GSClientGroupStatus_t has size % instead of 18", size_of(GSClientGroupStatus_t));
    }

    {
        info := type_info(GSReputation_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GSReputation_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSReputation_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unReputationScore";
                    assert(it.offset_in_bytes == 4, "GSReputation_t.m_unReputationScore has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSReputation_t.m_unReputationScore has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bBanned";
                    assert(it.offset_in_bytes == 8, "GSReputation_t.m_bBanned has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GSReputation_t.m_bBanned has unexpected size % instead of 1", it.type.runtime_size);
                case "m_unBannedIP";
                    assert(it.offset_in_bytes == 12, "GSReputation_t.m_unBannedIP has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSReputation_t.m_unBannedIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_usBannedPort";
                    assert(it.offset_in_bytes == 16, "GSReputation_t.m_usBannedPort has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "GSReputation_t.m_usBannedPort has unexpected size % instead of 2", it.type.runtime_size);
                case "m_ulBannedGameID";
                    assert(it.offset_in_bytes == 20, "GSReputation_t.m_ulBannedGameID has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSReputation_t.m_ulBannedGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_unBanExpires";
                    assert(it.offset_in_bytes == 28, "GSReputation_t.m_unBanExpires has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSReputation_t.m_unBanExpires has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GSReputation_t) == 32, "GSReputation_t has size % instead of 32", size_of(GSReputation_t));
    }

    {
        info := type_info(AssociateWithClanResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "AssociateWithClanResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AssociateWithClanResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(AssociateWithClanResult_t) == 4, "AssociateWithClanResult_t has size % instead of 4", size_of(AssociateWithClanResult_t));
    }

    {
        info := type_info(ComputeNewPlayerCompatibilityResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "ComputeNewPlayerCompatibilityResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ComputeNewPlayerCompatibilityResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cPlayersThatDontLikeCandidate";
                    assert(it.offset_in_bytes == 4, "ComputeNewPlayerCompatibilityResult_t.m_cPlayersThatDontLikeCandidate has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ComputeNewPlayerCompatibilityResult_t.m_cPlayersThatDontLikeCandidate has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cPlayersThatCandidateDoesntLike";
                    assert(it.offset_in_bytes == 8, "ComputeNewPlayerCompatibilityResult_t.m_cPlayersThatCandidateDoesntLike has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ComputeNewPlayerCompatibilityResult_t.m_cPlayersThatCandidateDoesntLike has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cClanPlayersThatDontLikeCandidate";
                    assert(it.offset_in_bytes == 12, "ComputeNewPlayerCompatibilityResult_t.m_cClanPlayersThatDontLikeCandidate has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ComputeNewPlayerCompatibilityResult_t.m_cClanPlayersThatDontLikeCandidate has unexpected size % instead of 4", it.type.runtime_size);
                case "m_SteamIDCandidate";
                    assert(it.offset_in_bytes == 16, "ComputeNewPlayerCompatibilityResult_t.m_SteamIDCandidate has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ComputeNewPlayerCompatibilityResult_t.m_SteamIDCandidate has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ComputeNewPlayerCompatibilityResult_t) == 24, "ComputeNewPlayerCompatibilityResult_t has size % instead of 24", size_of(ComputeNewPlayerCompatibilityResult_t));
    }

    assert(size_of(ISteamGameServerStats) == 8, "ISteamGameServerStats has size % instead of 8", size_of(ISteamGameServerStats));

    {
        info := type_info(GSStatsReceived_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GSStatsReceived_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSStatsReceived_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 4, "GSStatsReceived_t.m_steamIDUser has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSStatsReceived_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GSStatsReceived_t) == 12, "GSStatsReceived_t has size % instead of 12", size_of(GSStatsReceived_t));
    }

    {
        info := type_info(GSStatsStored_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GSStatsStored_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GSStatsStored_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 4, "GSStatsStored_t.m_steamIDUser has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSStatsStored_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GSStatsStored_t) == 12, "GSStatsStored_t has size % instead of 12", size_of(GSStatsStored_t));
    }

    {
        info := type_info(GSStatsUnloaded_t);
        for info.members {
            if it.name == {
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 0, "GSStatsUnloaded_t.m_steamIDUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GSStatsUnloaded_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(GSStatsUnloaded_t) == 8, "GSStatsUnloaded_t has size % instead of 8", size_of(GSStatsUnloaded_t));
    }

    assert(size_of(ISteamHTMLSurface) == 8, "ISteamHTMLSurface has size % instead of 8", size_of(ISteamHTMLSurface));

    {
        info := type_info(HTML_BrowserReady_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_BrowserReady_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_BrowserReady_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_BrowserReady_t) == 4, "HTML_BrowserReady_t has size % instead of 4", size_of(HTML_BrowserReady_t));
    }

    {
        info := type_info(HTML_NeedsPaint_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_NeedsPaint_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pBGRA";
                    assert(it.offset_in_bytes == 4, "HTML_NeedsPaint_t.pBGRA has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_NeedsPaint_t.pBGRA has unexpected size % instead of 8", it.type.runtime_size);
                case "unWide";
                    assert(it.offset_in_bytes == 12, "HTML_NeedsPaint_t.unWide has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unWide has unexpected size % instead of 4", it.type.runtime_size);
                case "unTall";
                    assert(it.offset_in_bytes == 16, "HTML_NeedsPaint_t.unTall has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unTall has unexpected size % instead of 4", it.type.runtime_size);
                case "unUpdateX";
                    assert(it.offset_in_bytes == 20, "HTML_NeedsPaint_t.unUpdateX has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unUpdateX has unexpected size % instead of 4", it.type.runtime_size);
                case "unUpdateY";
                    assert(it.offset_in_bytes == 24, "HTML_NeedsPaint_t.unUpdateY has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unUpdateY has unexpected size % instead of 4", it.type.runtime_size);
                case "unUpdateWide";
                    assert(it.offset_in_bytes == 28, "HTML_NeedsPaint_t.unUpdateWide has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unUpdateWide has unexpected size % instead of 4", it.type.runtime_size);
                case "unUpdateTall";
                    assert(it.offset_in_bytes == 32, "HTML_NeedsPaint_t.unUpdateTall has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unUpdateTall has unexpected size % instead of 4", it.type.runtime_size);
                case "unScrollX";
                    assert(it.offset_in_bytes == 36, "HTML_NeedsPaint_t.unScrollX has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unScrollX has unexpected size % instead of 4", it.type.runtime_size);
                case "unScrollY";
                    assert(it.offset_in_bytes == 40, "HTML_NeedsPaint_t.unScrollY has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unScrollY has unexpected size % instead of 4", it.type.runtime_size);
                case "flPageScale";
                    assert(it.offset_in_bytes == 44, "HTML_NeedsPaint_t.flPageScale has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.flPageScale has unexpected size % instead of 4", it.type.runtime_size);
                case "unPageSerial";
                    assert(it.offset_in_bytes == 48, "HTML_NeedsPaint_t.unPageSerial has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NeedsPaint_t.unPageSerial has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_NeedsPaint_t) == 52, "HTML_NeedsPaint_t has size % instead of 52", size_of(HTML_NeedsPaint_t));
    }

    {
        info := type_info(HTML_StartRequest_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_StartRequest_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_StartRequest_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchURL";
                    assert(it.offset_in_bytes == 4, "HTML_StartRequest_t.pchURL has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_StartRequest_t.pchURL has unexpected size % instead of 8", it.type.runtime_size);
                case "pchTarget";
                    assert(it.offset_in_bytes == 12, "HTML_StartRequest_t.pchTarget has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_StartRequest_t.pchTarget has unexpected size % instead of 8", it.type.runtime_size);
                case "pchPostData";
                    assert(it.offset_in_bytes == 20, "HTML_StartRequest_t.pchPostData has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_StartRequest_t.pchPostData has unexpected size % instead of 8", it.type.runtime_size);
                case "bIsRedirect";
                    assert(it.offset_in_bytes == 28, "HTML_StartRequest_t.bIsRedirect has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_StartRequest_t.bIsRedirect has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_StartRequest_t) == 32, "HTML_StartRequest_t has size % instead of 32", size_of(HTML_StartRequest_t));
    }

    {
        info := type_info(HTML_CloseBrowser_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_CloseBrowser_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_CloseBrowser_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_CloseBrowser_t) == 4, "HTML_CloseBrowser_t has size % instead of 4", size_of(HTML_CloseBrowser_t));
    }

    {
        info := type_info(HTML_URLChanged_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_URLChanged_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_URLChanged_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchURL";
                    assert(it.offset_in_bytes == 4, "HTML_URLChanged_t.pchURL has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_URLChanged_t.pchURL has unexpected size % instead of 8", it.type.runtime_size);
                case "pchPostData";
                    assert(it.offset_in_bytes == 12, "HTML_URLChanged_t.pchPostData has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_URLChanged_t.pchPostData has unexpected size % instead of 8", it.type.runtime_size);
                case "bIsRedirect";
                    assert(it.offset_in_bytes == 20, "HTML_URLChanged_t.bIsRedirect has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_URLChanged_t.bIsRedirect has unexpected size % instead of 1", it.type.runtime_size);
                case "pchPageTitle";
                    assert(it.offset_in_bytes == 24, "HTML_URLChanged_t.pchPageTitle has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_URLChanged_t.pchPageTitle has unexpected size % instead of 8", it.type.runtime_size);
                case "bNewNavigation";
                    assert(it.offset_in_bytes == 32, "HTML_URLChanged_t.bNewNavigation has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_URLChanged_t.bNewNavigation has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_URLChanged_t) == 36, "HTML_URLChanged_t has size % instead of 36", size_of(HTML_URLChanged_t));
    }

    {
        info := type_info(HTML_FinishedRequest_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_FinishedRequest_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_FinishedRequest_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchURL";
                    assert(it.offset_in_bytes == 4, "HTML_FinishedRequest_t.pchURL has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_FinishedRequest_t.pchURL has unexpected size % instead of 8", it.type.runtime_size);
                case "pchPageTitle";
                    assert(it.offset_in_bytes == 12, "HTML_FinishedRequest_t.pchPageTitle has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_FinishedRequest_t.pchPageTitle has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_FinishedRequest_t) == 20, "HTML_FinishedRequest_t has size % instead of 20", size_of(HTML_FinishedRequest_t));
    }

    {
        info := type_info(HTML_OpenLinkInNewTab_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_OpenLinkInNewTab_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_OpenLinkInNewTab_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchURL";
                    assert(it.offset_in_bytes == 4, "HTML_OpenLinkInNewTab_t.pchURL has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_OpenLinkInNewTab_t.pchURL has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_OpenLinkInNewTab_t) == 12, "HTML_OpenLinkInNewTab_t has size % instead of 12", size_of(HTML_OpenLinkInNewTab_t));
    }

    {
        info := type_info(HTML_ChangedTitle_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_ChangedTitle_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_ChangedTitle_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchTitle";
                    assert(it.offset_in_bytes == 4, "HTML_ChangedTitle_t.pchTitle has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_ChangedTitle_t.pchTitle has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_ChangedTitle_t) == 12, "HTML_ChangedTitle_t has size % instead of 12", size_of(HTML_ChangedTitle_t));
    }

    {
        info := type_info(HTML_SearchResults_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_SearchResults_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_SearchResults_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "unResults";
                    assert(it.offset_in_bytes == 4, "HTML_SearchResults_t.unResults has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_SearchResults_t.unResults has unexpected size % instead of 4", it.type.runtime_size);
                case "unCurrentMatch";
                    assert(it.offset_in_bytes == 8, "HTML_SearchResults_t.unCurrentMatch has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_SearchResults_t.unCurrentMatch has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_SearchResults_t) == 12, "HTML_SearchResults_t has size % instead of 12", size_of(HTML_SearchResults_t));
    }

    {
        info := type_info(HTML_CanGoBackAndForward_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_CanGoBackAndForward_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_CanGoBackAndForward_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "bCanGoBack";
                    assert(it.offset_in_bytes == 4, "HTML_CanGoBackAndForward_t.bCanGoBack has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_CanGoBackAndForward_t.bCanGoBack has unexpected size % instead of 1", it.type.runtime_size);
                case "bCanGoForward";
                    assert(it.offset_in_bytes == 5, "HTML_CanGoBackAndForward_t.bCanGoForward has unexpected offset % instead of 5", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_CanGoBackAndForward_t.bCanGoForward has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_CanGoBackAndForward_t) == 8, "HTML_CanGoBackAndForward_t has size % instead of 8", size_of(HTML_CanGoBackAndForward_t));
    }

    {
        info := type_info(HTML_HorizontalScroll_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_HorizontalScroll_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_HorizontalScroll_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "unScrollMax";
                    assert(it.offset_in_bytes == 4, "HTML_HorizontalScroll_t.unScrollMax has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_HorizontalScroll_t.unScrollMax has unexpected size % instead of 4", it.type.runtime_size);
                case "unScrollCurrent";
                    assert(it.offset_in_bytes == 8, "HTML_HorizontalScroll_t.unScrollCurrent has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_HorizontalScroll_t.unScrollCurrent has unexpected size % instead of 4", it.type.runtime_size);
                case "flPageScale";
                    assert(it.offset_in_bytes == 12, "HTML_HorizontalScroll_t.flPageScale has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_HorizontalScroll_t.flPageScale has unexpected size % instead of 4", it.type.runtime_size);
                case "bVisible";
                    assert(it.offset_in_bytes == 16, "HTML_HorizontalScroll_t.bVisible has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_HorizontalScroll_t.bVisible has unexpected size % instead of 1", it.type.runtime_size);
                case "unPageSize";
                    assert(it.offset_in_bytes == 20, "HTML_HorizontalScroll_t.unPageSize has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_HorizontalScroll_t.unPageSize has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_HorizontalScroll_t) == 24, "HTML_HorizontalScroll_t has size % instead of 24", size_of(HTML_HorizontalScroll_t));
    }

    {
        info := type_info(HTML_VerticalScroll_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_VerticalScroll_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_VerticalScroll_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "unScrollMax";
                    assert(it.offset_in_bytes == 4, "HTML_VerticalScroll_t.unScrollMax has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_VerticalScroll_t.unScrollMax has unexpected size % instead of 4", it.type.runtime_size);
                case "unScrollCurrent";
                    assert(it.offset_in_bytes == 8, "HTML_VerticalScroll_t.unScrollCurrent has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_VerticalScroll_t.unScrollCurrent has unexpected size % instead of 4", it.type.runtime_size);
                case "flPageScale";
                    assert(it.offset_in_bytes == 12, "HTML_VerticalScroll_t.flPageScale has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_VerticalScroll_t.flPageScale has unexpected size % instead of 4", it.type.runtime_size);
                case "bVisible";
                    assert(it.offset_in_bytes == 16, "HTML_VerticalScroll_t.bVisible has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_VerticalScroll_t.bVisible has unexpected size % instead of 1", it.type.runtime_size);
                case "unPageSize";
                    assert(it.offset_in_bytes == 20, "HTML_VerticalScroll_t.unPageSize has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_VerticalScroll_t.unPageSize has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_VerticalScroll_t) == 24, "HTML_VerticalScroll_t has size % instead of 24", size_of(HTML_VerticalScroll_t));
    }

    {
        info := type_info(HTML_LinkAtPosition_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_LinkAtPosition_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_LinkAtPosition_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "x";
                    assert(it.offset_in_bytes == 4, "HTML_LinkAtPosition_t.x has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_LinkAtPosition_t.x has unexpected size % instead of 4", it.type.runtime_size);
                case "y";
                    assert(it.offset_in_bytes == 8, "HTML_LinkAtPosition_t.y has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_LinkAtPosition_t.y has unexpected size % instead of 4", it.type.runtime_size);
                case "pchURL";
                    assert(it.offset_in_bytes == 12, "HTML_LinkAtPosition_t.pchURL has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_LinkAtPosition_t.pchURL has unexpected size % instead of 8", it.type.runtime_size);
                case "bInput";
                    assert(it.offset_in_bytes == 20, "HTML_LinkAtPosition_t.bInput has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_LinkAtPosition_t.bInput has unexpected size % instead of 1", it.type.runtime_size);
                case "bLiveLink";
                    assert(it.offset_in_bytes == 21, "HTML_LinkAtPosition_t.bLiveLink has unexpected offset % instead of 21", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTML_LinkAtPosition_t.bLiveLink has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_LinkAtPosition_t) == 24, "HTML_LinkAtPosition_t has size % instead of 24", size_of(HTML_LinkAtPosition_t));
    }

    {
        info := type_info(HTML_JSAlert_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_JSAlert_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_JSAlert_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchMessage";
                    assert(it.offset_in_bytes == 4, "HTML_JSAlert_t.pchMessage has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_JSAlert_t.pchMessage has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_JSAlert_t) == 12, "HTML_JSAlert_t has size % instead of 12", size_of(HTML_JSAlert_t));
    }

    {
        info := type_info(HTML_JSConfirm_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_JSConfirm_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_JSConfirm_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchMessage";
                    assert(it.offset_in_bytes == 4, "HTML_JSConfirm_t.pchMessage has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_JSConfirm_t.pchMessage has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_JSConfirm_t) == 12, "HTML_JSConfirm_t has size % instead of 12", size_of(HTML_JSConfirm_t));
    }

    {
        info := type_info(HTML_FileOpenDialog_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_FileOpenDialog_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_FileOpenDialog_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchTitle";
                    assert(it.offset_in_bytes == 4, "HTML_FileOpenDialog_t.pchTitle has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_FileOpenDialog_t.pchTitle has unexpected size % instead of 8", it.type.runtime_size);
                case "pchInitialFile";
                    assert(it.offset_in_bytes == 12, "HTML_FileOpenDialog_t.pchInitialFile has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_FileOpenDialog_t.pchInitialFile has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_FileOpenDialog_t) == 20, "HTML_FileOpenDialog_t has size % instead of 20", size_of(HTML_FileOpenDialog_t));
    }

    {
        info := type_info(HTML_NewWindow_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_NewWindow_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NewWindow_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchURL";
                    assert(it.offset_in_bytes == 4, "HTML_NewWindow_t.pchURL has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_NewWindow_t.pchURL has unexpected size % instead of 8", it.type.runtime_size);
                case "unX";
                    assert(it.offset_in_bytes == 12, "HTML_NewWindow_t.unX has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NewWindow_t.unX has unexpected size % instead of 4", it.type.runtime_size);
                case "unY";
                    assert(it.offset_in_bytes == 16, "HTML_NewWindow_t.unY has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NewWindow_t.unY has unexpected size % instead of 4", it.type.runtime_size);
                case "unWide";
                    assert(it.offset_in_bytes == 20, "HTML_NewWindow_t.unWide has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NewWindow_t.unWide has unexpected size % instead of 4", it.type.runtime_size);
                case "unTall";
                    assert(it.offset_in_bytes == 24, "HTML_NewWindow_t.unTall has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NewWindow_t.unTall has unexpected size % instead of 4", it.type.runtime_size);
                case "unNewWindow_BrowserHandle_IGNORE";
                    assert(it.offset_in_bytes == 28, "HTML_NewWindow_t.unNewWindow_BrowserHandle_IGNORE has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_NewWindow_t.unNewWindow_BrowserHandle_IGNORE has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_NewWindow_t) == 32, "HTML_NewWindow_t has size % instead of 32", size_of(HTML_NewWindow_t));
    }

    {
        info := type_info(HTML_SetCursor_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_SetCursor_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_SetCursor_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "eMouseCursor";
                    assert(it.offset_in_bytes == 4, "HTML_SetCursor_t.eMouseCursor has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_SetCursor_t.eMouseCursor has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_SetCursor_t) == 8, "HTML_SetCursor_t has size % instead of 8", size_of(HTML_SetCursor_t));
    }

    {
        info := type_info(HTML_StatusText_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_StatusText_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_StatusText_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchMsg";
                    assert(it.offset_in_bytes == 4, "HTML_StatusText_t.pchMsg has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_StatusText_t.pchMsg has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_StatusText_t) == 12, "HTML_StatusText_t has size % instead of 12", size_of(HTML_StatusText_t));
    }

    {
        info := type_info(HTML_ShowToolTip_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_ShowToolTip_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_ShowToolTip_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchMsg";
                    assert(it.offset_in_bytes == 4, "HTML_ShowToolTip_t.pchMsg has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_ShowToolTip_t.pchMsg has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_ShowToolTip_t) == 12, "HTML_ShowToolTip_t has size % instead of 12", size_of(HTML_ShowToolTip_t));
    }

    {
        info := type_info(HTML_UpdateToolTip_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_UpdateToolTip_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_UpdateToolTip_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "pchMsg";
                    assert(it.offset_in_bytes == 4, "HTML_UpdateToolTip_t.pchMsg has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTML_UpdateToolTip_t.pchMsg has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_UpdateToolTip_t) == 12, "HTML_UpdateToolTip_t has size % instead of 12", size_of(HTML_UpdateToolTip_t));
    }

    {
        info := type_info(HTML_HideToolTip_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_HideToolTip_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_HideToolTip_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_HideToolTip_t) == 4, "HTML_HideToolTip_t has size % instead of 4", size_of(HTML_HideToolTip_t));
    }

    {
        info := type_info(HTML_BrowserRestarted_t);
        for info.members {
            if it.name == {
                case "unBrowserHandle";
                    assert(it.offset_in_bytes == 0, "HTML_BrowserRestarted_t.unBrowserHandle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_BrowserRestarted_t.unBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
                case "unOldBrowserHandle";
                    assert(it.offset_in_bytes == 4, "HTML_BrowserRestarted_t.unOldBrowserHandle has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTML_BrowserRestarted_t.unOldBrowserHandle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTML_BrowserRestarted_t) == 8, "HTML_BrowserRestarted_t has size % instead of 8", size_of(HTML_BrowserRestarted_t));
    }

    assert(size_of(ISteamHTTP) == 8, "ISteamHTTP has size % instead of 8", size_of(ISteamHTTP));

    {
        info := type_info(HTTPRequestCompleted_t);
        for info.members {
            if it.name == {
                case "m_hRequest";
                    assert(it.offset_in_bytes == 0, "HTTPRequestCompleted_t.m_hRequest has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestCompleted_t.m_hRequest has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulContextValue";
                    assert(it.offset_in_bytes == 4, "HTTPRequestCompleted_t.m_ulContextValue has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTTPRequestCompleted_t.m_ulContextValue has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bRequestSuccessful";
                    assert(it.offset_in_bytes == 12, "HTTPRequestCompleted_t.m_bRequestSuccessful has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "HTTPRequestCompleted_t.m_bRequestSuccessful has unexpected size % instead of 1", it.type.runtime_size);
                case "m_eStatusCode";
                    assert(it.offset_in_bytes == 16, "HTTPRequestCompleted_t.m_eStatusCode has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestCompleted_t.m_eStatusCode has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unBodySize";
                    assert(it.offset_in_bytes == 20, "HTTPRequestCompleted_t.m_unBodySize has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestCompleted_t.m_unBodySize has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTTPRequestCompleted_t) == 24, "HTTPRequestCompleted_t has size % instead of 24", size_of(HTTPRequestCompleted_t));
    }

    {
        info := type_info(HTTPRequestHeadersReceived_t);
        for info.members {
            if it.name == {
                case "m_hRequest";
                    assert(it.offset_in_bytes == 0, "HTTPRequestHeadersReceived_t.m_hRequest has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestHeadersReceived_t.m_hRequest has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulContextValue";
                    assert(it.offset_in_bytes == 4, "HTTPRequestHeadersReceived_t.m_ulContextValue has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTTPRequestHeadersReceived_t.m_ulContextValue has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(HTTPRequestHeadersReceived_t) == 12, "HTTPRequestHeadersReceived_t has size % instead of 12", size_of(HTTPRequestHeadersReceived_t));
    }

    {
        info := type_info(HTTPRequestDataReceived_t);
        for info.members {
            if it.name == {
                case "m_hRequest";
                    assert(it.offset_in_bytes == 0, "HTTPRequestDataReceived_t.m_hRequest has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestDataReceived_t.m_hRequest has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulContextValue";
                    assert(it.offset_in_bytes == 4, "HTTPRequestDataReceived_t.m_ulContextValue has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "HTTPRequestDataReceived_t.m_ulContextValue has unexpected size % instead of 8", it.type.runtime_size);
                case "m_cOffset";
                    assert(it.offset_in_bytes == 12, "HTTPRequestDataReceived_t.m_cOffset has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestDataReceived_t.m_cOffset has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cBytesReceived";
                    assert(it.offset_in_bytes == 16, "HTTPRequestDataReceived_t.m_cBytesReceived has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HTTPRequestDataReceived_t.m_cBytesReceived has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(HTTPRequestDataReceived_t) == 20, "HTTPRequestDataReceived_t has size % instead of 20", size_of(HTTPRequestDataReceived_t));
    }

    {
        info := type_info(SteamItemDetails_t);
        for info.members {
            if it.name == {
                case "m_itemId";
                    assert(it.offset_in_bytes == 0, "SteamItemDetails_t.m_itemId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamItemDetails_t.m_itemId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_iDefinition";
                    assert(it.offset_in_bytes == 8, "SteamItemDetails_t.m_iDefinition has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamItemDetails_t.m_iDefinition has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unQuantity";
                    assert(it.offset_in_bytes == 12, "SteamItemDetails_t.m_unQuantity has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamItemDetails_t.m_unQuantity has unexpected size % instead of 2", it.type.runtime_size);
                case "m_unFlags";
                    assert(it.offset_in_bytes == 14, "SteamItemDetails_t.m_unFlags has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamItemDetails_t.m_unFlags has unexpected size % instead of 2", it.type.runtime_size);
            }
        }
        assert(size_of(SteamItemDetails_t) == 16, "SteamItemDetails_t has size % instead of 16", size_of(SteamItemDetails_t));
    }

    assert(size_of(ISteamInventory) == 8, "ISteamInventory has size % instead of 8", size_of(ISteamInventory));

    {
        info := type_info(SteamInventoryResultReady_t);
        for info.members {
            if it.name == {
                case "m_handle";
                    assert(it.offset_in_bytes == 0, "SteamInventoryResultReady_t.m_handle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryResultReady_t.m_handle has unexpected size % instead of 4", it.type.runtime_size);
                case "m_result";
                    assert(it.offset_in_bytes == 4, "SteamInventoryResultReady_t.m_result has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryResultReady_t.m_result has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInventoryResultReady_t) == 8, "SteamInventoryResultReady_t has size % instead of 8", size_of(SteamInventoryResultReady_t));
    }

    {
        info := type_info(SteamInventoryFullUpdate_t);
        for info.members {
            if it.name == {
                case "m_handle";
                    assert(it.offset_in_bytes == 0, "SteamInventoryFullUpdate_t.m_handle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryFullUpdate_t.m_handle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInventoryFullUpdate_t) == 4, "SteamInventoryFullUpdate_t has size % instead of 4", size_of(SteamInventoryFullUpdate_t));
    }

    assert(size_of(SteamInventoryDefinitionUpdate_t) == 1, "SteamInventoryDefinitionUpdate_t has size % instead of 1", size_of(SteamInventoryDefinitionUpdate_t));

    {
        info := type_info(SteamInventoryEligiblePromoItemDefIDs_t);
        for info.members {
            if it.name == {
                case "m_result";
                    assert(it.offset_in_bytes == 0, "SteamInventoryEligiblePromoItemDefIDs_t.m_result has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryEligiblePromoItemDefIDs_t.m_result has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamID";
                    assert(it.offset_in_bytes == 4, "SteamInventoryEligiblePromoItemDefIDs_t.m_steamID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInventoryEligiblePromoItemDefIDs_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_numEligiblePromoItemDefs";
                    assert(it.offset_in_bytes == 12, "SteamInventoryEligiblePromoItemDefIDs_t.m_numEligiblePromoItemDefs has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryEligiblePromoItemDefIDs_t.m_numEligiblePromoItemDefs has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bCachedData";
                    assert(it.offset_in_bytes == 16, "SteamInventoryEligiblePromoItemDefIDs_t.m_bCachedData has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamInventoryEligiblePromoItemDefIDs_t.m_bCachedData has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInventoryEligiblePromoItemDefIDs_t) == 20, "SteamInventoryEligiblePromoItemDefIDs_t has size % instead of 20", size_of(SteamInventoryEligiblePromoItemDefIDs_t));
    }

    {
        info := type_info(SteamInventoryStartPurchaseResult_t);
        for info.members {
            if it.name == {
                case "m_result";
                    assert(it.offset_in_bytes == 0, "SteamInventoryStartPurchaseResult_t.m_result has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryStartPurchaseResult_t.m_result has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulOrderID";
                    assert(it.offset_in_bytes == 4, "SteamInventoryStartPurchaseResult_t.m_ulOrderID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInventoryStartPurchaseResult_t.m_ulOrderID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulTransID";
                    assert(it.offset_in_bytes == 12, "SteamInventoryStartPurchaseResult_t.m_ulTransID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamInventoryStartPurchaseResult_t.m_ulTransID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInventoryStartPurchaseResult_t) == 20, "SteamInventoryStartPurchaseResult_t has size % instead of 20", size_of(SteamInventoryStartPurchaseResult_t));
    }

    {
        info := type_info(SteamInventoryRequestPricesResult_t);
        for info.members {
            if it.name == {
                case "m_result";
                    assert(it.offset_in_bytes == 0, "SteamInventoryRequestPricesResult_t.m_result has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryRequestPricesResult_t.m_result has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchCurrency";
                    assert(it.offset_in_bytes == 4, "SteamInventoryRequestPricesResult_t.m_rgchCurrency has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamInventoryRequestPricesResult_t.m_rgchCurrency has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamInventoryRequestPricesResult_t) == 8, "SteamInventoryRequestPricesResult_t has size % instead of 8", size_of(SteamInventoryRequestPricesResult_t));
    }

    {
        info := type_info(MatchMakingKeyValuePair_t);
        for info.members {
            if it.name == {
                case "m_szKey";
                    assert(it.offset_in_bytes == 0, "MatchMakingKeyValuePair_t.m_szKey has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "MatchMakingKeyValuePair_t.m_szKey has unexpected size % instead of 256", it.type.runtime_size);
                case "m_szValue";
                    assert(it.offset_in_bytes == 256, "MatchMakingKeyValuePair_t.m_szValue has unexpected offset % instead of 256", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "MatchMakingKeyValuePair_t.m_szValue has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(MatchMakingKeyValuePair_t) == 512, "MatchMakingKeyValuePair_t has size % instead of 512", size_of(MatchMakingKeyValuePair_t));
    }

    {
        info := type_info(servernetadr_t);
        for info.members {
            if it.name == {
                case "m_usConnectionPort";
                    assert(it.offset_in_bytes == 0, "servernetadr_t.m_usConnectionPort has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "servernetadr_t.m_usConnectionPort has unexpected size % instead of 2", it.type.runtime_size);
                case "m_usQueryPort";
                    assert(it.offset_in_bytes == 2, "servernetadr_t.m_usQueryPort has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "servernetadr_t.m_usQueryPort has unexpected size % instead of 2", it.type.runtime_size);
                case "m_unIP";
                    assert(it.offset_in_bytes == 4, "servernetadr_t.m_unIP has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "servernetadr_t.m_unIP has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(servernetadr_t) == 8, "servernetadr_t has size % instead of 8", size_of(servernetadr_t));
    }

    {
        info := type_info(gameserveritem_t);
        for info.members {
            if it.name == {
                case "m_NetAdr";
                    assert(it.offset_in_bytes == 0, "gameserveritem_t.m_NetAdr has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "gameserveritem_t.m_NetAdr has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nPing";
                    assert(it.offset_in_bytes == 8, "gameserveritem_t.m_nPing has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_nPing has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bHadSuccessfulResponse";
                    assert(it.offset_in_bytes == 12, "gameserveritem_t.m_bHadSuccessfulResponse has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "gameserveritem_t.m_bHadSuccessfulResponse has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bDoNotRefresh";
                    assert(it.offset_in_bytes == 13, "gameserveritem_t.m_bDoNotRefresh has unexpected offset % instead of 13", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "gameserveritem_t.m_bDoNotRefresh has unexpected size % instead of 1", it.type.runtime_size);
                case "m_szGameDir";
                    assert(it.offset_in_bytes == 14, "gameserveritem_t.m_szGameDir has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "gameserveritem_t.m_szGameDir has unexpected size % instead of 32", it.type.runtime_size);
                case "m_szMap";
                    assert(it.offset_in_bytes == 46, "gameserveritem_t.m_szMap has unexpected offset % instead of 46", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "gameserveritem_t.m_szMap has unexpected size % instead of 32", it.type.runtime_size);
                case "m_szGameDescription";
                    assert(it.offset_in_bytes == 78, "gameserveritem_t.m_szGameDescription has unexpected offset % instead of 78", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "gameserveritem_t.m_szGameDescription has unexpected size % instead of 64", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 144, "gameserveritem_t.m_nAppID has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPlayers";
                    assert(it.offset_in_bytes == 148, "gameserveritem_t.m_nPlayers has unexpected offset % instead of 148", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_nPlayers has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nMaxPlayers";
                    assert(it.offset_in_bytes == 152, "gameserveritem_t.m_nMaxPlayers has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_nMaxPlayers has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nBotPlayers";
                    assert(it.offset_in_bytes == 156, "gameserveritem_t.m_nBotPlayers has unexpected offset % instead of 156", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_nBotPlayers has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bPassword";
                    assert(it.offset_in_bytes == 160, "gameserveritem_t.m_bPassword has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "gameserveritem_t.m_bPassword has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bSecure";
                    assert(it.offset_in_bytes == 161, "gameserveritem_t.m_bSecure has unexpected offset % instead of 161", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "gameserveritem_t.m_bSecure has unexpected size % instead of 1", it.type.runtime_size);
                case "m_ulTimeLastPlayed";
                    assert(it.offset_in_bytes == 164, "gameserveritem_t.m_ulTimeLastPlayed has unexpected offset % instead of 164", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_ulTimeLastPlayed has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nServerVersion";
                    assert(it.offset_in_bytes == 168, "gameserveritem_t.m_nServerVersion has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "gameserveritem_t.m_nServerVersion has unexpected size % instead of 4", it.type.runtime_size);
                case "m_szServerName";
                    assert(it.offset_in_bytes == 172, "gameserveritem_t.m_szServerName has unexpected offset % instead of 172", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "gameserveritem_t.m_szServerName has unexpected size % instead of 64", it.type.runtime_size);
                case "m_szGameTags";
                    assert(it.offset_in_bytes == 236, "gameserveritem_t.m_szGameTags has unexpected offset % instead of 236", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "gameserveritem_t.m_szGameTags has unexpected size % instead of 128", it.type.runtime_size);
                case "m_steamID";
                    assert(it.offset_in_bytes == 364, "gameserveritem_t.m_steamID has unexpected offset % instead of 364", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "gameserveritem_t.m_steamID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(gameserveritem_t) == 372, "gameserveritem_t has size % instead of 372", size_of(gameserveritem_t));
    }

    assert(size_of(ISteamMatchmaking) == 8, "ISteamMatchmaking has size % instead of 8", size_of(ISteamMatchmaking));

    assert(size_of(ISteamMatchmakingServerListResponse) == 8, "ISteamMatchmakingServerListResponse has size % instead of 8", size_of(ISteamMatchmakingServerListResponse));

    assert(size_of(ISteamMatchmakingPingResponse) == 8, "ISteamMatchmakingPingResponse has size % instead of 8", size_of(ISteamMatchmakingPingResponse));

    assert(size_of(ISteamMatchmakingPlayersResponse) == 8, "ISteamMatchmakingPlayersResponse has size % instead of 8", size_of(ISteamMatchmakingPlayersResponse));

    assert(size_of(ISteamMatchmakingRulesResponse) == 8, "ISteamMatchmakingRulesResponse has size % instead of 8", size_of(ISteamMatchmakingRulesResponse));

    assert(size_of(ISteamMatchmakingServers) == 8, "ISteamMatchmakingServers has size % instead of 8", size_of(ISteamMatchmakingServers));

    assert(size_of(ISteamGameSearch) == 8, "ISteamGameSearch has size % instead of 8", size_of(ISteamGameSearch));

    {
        info := type_info(SteamPartyBeaconLocation_t);
        for info.members {
            if it.name == {
                case "m_eType";
                    assert(it.offset_in_bytes == 0, "SteamPartyBeaconLocation_t.m_eType has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamPartyBeaconLocation_t.m_eType has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulLocationID";
                    assert(it.offset_in_bytes == 4, "SteamPartyBeaconLocation_t.m_ulLocationID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPartyBeaconLocation_t.m_ulLocationID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPartyBeaconLocation_t) == 12, "SteamPartyBeaconLocation_t has size % instead of 12", size_of(SteamPartyBeaconLocation_t));
    }

    assert(size_of(ISteamParties) == 8, "ISteamParties has size % instead of 8", size_of(ISteamParties));

    {
        info := type_info(FavoritesListChanged_t);
        for info.members {
            if it.name == {
                case "m_nIP";
                    assert(it.offset_in_bytes == 0, "FavoritesListChanged_t.m_nIP has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListChanged_t.m_nIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nQueryPort";
                    assert(it.offset_in_bytes == 4, "FavoritesListChanged_t.m_nQueryPort has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListChanged_t.m_nQueryPort has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nConnPort";
                    assert(it.offset_in_bytes == 8, "FavoritesListChanged_t.m_nConnPort has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListChanged_t.m_nConnPort has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 12, "FavoritesListChanged_t.m_nAppID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListChanged_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nFlags";
                    assert(it.offset_in_bytes == 16, "FavoritesListChanged_t.m_nFlags has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListChanged_t.m_nFlags has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bAdd";
                    assert(it.offset_in_bytes == 20, "FavoritesListChanged_t.m_bAdd has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "FavoritesListChanged_t.m_bAdd has unexpected size % instead of 1", it.type.runtime_size);
                case "m_unAccountId";
                    assert(it.offset_in_bytes == 24, "FavoritesListChanged_t.m_unAccountId has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListChanged_t.m_unAccountId has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FavoritesListChanged_t) == 28, "FavoritesListChanged_t has size % instead of 28", size_of(FavoritesListChanged_t));
    }

    {
        info := type_info(LobbyInvite_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDUser";
                    assert(it.offset_in_bytes == 0, "LobbyInvite_t.m_ulSteamIDUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyInvite_t.m_ulSteamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 8, "LobbyInvite_t.m_ulSteamIDLobby has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyInvite_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulGameID";
                    assert(it.offset_in_bytes == 16, "LobbyInvite_t.m_ulGameID has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyInvite_t.m_ulGameID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyInvite_t) == 24, "LobbyInvite_t has size % instead of 24", size_of(LobbyInvite_t));
    }

    {
        info := type_info(LobbyEnter_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 0, "LobbyEnter_t.m_ulSteamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyEnter_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgfChatPermissions";
                    assert(it.offset_in_bytes == 8, "LobbyEnter_t.m_rgfChatPermissions has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyEnter_t.m_rgfChatPermissions has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bLocked";
                    assert(it.offset_in_bytes == 12, "LobbyEnter_t.m_bLocked has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LobbyEnter_t.m_bLocked has unexpected size % instead of 1", it.type.runtime_size);
                case "m_EChatRoomEnterResponse";
                    assert(it.offset_in_bytes == 16, "LobbyEnter_t.m_EChatRoomEnterResponse has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyEnter_t.m_EChatRoomEnterResponse has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyEnter_t) == 20, "LobbyEnter_t has size % instead of 20", size_of(LobbyEnter_t));
    }

    {
        info := type_info(LobbyDataUpdate_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 0, "LobbyDataUpdate_t.m_ulSteamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyDataUpdate_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDMember";
                    assert(it.offset_in_bytes == 8, "LobbyDataUpdate_t.m_ulSteamIDMember has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyDataUpdate_t.m_ulSteamIDMember has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bSuccess";
                    assert(it.offset_in_bytes == 16, "LobbyDataUpdate_t.m_bSuccess has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LobbyDataUpdate_t.m_bSuccess has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyDataUpdate_t) == 20, "LobbyDataUpdate_t has size % instead of 20", size_of(LobbyDataUpdate_t));
    }

    {
        info := type_info(LobbyChatUpdate_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 0, "LobbyChatUpdate_t.m_ulSteamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyChatUpdate_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDUserChanged";
                    assert(it.offset_in_bytes == 8, "LobbyChatUpdate_t.m_ulSteamIDUserChanged has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyChatUpdate_t.m_ulSteamIDUserChanged has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDMakingChange";
                    assert(it.offset_in_bytes == 16, "LobbyChatUpdate_t.m_ulSteamIDMakingChange has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyChatUpdate_t.m_ulSteamIDMakingChange has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgfChatMemberStateChange";
                    assert(it.offset_in_bytes == 24, "LobbyChatUpdate_t.m_rgfChatMemberStateChange has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyChatUpdate_t.m_rgfChatMemberStateChange has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyChatUpdate_t) == 28, "LobbyChatUpdate_t has size % instead of 28", size_of(LobbyChatUpdate_t));
    }

    {
        info := type_info(LobbyChatMsg_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 0, "LobbyChatMsg_t.m_ulSteamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyChatMsg_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDUser";
                    assert(it.offset_in_bytes == 8, "LobbyChatMsg_t.m_ulSteamIDUser has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyChatMsg_t.m_ulSteamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eChatEntryType";
                    assert(it.offset_in_bytes == 16, "LobbyChatMsg_t.m_eChatEntryType has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LobbyChatMsg_t.m_eChatEntryType has unexpected size % instead of 1", it.type.runtime_size);
                case "m_iChatID";
                    assert(it.offset_in_bytes == 20, "LobbyChatMsg_t.m_iChatID has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyChatMsg_t.m_iChatID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyChatMsg_t) == 24, "LobbyChatMsg_t has size % instead of 24", size_of(LobbyChatMsg_t));
    }

    {
        info := type_info(LobbyGameCreated_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 0, "LobbyGameCreated_t.m_ulSteamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyGameCreated_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDGameServer";
                    assert(it.offset_in_bytes == 8, "LobbyGameCreated_t.m_ulSteamIDGameServer has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyGameCreated_t.m_ulSteamIDGameServer has unexpected size % instead of 8", it.type.runtime_size);
                case "m_unIP";
                    assert(it.offset_in_bytes == 16, "LobbyGameCreated_t.m_unIP has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyGameCreated_t.m_unIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_usPort";
                    assert(it.offset_in_bytes == 20, "LobbyGameCreated_t.m_usPort has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "LobbyGameCreated_t.m_usPort has unexpected size % instead of 2", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyGameCreated_t) == 24, "LobbyGameCreated_t has size % instead of 24", size_of(LobbyGameCreated_t));
    }

    {
        info := type_info(LobbyMatchList_t);
        for info.members {
            if it.name == {
                case "m_nLobbiesMatching";
                    assert(it.offset_in_bytes == 0, "LobbyMatchList_t.m_nLobbiesMatching has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyMatchList_t.m_nLobbiesMatching has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyMatchList_t) == 4, "LobbyMatchList_t has size % instead of 4", size_of(LobbyMatchList_t));
    }

    {
        info := type_info(LobbyKicked_t);
        for info.members {
            if it.name == {
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 0, "LobbyKicked_t.m_ulSteamIDLobby has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyKicked_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDAdmin";
                    assert(it.offset_in_bytes == 8, "LobbyKicked_t.m_ulSteamIDAdmin has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyKicked_t.m_ulSteamIDAdmin has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bKickedDueToDisconnect";
                    assert(it.offset_in_bytes == 16, "LobbyKicked_t.m_bKickedDueToDisconnect has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LobbyKicked_t.m_bKickedDueToDisconnect has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyKicked_t) == 20, "LobbyKicked_t has size % instead of 20", size_of(LobbyKicked_t));
    }

    {
        info := type_info(LobbyCreated_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "LobbyCreated_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LobbyCreated_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulSteamIDLobby";
                    assert(it.offset_in_bytes == 4, "LobbyCreated_t.m_ulSteamIDLobby has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LobbyCreated_t.m_ulSteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(LobbyCreated_t) == 12, "LobbyCreated_t has size % instead of 12", size_of(LobbyCreated_t));
    }

    {
        info := type_info(PSNGameBootInviteResult_t);
        for info.members {
            if it.name == {
                case "m_bGameBootInviteExists";
                    assert(it.offset_in_bytes == 0, "PSNGameBootInviteResult_t.m_bGameBootInviteExists has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PSNGameBootInviteResult_t.m_bGameBootInviteExists has unexpected size % instead of 1", it.type.runtime_size);
                case "m_steamIDLobby";
                    assert(it.offset_in_bytes == 1, "PSNGameBootInviteResult_t.m_steamIDLobby has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PSNGameBootInviteResult_t.m_steamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(PSNGameBootInviteResult_t) == 9, "PSNGameBootInviteResult_t has size % instead of 9", size_of(PSNGameBootInviteResult_t));
    }

    {
        info := type_info(FavoritesListAccountsUpdated_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "FavoritesListAccountsUpdated_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FavoritesListAccountsUpdated_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FavoritesListAccountsUpdated_t) == 4, "FavoritesListAccountsUpdated_t has size % instead of 4", size_of(FavoritesListAccountsUpdated_t));
    }

    {
        info := type_info(SearchForGameProgressCallback_t);
        for info.members {
            if it.name == {
                case "m_ullSearchID";
                    assert(it.offset_in_bytes == 0, "SearchForGameProgressCallback_t.m_ullSearchID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SearchForGameProgressCallback_t.m_ullSearchID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "SearchForGameProgressCallback_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SearchForGameProgressCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_lobbyID";
                    assert(it.offset_in_bytes == 12, "SearchForGameProgressCallback_t.m_lobbyID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SearchForGameProgressCallback_t.m_lobbyID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_steamIDEndedSearch";
                    assert(it.offset_in_bytes == 20, "SearchForGameProgressCallback_t.m_steamIDEndedSearch has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SearchForGameProgressCallback_t.m_steamIDEndedSearch has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nSecondsRemainingEstimate";
                    assert(it.offset_in_bytes == 28, "SearchForGameProgressCallback_t.m_nSecondsRemainingEstimate has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SearchForGameProgressCallback_t.m_nSecondsRemainingEstimate has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cPlayersSearching";
                    assert(it.offset_in_bytes == 32, "SearchForGameProgressCallback_t.m_cPlayersSearching has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SearchForGameProgressCallback_t.m_cPlayersSearching has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SearchForGameProgressCallback_t) == 36, "SearchForGameProgressCallback_t has size % instead of 36", size_of(SearchForGameProgressCallback_t));
    }

    {
        info := type_info(SearchForGameResultCallback_t);
        for info.members {
            if it.name == {
                case "m_ullSearchID";
                    assert(it.offset_in_bytes == 0, "SearchForGameResultCallback_t.m_ullSearchID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SearchForGameResultCallback_t.m_ullSearchID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "SearchForGameResultCallback_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SearchForGameResultCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nCountPlayersInGame";
                    assert(it.offset_in_bytes == 12, "SearchForGameResultCallback_t.m_nCountPlayersInGame has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SearchForGameResultCallback_t.m_nCountPlayersInGame has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nCountAcceptedGame";
                    assert(it.offset_in_bytes == 16, "SearchForGameResultCallback_t.m_nCountAcceptedGame has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SearchForGameResultCallback_t.m_nCountAcceptedGame has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamIDHost";
                    assert(it.offset_in_bytes == 20, "SearchForGameResultCallback_t.m_steamIDHost has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SearchForGameResultCallback_t.m_steamIDHost has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bFinalCallback";
                    assert(it.offset_in_bytes == 28, "SearchForGameResultCallback_t.m_bFinalCallback has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SearchForGameResultCallback_t.m_bFinalCallback has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SearchForGameResultCallback_t) == 32, "SearchForGameResultCallback_t has size % instead of 32", size_of(SearchForGameResultCallback_t));
    }

    {
        info := type_info(RequestPlayersForGameProgressCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RequestPlayersForGameProgressCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameProgressCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ullSearchID";
                    assert(it.offset_in_bytes == 4, "RequestPlayersForGameProgressCallback_t.m_ullSearchID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameProgressCallback_t.m_ullSearchID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RequestPlayersForGameProgressCallback_t) == 12, "RequestPlayersForGameProgressCallback_t has size % instead of 12", size_of(RequestPlayersForGameProgressCallback_t));
    }

    {
        info := type_info(RequestPlayersForGameResultCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RequestPlayersForGameResultCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameResultCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ullSearchID";
                    assert(it.offset_in_bytes == 4, "RequestPlayersForGameResultCallback_t.m_ullSearchID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameResultCallback_t.m_ullSearchID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_SteamIDPlayerFound";
                    assert(it.offset_in_bytes == 12, "RequestPlayersForGameResultCallback_t.m_SteamIDPlayerFound has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameResultCallback_t.m_SteamIDPlayerFound has unexpected size % instead of 8", it.type.runtime_size);
                case "m_SteamIDLobby";
                    assert(it.offset_in_bytes == 20, "RequestPlayersForGameResultCallback_t.m_SteamIDLobby has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameResultCallback_t.m_SteamIDLobby has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ePlayerAcceptState";
                    assert(it.offset_in_bytes == 28, "RequestPlayersForGameResultCallback_t.m_ePlayerAcceptState has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameResultCallback_t.m_ePlayerAcceptState has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPlayerIndex";
                    assert(it.offset_in_bytes == 32, "RequestPlayersForGameResultCallback_t.m_nPlayerIndex has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameResultCallback_t.m_nPlayerIndex has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalPlayersFound";
                    assert(it.offset_in_bytes == 36, "RequestPlayersForGameResultCallback_t.m_nTotalPlayersFound has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameResultCallback_t.m_nTotalPlayersFound has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalPlayersAcceptedGame";
                    assert(it.offset_in_bytes == 40, "RequestPlayersForGameResultCallback_t.m_nTotalPlayersAcceptedGame has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameResultCallback_t.m_nTotalPlayersAcceptedGame has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nSuggestedTeamIndex";
                    assert(it.offset_in_bytes == 44, "RequestPlayersForGameResultCallback_t.m_nSuggestedTeamIndex has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameResultCallback_t.m_nSuggestedTeamIndex has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ullUniqueGameID";
                    assert(it.offset_in_bytes == 48, "RequestPlayersForGameResultCallback_t.m_ullUniqueGameID has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameResultCallback_t.m_ullUniqueGameID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RequestPlayersForGameResultCallback_t) == 56, "RequestPlayersForGameResultCallback_t has size % instead of 56", size_of(RequestPlayersForGameResultCallback_t));
    }

    {
        info := type_info(RequestPlayersForGameFinalResultCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RequestPlayersForGameFinalResultCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RequestPlayersForGameFinalResultCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ullSearchID";
                    assert(it.offset_in_bytes == 4, "RequestPlayersForGameFinalResultCallback_t.m_ullSearchID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameFinalResultCallback_t.m_ullSearchID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ullUniqueGameID";
                    assert(it.offset_in_bytes == 12, "RequestPlayersForGameFinalResultCallback_t.m_ullUniqueGameID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RequestPlayersForGameFinalResultCallback_t.m_ullUniqueGameID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RequestPlayersForGameFinalResultCallback_t) == 20, "RequestPlayersForGameFinalResultCallback_t has size % instead of 20", size_of(RequestPlayersForGameFinalResultCallback_t));
    }

    {
        info := type_info(SubmitPlayerResultResultCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "SubmitPlayerResultResultCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SubmitPlayerResultResultCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "ullUniqueGameID";
                    assert(it.offset_in_bytes == 4, "SubmitPlayerResultResultCallback_t.ullUniqueGameID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SubmitPlayerResultResultCallback_t.ullUniqueGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "steamIDPlayer";
                    assert(it.offset_in_bytes == 12, "SubmitPlayerResultResultCallback_t.steamIDPlayer has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SubmitPlayerResultResultCallback_t.steamIDPlayer has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SubmitPlayerResultResultCallback_t) == 20, "SubmitPlayerResultResultCallback_t has size % instead of 20", size_of(SubmitPlayerResultResultCallback_t));
    }

    {
        info := type_info(EndGameResultCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "EndGameResultCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "EndGameResultCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "ullUniqueGameID";
                    assert(it.offset_in_bytes == 4, "EndGameResultCallback_t.ullUniqueGameID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "EndGameResultCallback_t.ullUniqueGameID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(EndGameResultCallback_t) == 12, "EndGameResultCallback_t has size % instead of 12", size_of(EndGameResultCallback_t));
    }

    {
        info := type_info(JoinPartyCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "JoinPartyCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JoinPartyCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulBeaconID";
                    assert(it.offset_in_bytes == 4, "JoinPartyCallback_t.m_ulBeaconID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JoinPartyCallback_t.m_ulBeaconID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_SteamIDBeaconOwner";
                    assert(it.offset_in_bytes == 12, "JoinPartyCallback_t.m_SteamIDBeaconOwner has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JoinPartyCallback_t.m_SteamIDBeaconOwner has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgchConnectString";
                    assert(it.offset_in_bytes == 20, "JoinPartyCallback_t.m_rgchConnectString has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "JoinPartyCallback_t.m_rgchConnectString has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(JoinPartyCallback_t) == 276, "JoinPartyCallback_t has size % instead of 276", size_of(JoinPartyCallback_t));
    }

    {
        info := type_info(CreateBeaconCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "CreateBeaconCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CreateBeaconCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulBeaconID";
                    assert(it.offset_in_bytes == 4, "CreateBeaconCallback_t.m_ulBeaconID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CreateBeaconCallback_t.m_ulBeaconID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CreateBeaconCallback_t) == 12, "CreateBeaconCallback_t has size % instead of 12", size_of(CreateBeaconCallback_t));
    }

    {
        info := type_info(ReservationNotificationCallback_t);
        for info.members {
            if it.name == {
                case "m_ulBeaconID";
                    assert(it.offset_in_bytes == 0, "ReservationNotificationCallback_t.m_ulBeaconID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ReservationNotificationCallback_t.m_ulBeaconID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_steamIDJoiner";
                    assert(it.offset_in_bytes == 8, "ReservationNotificationCallback_t.m_steamIDJoiner has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ReservationNotificationCallback_t.m_steamIDJoiner has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ReservationNotificationCallback_t) == 16, "ReservationNotificationCallback_t has size % instead of 16", size_of(ReservationNotificationCallback_t));
    }

    {
        info := type_info(ChangeNumOpenSlotsCallback_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "ChangeNumOpenSlotsCallback_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ChangeNumOpenSlotsCallback_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(ChangeNumOpenSlotsCallback_t) == 4, "ChangeNumOpenSlotsCallback_t has size % instead of 4", size_of(ChangeNumOpenSlotsCallback_t));
    }

    assert(size_of(AvailableBeaconLocationsUpdated_t) == 1, "AvailableBeaconLocationsUpdated_t has size % instead of 1", size_of(AvailableBeaconLocationsUpdated_t));

    assert(size_of(ActiveBeaconsUpdated_t) == 1, "ActiveBeaconsUpdated_t has size % instead of 1", size_of(ActiveBeaconsUpdated_t));

    assert(size_of(ISteamMusic) == 8, "ISteamMusic has size % instead of 8", size_of(ISteamMusic));

    assert(size_of(PlaybackStatusHasChanged_t) == 1, "PlaybackStatusHasChanged_t has size % instead of 1", size_of(PlaybackStatusHasChanged_t));

    {
        info := type_info(VolumeHasChanged_t);
        for info.members {
            if it.name == {
                case "m_flNewVolume";
                    assert(it.offset_in_bytes == 0, "VolumeHasChanged_t.m_flNewVolume has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "VolumeHasChanged_t.m_flNewVolume has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(VolumeHasChanged_t) == 4, "VolumeHasChanged_t has size % instead of 4", size_of(VolumeHasChanged_t));
    }

    assert(size_of(ISteamMusicRemote) == 8, "ISteamMusicRemote has size % instead of 8", size_of(ISteamMusicRemote));

    assert(size_of(MusicPlayerRemoteWillActivate_t) == 1, "MusicPlayerRemoteWillActivate_t has size % instead of 1", size_of(MusicPlayerRemoteWillActivate_t));

    assert(size_of(MusicPlayerRemoteWillDeactivate_t) == 1, "MusicPlayerRemoteWillDeactivate_t has size % instead of 1", size_of(MusicPlayerRemoteWillDeactivate_t));

    assert(size_of(MusicPlayerRemoteToFront_t) == 1, "MusicPlayerRemoteToFront_t has size % instead of 1", size_of(MusicPlayerRemoteToFront_t));

    assert(size_of(MusicPlayerWillQuit_t) == 1, "MusicPlayerWillQuit_t has size % instead of 1", size_of(MusicPlayerWillQuit_t));

    assert(size_of(MusicPlayerWantsPlay_t) == 1, "MusicPlayerWantsPlay_t has size % instead of 1", size_of(MusicPlayerWantsPlay_t));

    assert(size_of(MusicPlayerWantsPause_t) == 1, "MusicPlayerWantsPause_t has size % instead of 1", size_of(MusicPlayerWantsPause_t));

    assert(size_of(MusicPlayerWantsPlayPrevious_t) == 1, "MusicPlayerWantsPlayPrevious_t has size % instead of 1", size_of(MusicPlayerWantsPlayPrevious_t));

    assert(size_of(MusicPlayerWantsPlayNext_t) == 1, "MusicPlayerWantsPlayNext_t has size % instead of 1", size_of(MusicPlayerWantsPlayNext_t));

    {
        info := type_info(MusicPlayerWantsShuffled_t);
        for info.members {
            if it.name == {
                case "m_bShuffled";
                    assert(it.offset_in_bytes == 0, "MusicPlayerWantsShuffled_t.m_bShuffled has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "MusicPlayerWantsShuffled_t.m_bShuffled has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(MusicPlayerWantsShuffled_t) == 1, "MusicPlayerWantsShuffled_t has size % instead of 1", size_of(MusicPlayerWantsShuffled_t));
    }

    {
        info := type_info(MusicPlayerWantsLooped_t);
        for info.members {
            if it.name == {
                case "m_bLooped";
                    assert(it.offset_in_bytes == 0, "MusicPlayerWantsLooped_t.m_bLooped has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "MusicPlayerWantsLooped_t.m_bLooped has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(MusicPlayerWantsLooped_t) == 1, "MusicPlayerWantsLooped_t has size % instead of 1", size_of(MusicPlayerWantsLooped_t));
    }

    {
        info := type_info(MusicPlayerWantsVolume_t);
        for info.members {
            if it.name == {
                case "m_flNewVolume";
                    assert(it.offset_in_bytes == 0, "MusicPlayerWantsVolume_t.m_flNewVolume has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MusicPlayerWantsVolume_t.m_flNewVolume has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(MusicPlayerWantsVolume_t) == 4, "MusicPlayerWantsVolume_t has size % instead of 4", size_of(MusicPlayerWantsVolume_t));
    }

    {
        info := type_info(MusicPlayerSelectsQueueEntry_t);
        for info.members {
            if it.name == {
                case "nID";
                    assert(it.offset_in_bytes == 0, "MusicPlayerSelectsQueueEntry_t.nID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MusicPlayerSelectsQueueEntry_t.nID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(MusicPlayerSelectsQueueEntry_t) == 4, "MusicPlayerSelectsQueueEntry_t has size % instead of 4", size_of(MusicPlayerSelectsQueueEntry_t));
    }

    {
        info := type_info(MusicPlayerSelectsPlaylistEntry_t);
        for info.members {
            if it.name == {
                case "nID";
                    assert(it.offset_in_bytes == 0, "MusicPlayerSelectsPlaylistEntry_t.nID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MusicPlayerSelectsPlaylistEntry_t.nID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(MusicPlayerSelectsPlaylistEntry_t) == 4, "MusicPlayerSelectsPlaylistEntry_t has size % instead of 4", size_of(MusicPlayerSelectsPlaylistEntry_t));
    }

    {
        info := type_info(MusicPlayerWantsPlayingRepeatStatus_t);
        for info.members {
            if it.name == {
                case "m_nPlayingRepeatStatus";
                    assert(it.offset_in_bytes == 0, "MusicPlayerWantsPlayingRepeatStatus_t.m_nPlayingRepeatStatus has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MusicPlayerWantsPlayingRepeatStatus_t.m_nPlayingRepeatStatus has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(MusicPlayerWantsPlayingRepeatStatus_t) == 4, "MusicPlayerWantsPlayingRepeatStatus_t has size % instead of 4", size_of(MusicPlayerWantsPlayingRepeatStatus_t));
    }

    {
        info := type_info(P2PSessionState_t);
        for info.members {
            if it.name == {
                case "m_bConnectionActive";
                    assert(it.offset_in_bytes == 0, "P2PSessionState_t.m_bConnectionActive has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "P2PSessionState_t.m_bConnectionActive has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bConnecting";
                    assert(it.offset_in_bytes == 1, "P2PSessionState_t.m_bConnecting has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "P2PSessionState_t.m_bConnecting has unexpected size % instead of 1", it.type.runtime_size);
                case "m_eP2PSessionError";
                    assert(it.offset_in_bytes == 2, "P2PSessionState_t.m_eP2PSessionError has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "P2PSessionState_t.m_eP2PSessionError has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bUsingRelay";
                    assert(it.offset_in_bytes == 3, "P2PSessionState_t.m_bUsingRelay has unexpected offset % instead of 3", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "P2PSessionState_t.m_bUsingRelay has unexpected size % instead of 1", it.type.runtime_size);
                case "m_nBytesQueuedForSend";
                    assert(it.offset_in_bytes == 4, "P2PSessionState_t.m_nBytesQueuedForSend has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "P2PSessionState_t.m_nBytesQueuedForSend has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPacketsQueuedForSend";
                    assert(it.offset_in_bytes == 8, "P2PSessionState_t.m_nPacketsQueuedForSend has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "P2PSessionState_t.m_nPacketsQueuedForSend has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nRemoteIP";
                    assert(it.offset_in_bytes == 12, "P2PSessionState_t.m_nRemoteIP has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "P2PSessionState_t.m_nRemoteIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nRemotePort";
                    assert(it.offset_in_bytes == 16, "P2PSessionState_t.m_nRemotePort has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "P2PSessionState_t.m_nRemotePort has unexpected size % instead of 2", it.type.runtime_size);
            }
        }
        assert(size_of(P2PSessionState_t) == 20, "P2PSessionState_t has size % instead of 20", size_of(P2PSessionState_t));
    }

    assert(size_of(ISteamNetworking) == 8, "ISteamNetworking has size % instead of 8", size_of(ISteamNetworking));

    {
        info := type_info(P2PSessionRequest_t);
        for info.members {
            if it.name == {
                case "m_steamIDRemote";
                    assert(it.offset_in_bytes == 0, "P2PSessionRequest_t.m_steamIDRemote has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "P2PSessionRequest_t.m_steamIDRemote has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(P2PSessionRequest_t) == 8, "P2PSessionRequest_t has size % instead of 8", size_of(P2PSessionRequest_t));
    }

    {
        info := type_info(P2PSessionConnectFail_t);
        for info.members {
            if it.name == {
                case "m_steamIDRemote";
                    assert(it.offset_in_bytes == 0, "P2PSessionConnectFail_t.m_steamIDRemote has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "P2PSessionConnectFail_t.m_steamIDRemote has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eP2PSessionError";
                    assert(it.offset_in_bytes == 8, "P2PSessionConnectFail_t.m_eP2PSessionError has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "P2PSessionConnectFail_t.m_eP2PSessionError has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(P2PSessionConnectFail_t) == 9, "P2PSessionConnectFail_t has size % instead of 9", size_of(P2PSessionConnectFail_t));
    }

    {
        info := type_info(SocketStatusCallback_t);
        for info.members {
            if it.name == {
                case "m_hSocket";
                    assert(it.offset_in_bytes == 0, "SocketStatusCallback_t.m_hSocket has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SocketStatusCallback_t.m_hSocket has unexpected size % instead of 4", it.type.runtime_size);
                case "m_hListenSocket";
                    assert(it.offset_in_bytes == 4, "SocketStatusCallback_t.m_hListenSocket has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SocketStatusCallback_t.m_hListenSocket has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamIDRemote";
                    assert(it.offset_in_bytes == 8, "SocketStatusCallback_t.m_steamIDRemote has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SocketStatusCallback_t.m_steamIDRemote has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eSNetSocketState";
                    assert(it.offset_in_bytes == 16, "SocketStatusCallback_t.m_eSNetSocketState has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SocketStatusCallback_t.m_eSNetSocketState has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SocketStatusCallback_t) == 20, "SocketStatusCallback_t has size % instead of 20", size_of(SocketStatusCallback_t));
    }

    {
        info := type_info(SteamNetworkingIPAddr.IPv4MappedAddress);
        for info.members {
            if it.name == {
                case "m_8zeros";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingIPAddr.IPv4MappedAddress.m_8zeros has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingIPAddr.IPv4MappedAddress.m_8zeros has unexpected size % instead of 8", it.type.runtime_size);
                case "m_0000";
                    assert(it.offset_in_bytes == 8, "SteamNetworkingIPAddr.IPv4MappedAddress.m_0000 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamNetworkingIPAddr.IPv4MappedAddress.m_0000 has unexpected size % instead of 2", it.type.runtime_size);
                case "m_ffff";
                    assert(it.offset_in_bytes == 10, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ffff has unexpected offset % instead of 10", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ffff has unexpected size % instead of 2", it.type.runtime_size);
                case "m_ip";
                    assert(it.offset_in_bytes == 12, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ip has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ip has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingIPAddr.IPv4MappedAddress) == 16, "SteamNetworkingIPAddr.IPv4MappedAddress has size % instead of 16", size_of(SteamNetworkingIPAddr.IPv4MappedAddress));
    }

    {
        info := type_info(SteamNetworkingIPAddr);
        for info.members {
            if it.name == {
                case "m_port";
                    assert(it.offset_in_bytes == 16, "SteamNetworkingIPAddr.m_port has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamNetworkingIPAddr.m_port has unexpected size % instead of 2", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingIPAddr) == 18, "SteamNetworkingIPAddr has size % instead of 18", size_of(SteamNetworkingIPAddr));
    }

    {
        info := type_info(SteamNetworkingIdentity);
        for info.members {
            if it.name == {
                case "m_eType";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingIdentity.m_eType has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingIdentity.m_eType has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cbSize";
                    assert(it.offset_in_bytes == 4, "SteamNetworkingIdentity.m_cbSize has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingIdentity.m_cbSize has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingIdentity) == 136, "SteamNetworkingIdentity has size % instead of 136", size_of(SteamNetworkingIdentity));
    }

    {
        info := type_info(SteamNetConnectionInfo_t);
        for info.members {
            if it.name == {
                case "m_identityRemote";
                    assert(it.offset_in_bytes == 0, "SteamNetConnectionInfo_t.m_identityRemote has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 136, "SteamNetConnectionInfo_t.m_identityRemote has unexpected size % instead of 136", it.type.runtime_size);
                case "m_nUserData";
                    assert(it.offset_in_bytes == 136, "SteamNetConnectionInfo_t.m_nUserData has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetConnectionInfo_t.m_nUserData has unexpected size % instead of 8", it.type.runtime_size);
                case "m_hListenSocket";
                    assert(it.offset_in_bytes == 144, "SteamNetConnectionInfo_t.m_hListenSocket has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_hListenSocket has unexpected size % instead of 4", it.type.runtime_size);
                case "m_addrRemote";
                    assert(it.offset_in_bytes == 148, "SteamNetConnectionInfo_t.m_addrRemote has unexpected offset % instead of 148", it.offset_in_bytes);
                    assert(it.type.runtime_size == 18, "SteamNetConnectionInfo_t.m_addrRemote has unexpected size % instead of 18", it.type.runtime_size);
                case "m__pad1";
                    assert(it.offset_in_bytes == 166, "SteamNetConnectionInfo_t.m__pad1 has unexpected offset % instead of 166", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamNetConnectionInfo_t.m__pad1 has unexpected size % instead of 2", it.type.runtime_size);
                case "m_idPOPRemote";
                    assert(it.offset_in_bytes == 168, "SteamNetConnectionInfo_t.m_idPOPRemote has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_idPOPRemote has unexpected size % instead of 4", it.type.runtime_size);
                case "m_idPOPRelay";
                    assert(it.offset_in_bytes == 172, "SteamNetConnectionInfo_t.m_idPOPRelay has unexpected offset % instead of 172", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_idPOPRelay has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eState";
                    assert(it.offset_in_bytes == 176, "SteamNetConnectionInfo_t.m_eState has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_eState has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eEndReason";
                    assert(it.offset_in_bytes == 180, "SteamNetConnectionInfo_t.m_eEndReason has unexpected offset % instead of 180", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_eEndReason has unexpected size % instead of 4", it.type.runtime_size);
                case "m_szEndDebug";
                    assert(it.offset_in_bytes == 184, "SteamNetConnectionInfo_t.m_szEndDebug has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "SteamNetConnectionInfo_t.m_szEndDebug has unexpected size % instead of 128", it.type.runtime_size);
                case "m_szConnectionDescription";
                    assert(it.offset_in_bytes == 312, "SteamNetConnectionInfo_t.m_szConnectionDescription has unexpected offset % instead of 312", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "SteamNetConnectionInfo_t.m_szConnectionDescription has unexpected size % instead of 128", it.type.runtime_size);
                case "m_nFlags";
                    assert(it.offset_in_bytes == 440, "SteamNetConnectionInfo_t.m_nFlags has unexpected offset % instead of 440", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_nFlags has unexpected size % instead of 4", it.type.runtime_size);
                case "reserved";
                    assert(it.offset_in_bytes == 444, "SteamNetConnectionInfo_t.reserved has unexpected offset % instead of 444", it.offset_in_bytes);
                    assert(it.type.runtime_size == 252, "SteamNetConnectionInfo_t.reserved has unexpected size % instead of 252", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetConnectionInfo_t) == 696, "SteamNetConnectionInfo_t has size % instead of 696", size_of(SteamNetConnectionInfo_t));
    }

    {
        info := type_info(SteamNetConnectionRealTimeStatus_t);
        for info.members {
            if it.name == {
                case "m_eState";
                    assert(it.offset_in_bytes == 0, "SteamNetConnectionRealTimeStatus_t.m_eState has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_eState has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPing";
                    assert(it.offset_in_bytes == 4, "SteamNetConnectionRealTimeStatus_t.m_nPing has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_nPing has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flConnectionQualityLocal";
                    assert(it.offset_in_bytes == 8, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityLocal has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityLocal has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flConnectionQualityRemote";
                    assert(it.offset_in_bytes == 12, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityRemote has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityRemote has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flOutPacketsPerSec";
                    assert(it.offset_in_bytes == 16, "SteamNetConnectionRealTimeStatus_t.m_flOutPacketsPerSec has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flOutPacketsPerSec has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flOutBytesPerSec";
                    assert(it.offset_in_bytes == 20, "SteamNetConnectionRealTimeStatus_t.m_flOutBytesPerSec has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flOutBytesPerSec has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flInPacketsPerSec";
                    assert(it.offset_in_bytes == 24, "SteamNetConnectionRealTimeStatus_t.m_flInPacketsPerSec has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flInPacketsPerSec has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flInBytesPerSec";
                    assert(it.offset_in_bytes == 28, "SteamNetConnectionRealTimeStatus_t.m_flInBytesPerSec has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flInBytesPerSec has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nSendRateBytesPerSecond";
                    assert(it.offset_in_bytes == 32, "SteamNetConnectionRealTimeStatus_t.m_nSendRateBytesPerSecond has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_nSendRateBytesPerSecond has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cbPendingUnreliable";
                    assert(it.offset_in_bytes == 36, "SteamNetConnectionRealTimeStatus_t.m_cbPendingUnreliable has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_cbPendingUnreliable has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cbPendingReliable";
                    assert(it.offset_in_bytes == 40, "SteamNetConnectionRealTimeStatus_t.m_cbPendingReliable has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_cbPendingReliable has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cbSentUnackedReliable";
                    assert(it.offset_in_bytes == 44, "SteamNetConnectionRealTimeStatus_t.m_cbSentUnackedReliable has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_cbSentUnackedReliable has unexpected size % instead of 4", it.type.runtime_size);
                case "m_usecQueueTime";
                    assert(it.offset_in_bytes == 48, "SteamNetConnectionRealTimeStatus_t.m_usecQueueTime has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetConnectionRealTimeStatus_t.m_usecQueueTime has unexpected size % instead of 8", it.type.runtime_size);
                case "reserved";
                    assert(it.offset_in_bytes == 56, "SteamNetConnectionRealTimeStatus_t.reserved has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "SteamNetConnectionRealTimeStatus_t.reserved has unexpected size % instead of 64", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetConnectionRealTimeStatus_t) == 120, "SteamNetConnectionRealTimeStatus_t has size % instead of 120", size_of(SteamNetConnectionRealTimeStatus_t));
    }

    {
        info := type_info(SteamNetConnectionRealTimeLaneStatus_t);
        for info.members {
            if it.name == {
                case "m_cbPendingUnreliable";
                    assert(it.offset_in_bytes == 0, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingUnreliable has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingUnreliable has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cbPendingReliable";
                    assert(it.offset_in_bytes == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingReliable has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingReliable has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cbSentUnackedReliable";
                    assert(it.offset_in_bytes == 8, "SteamNetConnectionRealTimeLaneStatus_t.m_cbSentUnackedReliable has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbSentUnackedReliable has unexpected size % instead of 4", it.type.runtime_size);
                case "_reservePad1";
                    assert(it.offset_in_bytes == 12, "SteamNetConnectionRealTimeLaneStatus_t._reservePad1 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t._reservePad1 has unexpected size % instead of 4", it.type.runtime_size);
                case "m_usecQueueTime";
                    assert(it.offset_in_bytes == 16, "SteamNetConnectionRealTimeLaneStatus_t.m_usecQueueTime has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetConnectionRealTimeLaneStatus_t.m_usecQueueTime has unexpected size % instead of 8", it.type.runtime_size);
                case "reserved";
                    assert(it.offset_in_bytes == 24, "SteamNetConnectionRealTimeLaneStatus_t.reserved has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "SteamNetConnectionRealTimeLaneStatus_t.reserved has unexpected size % instead of 40", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetConnectionRealTimeLaneStatus_t) == 64, "SteamNetConnectionRealTimeLaneStatus_t has size % instead of 64", size_of(SteamNetConnectionRealTimeLaneStatus_t));
    }

    {
        info := type_info(SteamNetworkingMessage_t);
        for info.members {
            if it.name == {
                case "m_pData";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingMessage_t.m_pData has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_pData has unexpected size % instead of 8", it.type.runtime_size);
                case "m_cbSize";
                    assert(it.offset_in_bytes == 8, "SteamNetworkingMessage_t.m_cbSize has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_cbSize has unexpected size % instead of 4", it.type.runtime_size);
                case "m_conn";
                    assert(it.offset_in_bytes == 12, "SteamNetworkingMessage_t.m_conn has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_conn has unexpected size % instead of 4", it.type.runtime_size);
                case "m_identityPeer";
                    assert(it.offset_in_bytes == 16, "SteamNetworkingMessage_t.m_identityPeer has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 136, "SteamNetworkingMessage_t.m_identityPeer has unexpected size % instead of 136", it.type.runtime_size);
                case "m_nConnUserData";
                    assert(it.offset_in_bytes == 152, "SteamNetworkingMessage_t.m_nConnUserData has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_nConnUserData has unexpected size % instead of 8", it.type.runtime_size);
                case "m_usecTimeReceived";
                    assert(it.offset_in_bytes == 160, "SteamNetworkingMessage_t.m_usecTimeReceived has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_usecTimeReceived has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nMessageNumber";
                    assert(it.offset_in_bytes == 168, "SteamNetworkingMessage_t.m_nMessageNumber has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_nMessageNumber has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pfnFreeData";
                    assert(it.offset_in_bytes == 176, "SteamNetworkingMessage_t.m_pfnFreeData has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_pfnFreeData has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pfnRelease";
                    assert(it.offset_in_bytes == 184, "SteamNetworkingMessage_t.m_pfnRelease has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_pfnRelease has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nChannel";
                    assert(it.offset_in_bytes == 192, "SteamNetworkingMessage_t.m_nChannel has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_nChannel has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nFlags";
                    assert(it.offset_in_bytes == 196, "SteamNetworkingMessage_t.m_nFlags has unexpected offset % instead of 196", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_nFlags has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nUserData";
                    assert(it.offset_in_bytes == 200, "SteamNetworkingMessage_t.m_nUserData has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_nUserData has unexpected size % instead of 8", it.type.runtime_size);
                case "m_idxLane";
                    assert(it.offset_in_bytes == 208, "SteamNetworkingMessage_t.m_idxLane has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamNetworkingMessage_t.m_idxLane has unexpected size % instead of 2", it.type.runtime_size);
                case "_pad1__";
                    assert(it.offset_in_bytes == 210, "SteamNetworkingMessage_t._pad1__ has unexpected offset % instead of 210", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "SteamNetworkingMessage_t._pad1__ has unexpected size % instead of 2", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingMessage_t) == 216, "SteamNetworkingMessage_t has size % instead of 216", size_of(SteamNetworkingMessage_t));
    }

    {
        info := type_info(SteamNetworkPingLocation_t);
        for info.members {
            if it.name == {
                case "m_data";
                    assert(it.offset_in_bytes == 0, "SteamNetworkPingLocation_t.m_data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 512, "SteamNetworkPingLocation_t.m_data has unexpected size % instead of 512", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkPingLocation_t) == 512, "SteamNetworkPingLocation_t has size % instead of 512", size_of(SteamNetworkPingLocation_t));
    }

    {
        info := type_info(SteamNetworkingConfigValue_t);
        for info.members {
            if it.name == {
                case "m_eValue";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingConfigValue_t.m_eValue has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingConfigValue_t.m_eValue has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eDataType";
                    assert(it.offset_in_bytes == 4, "SteamNetworkingConfigValue_t.m_eDataType has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingConfigValue_t.m_eDataType has unexpected size % instead of 4", it.type.runtime_size);
                case "m_val";
                    assert(it.offset_in_bytes == 8, "SteamNetworkingConfigValue_t.m_val has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingConfigValue_t.m_val has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingConfigValue_t) == 16, "SteamNetworkingConfigValue_t has size % instead of 16", size_of(SteamNetworkingConfigValue_t));
    }

    {
        info := type_info(SteamNetworkingPOPIDRender);
        for info.members {
            if it.name == {
                case "buf";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingPOPIDRender.buf has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamNetworkingPOPIDRender.buf has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingPOPIDRender) == 8, "SteamNetworkingPOPIDRender has size % instead of 8", size_of(SteamNetworkingPOPIDRender));
    }

    assert(size_of(ISteamNetworkingMessages) == 8, "ISteamNetworkingMessages has size % instead of 8", size_of(ISteamNetworkingMessages));

    {
        info := type_info(SteamNetworkingMessagesSessionRequest_t);
        for info.members {
            if it.name == {
                case "m_identityRemote";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingMessagesSessionRequest_t.m_identityRemote has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 136, "SteamNetworkingMessagesSessionRequest_t.m_identityRemote has unexpected size % instead of 136", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingMessagesSessionRequest_t) == 136, "SteamNetworkingMessagesSessionRequest_t has size % instead of 136", size_of(SteamNetworkingMessagesSessionRequest_t));
    }

    {
        info := type_info(SteamNetworkingMessagesSessionFailed_t);
        for info.members {
            if it.name == {
                case "m_info";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingMessagesSessionFailed_t.m_info has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 696, "SteamNetworkingMessagesSessionFailed_t.m_info has unexpected size % instead of 696", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingMessagesSessionFailed_t) == 696, "SteamNetworkingMessagesSessionFailed_t has size % instead of 696", size_of(SteamNetworkingMessagesSessionFailed_t));
    }

    assert(size_of(ISteamNetworkingSockets) == 8, "ISteamNetworkingSockets has size % instead of 8", size_of(ISteamNetworkingSockets));

    {
        info := type_info(SteamNetConnectionStatusChangedCallback_t);
        for info.members {
            if it.name == {
                case "m_hConn";
                    assert(it.offset_in_bytes == 0, "SteamNetConnectionStatusChangedCallback_t.m_hConn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionStatusChangedCallback_t.m_hConn has unexpected size % instead of 4", it.type.runtime_size);
                case "m_info";
                    assert(it.offset_in_bytes == 4, "SteamNetConnectionStatusChangedCallback_t.m_info has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 696, "SteamNetConnectionStatusChangedCallback_t.m_info has unexpected size % instead of 696", it.type.runtime_size);
                case "m_eOldState";
                    assert(it.offset_in_bytes == 700, "SteamNetConnectionStatusChangedCallback_t.m_eOldState has unexpected offset % instead of 700", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetConnectionStatusChangedCallback_t.m_eOldState has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetConnectionStatusChangedCallback_t) == 704, "SteamNetConnectionStatusChangedCallback_t has size % instead of 704", size_of(SteamNetConnectionStatusChangedCallback_t));
    }

    {
        info := type_info(SteamNetAuthenticationStatus_t);
        for info.members {
            if it.name == {
                case "m_eAvail";
                    assert(it.offset_in_bytes == 0, "SteamNetAuthenticationStatus_t.m_eAvail has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetAuthenticationStatus_t.m_eAvail has unexpected size % instead of 4", it.type.runtime_size);
                case "m_debugMsg";
                    assert(it.offset_in_bytes == 4, "SteamNetAuthenticationStatus_t.m_debugMsg has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "SteamNetAuthenticationStatus_t.m_debugMsg has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetAuthenticationStatus_t) == 260, "SteamNetAuthenticationStatus_t has size % instead of 260", size_of(SteamNetAuthenticationStatus_t));
    }

    assert(size_of(ISteamNetworkingUtils) == 8, "ISteamNetworkingUtils has size % instead of 8", size_of(ISteamNetworkingUtils));

    {
        info := type_info(SteamRelayNetworkStatus_t);
        for info.members {
            if it.name == {
                case "m_eAvail";
                    assert(it.offset_in_bytes == 0, "SteamRelayNetworkStatus_t.m_eAvail has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_eAvail has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bPingMeasurementInProgress";
                    assert(it.offset_in_bytes == 4, "SteamRelayNetworkStatus_t.m_bPingMeasurementInProgress has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_bPingMeasurementInProgress has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eAvailNetworkConfig";
                    assert(it.offset_in_bytes == 8, "SteamRelayNetworkStatus_t.m_eAvailNetworkConfig has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_eAvailNetworkConfig has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eAvailAnyRelay";
                    assert(it.offset_in_bytes == 12, "SteamRelayNetworkStatus_t.m_eAvailAnyRelay has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_eAvailAnyRelay has unexpected size % instead of 4", it.type.runtime_size);
                case "m_debugMsg";
                    assert(it.offset_in_bytes == 16, "SteamRelayNetworkStatus_t.m_debugMsg has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "SteamRelayNetworkStatus_t.m_debugMsg has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(SteamRelayNetworkStatus_t) == 272, "SteamRelayNetworkStatus_t has size % instead of 272", size_of(SteamRelayNetworkStatus_t));
    }

    {
        info := type_info(SteamNetworkingIdentityRender);
        for info.members {
            if it.name == {
                case "buf";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingIdentityRender.buf has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "SteamNetworkingIdentityRender.buf has unexpected size % instead of 128", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingIdentityRender) == 128, "SteamNetworkingIdentityRender has size % instead of 128", size_of(SteamNetworkingIdentityRender));
    }

    {
        info := type_info(SteamNetworkingIPAddrRender);
        for info.members {
            if it.name == {
                case "buf";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingIPAddrRender.buf has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "SteamNetworkingIPAddrRender.buf has unexpected size % instead of 48", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingIPAddrRender) == 48, "SteamNetworkingIPAddrRender has size % instead of 48", size_of(SteamNetworkingIPAddrRender));
    }

    assert(size_of(ISteamParentalSettings) == 8, "ISteamParentalSettings has size % instead of 8", size_of(ISteamParentalSettings));

    assert(size_of(SteamParentalSettingsChanged_t) == 1, "SteamParentalSettingsChanged_t has size % instead of 1", size_of(SteamParentalSettingsChanged_t));

    assert(size_of(ISteamRemotePlay) == 8, "ISteamRemotePlay has size % instead of 8", size_of(ISteamRemotePlay));

    {
        info := type_info(SteamRemotePlaySessionConnected_t);
        for info.members {
            if it.name == {
                case "m_unSessionID";
                    assert(it.offset_in_bytes == 0, "SteamRemotePlaySessionConnected_t.m_unSessionID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamRemotePlaySessionConnected_t.m_unSessionID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamRemotePlaySessionConnected_t) == 4, "SteamRemotePlaySessionConnected_t has size % instead of 4", size_of(SteamRemotePlaySessionConnected_t));
    }

    {
        info := type_info(SteamRemotePlaySessionDisconnected_t);
        for info.members {
            if it.name == {
                case "m_unSessionID";
                    assert(it.offset_in_bytes == 0, "SteamRemotePlaySessionDisconnected_t.m_unSessionID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamRemotePlaySessionDisconnected_t.m_unSessionID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamRemotePlaySessionDisconnected_t) == 4, "SteamRemotePlaySessionDisconnected_t has size % instead of 4", size_of(SteamRemotePlaySessionDisconnected_t));
    }

    {
        info := type_info(SteamRemotePlayTogetherGuestInvite_t);
        for info.members {
            if it.name == {
                case "m_szConnectURL";
                    assert(it.offset_in_bytes == 0, "SteamRemotePlayTogetherGuestInvite_t.m_szConnectURL has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1024, "SteamRemotePlayTogetherGuestInvite_t.m_szConnectURL has unexpected size % instead of 1024", it.type.runtime_size);
            }
        }
        assert(size_of(SteamRemotePlayTogetherGuestInvite_t) == 1024, "SteamRemotePlayTogetherGuestInvite_t has size % instead of 1024", size_of(SteamRemotePlayTogetherGuestInvite_t));
    }

    {
        info := type_info(SteamParamStringArray_t);
        for info.members {
            if it.name == {
                case "m_ppStrings";
                    assert(it.offset_in_bytes == 0, "SteamParamStringArray_t.m_ppStrings has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamParamStringArray_t.m_ppStrings has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nNumStrings";
                    assert(it.offset_in_bytes == 8, "SteamParamStringArray_t.m_nNumStrings has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamParamStringArray_t.m_nNumStrings has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamParamStringArray_t) == 12, "SteamParamStringArray_t has size % instead of 12", size_of(SteamParamStringArray_t));
    }

    assert(size_of(ISteamRemoteStorage) == 8, "ISteamRemoteStorage has size % instead of 8", size_of(ISteamRemoteStorage));

    {
        info := type_info(RemoteStorageFileShareResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageFileShareResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageFileShareResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_hFile";
                    assert(it.offset_in_bytes == 4, "RemoteStorageFileShareResult_t.m_hFile has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageFileShareResult_t.m_hFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgchFilename";
                    assert(it.offset_in_bytes == 12, "RemoteStorageFileShareResult_t.m_rgchFilename has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 260, "RemoteStorageFileShareResult_t.m_rgchFilename has unexpected size % instead of 260", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageFileShareResult_t) == 272, "RemoteStorageFileShareResult_t has size % instead of 272", size_of(RemoteStorageFileShareResult_t));
    }

    {
        info := type_info(RemoteStoragePublishFileResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStoragePublishFileResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStoragePublishFileResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStoragePublishFileResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishFileResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bUserNeedsToAcceptWorkshopLegalAgreement";
                    assert(it.offset_in_bytes == 12, "RemoteStoragePublishFileResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RemoteStoragePublishFileResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStoragePublishFileResult_t) == 16, "RemoteStoragePublishFileResult_t has size % instead of 16", size_of(RemoteStoragePublishFileResult_t));
    }

    {
        info := type_info(RemoteStorageDeletePublishedFileResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageDeletePublishedFileResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageDeletePublishedFileResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageDeletePublishedFileResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageDeletePublishedFileResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageDeletePublishedFileResult_t) == 12, "RemoteStorageDeletePublishedFileResult_t has size % instead of 12", size_of(RemoteStorageDeletePublishedFileResult_t));
    }

    {
        info := type_info(RemoteStorageEnumerateUserPublishedFilesResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nResultsReturned";
                    assert(it.offset_in_bytes == 4, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_nResultsReturned has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_nResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalResultCount";
                    assert(it.offset_in_bytes == 8, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_nTotalResultCount has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_nTotalResultCount has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgPublishedFileId";
                    assert(it.offset_in_bytes == 12, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_rgPublishedFileId has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 400, "RemoteStorageEnumerateUserPublishedFilesResult_t.m_rgPublishedFileId has unexpected size % instead of 400", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageEnumerateUserPublishedFilesResult_t) == 412, "RemoteStorageEnumerateUserPublishedFilesResult_t has size % instead of 412", size_of(RemoteStorageEnumerateUserPublishedFilesResult_t));
    }

    {
        info := type_info(RemoteStorageSubscribePublishedFileResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageSubscribePublishedFileResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageSubscribePublishedFileResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageSubscribePublishedFileResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageSubscribePublishedFileResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageSubscribePublishedFileResult_t) == 12, "RemoteStorageSubscribePublishedFileResult_t has size % instead of 12", size_of(RemoteStorageSubscribePublishedFileResult_t));
    }

    {
        info := type_info(RemoteStorageEnumerateUserSubscribedFilesResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nResultsReturned";
                    assert(it.offset_in_bytes == 4, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_nResultsReturned has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_nResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalResultCount";
                    assert(it.offset_in_bytes == 8, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_nTotalResultCount has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_nTotalResultCount has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgPublishedFileId";
                    assert(it.offset_in_bytes == 12, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_rgPublishedFileId has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 400, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_rgPublishedFileId has unexpected size % instead of 400", it.type.runtime_size);
                case "m_rgRTimeSubscribed";
                    assert(it.offset_in_bytes == 412, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_rgRTimeSubscribed has unexpected offset % instead of 412", it.offset_in_bytes);
                    assert(it.type.runtime_size == 200, "RemoteStorageEnumerateUserSubscribedFilesResult_t.m_rgRTimeSubscribed has unexpected size % instead of 200", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageEnumerateUserSubscribedFilesResult_t) == 612, "RemoteStorageEnumerateUserSubscribedFilesResult_t has size % instead of 612", size_of(RemoteStorageEnumerateUserSubscribedFilesResult_t));
    }

    {
        info := type_info(RemoteStorageUnsubscribePublishedFileResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageUnsubscribePublishedFileResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageUnsubscribePublishedFileResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageUnsubscribePublishedFileResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageUnsubscribePublishedFileResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageUnsubscribePublishedFileResult_t) == 12, "RemoteStorageUnsubscribePublishedFileResult_t has size % instead of 12", size_of(RemoteStorageUnsubscribePublishedFileResult_t));
    }

    {
        info := type_info(RemoteStorageUpdatePublishedFileResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageUpdatePublishedFileResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageUpdatePublishedFileResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageUpdatePublishedFileResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageUpdatePublishedFileResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bUserNeedsToAcceptWorkshopLegalAgreement";
                    assert(it.offset_in_bytes == 12, "RemoteStorageUpdatePublishedFileResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RemoteStorageUpdatePublishedFileResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageUpdatePublishedFileResult_t) == 16, "RemoteStorageUpdatePublishedFileResult_t has size % instead of 16", size_of(RemoteStorageUpdatePublishedFileResult_t));
    }

    {
        info := type_info(RemoteStorageDownloadUGCResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageDownloadUGCResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageDownloadUGCResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_hFile";
                    assert(it.offset_in_bytes == 4, "RemoteStorageDownloadUGCResult_t.m_hFile has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageDownloadUGCResult_t.m_hFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 12, "RemoteStorageDownloadUGCResult_t.m_nAppID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageDownloadUGCResult_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nSizeInBytes";
                    assert(it.offset_in_bytes == 16, "RemoteStorageDownloadUGCResult_t.m_nSizeInBytes has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageDownloadUGCResult_t.m_nSizeInBytes has unexpected size % instead of 4", it.type.runtime_size);
                case "m_pchFileName";
                    assert(it.offset_in_bytes == 20, "RemoteStorageDownloadUGCResult_t.m_pchFileName has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 260, "RemoteStorageDownloadUGCResult_t.m_pchFileName has unexpected size % instead of 260", it.type.runtime_size);
                case "m_ulSteamIDOwner";
                    assert(it.offset_in_bytes == 280, "RemoteStorageDownloadUGCResult_t.m_ulSteamIDOwner has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageDownloadUGCResult_t.m_ulSteamIDOwner has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageDownloadUGCResult_t) == 288, "RemoteStorageDownloadUGCResult_t has size % instead of 288", size_of(RemoteStorageDownloadUGCResult_t));
    }

    {
        info := type_info(RemoteStorageGetPublishedFileDetailsResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageGetPublishedFileDetailsResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageGetPublishedFileDetailsResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nCreatorAppID";
                    assert(it.offset_in_bytes == 12, "RemoteStorageGetPublishedFileDetailsResult_t.m_nCreatorAppID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_nCreatorAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nConsumerAppID";
                    assert(it.offset_in_bytes == 16, "RemoteStorageGetPublishedFileDetailsResult_t.m_nConsumerAppID has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_nConsumerAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchTitle";
                    assert(it.offset_in_bytes == 20, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchTitle has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 129, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchTitle has unexpected size % instead of 129", it.type.runtime_size);
                case "m_rgchDescription";
                    assert(it.offset_in_bytes == 149, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchDescription has unexpected offset % instead of 149", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8000, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchDescription has unexpected size % instead of 8000", it.type.runtime_size);
                case "m_hFile";
                    assert(it.offset_in_bytes == 8152, "RemoteStorageGetPublishedFileDetailsResult_t.m_hFile has unexpected offset % instead of 8152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageGetPublishedFileDetailsResult_t.m_hFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_hPreviewFile";
                    assert(it.offset_in_bytes == 8160, "RemoteStorageGetPublishedFileDetailsResult_t.m_hPreviewFile has unexpected offset % instead of 8160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageGetPublishedFileDetailsResult_t.m_hPreviewFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_ulSteamIDOwner";
                    assert(it.offset_in_bytes == 8168, "RemoteStorageGetPublishedFileDetailsResult_t.m_ulSteamIDOwner has unexpected offset % instead of 8168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageGetPublishedFileDetailsResult_t.m_ulSteamIDOwner has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rtimeCreated";
                    assert(it.offset_in_bytes == 8176, "RemoteStorageGetPublishedFileDetailsResult_t.m_rtimeCreated has unexpected offset % instead of 8176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_rtimeCreated has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rtimeUpdated";
                    assert(it.offset_in_bytes == 8180, "RemoteStorageGetPublishedFileDetailsResult_t.m_rtimeUpdated has unexpected offset % instead of 8180", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_rtimeUpdated has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eVisibility";
                    assert(it.offset_in_bytes == 8184, "RemoteStorageGetPublishedFileDetailsResult_t.m_eVisibility has unexpected offset % instead of 8184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_eVisibility has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bBanned";
                    assert(it.offset_in_bytes == 8188, "RemoteStorageGetPublishedFileDetailsResult_t.m_bBanned has unexpected offset % instead of 8188", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RemoteStorageGetPublishedFileDetailsResult_t.m_bBanned has unexpected size % instead of 1", it.type.runtime_size);
                case "m_rgchTags";
                    assert(it.offset_in_bytes == 8189, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchTags has unexpected offset % instead of 8189", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1025, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchTags has unexpected size % instead of 1025", it.type.runtime_size);
                case "m_bTagsTruncated";
                    assert(it.offset_in_bytes == 9214, "RemoteStorageGetPublishedFileDetailsResult_t.m_bTagsTruncated has unexpected offset % instead of 9214", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RemoteStorageGetPublishedFileDetailsResult_t.m_bTagsTruncated has unexpected size % instead of 1", it.type.runtime_size);
                case "m_pchFileName";
                    assert(it.offset_in_bytes == 9215, "RemoteStorageGetPublishedFileDetailsResult_t.m_pchFileName has unexpected offset % instead of 9215", it.offset_in_bytes);
                    assert(it.type.runtime_size == 260, "RemoteStorageGetPublishedFileDetailsResult_t.m_pchFileName has unexpected size % instead of 260", it.type.runtime_size);
                case "m_nFileSize";
                    assert(it.offset_in_bytes == 9476, "RemoteStorageGetPublishedFileDetailsResult_t.m_nFileSize has unexpected offset % instead of 9476", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_nFileSize has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPreviewFileSize";
                    assert(it.offset_in_bytes == 9480, "RemoteStorageGetPublishedFileDetailsResult_t.m_nPreviewFileSize has unexpected offset % instead of 9480", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_nPreviewFileSize has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchURL";
                    assert(it.offset_in_bytes == 9484, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchURL has unexpected offset % instead of 9484", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "RemoteStorageGetPublishedFileDetailsResult_t.m_rgchURL has unexpected size % instead of 256", it.type.runtime_size);
                case "m_eFileType";
                    assert(it.offset_in_bytes == 9740, "RemoteStorageGetPublishedFileDetailsResult_t.m_eFileType has unexpected offset % instead of 9740", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedFileDetailsResult_t.m_eFileType has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bAcceptedForUse";
                    assert(it.offset_in_bytes == 9744, "RemoteStorageGetPublishedFileDetailsResult_t.m_bAcceptedForUse has unexpected offset % instead of 9744", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RemoteStorageGetPublishedFileDetailsResult_t.m_bAcceptedForUse has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageGetPublishedFileDetailsResult_t) == 9748, "RemoteStorageGetPublishedFileDetailsResult_t has size % instead of 9748", size_of(RemoteStorageGetPublishedFileDetailsResult_t));
    }

    {
        info := type_info(RemoteStorageEnumerateWorkshopFilesResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageEnumerateWorkshopFilesResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateWorkshopFilesResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nResultsReturned";
                    assert(it.offset_in_bytes == 4, "RemoteStorageEnumerateWorkshopFilesResult_t.m_nResultsReturned has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateWorkshopFilesResult_t.m_nResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalResultCount";
                    assert(it.offset_in_bytes == 8, "RemoteStorageEnumerateWorkshopFilesResult_t.m_nTotalResultCount has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateWorkshopFilesResult_t.m_nTotalResultCount has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgPublishedFileId";
                    assert(it.offset_in_bytes == 12, "RemoteStorageEnumerateWorkshopFilesResult_t.m_rgPublishedFileId has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 400, "RemoteStorageEnumerateWorkshopFilesResult_t.m_rgPublishedFileId has unexpected size % instead of 400", it.type.runtime_size);
                case "m_rgScore";
                    assert(it.offset_in_bytes == 412, "RemoteStorageEnumerateWorkshopFilesResult_t.m_rgScore has unexpected offset % instead of 412", it.offset_in_bytes);
                    assert(it.type.runtime_size == 200, "RemoteStorageEnumerateWorkshopFilesResult_t.m_rgScore has unexpected size % instead of 200", it.type.runtime_size);
                case "m_nAppId";
                    assert(it.offset_in_bytes == 612, "RemoteStorageEnumerateWorkshopFilesResult_t.m_nAppId has unexpected offset % instead of 612", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateWorkshopFilesResult_t.m_nAppId has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unStartIndex";
                    assert(it.offset_in_bytes == 616, "RemoteStorageEnumerateWorkshopFilesResult_t.m_unStartIndex has unexpected offset % instead of 616", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateWorkshopFilesResult_t.m_unStartIndex has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageEnumerateWorkshopFilesResult_t) == 620, "RemoteStorageEnumerateWorkshopFilesResult_t has size % instead of 620", size_of(RemoteStorageEnumerateWorkshopFilesResult_t));
    }

    {
        info := type_info(RemoteStorageGetPublishedItemVoteDetailsResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_unPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_unPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nVotesFor";
                    assert(it.offset_in_bytes == 12, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_nVotesFor has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_nVotesFor has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nVotesAgainst";
                    assert(it.offset_in_bytes == 16, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_nVotesAgainst has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_nVotesAgainst has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nReports";
                    assert(it.offset_in_bytes == 20, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_nReports has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_nReports has unexpected size % instead of 4", it.type.runtime_size);
                case "m_fScore";
                    assert(it.offset_in_bytes == 24, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_fScore has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageGetPublishedItemVoteDetailsResult_t.m_fScore has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageGetPublishedItemVoteDetailsResult_t) == 28, "RemoteStorageGetPublishedItemVoteDetailsResult_t has size % instead of 28", size_of(RemoteStorageGetPublishedItemVoteDetailsResult_t));
    }

    {
        info := type_info(RemoteStoragePublishedFileSubscribed_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "RemoteStoragePublishedFileSubscribed_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishedFileSubscribed_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 8, "RemoteStoragePublishedFileSubscribed_t.m_nAppID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStoragePublishedFileSubscribed_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStoragePublishedFileSubscribed_t) == 12, "RemoteStoragePublishedFileSubscribed_t has size % instead of 12", size_of(RemoteStoragePublishedFileSubscribed_t));
    }

    {
        info := type_info(RemoteStoragePublishedFileUnsubscribed_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "RemoteStoragePublishedFileUnsubscribed_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishedFileUnsubscribed_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 8, "RemoteStoragePublishedFileUnsubscribed_t.m_nAppID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStoragePublishedFileUnsubscribed_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStoragePublishedFileUnsubscribed_t) == 12, "RemoteStoragePublishedFileUnsubscribed_t has size % instead of 12", size_of(RemoteStoragePublishedFileUnsubscribed_t));
    }

    {
        info := type_info(RemoteStoragePublishedFileDeleted_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "RemoteStoragePublishedFileDeleted_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishedFileDeleted_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 8, "RemoteStoragePublishedFileDeleted_t.m_nAppID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStoragePublishedFileDeleted_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStoragePublishedFileDeleted_t) == 12, "RemoteStoragePublishedFileDeleted_t has size % instead of 12", size_of(RemoteStoragePublishedFileDeleted_t));
    }

    {
        info := type_info(RemoteStorageUpdateUserPublishedItemVoteResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageUpdateUserPublishedItemVoteResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageUpdateUserPublishedItemVoteResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageUpdateUserPublishedItemVoteResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageUpdateUserPublishedItemVoteResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageUpdateUserPublishedItemVoteResult_t) == 12, "RemoteStorageUpdateUserPublishedItemVoteResult_t has size % instead of 12", size_of(RemoteStorageUpdateUserPublishedItemVoteResult_t));
    }

    {
        info := type_info(RemoteStorageUserVoteDetails_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageUserVoteDetails_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageUserVoteDetails_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageUserVoteDetails_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageUserVoteDetails_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eVote";
                    assert(it.offset_in_bytes == 12, "RemoteStorageUserVoteDetails_t.m_eVote has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageUserVoteDetails_t.m_eVote has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageUserVoteDetails_t) == 16, "RemoteStorageUserVoteDetails_t has size % instead of 16", size_of(RemoteStorageUserVoteDetails_t));
    }

    {
        info := type_info(RemoteStorageEnumerateUserSharedWorkshopFilesResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nResultsReturned";
                    assert(it.offset_in_bytes == 4, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_nResultsReturned has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_nResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalResultCount";
                    assert(it.offset_in_bytes == 8, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_nTotalResultCount has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_nTotalResultCount has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgPublishedFileId";
                    assert(it.offset_in_bytes == 12, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_rgPublishedFileId has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 400, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t.m_rgPublishedFileId has unexpected size % instead of 400", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageEnumerateUserSharedWorkshopFilesResult_t) == 412, "RemoteStorageEnumerateUserSharedWorkshopFilesResult_t has size % instead of 412", size_of(RemoteStorageEnumerateUserSharedWorkshopFilesResult_t));
    }

    {
        info := type_info(RemoteStorageSetUserPublishedFileActionResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageSetUserPublishedFileActionResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageSetUserPublishedFileActionResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoteStorageSetUserPublishedFileActionResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageSetUserPublishedFileActionResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eAction";
                    assert(it.offset_in_bytes == 12, "RemoteStorageSetUserPublishedFileActionResult_t.m_eAction has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageSetUserPublishedFileActionResult_t.m_eAction has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageSetUserPublishedFileActionResult_t) == 16, "RemoteStorageSetUserPublishedFileActionResult_t has size % instead of 16", size_of(RemoteStorageSetUserPublishedFileActionResult_t));
    }

    {
        info := type_info(RemoteStorageEnumeratePublishedFilesByUserActionResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eAction";
                    assert(it.offset_in_bytes == 4, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_eAction has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_eAction has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nResultsReturned";
                    assert(it.offset_in_bytes == 8, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_nResultsReturned has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_nResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalResultCount";
                    assert(it.offset_in_bytes == 12, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_nTotalResultCount has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_nTotalResultCount has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgPublishedFileId";
                    assert(it.offset_in_bytes == 16, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_rgPublishedFileId has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 400, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_rgPublishedFileId has unexpected size % instead of 400", it.type.runtime_size);
                case "m_rgRTimeUpdated";
                    assert(it.offset_in_bytes == 416, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_rgRTimeUpdated has unexpected offset % instead of 416", it.offset_in_bytes);
                    assert(it.type.runtime_size == 200, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t.m_rgRTimeUpdated has unexpected size % instead of 200", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageEnumeratePublishedFilesByUserActionResult_t) == 616, "RemoteStorageEnumeratePublishedFilesByUserActionResult_t has size % instead of 616", size_of(RemoteStorageEnumeratePublishedFilesByUserActionResult_t));
    }

    {
        info := type_info(RemoteStoragePublishFileProgress_t);
        for info.members {
            if it.name == {
                case "m_dPercentFile";
                    assert(it.offset_in_bytes == 0, "RemoteStoragePublishFileProgress_t.m_dPercentFile has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishFileProgress_t.m_dPercentFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bPreview";
                    assert(it.offset_in_bytes == 8, "RemoteStoragePublishFileProgress_t.m_bPreview has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RemoteStoragePublishFileProgress_t.m_bPreview has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStoragePublishFileProgress_t) == 12, "RemoteStoragePublishFileProgress_t has size % instead of 12", size_of(RemoteStoragePublishFileProgress_t));
    }

    {
        info := type_info(RemoteStoragePublishedFileUpdated_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "RemoteStoragePublishedFileUpdated_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishedFileUpdated_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 8, "RemoteStoragePublishedFileUpdated_t.m_nAppID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStoragePublishedFileUpdated_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulUnused";
                    assert(it.offset_in_bytes == 12, "RemoteStoragePublishedFileUpdated_t.m_ulUnused has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStoragePublishedFileUpdated_t.m_ulUnused has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStoragePublishedFileUpdated_t) == 20, "RemoteStoragePublishedFileUpdated_t has size % instead of 20", size_of(RemoteStoragePublishedFileUpdated_t));
    }

    {
        info := type_info(RemoteStorageFileWriteAsyncComplete_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoteStorageFileWriteAsyncComplete_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageFileWriteAsyncComplete_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageFileWriteAsyncComplete_t) == 4, "RemoteStorageFileWriteAsyncComplete_t has size % instead of 4", size_of(RemoteStorageFileWriteAsyncComplete_t));
    }

    {
        info := type_info(RemoteStorageFileReadAsyncComplete_t);
        for info.members {
            if it.name == {
                case "m_hFileReadAsync";
                    assert(it.offset_in_bytes == 0, "RemoteStorageFileReadAsyncComplete_t.m_hFileReadAsync has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoteStorageFileReadAsyncComplete_t.m_hFileReadAsync has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "RemoteStorageFileReadAsyncComplete_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageFileReadAsyncComplete_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nOffset";
                    assert(it.offset_in_bytes == 12, "RemoteStorageFileReadAsyncComplete_t.m_nOffset has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageFileReadAsyncComplete_t.m_nOffset has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cubRead";
                    assert(it.offset_in_bytes == 16, "RemoteStorageFileReadAsyncComplete_t.m_cubRead has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoteStorageFileReadAsyncComplete_t.m_cubRead has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoteStorageFileReadAsyncComplete_t) == 20, "RemoteStorageFileReadAsyncComplete_t has size % instead of 20", size_of(RemoteStorageFileReadAsyncComplete_t));
    }

    assert(size_of(RemoteStorageLocalFileChange_t) == 1, "RemoteStorageLocalFileChange_t has size % instead of 1", size_of(RemoteStorageLocalFileChange_t));

    assert(size_of(ISteamScreenshots) == 8, "ISteamScreenshots has size % instead of 8", size_of(ISteamScreenshots));

    {
        info := type_info(ScreenshotReady_t);
        for info.members {
            if it.name == {
                case "m_hLocal";
                    assert(it.offset_in_bytes == 0, "ScreenshotReady_t.m_hLocal has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ScreenshotReady_t.m_hLocal has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 4, "ScreenshotReady_t.m_eResult has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ScreenshotReady_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(ScreenshotReady_t) == 8, "ScreenshotReady_t has size % instead of 8", size_of(ScreenshotReady_t));
    }

    assert(size_of(ScreenshotRequested_t) == 1, "ScreenshotRequested_t has size % instead of 1", size_of(ScreenshotRequested_t));

    assert(size_of(ISteamTimeline) == 8, "ISteamTimeline has size % instead of 8", size_of(ISteamTimeline));

    {
        info := type_info(SteamUGCDetails_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "SteamUGCDetails_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamUGCDetails_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "SteamUGCDetails_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eFileType";
                    assert(it.offset_in_bytes == 12, "SteamUGCDetails_t.m_eFileType has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_eFileType has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nCreatorAppID";
                    assert(it.offset_in_bytes == 16, "SteamUGCDetails_t.m_nCreatorAppID has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_nCreatorAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nConsumerAppID";
                    assert(it.offset_in_bytes == 20, "SteamUGCDetails_t.m_nConsumerAppID has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_nConsumerAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchTitle";
                    assert(it.offset_in_bytes == 24, "SteamUGCDetails_t.m_rgchTitle has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 129, "SteamUGCDetails_t.m_rgchTitle has unexpected size % instead of 129", it.type.runtime_size);
                case "m_rgchDescription";
                    assert(it.offset_in_bytes == 153, "SteamUGCDetails_t.m_rgchDescription has unexpected offset % instead of 153", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8000, "SteamUGCDetails_t.m_rgchDescription has unexpected size % instead of 8000", it.type.runtime_size);
                case "m_ulSteamIDOwner";
                    assert(it.offset_in_bytes == 8156, "SteamUGCDetails_t.m_ulSteamIDOwner has unexpected offset % instead of 8156", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamUGCDetails_t.m_ulSteamIDOwner has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rtimeCreated";
                    assert(it.offset_in_bytes == 8164, "SteamUGCDetails_t.m_rtimeCreated has unexpected offset % instead of 8164", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_rtimeCreated has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rtimeUpdated";
                    assert(it.offset_in_bytes == 8168, "SteamUGCDetails_t.m_rtimeUpdated has unexpected offset % instead of 8168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_rtimeUpdated has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rtimeAddedToUserList";
                    assert(it.offset_in_bytes == 8172, "SteamUGCDetails_t.m_rtimeAddedToUserList has unexpected offset % instead of 8172", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_rtimeAddedToUserList has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eVisibility";
                    assert(it.offset_in_bytes == 8176, "SteamUGCDetails_t.m_eVisibility has unexpected offset % instead of 8176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_eVisibility has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bBanned";
                    assert(it.offset_in_bytes == 8180, "SteamUGCDetails_t.m_bBanned has unexpected offset % instead of 8180", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamUGCDetails_t.m_bBanned has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bAcceptedForUse";
                    assert(it.offset_in_bytes == 8181, "SteamUGCDetails_t.m_bAcceptedForUse has unexpected offset % instead of 8181", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamUGCDetails_t.m_bAcceptedForUse has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bTagsTruncated";
                    assert(it.offset_in_bytes == 8182, "SteamUGCDetails_t.m_bTagsTruncated has unexpected offset % instead of 8182", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamUGCDetails_t.m_bTagsTruncated has unexpected size % instead of 1", it.type.runtime_size);
                case "m_rgchTags";
                    assert(it.offset_in_bytes == 8183, "SteamUGCDetails_t.m_rgchTags has unexpected offset % instead of 8183", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1025, "SteamUGCDetails_t.m_rgchTags has unexpected size % instead of 1025", it.type.runtime_size);
                case "m_hFile";
                    assert(it.offset_in_bytes == 9208, "SteamUGCDetails_t.m_hFile has unexpected offset % instead of 9208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamUGCDetails_t.m_hFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_hPreviewFile";
                    assert(it.offset_in_bytes == 9216, "SteamUGCDetails_t.m_hPreviewFile has unexpected offset % instead of 9216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamUGCDetails_t.m_hPreviewFile has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pchFileName";
                    assert(it.offset_in_bytes == 9224, "SteamUGCDetails_t.m_pchFileName has unexpected offset % instead of 9224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 260, "SteamUGCDetails_t.m_pchFileName has unexpected size % instead of 260", it.type.runtime_size);
                case "m_nFileSize";
                    assert(it.offset_in_bytes == 9484, "SteamUGCDetails_t.m_nFileSize has unexpected offset % instead of 9484", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_nFileSize has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPreviewFileSize";
                    assert(it.offset_in_bytes == 9488, "SteamUGCDetails_t.m_nPreviewFileSize has unexpected offset % instead of 9488", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_nPreviewFileSize has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchURL";
                    assert(it.offset_in_bytes == 9492, "SteamUGCDetails_t.m_rgchURL has unexpected offset % instead of 9492", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "SteamUGCDetails_t.m_rgchURL has unexpected size % instead of 256", it.type.runtime_size);
                case "m_unVotesUp";
                    assert(it.offset_in_bytes == 9748, "SteamUGCDetails_t.m_unVotesUp has unexpected offset % instead of 9748", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_unVotesUp has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unVotesDown";
                    assert(it.offset_in_bytes == 9752, "SteamUGCDetails_t.m_unVotesDown has unexpected offset % instead of 9752", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_unVotesDown has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flScore";
                    assert(it.offset_in_bytes == 9756, "SteamUGCDetails_t.m_flScore has unexpected offset % instead of 9756", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_flScore has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unNumChildren";
                    assert(it.offset_in_bytes == 9760, "SteamUGCDetails_t.m_unNumChildren has unexpected offset % instead of 9760", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCDetails_t.m_unNumChildren has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulTotalFilesSize";
                    assert(it.offset_in_bytes == 9764, "SteamUGCDetails_t.m_ulTotalFilesSize has unexpected offset % instead of 9764", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamUGCDetails_t.m_ulTotalFilesSize has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamUGCDetails_t) == 9772, "SteamUGCDetails_t has size % instead of 9772", size_of(SteamUGCDetails_t));
    }

    assert(size_of(ISteamUGC) == 8, "ISteamUGC has size % instead of 8", size_of(ISteamUGC));

    {
        info := type_info(SteamUGCQueryCompleted_t);
        for info.members {
            if it.name == {
                case "m_handle";
                    assert(it.offset_in_bytes == 0, "SteamUGCQueryCompleted_t.m_handle has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamUGCQueryCompleted_t.m_handle has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "SteamUGCQueryCompleted_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCQueryCompleted_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unNumResultsReturned";
                    assert(it.offset_in_bytes == 12, "SteamUGCQueryCompleted_t.m_unNumResultsReturned has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCQueryCompleted_t.m_unNumResultsReturned has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unTotalMatchingResults";
                    assert(it.offset_in_bytes == 16, "SteamUGCQueryCompleted_t.m_unTotalMatchingResults has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamUGCQueryCompleted_t.m_unTotalMatchingResults has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bCachedData";
                    assert(it.offset_in_bytes == 20, "SteamUGCQueryCompleted_t.m_bCachedData has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamUGCQueryCompleted_t.m_bCachedData has unexpected size % instead of 1", it.type.runtime_size);
                case "m_rgchNextCursor";
                    assert(it.offset_in_bytes == 21, "SteamUGCQueryCompleted_t.m_rgchNextCursor has unexpected offset % instead of 21", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "SteamUGCQueryCompleted_t.m_rgchNextCursor has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(SteamUGCQueryCompleted_t) == 280, "SteamUGCQueryCompleted_t has size % instead of 280", size_of(SteamUGCQueryCompleted_t));
    }

    {
        info := type_info(SteamUGCRequestUGCDetailsResult_t);
        for info.members {
            if it.name == {
                case "m_details";
                    assert(it.offset_in_bytes == 0, "SteamUGCRequestUGCDetailsResult_t.m_details has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 9772, "SteamUGCRequestUGCDetailsResult_t.m_details has unexpected size % instead of 9772", it.type.runtime_size);
                case "m_bCachedData";
                    assert(it.offset_in_bytes == 9772, "SteamUGCRequestUGCDetailsResult_t.m_bCachedData has unexpected offset % instead of 9772", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamUGCRequestUGCDetailsResult_t.m_bCachedData has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamUGCRequestUGCDetailsResult_t) == 9776, "SteamUGCRequestUGCDetailsResult_t has size % instead of 9776", size_of(SteamUGCRequestUGCDetailsResult_t));
    }

    {
        info := type_info(CreateItemResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "CreateItemResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CreateItemResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "CreateItemResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CreateItemResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bUserNeedsToAcceptWorkshopLegalAgreement";
                    assert(it.offset_in_bytes == 12, "CreateItemResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CreateItemResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(CreateItemResult_t) == 16, "CreateItemResult_t has size % instead of 16", size_of(CreateItemResult_t));
    }

    {
        info := type_info(SubmitItemUpdateResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "SubmitItemUpdateResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SubmitItemUpdateResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bUserNeedsToAcceptWorkshopLegalAgreement";
                    assert(it.offset_in_bytes == 4, "SubmitItemUpdateResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SubmitItemUpdateResult_t.m_bUserNeedsToAcceptWorkshopLegalAgreement has unexpected size % instead of 1", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 8, "SubmitItemUpdateResult_t.m_nPublishedFileId has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SubmitItemUpdateResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SubmitItemUpdateResult_t) == 16, "SubmitItemUpdateResult_t has size % instead of 16", size_of(SubmitItemUpdateResult_t));
    }

    {
        info := type_info(ItemInstalled_t);
        for info.members {
            if it.name == {
                case "m_unAppID";
                    assert(it.offset_in_bytes == 0, "ItemInstalled_t.m_unAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ItemInstalled_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "ItemInstalled_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ItemInstalled_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_hLegacyContent";
                    assert(it.offset_in_bytes == 12, "ItemInstalled_t.m_hLegacyContent has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ItemInstalled_t.m_hLegacyContent has unexpected size % instead of 8", it.type.runtime_size);
                case "m_unManifestID";
                    assert(it.offset_in_bytes == 20, "ItemInstalled_t.m_unManifestID has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ItemInstalled_t.m_unManifestID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ItemInstalled_t) == 28, "ItemInstalled_t has size % instead of 28", size_of(ItemInstalled_t));
    }

    {
        info := type_info(DownloadItemResult_t);
        for info.members {
            if it.name == {
                case "m_unAppID";
                    assert(it.offset_in_bytes == 0, "DownloadItemResult_t.m_unAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DownloadItemResult_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "DownloadItemResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "DownloadItemResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 12, "DownloadItemResult_t.m_eResult has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DownloadItemResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(DownloadItemResult_t) == 16, "DownloadItemResult_t has size % instead of 16", size_of(DownloadItemResult_t));
    }

    {
        info := type_info(UserFavoriteItemsListChanged_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "UserFavoriteItemsListChanged_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserFavoriteItemsListChanged_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "UserFavoriteItemsListChanged_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserFavoriteItemsListChanged_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bWasAddRequest";
                    assert(it.offset_in_bytes == 12, "UserFavoriteItemsListChanged_t.m_bWasAddRequest has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "UserFavoriteItemsListChanged_t.m_bWasAddRequest has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(UserFavoriteItemsListChanged_t) == 16, "UserFavoriteItemsListChanged_t has size % instead of 16", size_of(UserFavoriteItemsListChanged_t));
    }

    {
        info := type_info(SetUserItemVoteResult_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "SetUserItemVoteResult_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SetUserItemVoteResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "SetUserItemVoteResult_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SetUserItemVoteResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bVoteUp";
                    assert(it.offset_in_bytes == 12, "SetUserItemVoteResult_t.m_bVoteUp has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SetUserItemVoteResult_t.m_bVoteUp has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SetUserItemVoteResult_t) == 16, "SetUserItemVoteResult_t has size % instead of 16", size_of(SetUserItemVoteResult_t));
    }

    {
        info := type_info(GetUserItemVoteResult_t);
        for info.members {
            if it.name == {
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 0, "GetUserItemVoteResult_t.m_nPublishedFileId has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GetUserItemVoteResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "GetUserItemVoteResult_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetUserItemVoteResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bVotedUp";
                    assert(it.offset_in_bytes == 12, "GetUserItemVoteResult_t.m_bVotedUp has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GetUserItemVoteResult_t.m_bVotedUp has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bVotedDown";
                    assert(it.offset_in_bytes == 13, "GetUserItemVoteResult_t.m_bVotedDown has unexpected offset % instead of 13", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GetUserItemVoteResult_t.m_bVotedDown has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bVoteSkipped";
                    assert(it.offset_in_bytes == 14, "GetUserItemVoteResult_t.m_bVoteSkipped has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GetUserItemVoteResult_t.m_bVoteSkipped has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(GetUserItemVoteResult_t) == 16, "GetUserItemVoteResult_t has size % instead of 16", size_of(GetUserItemVoteResult_t));
    }

    {
        info := type_info(StartPlaytimeTrackingResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "StartPlaytimeTrackingResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "StartPlaytimeTrackingResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(StartPlaytimeTrackingResult_t) == 4, "StartPlaytimeTrackingResult_t has size % instead of 4", size_of(StartPlaytimeTrackingResult_t));
    }

    {
        info := type_info(StopPlaytimeTrackingResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "StopPlaytimeTrackingResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "StopPlaytimeTrackingResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(StopPlaytimeTrackingResult_t) == 4, "StopPlaytimeTrackingResult_t has size % instead of 4", size_of(StopPlaytimeTrackingResult_t));
    }

    {
        info := type_info(AddUGCDependencyResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "AddUGCDependencyResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AddUGCDependencyResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "AddUGCDependencyResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "AddUGCDependencyResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nChildPublishedFileId";
                    assert(it.offset_in_bytes == 12, "AddUGCDependencyResult_t.m_nChildPublishedFileId has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "AddUGCDependencyResult_t.m_nChildPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(AddUGCDependencyResult_t) == 20, "AddUGCDependencyResult_t has size % instead of 20", size_of(AddUGCDependencyResult_t));
    }

    {
        info := type_info(RemoveUGCDependencyResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoveUGCDependencyResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoveUGCDependencyResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoveUGCDependencyResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoveUGCDependencyResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nChildPublishedFileId";
                    assert(it.offset_in_bytes == 12, "RemoveUGCDependencyResult_t.m_nChildPublishedFileId has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoveUGCDependencyResult_t.m_nChildPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(RemoveUGCDependencyResult_t) == 20, "RemoveUGCDependencyResult_t has size % instead of 20", size_of(RemoveUGCDependencyResult_t));
    }

    {
        info := type_info(AddAppDependencyResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "AddAppDependencyResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AddAppDependencyResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "AddAppDependencyResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "AddAppDependencyResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 12, "AddAppDependencyResult_t.m_nAppID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "AddAppDependencyResult_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(AddAppDependencyResult_t) == 16, "AddAppDependencyResult_t has size % instead of 16", size_of(AddAppDependencyResult_t));
    }

    {
        info := type_info(RemoveAppDependencyResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "RemoveAppDependencyResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoveAppDependencyResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "RemoveAppDependencyResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "RemoveAppDependencyResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 12, "RemoveAppDependencyResult_t.m_nAppID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RemoveAppDependencyResult_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RemoveAppDependencyResult_t) == 16, "RemoveAppDependencyResult_t has size % instead of 16", size_of(RemoveAppDependencyResult_t));
    }

    {
        info := type_info(GetAppDependenciesResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GetAppDependenciesResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetAppDependenciesResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "GetAppDependenciesResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GetAppDependenciesResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgAppIDs";
                    assert(it.offset_in_bytes == 12, "GetAppDependenciesResult_t.m_rgAppIDs has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "GetAppDependenciesResult_t.m_rgAppIDs has unexpected size % instead of 128", it.type.runtime_size);
                case "m_nNumAppDependencies";
                    assert(it.offset_in_bytes == 140, "GetAppDependenciesResult_t.m_nNumAppDependencies has unexpected offset % instead of 140", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetAppDependenciesResult_t.m_nNumAppDependencies has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nTotalNumAppDependencies";
                    assert(it.offset_in_bytes == 144, "GetAppDependenciesResult_t.m_nTotalNumAppDependencies has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetAppDependenciesResult_t.m_nTotalNumAppDependencies has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GetAppDependenciesResult_t) == 148, "GetAppDependenciesResult_t has size % instead of 148", size_of(GetAppDependenciesResult_t));
    }

    {
        info := type_info(DeleteItemResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "DeleteItemResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DeleteItemResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nPublishedFileId";
                    assert(it.offset_in_bytes == 4, "DeleteItemResult_t.m_nPublishedFileId has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "DeleteItemResult_t.m_nPublishedFileId has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(DeleteItemResult_t) == 12, "DeleteItemResult_t has size % instead of 12", size_of(DeleteItemResult_t));
    }

    {
        info := type_info(UserSubscribedItemsListChanged_t);
        for info.members {
            if it.name == {
                case "m_nAppID";
                    assert(it.offset_in_bytes == 0, "UserSubscribedItemsListChanged_t.m_nAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserSubscribedItemsListChanged_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(UserSubscribedItemsListChanged_t) == 4, "UserSubscribedItemsListChanged_t has size % instead of 4", size_of(UserSubscribedItemsListChanged_t));
    }

    {
        info := type_info(WorkshopEULAStatus_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "WorkshopEULAStatus_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "WorkshopEULAStatus_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nAppID";
                    assert(it.offset_in_bytes == 4, "WorkshopEULAStatus_t.m_nAppID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "WorkshopEULAStatus_t.m_nAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unVersion";
                    assert(it.offset_in_bytes == 8, "WorkshopEULAStatus_t.m_unVersion has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "WorkshopEULAStatus_t.m_unVersion has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rtAction";
                    assert(it.offset_in_bytes == 12, "WorkshopEULAStatus_t.m_rtAction has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "WorkshopEULAStatus_t.m_rtAction has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bAccepted";
                    assert(it.offset_in_bytes == 16, "WorkshopEULAStatus_t.m_bAccepted has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "WorkshopEULAStatus_t.m_bAccepted has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bNeedsAction";
                    assert(it.offset_in_bytes == 17, "WorkshopEULAStatus_t.m_bNeedsAction has unexpected offset % instead of 17", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "WorkshopEULAStatus_t.m_bNeedsAction has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(WorkshopEULAStatus_t) == 20, "WorkshopEULAStatus_t has size % instead of 20", size_of(WorkshopEULAStatus_t));
    }

    assert(size_of(ISteamUser) == 8, "ISteamUser has size % instead of 8", size_of(ISteamUser));

    assert(size_of(SteamServersConnected_t) == 1, "SteamServersConnected_t has size % instead of 1", size_of(SteamServersConnected_t));

    {
        info := type_info(SteamServerConnectFailure_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "SteamServerConnectFailure_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamServerConnectFailure_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bStillRetrying";
                    assert(it.offset_in_bytes == 4, "SteamServerConnectFailure_t.m_bStillRetrying has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamServerConnectFailure_t.m_bStillRetrying has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamServerConnectFailure_t) == 8, "SteamServerConnectFailure_t has size % instead of 8", size_of(SteamServerConnectFailure_t));
    }

    {
        info := type_info(SteamServersDisconnected_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "SteamServersDisconnected_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamServersDisconnected_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamServersDisconnected_t) == 4, "SteamServersDisconnected_t has size % instead of 4", size_of(SteamServersDisconnected_t));
    }

    {
        info := type_info(ClientGameServerDeny_t);
        for info.members {
            if it.name == {
                case "m_uAppID";
                    assert(it.offset_in_bytes == 0, "ClientGameServerDeny_t.m_uAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ClientGameServerDeny_t.m_uAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unGameServerIP";
                    assert(it.offset_in_bytes == 4, "ClientGameServerDeny_t.m_unGameServerIP has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ClientGameServerDeny_t.m_unGameServerIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_usGameServerPort";
                    assert(it.offset_in_bytes == 8, "ClientGameServerDeny_t.m_usGameServerPort has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "ClientGameServerDeny_t.m_usGameServerPort has unexpected size % instead of 2", it.type.runtime_size);
                case "m_bSecure";
                    assert(it.offset_in_bytes == 10, "ClientGameServerDeny_t.m_bSecure has unexpected offset % instead of 10", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "ClientGameServerDeny_t.m_bSecure has unexpected size % instead of 2", it.type.runtime_size);
                case "m_uReason";
                    assert(it.offset_in_bytes == 12, "ClientGameServerDeny_t.m_uReason has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ClientGameServerDeny_t.m_uReason has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(ClientGameServerDeny_t) == 16, "ClientGameServerDeny_t has size % instead of 16", size_of(ClientGameServerDeny_t));
    }

    {
        info := type_info(IPCFailure_t);
        for info.members {
            if it.name == {
                case "m_eFailureType";
                    assert(it.offset_in_bytes == 0, "IPCFailure_t.m_eFailureType has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "IPCFailure_t.m_eFailureType has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(IPCFailure_t) == 1, "IPCFailure_t has size % instead of 1", size_of(IPCFailure_t));
    }

    assert(size_of(LicensesUpdated_t) == 1, "LicensesUpdated_t has size % instead of 1", size_of(LicensesUpdated_t));

    {
        info := type_info(ValidateAuthTicketResponse_t);
        for info.members {
            if it.name == {
                case "m_SteamID";
                    assert(it.offset_in_bytes == 0, "ValidateAuthTicketResponse_t.m_SteamID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ValidateAuthTicketResponse_t.m_SteamID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eAuthSessionResponse";
                    assert(it.offset_in_bytes == 8, "ValidateAuthTicketResponse_t.m_eAuthSessionResponse has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ValidateAuthTicketResponse_t.m_eAuthSessionResponse has unexpected size % instead of 4", it.type.runtime_size);
                case "m_OwnerSteamID";
                    assert(it.offset_in_bytes == 12, "ValidateAuthTicketResponse_t.m_OwnerSteamID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ValidateAuthTicketResponse_t.m_OwnerSteamID has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ValidateAuthTicketResponse_t) == 20, "ValidateAuthTicketResponse_t has size % instead of 20", size_of(ValidateAuthTicketResponse_t));
    }

    {
        info := type_info(MicroTxnAuthorizationResponse_t);
        for info.members {
            if it.name == {
                case "m_unAppID";
                    assert(it.offset_in_bytes == 0, "MicroTxnAuthorizationResponse_t.m_unAppID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MicroTxnAuthorizationResponse_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulOrderID";
                    assert(it.offset_in_bytes == 4, "MicroTxnAuthorizationResponse_t.m_ulOrderID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "MicroTxnAuthorizationResponse_t.m_ulOrderID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bAuthorized";
                    assert(it.offset_in_bytes == 12, "MicroTxnAuthorizationResponse_t.m_bAuthorized has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "MicroTxnAuthorizationResponse_t.m_bAuthorized has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(MicroTxnAuthorizationResponse_t) == 16, "MicroTxnAuthorizationResponse_t has size % instead of 16", size_of(MicroTxnAuthorizationResponse_t));
    }

    {
        info := type_info(EncryptedAppTicketResponse_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "EncryptedAppTicketResponse_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "EncryptedAppTicketResponse_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(EncryptedAppTicketResponse_t) == 4, "EncryptedAppTicketResponse_t has size % instead of 4", size_of(EncryptedAppTicketResponse_t));
    }

    {
        info := type_info(GetAuthSessionTicketResponse_t);
        for info.members {
            if it.name == {
                case "m_hAuthTicket";
                    assert(it.offset_in_bytes == 0, "GetAuthSessionTicketResponse_t.m_hAuthTicket has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetAuthSessionTicketResponse_t.m_hAuthTicket has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 4, "GetAuthSessionTicketResponse_t.m_eResult has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetAuthSessionTicketResponse_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GetAuthSessionTicketResponse_t) == 8, "GetAuthSessionTicketResponse_t has size % instead of 8", size_of(GetAuthSessionTicketResponse_t));
    }

    {
        info := type_info(GameWebCallback_t);
        for info.members {
            if it.name == {
                case "m_szURL";
                    assert(it.offset_in_bytes == 0, "GameWebCallback_t.m_szURL has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "GameWebCallback_t.m_szURL has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(GameWebCallback_t) == 256, "GameWebCallback_t has size % instead of 256", size_of(GameWebCallback_t));
    }

    {
        info := type_info(StoreAuthURLResponse_t);
        for info.members {
            if it.name == {
                case "m_szURL";
                    assert(it.offset_in_bytes == 0, "StoreAuthURLResponse_t.m_szURL has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 512, "StoreAuthURLResponse_t.m_szURL has unexpected size % instead of 512", it.type.runtime_size);
            }
        }
        assert(size_of(StoreAuthURLResponse_t) == 512, "StoreAuthURLResponse_t has size % instead of 512", size_of(StoreAuthURLResponse_t));
    }

    {
        info := type_info(MarketEligibilityResponse_t);
        for info.members {
            if it.name == {
                case "m_bAllowed";
                    assert(it.offset_in_bytes == 0, "MarketEligibilityResponse_t.m_bAllowed has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "MarketEligibilityResponse_t.m_bAllowed has unexpected size % instead of 1", it.type.runtime_size);
                case "m_eNotAllowedReason";
                    assert(it.offset_in_bytes == 4, "MarketEligibilityResponse_t.m_eNotAllowedReason has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MarketEligibilityResponse_t.m_eNotAllowedReason has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rtAllowedAtTime";
                    assert(it.offset_in_bytes == 8, "MarketEligibilityResponse_t.m_rtAllowedAtTime has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MarketEligibilityResponse_t.m_rtAllowedAtTime has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cdaySteamGuardRequiredDays";
                    assert(it.offset_in_bytes == 12, "MarketEligibilityResponse_t.m_cdaySteamGuardRequiredDays has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MarketEligibilityResponse_t.m_cdaySteamGuardRequiredDays has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cdayNewDeviceCooldown";
                    assert(it.offset_in_bytes == 16, "MarketEligibilityResponse_t.m_cdayNewDeviceCooldown has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MarketEligibilityResponse_t.m_cdayNewDeviceCooldown has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(MarketEligibilityResponse_t) == 20, "MarketEligibilityResponse_t has size % instead of 20", size_of(MarketEligibilityResponse_t));
    }

    {
        info := type_info(DurationControl_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "DurationControl_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_appid";
                    assert(it.offset_in_bytes == 4, "DurationControl_t.m_appid has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_appid has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bApplicable";
                    assert(it.offset_in_bytes == 8, "DurationControl_t.m_bApplicable has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DurationControl_t.m_bApplicable has unexpected size % instead of 1", it.type.runtime_size);
                case "m_csecsLast5h";
                    assert(it.offset_in_bytes == 12, "DurationControl_t.m_csecsLast5h has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_csecsLast5h has unexpected size % instead of 4", it.type.runtime_size);
                case "m_progress";
                    assert(it.offset_in_bytes == 16, "DurationControl_t.m_progress has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_progress has unexpected size % instead of 4", it.type.runtime_size);
                case "m_notification";
                    assert(it.offset_in_bytes == 20, "DurationControl_t.m_notification has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_notification has unexpected size % instead of 4", it.type.runtime_size);
                case "m_csecsToday";
                    assert(it.offset_in_bytes == 24, "DurationControl_t.m_csecsToday has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_csecsToday has unexpected size % instead of 4", it.type.runtime_size);
                case "m_csecsRemaining";
                    assert(it.offset_in_bytes == 28, "DurationControl_t.m_csecsRemaining has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DurationControl_t.m_csecsRemaining has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(DurationControl_t) == 32, "DurationControl_t has size % instead of 32", size_of(DurationControl_t));
    }

    {
        info := type_info(GetTicketForWebApiResponse_t);
        for info.members {
            if it.name == {
                case "m_hAuthTicket";
                    assert(it.offset_in_bytes == 0, "GetTicketForWebApiResponse_t.m_hAuthTicket has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetTicketForWebApiResponse_t.m_hAuthTicket has unexpected size % instead of 4", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 4, "GetTicketForWebApiResponse_t.m_eResult has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetTicketForWebApiResponse_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cubTicket";
                    assert(it.offset_in_bytes == 8, "GetTicketForWebApiResponse_t.m_cubTicket has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetTicketForWebApiResponse_t.m_cubTicket has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgubTicket";
                    assert(it.offset_in_bytes == 12, "GetTicketForWebApiResponse_t.m_rgubTicket has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2560, "GetTicketForWebApiResponse_t.m_rgubTicket has unexpected size % instead of 2560", it.type.runtime_size);
            }
        }
        assert(size_of(GetTicketForWebApiResponse_t) == 2572, "GetTicketForWebApiResponse_t has size % instead of 2572", size_of(GetTicketForWebApiResponse_t));
    }

    {
        info := type_info(LeaderboardEntry_t);
        for info.members {
            if it.name == {
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 0, "LeaderboardEntry_t.m_steamIDUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardEntry_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nGlobalRank";
                    assert(it.offset_in_bytes == 8, "LeaderboardEntry_t.m_nGlobalRank has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardEntry_t.m_nGlobalRank has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nScore";
                    assert(it.offset_in_bytes == 12, "LeaderboardEntry_t.m_nScore has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardEntry_t.m_nScore has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cDetails";
                    assert(it.offset_in_bytes == 16, "LeaderboardEntry_t.m_cDetails has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardEntry_t.m_cDetails has unexpected size % instead of 4", it.type.runtime_size);
                case "m_hUGC";
                    assert(it.offset_in_bytes == 20, "LeaderboardEntry_t.m_hUGC has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardEntry_t.m_hUGC has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(LeaderboardEntry_t) == 28, "LeaderboardEntry_t has size % instead of 28", size_of(LeaderboardEntry_t));
    }

    assert(size_of(ISteamUserStats) == 8, "ISteamUserStats has size % instead of 8", size_of(ISteamUserStats));

    {
        info := type_info(UserStatsReceived_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "UserStatsReceived_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserStatsReceived_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "UserStatsReceived_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserStatsReceived_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 12, "UserStatsReceived_t.m_steamIDUser has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserStatsReceived_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(UserStatsReceived_t) == 20, "UserStatsReceived_t has size % instead of 20", size_of(UserStatsReceived_t));
    }

    {
        info := type_info(UserStatsStored_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "UserStatsStored_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserStatsStored_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "UserStatsStored_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserStatsStored_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(UserStatsStored_t) == 12, "UserStatsStored_t has size % instead of 12", size_of(UserStatsStored_t));
    }

    {
        info := type_info(UserAchievementStored_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "UserAchievementStored_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserAchievementStored_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bGroupAchievement";
                    assert(it.offset_in_bytes == 8, "UserAchievementStored_t.m_bGroupAchievement has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "UserAchievementStored_t.m_bGroupAchievement has unexpected size % instead of 1", it.type.runtime_size);
                case "m_rgchAchievementName";
                    assert(it.offset_in_bytes == 9, "UserAchievementStored_t.m_rgchAchievementName has unexpected offset % instead of 9", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "UserAchievementStored_t.m_rgchAchievementName has unexpected size % instead of 128", it.type.runtime_size);
                case "m_nCurProgress";
                    assert(it.offset_in_bytes == 140, "UserAchievementStored_t.m_nCurProgress has unexpected offset % instead of 140", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserAchievementStored_t.m_nCurProgress has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nMaxProgress";
                    assert(it.offset_in_bytes == 144, "UserAchievementStored_t.m_nMaxProgress has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserAchievementStored_t.m_nMaxProgress has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(UserAchievementStored_t) == 148, "UserAchievementStored_t has size % instead of 148", size_of(UserAchievementStored_t));
    }

    {
        info := type_info(LeaderboardFindResult_t);
        for info.members {
            if it.name == {
                case "m_hSteamLeaderboard";
                    assert(it.offset_in_bytes == 0, "LeaderboardFindResult_t.m_hSteamLeaderboard has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardFindResult_t.m_hSteamLeaderboard has unexpected size % instead of 8", it.type.runtime_size);
                case "m_bLeaderboardFound";
                    assert(it.offset_in_bytes == 8, "LeaderboardFindResult_t.m_bLeaderboardFound has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LeaderboardFindResult_t.m_bLeaderboardFound has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(LeaderboardFindResult_t) == 12, "LeaderboardFindResult_t has size % instead of 12", size_of(LeaderboardFindResult_t));
    }

    {
        info := type_info(LeaderboardScoresDownloaded_t);
        for info.members {
            if it.name == {
                case "m_hSteamLeaderboard";
                    assert(it.offset_in_bytes == 0, "LeaderboardScoresDownloaded_t.m_hSteamLeaderboard has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardScoresDownloaded_t.m_hSteamLeaderboard has unexpected size % instead of 8", it.type.runtime_size);
                case "m_hSteamLeaderboardEntries";
                    assert(it.offset_in_bytes == 8, "LeaderboardScoresDownloaded_t.m_hSteamLeaderboardEntries has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardScoresDownloaded_t.m_hSteamLeaderboardEntries has unexpected size % instead of 8", it.type.runtime_size);
                case "m_cEntryCount";
                    assert(it.offset_in_bytes == 16, "LeaderboardScoresDownloaded_t.m_cEntryCount has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardScoresDownloaded_t.m_cEntryCount has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(LeaderboardScoresDownloaded_t) == 20, "LeaderboardScoresDownloaded_t has size % instead of 20", size_of(LeaderboardScoresDownloaded_t));
    }

    {
        info := type_info(LeaderboardScoreUploaded_t);
        for info.members {
            if it.name == {
                case "m_bSuccess";
                    assert(it.offset_in_bytes == 0, "LeaderboardScoreUploaded_t.m_bSuccess has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LeaderboardScoreUploaded_t.m_bSuccess has unexpected size % instead of 1", it.type.runtime_size);
                case "m_hSteamLeaderboard";
                    assert(it.offset_in_bytes == 4, "LeaderboardScoreUploaded_t.m_hSteamLeaderboard has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardScoreUploaded_t.m_hSteamLeaderboard has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nScore";
                    assert(it.offset_in_bytes == 12, "LeaderboardScoreUploaded_t.m_nScore has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardScoreUploaded_t.m_nScore has unexpected size % instead of 4", it.type.runtime_size);
                case "m_bScoreChanged";
                    assert(it.offset_in_bytes == 16, "LeaderboardScoreUploaded_t.m_bScoreChanged has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LeaderboardScoreUploaded_t.m_bScoreChanged has unexpected size % instead of 1", it.type.runtime_size);
                case "m_nGlobalRankNew";
                    assert(it.offset_in_bytes == 20, "LeaderboardScoreUploaded_t.m_nGlobalRankNew has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardScoreUploaded_t.m_nGlobalRankNew has unexpected size % instead of 4", it.type.runtime_size);
                case "m_nGlobalRankPrevious";
                    assert(it.offset_in_bytes == 24, "LeaderboardScoreUploaded_t.m_nGlobalRankPrevious has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardScoreUploaded_t.m_nGlobalRankPrevious has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(LeaderboardScoreUploaded_t) == 28, "LeaderboardScoreUploaded_t has size % instead of 28", size_of(LeaderboardScoreUploaded_t));
    }

    {
        info := type_info(NumberOfCurrentPlayers_t);
        for info.members {
            if it.name == {
                case "m_bSuccess";
                    assert(it.offset_in_bytes == 0, "NumberOfCurrentPlayers_t.m_bSuccess has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "NumberOfCurrentPlayers_t.m_bSuccess has unexpected size % instead of 1", it.type.runtime_size);
                case "m_cPlayers";
                    assert(it.offset_in_bytes == 4, "NumberOfCurrentPlayers_t.m_cPlayers has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "NumberOfCurrentPlayers_t.m_cPlayers has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(NumberOfCurrentPlayers_t) == 8, "NumberOfCurrentPlayers_t has size % instead of 8", size_of(NumberOfCurrentPlayers_t));
    }

    {
        info := type_info(UserStatsUnloaded_t);
        for info.members {
            if it.name == {
                case "m_steamIDUser";
                    assert(it.offset_in_bytes == 0, "UserStatsUnloaded_t.m_steamIDUser has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserStatsUnloaded_t.m_steamIDUser has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(UserStatsUnloaded_t) == 8, "UserStatsUnloaded_t has size % instead of 8", size_of(UserStatsUnloaded_t));
    }

    {
        info := type_info(UserAchievementIconFetched_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "UserAchievementIconFetched_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "UserAchievementIconFetched_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_rgchAchievementName";
                    assert(it.offset_in_bytes == 8, "UserAchievementIconFetched_t.m_rgchAchievementName has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "UserAchievementIconFetched_t.m_rgchAchievementName has unexpected size % instead of 128", it.type.runtime_size);
                case "m_bAchieved";
                    assert(it.offset_in_bytes == 136, "UserAchievementIconFetched_t.m_bAchieved has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "UserAchievementIconFetched_t.m_bAchieved has unexpected size % instead of 1", it.type.runtime_size);
                case "m_nIconHandle";
                    assert(it.offset_in_bytes == 140, "UserAchievementIconFetched_t.m_nIconHandle has unexpected offset % instead of 140", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "UserAchievementIconFetched_t.m_nIconHandle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(UserAchievementIconFetched_t) == 144, "UserAchievementIconFetched_t has size % instead of 144", size_of(UserAchievementIconFetched_t));
    }

    {
        info := type_info(GlobalAchievementPercentagesReady_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "GlobalAchievementPercentagesReady_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GlobalAchievementPercentagesReady_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "GlobalAchievementPercentagesReady_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GlobalAchievementPercentagesReady_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GlobalAchievementPercentagesReady_t) == 12, "GlobalAchievementPercentagesReady_t has size % instead of 12", size_of(GlobalAchievementPercentagesReady_t));
    }

    {
        info := type_info(LeaderboardUGCSet_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "LeaderboardUGCSet_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "LeaderboardUGCSet_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_hSteamLeaderboard";
                    assert(it.offset_in_bytes == 4, "LeaderboardUGCSet_t.m_hSteamLeaderboard has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "LeaderboardUGCSet_t.m_hSteamLeaderboard has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(LeaderboardUGCSet_t) == 12, "LeaderboardUGCSet_t has size % instead of 12", size_of(LeaderboardUGCSet_t));
    }

    {
        info := type_info(PS3TrophiesInstalled_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "PS3TrophiesInstalled_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PS3TrophiesInstalled_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "PS3TrophiesInstalled_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PS3TrophiesInstalled_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_ulRequiredDiskSpace";
                    assert(it.offset_in_bytes == 12, "PS3TrophiesInstalled_t.m_ulRequiredDiskSpace has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PS3TrophiesInstalled_t.m_ulRequiredDiskSpace has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(PS3TrophiesInstalled_t) == 20, "PS3TrophiesInstalled_t has size % instead of 20", size_of(PS3TrophiesInstalled_t));
    }

    {
        info := type_info(GlobalStatsReceived_t);
        for info.members {
            if it.name == {
                case "m_nGameID";
                    assert(it.offset_in_bytes == 0, "GlobalStatsReceived_t.m_nGameID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "GlobalStatsReceived_t.m_nGameID has unexpected size % instead of 8", it.type.runtime_size);
                case "m_eResult";
                    assert(it.offset_in_bytes == 8, "GlobalStatsReceived_t.m_eResult has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GlobalStatsReceived_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GlobalStatsReceived_t) == 12, "GlobalStatsReceived_t has size % instead of 12", size_of(GlobalStatsReceived_t));
    }

    assert(size_of(ISteamUtils) == 8, "ISteamUtils has size % instead of 8", size_of(ISteamUtils));

    assert(size_of(IPCountry_t) == 1, "IPCountry_t has size % instead of 1", size_of(IPCountry_t));

    {
        info := type_info(LowBatteryPower_t);
        for info.members {
            if it.name == {
                case "m_nMinutesBatteryLeft";
                    assert(it.offset_in_bytes == 0, "LowBatteryPower_t.m_nMinutesBatteryLeft has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "LowBatteryPower_t.m_nMinutesBatteryLeft has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(LowBatteryPower_t) == 1, "LowBatteryPower_t has size % instead of 1", size_of(LowBatteryPower_t));
    }

    {
        info := type_info(SteamAPICallCompleted_t);
        for info.members {
            if it.name == {
                case "m_hAsyncCall";
                    assert(it.offset_in_bytes == 0, "SteamAPICallCompleted_t.m_hAsyncCall has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamAPICallCompleted_t.m_hAsyncCall has unexpected size % instead of 8", it.type.runtime_size);
                case "m_iCallback";
                    assert(it.offset_in_bytes == 8, "SteamAPICallCompleted_t.m_iCallback has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamAPICallCompleted_t.m_iCallback has unexpected size % instead of 4", it.type.runtime_size);
                case "m_cubParam";
                    assert(it.offset_in_bytes == 12, "SteamAPICallCompleted_t.m_cubParam has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamAPICallCompleted_t.m_cubParam has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamAPICallCompleted_t) == 16, "SteamAPICallCompleted_t has size % instead of 16", size_of(SteamAPICallCompleted_t));
    }

    assert(size_of(SteamShutdown_t) == 1, "SteamShutdown_t has size % instead of 1", size_of(SteamShutdown_t));

    {
        info := type_info(CheckFileSignature_t);
        for info.members {
            if it.name == {
                case "m_eCheckFileSignature";
                    assert(it.offset_in_bytes == 0, "CheckFileSignature_t.m_eCheckFileSignature has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CheckFileSignature_t.m_eCheckFileSignature has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CheckFileSignature_t) == 4, "CheckFileSignature_t has size % instead of 4", size_of(CheckFileSignature_t));
    }

    {
        info := type_info(GamepadTextInputDismissed_t);
        for info.members {
            if it.name == {
                case "m_bSubmitted";
                    assert(it.offset_in_bytes == 0, "GamepadTextInputDismissed_t.m_bSubmitted has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "GamepadTextInputDismissed_t.m_bSubmitted has unexpected size % instead of 1", it.type.runtime_size);
                case "m_unSubmittedText";
                    assert(it.offset_in_bytes == 4, "GamepadTextInputDismissed_t.m_unSubmittedText has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GamepadTextInputDismissed_t.m_unSubmittedText has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unAppID";
                    assert(it.offset_in_bytes == 8, "GamepadTextInputDismissed_t.m_unAppID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GamepadTextInputDismissed_t.m_unAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GamepadTextInputDismissed_t) == 12, "GamepadTextInputDismissed_t has size % instead of 12", size_of(GamepadTextInputDismissed_t));
    }

    assert(size_of(AppResumingFromSuspend_t) == 1, "AppResumingFromSuspend_t has size % instead of 1", size_of(AppResumingFromSuspend_t));

    assert(size_of(FloatingGamepadTextInputDismissed_t) == 1, "FloatingGamepadTextInputDismissed_t has size % instead of 1", size_of(FloatingGamepadTextInputDismissed_t));

    {
        info := type_info(FilterTextDictionaryChanged_t);
        for info.members {
            if it.name == {
                case "m_eLanguage";
                    assert(it.offset_in_bytes == 0, "FilterTextDictionaryChanged_t.m_eLanguage has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FilterTextDictionaryChanged_t.m_eLanguage has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(FilterTextDictionaryChanged_t) == 4, "FilterTextDictionaryChanged_t has size % instead of 4", size_of(FilterTextDictionaryChanged_t));
    }

    assert(size_of(ISteamVideo) == 8, "ISteamVideo has size % instead of 8", size_of(ISteamVideo));

    {
        info := type_info(GetVideoURLResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GetVideoURLResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetVideoURLResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unVideoAppID";
                    assert(it.offset_in_bytes == 4, "GetVideoURLResult_t.m_unVideoAppID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetVideoURLResult_t.m_unVideoAppID has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchURL";
                    assert(it.offset_in_bytes == 8, "GetVideoURLResult_t.m_rgchURL has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "GetVideoURLResult_t.m_rgchURL has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(GetVideoURLResult_t) == 264, "GetVideoURLResult_t has size % instead of 264", size_of(GetVideoURLResult_t));
    }

    {
        info := type_info(GetOPFSettingsResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "GetOPFSettingsResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetOPFSettingsResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unVideoAppID";
                    assert(it.offset_in_bytes == 4, "GetOPFSettingsResult_t.m_unVideoAppID has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GetOPFSettingsResult_t.m_unVideoAppID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GetOPFSettingsResult_t) == 8, "GetOPFSettingsResult_t has size % instead of 8", size_of(GetOPFSettingsResult_t));
    }

    assert(size_of(ISteamNetworkingFakeUDPPort) == 8, "ISteamNetworkingFakeUDPPort has size % instead of 8", size_of(ISteamNetworkingFakeUDPPort));

    {
        info := type_info(SteamNetworkingFakeIPResult_t);
        for info.members {
            if it.name == {
                case "m_eResult";
                    assert(it.offset_in_bytes == 0, "SteamNetworkingFakeIPResult_t.m_eResult has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingFakeIPResult_t.m_eResult has unexpected size % instead of 4", it.type.runtime_size);
                case "m_identity";
                    assert(it.offset_in_bytes == 4, "SteamNetworkingFakeIPResult_t.m_identity has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 136, "SteamNetworkingFakeIPResult_t.m_identity has unexpected size % instead of 136", it.type.runtime_size);
                case "m_unIP";
                    assert(it.offset_in_bytes == 140, "SteamNetworkingFakeIPResult_t.m_unIP has unexpected offset % instead of 140", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamNetworkingFakeIPResult_t.m_unIP has unexpected size % instead of 4", it.type.runtime_size);
                case "m_unPorts";
                    assert(it.offset_in_bytes == 144, "SteamNetworkingFakeIPResult_t.m_unPorts has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "SteamNetworkingFakeIPResult_t.m_unPorts has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(SteamNetworkingFakeIPResult_t) == 160, "SteamNetworkingFakeIPResult_t has size % instead of 160", size_of(SteamNetworkingFakeIPResult_t));
    }

    {
        info := type_info(SteamPS3Params_t.Ps3netInit_t);
        for info.members {
            if it.name == {
                case "m_bNeedInit";
                    assert(it.offset_in_bytes == 0, "SteamPS3Params_t.Ps3netInit_t.m_bNeedInit has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.Ps3netInit_t.m_bNeedInit has unexpected size % instead of 1", it.type.runtime_size);
                case "m_pMemory";
                    assert(it.offset_in_bytes == 8, "SteamPS3Params_t.Ps3netInit_t.m_pMemory has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPS3Params_t.Ps3netInit_t.m_pMemory has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nMemorySize";
                    assert(it.offset_in_bytes == 16, "SteamPS3Params_t.Ps3netInit_t.m_nMemorySize has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamPS3Params_t.Ps3netInit_t.m_nMemorySize has unexpected size % instead of 4", it.type.runtime_size);
                case "m_flags";
                    assert(it.offset_in_bytes == 20, "SteamPS3Params_t.Ps3netInit_t.m_flags has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamPS3Params_t.Ps3netInit_t.m_flags has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPS3Params_t.Ps3netInit_t) == 24, "SteamPS3Params_t.Ps3netInit_t has size % instead of 24", size_of(SteamPS3Params_t.Ps3netInit_t));
    }

    {
        info := type_info(SteamPS3Params_t.Ps3jpgInit_t);
        for info.members {
            if it.name == {
                case "m_bNeedInit";
                    assert(it.offset_in_bytes == 0, "SteamPS3Params_t.Ps3jpgInit_t.m_bNeedInit has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.Ps3jpgInit_t.m_bNeedInit has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPS3Params_t.Ps3jpgInit_t) == 1, "SteamPS3Params_t.Ps3jpgInit_t has size % instead of 1", size_of(SteamPS3Params_t.Ps3jpgInit_t));
    }

    {
        info := type_info(SteamPS3Params_t.Ps3pngInit_t);
        for info.members {
            if it.name == {
                case "m_bNeedInit";
                    assert(it.offset_in_bytes == 0, "SteamPS3Params_t.Ps3pngInit_t.m_bNeedInit has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.Ps3pngInit_t.m_bNeedInit has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPS3Params_t.Ps3pngInit_t) == 1, "SteamPS3Params_t.Ps3pngInit_t has size % instead of 1", size_of(SteamPS3Params_t.Ps3pngInit_t));
    }

    {
        info := type_info(SteamPS3Params_t.Ps3sysutilUserInfo_t);
        for info.members {
            if it.name == {
                case "m_bNeedInit";
                    assert(it.offset_in_bytes == 0, "SteamPS3Params_t.Ps3sysutilUserInfo_t.m_bNeedInit has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.Ps3sysutilUserInfo_t.m_bNeedInit has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPS3Params_t.Ps3sysutilUserInfo_t) == 1, "SteamPS3Params_t.Ps3sysutilUserInfo_t has size % instead of 1", size_of(SteamPS3Params_t.Ps3sysutilUserInfo_t));
    }

    {
        info := type_info(SteamPS3Params_t);
        for info.members {
            if it.name == {
                case "m_unVersion";
                    assert(it.offset_in_bytes == 0, "SteamPS3Params_t.m_unVersion has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamPS3Params_t.m_unVersion has unexpected size % instead of 4", it.type.runtime_size);
                case "pReserved";
                    assert(it.offset_in_bytes == 8, "SteamPS3Params_t.pReserved has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPS3Params_t.pReserved has unexpected size % instead of 8", it.type.runtime_size);
                case "m_nAppId";
                    assert(it.offset_in_bytes == 16, "SteamPS3Params_t.m_nAppId has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamPS3Params_t.m_nAppId has unexpected size % instead of 4", it.type.runtime_size);
                case "m_rgchInstallationPath";
                    assert(it.offset_in_bytes == 20, "SteamPS3Params_t.m_rgchInstallationPath has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1055, "SteamPS3Params_t.m_rgchInstallationPath has unexpected size % instead of 1055", it.type.runtime_size);
                case "m_rgchSystemCache";
                    assert(it.offset_in_bytes == 1075, "SteamPS3Params_t.m_rgchSystemCache has unexpected offset % instead of 1075", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1055, "SteamPS3Params_t.m_rgchSystemCache has unexpected size % instead of 1055", it.type.runtime_size);
                case "m_rgchGameData";
                    assert(it.offset_in_bytes == 2130, "SteamPS3Params_t.m_rgchGameData has unexpected offset % instead of 2130", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1055, "SteamPS3Params_t.m_rgchGameData has unexpected size % instead of 1055", it.type.runtime_size);
                case "m_rgchNpServiceID";
                    assert(it.offset_in_bytes == 3185, "SteamPS3Params_t.m_rgchNpServiceID has unexpected offset % instead of 3185", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "SteamPS3Params_t.m_rgchNpServiceID has unexpected size % instead of 32", it.type.runtime_size);
                case "m_rgchNpCommunicationID";
                    assert(it.offset_in_bytes == 3217, "SteamPS3Params_t.m_rgchNpCommunicationID has unexpected offset % instead of 3217", it.offset_in_bytes);
                    assert(it.type.runtime_size == 10, "SteamPS3Params_t.m_rgchNpCommunicationID has unexpected size % instead of 10", it.type.runtime_size);
                case "m_rgchNpCommunicationSig";
                    assert(it.offset_in_bytes == 3227, "SteamPS3Params_t.m_rgchNpCommunicationSig has unexpected offset % instead of 3227", it.offset_in_bytes);
                    assert(it.type.runtime_size == 160, "SteamPS3Params_t.m_rgchNpCommunicationSig has unexpected size % instead of 160", it.type.runtime_size);
                case "m_rgchSteamLanguage";
                    assert(it.offset_in_bytes == 3387, "SteamPS3Params_t.m_rgchSteamLanguage has unexpected offset % instead of 3387", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "SteamPS3Params_t.m_rgchSteamLanguage has unexpected size % instead of 64", it.type.runtime_size);
                case "m_rgchRegionCode";
                    assert(it.offset_in_bytes == 3451, "SteamPS3Params_t.m_rgchRegionCode has unexpected offset % instead of 3451", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "SteamPS3Params_t.m_rgchRegionCode has unexpected size % instead of 16", it.type.runtime_size);
                case "m_cSteamInputTTY";
                    assert(it.offset_in_bytes == 3468, "SteamPS3Params_t.m_cSteamInputTTY has unexpected offset % instead of 3468", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SteamPS3Params_t.m_cSteamInputTTY has unexpected size % instead of 4", it.type.runtime_size);
                case "m_sysNetInitInfo";
                    assert(it.offset_in_bytes == 3472, "SteamPS3Params_t.m_sysNetInitInfo has unexpected offset % instead of 3472", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "SteamPS3Params_t.m_sysNetInitInfo has unexpected size % instead of 24", it.type.runtime_size);
                case "m_sysJpgInitInfo";
                    assert(it.offset_in_bytes == 3496, "SteamPS3Params_t.m_sysJpgInitInfo has unexpected offset % instead of 3496", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.m_sysJpgInitInfo has unexpected size % instead of 1", it.type.runtime_size);
                case "m_sysPngInitInfo";
                    assert(it.offset_in_bytes == 3497, "SteamPS3Params_t.m_sysPngInitInfo has unexpected offset % instead of 3497", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.m_sysPngInitInfo has unexpected size % instead of 1", it.type.runtime_size);
                case "m_sysSysUtilUserInfo";
                    assert(it.offset_in_bytes == 3498, "SteamPS3Params_t.m_sysSysUtilUserInfo has unexpected offset % instead of 3498", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.m_sysSysUtilUserInfo has unexpected size % instead of 1", it.type.runtime_size);
                case "m_bIncludeNewsPage";
                    assert(it.offset_in_bytes == 3499, "SteamPS3Params_t.m_bIncludeNewsPage has unexpected offset % instead of 3499", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Params_t.m_bIncludeNewsPage has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPS3Params_t) == 3504, "SteamPS3Params_t has size % instead of 3504", size_of(SteamPS3Params_t));
    }

    {
        info := type_info(SteamPS3Memory_t);
        for info.members {
            if it.name == {
                case "m_bSingleAllocation";
                    assert(it.offset_in_bytes == 0, "SteamPS3Memory_t.m_bSingleAllocation has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SteamPS3Memory_t.m_bSingleAllocation has unexpected size % instead of 1", it.type.runtime_size);
                case "m_pfMalloc";
                    assert(it.offset_in_bytes == 8, "SteamPS3Memory_t.m_pfMalloc has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPS3Memory_t.m_pfMalloc has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pfRealloc";
                    assert(it.offset_in_bytes == 16, "SteamPS3Memory_t.m_pfRealloc has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPS3Memory_t.m_pfRealloc has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pfFree";
                    assert(it.offset_in_bytes == 24, "SteamPS3Memory_t.m_pfFree has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPS3Memory_t.m_pfFree has unexpected size % instead of 8", it.type.runtime_size);
                case "m_pUsable_size";
                    assert(it.offset_in_bytes == 32, "SteamPS3Memory_t.m_pUsable_size has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SteamPS3Memory_t.m_pUsable_size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SteamPS3Memory_t) == 40, "SteamPS3Memory_t has size % instead of 40", size_of(SteamPS3Memory_t));
    }
}

