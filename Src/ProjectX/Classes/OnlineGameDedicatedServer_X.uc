/*******************************************************************************
* OnlineGameDedicatedServer_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameDedicatedServer_X extends OnlineGameServer_X
	config(Engine)
	implements(IOnlineGameHost_X);

var transient string GameServerID;
var transient string GameServerHost;
var transient int EnvironmentZone;
var transient OnlineGameStats_X GameStats;
var() OnlineGameDedicatedServerRegistration_X Registration;
var() OnlineGameReservations_X Reservations;
var transient ClanforgeReservation_X Clanforge;
var transient string Region;
var transient string DataCenter;
var int CurrentPlaylistId;
var int MutatorIndex;
var transient float AverageMMR;
var transient float AverageConservativeMMR;
var transient int MachineId;
var transient CustomMatchSettings CustomMatch;
var transient UniqueNetId CustomMatchOwner;
var transient Qword CustomMatchClubID;
var transient bool bQueuedShutdown;
var transient bool bFindingReplacementServer;
var bool bHasValidMigrationServer;
var transient bool bDisableMatchmakingBan;
var transient bool bBotTest;
var transient string ReplacementServerID;
var export editinline transient ServerPlayerTracker_X PlayerTracker;
var() class MatchRecorderClass;
var transient MatchRecorder_X MatchRecorder;
var transient MatchLog_X MatchLog;
var() transient ServerConfig_X Config;
var transient PsyNetConfig_X PsyNetConfig;

defaultproperties
{
	CurrentPlaylistId=-1
	
	MatchRecorderClass=class'MatchRecorder_X'
}