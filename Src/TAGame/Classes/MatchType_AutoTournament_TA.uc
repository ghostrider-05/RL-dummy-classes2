/*******************************************************************************
* MatchType_AutoTournament_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchType_AutoTournament_TA extends MatchType_Tournament_TA;

var() AutoTourConfig_TA AutoTourConfig;

defaultproperties
{
	PlaylistName=AutoTournament
	
	WaitForPlayersTime=30
	LobbyTime=150.0
	LobbyIntroTime=7.0
}