/*******************************************************************************
* MatchType_Tournament_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchType_Tournament_TA extends MatchType_PublicRanked_TA;

var() OnlineGameDedicatedServer_TA DedicatedServer;
var() OnlineGameTourServer_TA TourServer;
var() TourServerConfig_TA TournamentServerConfig;
var() MatchSeries_TA MatchSeries;
var name PlaylistName;

defaultproperties
{
	PlaylistName=Tournament
	Components.Empty
	WaitForPlayersTime=90
	MatchTypeName=Tournament
}