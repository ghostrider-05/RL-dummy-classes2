/*******************************************************************************
* MatchType_Custom_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchType_Custom_TA extends MatchType_TA
	abstract;

var EnforceMaxTeamSizeConfig_TA EnforceTeamSizeConfig;
var transient bool bOnePlayerSelectedTeam;
var int LargestMaxTeamSize;

defaultproperties
{
	LargestMaxTeamSize=4
	WaitForPlayersTime=15
}