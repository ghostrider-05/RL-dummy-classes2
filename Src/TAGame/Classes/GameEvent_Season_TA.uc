/*******************************************************************************
* GameEvent_Season_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_Season_TA extends GameEvent_Soccar_TA
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

var() int PreMatchTime;
var transient Season_TA Season;
var transient SeasonMatch Match;
var transient Profile_TA Profile;
var transient Team_TA HumanTeam;
var transient Team_TA BotTeam;
var transient int HumanMatchTeam;
var transient int BotMatchTeam;
var float SeasonIntroTime;
var bool bIsChampionShipGame;
var bool bIsFirstGameOfSeason;
var bool bLastGameOfRegularSeason;
var SimilarSeasonLogos_TA SimilarLogoGroups;
var transient string TeamOverrides[2];

defaultproperties
{
	Match=(Week=0,Team0=-1,Team1=-1,Score0=0,Score1=0,Winner=-1,bBye=false)
	
	
	bAlwaysAutoSelectTeam=true
	
	bFillWithAI=true
	
	
	
	
	
	
	
}