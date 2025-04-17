class __Automated_X extends Object;

enum EWordFilterUsage {
	EWordFilterUsage_MAX,
};
enum ECrossPlatformChatState {
	PCCS_Everybody,
	ECrossPlatformChatState_MAX,
};
enum EExploitType {
	EExploitType_MAX,
};

struct ImageDecoder {};
struct ReservationData {};
struct TimeWindow {};
struct IEpochNow {};
struct WordFilterPair {};
struct MigrationReservationData {};
struct PlayerPermissions {};
struct PlayerBinding {};
struct PlayerSeasonRewardProgress {};
struct PlatformBlockListStatus {};
struct GetPopulationData {};
struct UniqueLobbyId {};
struct CachedRegionPing {};
struct ActiveServerData {};
struct ActiveLobbyInfo {};
struct ServerResult {};
struct CustomMatchSettings {};
struct ServerConnectionInfo {};
struct ServerReservationData {};
struct PendingRPC {};
struct NetPacketStats {};
struct NetworkEncryptionKey {};
struct ReservationPlayerData {};
struct UpdatedPlayerSkillRating {};
struct ReplicatedReservationData {};
struct BindingAction {};
struct AvatarSize {};
struct AdHocAccessPointInfo {};
struct RPCResponse {};
struct RPCError {};
struct TAsyncResult {};
struct PartyMessage_X {};
struct PartyMessage_SearchStatus_X {};
struct RPC_X {};
struct ClubErrors_X {};
struct EOS_GetAccountsResponse {};
struct EOS_AccountSummaryResponse {};
struct EOS_ErrorResponse {};
struct EOS_ManageBlockListResponse {};
struct EOS_ManageFriendsListResponse {};
struct EOSMetricEvent_X {};
struct EOSEvent_Presence_X {};
struct EOSHelpers_X {};
struct EOSMetrics_X {};
struct EOSMetricsConfig_X {};
struct EpicErrors_X {};
struct Errors_X {};
struct NNXErrors_X {};
struct PartyErrors_X {};
struct PartyMessage_CrossPlayTextChat_X {};
struct PartyMessage_DisableCrossPlay_X {};
struct PartyMessage_GetPlatformParty_X {};
struct PartyMessage_GetPlatformPartyResponse_X {};
struct PartyMessage_JoinGame_X {};
struct PartyMessage_Kick_X {};
struct PartyMessage_LobbySettings_X {};
struct PartyMessage_LocalPlayers_X {};
struct PartyMessage_MatchmakingAvailability_X {};
struct PartyMessage_PartyMemberJoinGame_X {};
struct PartyMessage_SetPlatformParty_X {};
struct PendingAvatarRequest_X {};
struct PlayerInput_X {};
struct PrivilegeCheck_X {};
struct PsyNet_X {};
struct PsyNetService_ReservationBase_X {};
struct PsyNetService_Backfill_X {};
struct PsyNetService_CreateHonorDuel_X {};
struct PsyNetService_CreatePrivate_X {};
struct PsyNetService_DuplicateLogin_X {};
struct PsyNetService_Echo_X {};
struct PsyNetService_PersonaInfo_X {};
struct PsyNetService_FriendAcceptedRequest_X {};
struct PsyNetService_FriendJoin_X {};
struct PsyNetService_FriendStatusUpdate_X {};
struct PsyNetService_IncomingFriendRequest_X {};
struct PsyNetService_JoinPrivate_X {};
struct PsyNetService_NewGame_X {};
struct PsyNetService_Party_X {};
struct PsyNetService_PartyChat_X {};
struct PsyNetService_PartyOwnerChanged_X {};
struct PsyNetService_PartySystem_X {};
struct PsyNetService_PartyUserDisconnected_X {};
struct PsyNetService_PartyUserInvited_X {};
struct PsyNetService_PartyUserJoined_X {};
struct PsyNetService_PartyUserKicked_X {};
struct PsyNetService_PartyUserLeft_X {};
struct PsyNetService_PlayerUnfriended_X {};
struct PsyNetService_Reconnect_X {};
struct RPC_ClubDetailsBase_X {};
struct RPC_AcceptClubInvite_X {};
struct RPC_AddPlayerToRole_X {};
struct RPC_AddQuitter_X {};
struct RPC_CanShowAvatar_X {};
struct RPC_CheckReplacementDedicatedServer_X {};
struct RPC_ClearClubInvites_X {};
struct RPC_CrashReport_X {};
struct RPC_CreateClub_X {};
struct RPC_CreateGameServer_X {};
struct RPC_DeactivateGameServer_X {};
struct RPC_FileStorage_GetFileDownloadUrl_X {};
struct RPC_FileStorage_GetFileUploadUrl_X {};
struct RPC_FilterContent_X {};
struct RPC_GetAntiAddictionData_X {};
struct RPC_GetClubDetails_X {};
struct RPC_GetClubInvites_X {};
struct RPC_GetClubPrivateMatches_X {};
struct RPC_GetGameServerPingList2_X {};
struct RPC_GetGameServerPingList_X {};
struct RPC_GetGenericDataAll_X {};
struct RPC_GetLeaderboardBase_X {};
struct RPC_GetLeaderboard_X {};
struct RPC_GetLeaderboardRankForUsersBase_X {};
struct RPC_GetLeaderboardRankForUsers_X {};
struct RPC_GetLeaderboardValueForUserBase_X {};
struct RPC_GetLeaderboardValueForUser_X {};
struct RPC_GetPartyMemberSkill_X {};
struct RPC_GetPlayerClubDetails_X {};
struct RPC_GetPlayerPermissions_X {};
struct RPC_GetPlayerSkill_X {};
struct RPC_GetPlayerTitles_X {};
struct RPC_GetPopulation_X {};
struct RPC_GetPublicIP_X {};
struct RPC_GetSkillLeaderboard_X {};
struct RPC_GetSkillLeaderboardRankForUsers_X {};
struct RPC_GetSkillLeaderboardValueForUser_X {};
struct RPC_GetSubRegions_X {};
struct RPC_InviteToClub_X {};
struct RPC_JoinMatch_X {};
struct RPC_LeaveClub_X {};
struct RPC_LoginAuthPlayer_X {};
struct RPC_PartyBase_X {};
struct RPC_PartyChangeOwner_X {};
struct RPC_PartyChat_X {};
struct RPC_PartyCreate_X {};
struct RPC_PartyInfo_X {};
struct RPC_PartyJoin_X {};
struct RPC_PartyKickMember_X {};
struct RPC_PartyLeave_X {};
struct RPC_PartyMessage_X {};
struct RPC_PartySendInvite_X {};
struct RPC_PlayerCancelMatchmaking_X {};
struct RPC_PlayerSearchPrivateMatch_X {};
struct RPC_PlayerStorageGet_X {};
struct RPC_PlayerStorageSet_X {};
struct RPC_PsyNetSendIndividualChat_X {};
struct RPC_RecordMatch_X {};
struct RPC_RecordMatchResults_X {};
struct RPC_RecordMetrics_X {};
struct RPC_RejectClubInvite_X {};
struct RPC_RelayToClient_X {};
struct RPC_RelayToServer_X {};
struct RPC_RemoveFromClub_X {};
struct RPC_RemovePlayerFromRole_X {};
struct RPC_RemoveQuitter_X {};
struct RPC_ReportCheater_X {};
struct RPC_ReportExploiter_X {};
struct RPC_ReportLowFPS_X {};
struct RPC_ReservationHeartbeat_X {};
struct RPC_ServerToServer_X {};
struct RPC_SetClubMotD_X {};
struct RPC_SetClubOwner_X {};
struct RPC_SetPlayerSkill_X {};
struct RPC_SetPlayerSkillTier_X {};
struct RPC_SetRichPresence_X {};
struct RPC_SetSeasonReward_X {};
struct RPC_SetServerNotJoinable_X {};
struct RPC_StartMatchmaking_X {};
struct RPC_Test_X {};
struct RPC_TestPlayerID_X {};
struct RPC_UpdateClub_X {};
struct RPC_UpdateClubColors_X {};
struct RPC_UpdateClubMotD_X {};
struct RPC_UpdateClubName_X {};
struct RPC_UpdateGameServer_X {};
struct RPC_UpdateLeaderboard_X {};
struct RPC_UpdatePlayerPlaylist_X {};
struct RPC_UpdateSkills_X {};
struct StatusObserver_X {};
struct StatusTrigger_X {};
struct TAsyncResult__array_ClubInvite_X {};
struct TAsyncResult__array_LanServerRecord_X {};
struct TAsyncResult__ClubDetails_X {};
struct TAsyncResult__PsyNetClientService_X {};
struct TAsyncResult__PsyNetMessage_X {};
struct TAsyncResult__Texture2DDynamic {};
struct UserBugReportComponent_X {};
