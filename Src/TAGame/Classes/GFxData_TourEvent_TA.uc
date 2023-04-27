/*******************************************************************************
* GFxData_TourEvent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TourEvent_TA extends GFxDataSingleton_X;

enum ETourEventStatus
{
	TES_NonePending,
	TES_Registered,
	TES_CheckInOpen,
	TES_CheckedIn,
	TES_GeneratingBrackets,
	TES_MatchPending,
	TES_MatchReady,
	TES_InMatch,
	TES_MatchResultsPending,
	TES_Paused,
	TES_MatchEnding,
	TES_TroubleJoining,
	TES_MAX
};

var() OnlineGameTournaments_TA Tournaments;
var() OnlineGameTourMatchmaking_TA TourMatchmaking;
var() TourConfig_TA TourConfig;
var databinding string Title;
var databinding Qword Id;
var databinding Qword ScheduleID;
var databinding int SecondsRemaining;
var databinding Qword GenerateBracketTime;
var databinding ETourEventStatus Status;
var databinding Qword LocalTeamID;
var databinding int Round;
var databinding int TotalRounds;
var databinding string NextOpponent;
var databinding Qword EndGameWarningEpochTime;
var databinding Qword EndGameEpochTime;
var databinding bool bTroubleJoining;
var transient TourSettings_TA ActiveTournament;
var transient int MatchID;

defaultproperties
{
	Round=-1
	MatchID=-1
	TableName=TournamentEvent
	bLevelTransitionPersistent=true
}