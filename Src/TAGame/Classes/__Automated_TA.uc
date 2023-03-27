class __Automated_TA extends Object;

enum EBasicLoadResult {
	EBasicLoadResult_MAX,
};
enum EImageFilterOptions {
	EImageFilterOptions_MAX,
};
enum EForceMode {
	EForceMode_MAX,
};
enum EWeatherVariant {
	EWeatherVariant_MAX,
};
enum ESpecialEventState {
	ESpecialEventState_MAX,
};

struct AIProxyData {};
struct AngleSelectData {};
struct ControllerLayoutStack {};
struct ComponentTemplate {};
struct CrossplayGroup {};
struct CrumbTrailData {};
struct DownloadedWorkshopData {};
struct FriendHistoryKey {};
struct GameClipsMaskArea {};
struct GroupComponent_ORS {};
struct GFxLevelThreshold {};
struct GFxRegion {};
struct GFxTournamentReward {};
struct IEpochNow {};
struct JoinMatchSettings {};
struct LoadingMovieMapInfo {};
struct MTCatalogInfo {};
struct OnlineProductData {};
struct OnlinePurchaseInterface {};
struct PartyJoinMatchSettings {};
struct PlaneSelectData {};
struct PlatformAccountSettings {};
struct PlaylistTrack {};
struct TourServerSettings {};
struct ShopItem {};
struct ShopCurrencyInfo {};
struct SkeletalMeshLODDistanceInfo {};
struct TournamentResult {};
struct TourMatchPlayerStats {};
struct TourPlacementInfo {};
struct TourStatus_TA {};
struct Achievement_TA {};
struct Achievement_AG_FarFarAway_TA {};
struct Achievement_AG_Stocked_TA {};
struct Achievement_AG_SuperVictorious_TA {};
struct Achievement_AG_TheStreak_TA {};
struct Achievement_AG_Virtuoso_TA {};
struct Achievement_AG_Winner_TA {};
struct BTLockCollection {};
struct TourList_TA {};
struct BTNode {};
struct BTConditionalNode {};
struct BTAction {};
struct BTAction_Target {};
struct BTAction_MoveTo {};
struct BTAction_BlockGoal {};
struct BTAction_HitBall {};
struct BTAction_CatchBall {};
struct BTAction_DivertBall {};
struct BTAction_Jump {};
struct BTAction_DodgeHit {};
struct BTAction_Face {};
struct BTAction_Input {};
struct BTAction_PowerSlide {};
struct BTAction_Stop {};
struct BTAction_Test {};
struct BTAction_WallBounce {};
struct BTAction_WiggleTires {};
struct BTCondition {};
struct BTC_AIPlayerIndex {};
struct BTC_Any {};
struct BTC_ProxyBase {};
struct BTC_TargetBase {};
struct BTC_AreaClear {};
struct BTC_BallWelded {};
struct BTC_Between {};
struct BTC_Boost {};
struct BTC_BounceHeight {};
struct BTC_CanJumpTo {};
struct BTC_Target {};
struct BTC_ClosestTime {};
struct BTC_ClosestTo {};
struct BTC_JumpHit {};
struct BTC_DodgeHit {};
struct BTC_Facing {};
struct BTC_FieldDistance {};
struct BTC_GameInfoType {};
struct BTC_GameScore {};
struct BTC_GameState {};
struct BTC_HitLanding {};
struct BTC_HumanPlayerOnOpposingTeam {};
struct BTC_HumanPlayerOnTeam {};
struct BTC_Impact {};
struct BTC_InCone {};
struct BTC_Landing {};
struct BTC_Lock {};
struct BTC_NotAny {};
struct BTC_SegmentDistance {};
struct BTC_SelectActor {};
struct BTC_Skill {};
struct BTC_SoccarState {};
struct BTC_Stuck {};
struct BTC_TargetNumberSatisfying {};
struct BTC_TeamSize {};
struct BTC_TimeSinceBallHit {};
struct BTC_Traits {};
struct BTC_Vehicle {};
struct BTComponent {};
struct BTDecorator {};
struct BTDeco_RandomSteer {};
struct BTDeco_Success {};
struct BTDynamicLink {};
struct BTNodeParent {};
struct BTSelector {};
struct BTEvaluator {};
struct BTExecutor {};
struct BTLock {};
struct BTMoveModifier {};
struct BTMoveModifier_Boost {};
struct BTProxyType {};
struct BTRandomSelector {};
struct BTSequence {};
struct BTTarget {};
struct BTWeight {};
struct EOSGameClipsConfig_TA {};
struct EOSGameClipsController_TA {};
struct EOSGameClipsManager_TA {};
struct EOSGameClipsMetrics_TA {};
struct EOSGameClipsSettingsSave_TA {};
struct EOSShopPurchaseEvent_X {};
struct EOSMtxPurchaseEvent_X {};
struct EOSOnlineStorageSync_TA {};
struct EOSOnlineStorageUploader_TA {};
struct EOSPermissions_TA {};
struct EOSUserPermissions_TA {};
struct EOSUserPermissionsError_TA {};
struct EOSVoiceConfig_TA {};
struct EOSVoiceErrors_TA {};
struct EOSVoiceManager_TA {};
struct EOSVoiceMetrics_TA {};
struct EOSVoiceSettingsSave_TA {};
struct EOSVoiceTokenCache_TA {};
struct TourBracketSync_TA {};
struct IdleWarning_TA {};
struct MaxTimeWarningData_TA {};
struct PartyMessage_Chat_TA {};
struct PartyMessage_ClubChanged_TA {};
struct PartyMessage_CurrentVoiceRoom_TA {};
struct PartyMessage_Loadout_TA {};
struct PartyMessage_ProfileChange_TA {};
struct PartyMessage_Rejoined_TA {};
struct PartyMessage_TourCheckIn_TA {};
struct PartyMessage_TourCheckInError_TA {};
struct PartyMessage_TourLeaveTournament_TA {};
struct PartyMessage_TourPreCheckIn_TA {};
struct PartyMessage_TourPreCheckInError_TA {};
struct PartyMessage_TradeCurrencyUpdate_TA {};
struct PartyMessage_TradeProductUpdate_TA {};
struct PlayerInput_TA {};
struct PlayerInput_Edit_TA {};
struct PlayerInput_Game_TA {};
struct PlayerInput_GameEditor_TA {};
struct PlayerInput_Menu_TA {};
struct PlayerInput_Replay_TA {};
struct PlayerInput_Spectator_TA {};
struct PsyNetService_AutoTourCompletedResultReceived_TA {};
struct PsyNetService_AutoTourFound_TA {};
struct PsyNetService_AutoTourNotFound_TA {};
struct PsyNetService_AutoTourReceiveBan_TA {};
struct PsyNetService_AutoTourReceiveBannedPartyMembers_TA {};
struct PsyNetService_BugReport_TA {};
struct PsyNetService_ChallengeDefault_TA {};
struct PsyNetService_ChallengeProgress_TA {};
struct PsyNetService_ClubsInvite_TA {};
struct PsyNetService_ClubsMemberAdded_TA {};
struct PsyNetService_ClubsMemberRemoved_TA {};
struct PsyNetService_ClubsOwnerChanged_TA {};
struct PsyNetService_ClubsUpdate_TA {};
struct PsyNetService_CreateExternalMatch_X {};
struct PsyNetService_CreateTournament_X {};
struct PsyNetService_CurrencyAdded_TA {};
struct PsyNetService_FaceItMatchCancelled_TA {};
struct PsyNetService_FaceItMatchComplete_TA {};
struct PsyNetService_FaceItReservationFound_TA {};
struct PsyNetService_FaceItSearchStarted_TA {};
struct PsyNetService_JoinExternalMatch_X {};
struct PsyNetService_JoinTournament_X {};
struct PsyNetService_RewardDropReceived_TA {};
struct PsyNetService_TourConcluded_TA {};
struct PsyNetService_TourKicked_TA {};
struct PsyNetService_TourMatchFound_TA {};
struct PsyNetService_TourReceivedBye_TA {};
struct PsyNetService_VoiceChatMatchToken_TA {};
struct ReplicatedRespawnTicket_TA {};
struct RPC_AdsGet_TA {};
struct RPC_AutoTour_GetCompletedResult_TA {};
struct RPC_AutoTour_GetCycleData_TA {};
struct RPC_AutoTour_GetSchedule_TA {};
struct RPC_BanSelf_TA {};
struct RPC_BuildBlueprint_TA {};
struct RPC_Challenge_AvailableReceived_TA {};
struct RPC_Challenge_ClearNewInfo_TA {};
struct RPC_Challenge_CompleteReceived_TA {};
struct RPC_Challenge_FTECheckpointComplete_TA {};
struct RPC_Challenge_FTEGroupComplete_TA {};
struct RPC_Challenge_RequestReward_TA {};
struct RPC_Challenge_ResetAllProgress_TA {};
struct RPC_Challenge_ResetChallengeProgress_TA {};
struct RPC_Challenge_SetProgress_TA {};
struct RPC_Challenge_TrainingComplete_TA {};
struct RPC_Challenge_TutorialComplete_TA {};
struct RPC_ChatLog_TA {};
struct RPC_DebugAddXP_TA {};
struct RPC_DebugSetXP_TA {};
struct RPC_DebugUnlinkPrimaryAccount_TA {};
struct RPC_DecaySkill_TA {};
struct RPC_FaceItFindMatchForPlayer_TA {};
struct RPC_FaceItMatchStarted_TA {};
struct RPC_FaceItPlayerFailedJoin_TA {};
struct RPC_FaceItUpdateGame_TA {};
struct RPC_GetAllShops_TA {};
struct RPC_GetBanStatus_TA {};
struct RPC_GetChallengeDefault_TA {};
struct RPC_GetChallengeProgress_TA {};
struct RPC_GetCrateShop_TA {};
struct RPC_GetLegacyStatus_TA {};
struct RPC_GetPersonaInfo_TA {};
struct RPC_GetShopCatalogue_TA {};
struct RPC_SpecialEventBase_TA {};
struct RPC_GetSpecialEventCurrency_TA {};
struct RPC_GetSpecialEventCurrencyRewards_TA {};
struct RPC_GetSpecialEvents_TA {};
struct RPC_GetUploadUrls_TA {};
struct RPC_GetWallet_TA {};
struct RPC_MatchComplete_TA {};
struct RPC_MicroTransactions_ClaimEntitlements_TA {};
struct RPC_MicroTransactions_FinalizePurchase_TA {};
struct RPC_MicroTransactions_GetCatalog_TA {};
struct RPC_MicroTransactions_GetContainerDropTable_TA {};
struct RPC_MicroTransactions_StartPurchase_TA {};
struct RPC_MicroTransactions_UnlockContainer_TA {};
struct RPC_PlatformAuth_TA {};
struct RPC_ProductsClearExpired_TA {};
struct RPC_ProductsDebugAddProduct_TA {};
struct RPC_ProductsDebugAddRandom_TA {};
struct RPC_ProductsDebugSetCertified_TA {};
struct RPC_ProductsDebugSetEdition_TA {};
struct RPC_ProductsDebugSetPainted_TA {};
struct RPC_ProductsLoadoutGet_TA {};
struct RPC_ProductsPlayerClear_TA {};
struct RPC_ProductsPlayerGet_TA {};
struct RPC_ProductsTradeAllowed_TA {};
struct RPC_ProductsTradeIn_TA {};
struct RPC_ProductsTradePlayer_TA {};
struct RPC_ProductsTradePlayerStatus_TA {};
struct RPC_PsyNetGetVanities_TA {};
struct RPC_PsyNetGetAvatars_TA {};
struct RPC_PsyNetSetVanity_TA {};
struct RPC_PurchaseItemFromShop_TA {};
struct RPC_PurchaseSpecialEventReward_TA {};
struct RPC_RedeemCode_TA {};
struct RPC_ReportPlayer_TA {};
struct RPC_RequestHonorDuel_TA {};
struct RPC_RequestMatchVoiceTokens_TA {};
struct RPC_RequestPartyVoiceToken_TA {};
struct RPC_RevealBlueprint_TA {};
struct RPC_RocketPassGetPlayerInfo_TA {};
struct RPC_RocketPassGetPlayerPrestigeRewards_TA {};
struct RPC_RocketPassGetRewardContent_TA {};
struct RPC_RocketPassPurchasePremium_TA {};
struct RPC_RocketPassPurchaseTiers_TA {};
struct RPC_SchematicResourcesGet_TA {};
struct RPC_SchematicsTradeIn_TA {};
struct RPC_SubmitUserBugReport_TA {};
struct RPC_SupportACreator_Clear_TA {};
struct RPC_SupportACreator_Get_TA {};
struct RPC_SupportACreator_Set_TA {};
struct RPC_TourCancelCreated_TA {};
struct RPC_TourCheckIn_TA {};
struct RPC_TourCreate_TA {};
struct RPC_TourFindPrivate_TA {};
struct RPC_TourGetBracket_TA {};
struct RPC_TourGetMatch_TA {};
struct RPC_TourGetMatchDetails_TA {};
struct RPC_TourGetMatchReservations_TA {};
struct RPC_TourGetMatchReservations_FaceIt_TA {};
struct RPC_TourGetMatchServer_TA {};
struct RPC_TourGetPublic_TA {};
struct RPC_TourGetRewards_TA {};
struct RPC_TourGetScheduleRegion_TA {};
struct RPC_TourGetSubscriptions_TA {};
struct RPC_TourRegister_TA {};
struct RPC_TourSetScheduleRegion_TA {};
struct RPC_TourStartMatchmaking_TA {};
struct RPC_TourUnsubscribe_TA {};
struct RPC_TourUpdateGame_TA {};
struct RPC_TrainingEditor_AddTrainingData_TA {};
struct RPC_TrainingEditor_BrowseTrainingData_TA {};
struct RPC_TrainingEditor_DeleteTrainingData_TA {};
struct RPC_TrainingEditor_GetTrainingData_TA {};
struct RPC_TrainingEditor_GetTrainingMetadata_TA {};
struct RPC_TrainingEditor_ListPlayerTrainingData_TA {};
struct RPC_TrainingEditor_ListPlayerTrainingDataTimestamp_TA {};
struct RPC_TrainingEditor_UpdateTrainingData_TA {};
struct RPC_UpdateTwoFactorStatus_TA {};
struct RPC_UploadXP_TA {};
struct RPC_XPRequest_TA {};
struct StatusObserver_FTE_TA {};
struct StatusObserver_MenuStack_TA {};
struct StatusObserver_Products_TA {};
struct StatusObserver_XPLevel_TA {};
struct StatusTrigger_Named_TA {};
struct StatusTrigger_CrumbPathComplete_TA {};
struct StatusTrigger_FTEGroupComplete_TA {};
struct StatusTrigger_Menu_TA {};
struct StatusTrigger_MenuButton_TA {};
struct StatusTrigger_Numerical_TA {};
struct StatusTrigger_PlayerLevel_TA {};
struct StatusTrigger_PlayerXP_TA {};
struct StatusTrigger_Product_TA {};
struct StatusTrigger_ProductEquipped_TA {};
struct StatusTrigger_ProductOwned_TA {};
struct TAsyncResult__PrivilegeCheck_X {};
struct TAsyncResult__UserBugReportUploadResult_TA {};
struct TourBracketCache_TA {};
struct TourBracketGenerator_TA {};
struct TourBracketSimulator_TA {};
struct TourCheckIn_TA {};
struct TourCheckInError_TA {};
struct TourCheckInWindowWatcher_TA {};
struct TourConfig_TA {};
struct TourCredentials_TA {};
struct TourDetailsSync_TA {};
struct TourErrors_TA {};
struct TourEvent_TA {};
struct TourEventMatch_TA {};
struct TourEventMatchComplete_TA {};
struct TourGameUpdate_TA {};
struct TourGameUpdate_FaceIt_TA {};
struct TourGameUpdateDispatcher_TA {};
struct TourMatchInfoMessage_TA {};
struct TourMatchServerBrowser_TA {};
struct TournamentCompletedEvent_TA {};
struct TournamentMetrics_TA {};
struct TournamentSettingsSave_TA {};
struct TourPartyCheckIn_TA {};
struct TourPartyCheckInTransaction_TA {};
struct TourPartyLeaderLeave_TA {};
struct TourRegistration_TA {};
struct TourRewards_TA {};
struct TourSeeder_TA {};
struct TourServerConfig_TA {};
struct TourServerInfo_TA {};
struct TourServerInfo_AutoTour_TA {};
struct TourServerInfo_FaceIt_TA {};
struct TourService_TA {};
struct TourService_PsyNet_TA {};
struct TourSettings_TA {};
struct TourSettingsCache_TA {};
struct TourSubscriptions_TA {};
struct TourUtils_TA {};
struct UserBugReportBulkData_TA {};
struct UserBugReportComponent_TA {};
struct UserBugReportConfig_TA {};
struct UserBugReportErrors_TA {};
struct UserBugReportGeneratedData_TA {};
struct UserBugReportMetaData_TA {};
struct UserBugReportSubmissionData_TA {};
struct UserBugReportUploader_TA {};
struct UserBugReportUploadResult_TA {};
