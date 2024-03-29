/*******************************************************************************
* OnlineGameMatchmaking_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameMatchmaking_X extends OnlineGameMatchmakingBase_X within OnlineGame_X;

struct DSRegionInfo
{
	var string Name;
	var int Ping;

	structdefaultproperties
	{
		Name=""
		Ping=0
	}
};

var transient array<int> PreferredPlaylists;
var transient array<DSRegionInfo> PreferredRegions;
var const localized string SearchingString;
var const localized string StartSearchFailString;
var const localized string FoundServerString;
var const localized string PlaylistsHaveChangedString;
var const localized string RegionsHaveChangedString;
var const localized string MatchmakingAttemptString;
var transient float MatchmakingStartTime;
var int MatchmakingBanTime;
var float EstimatedQueueTime;
var transient bool bIgnoreSkill;
var() float MatchmakingDisabledDuration;
var transient float MatchmakingDisabledUntilTime;
var transient string LastReservationID;

defaultproperties
{
	/**SearchingString="Searching for [Playlists] in: [Regions]"*/
	/**StartSearchFailString="Unable to contact matchmaking server, trying again... (Error: 68)"*/
	/**FoundServerString="Found game server! Connecting to [GameServerName] for [PlaylistName]..."*/
	/**PlaylistsHaveChangedString="Playlists have changed, restarting matchmaking... (Error: 66)"*/
	/**RegionsHaveChangedString="Regions have changed, restarting matchmaking... (Error: 91)"*/
	/**MatchmakingAttemptString="Matchmaking attempt: "*/
	MatchmakingDisabledDuration=60.0
}