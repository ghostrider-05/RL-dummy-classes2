/*******************************************************************************
* GFxData_TourDependentMatch_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TourDependentMatch_TA extends GFxData_TourBracketMatch_TA;

var() OnlineGameTournaments_TA Tournaments;

defaultproperties
{
	GFxGameClass=class'GFxData_TourDependentGame_TA'
	TableName=TournamentDependentMatch
	bLevelTransitionPersistent=true
}