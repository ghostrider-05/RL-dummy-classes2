/*******************************************************************************
* PRI_KnockOut_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PRI_KnockOut_TA extends PRI_TA
	hidecategories(Navigation,Movement,Collision);

var transient GameEvent_KnockOut_TA GameEvent_KO;
var transient bool bShowMatchPlacement;
var transient bool bIsEliminated;
var repnotify transient bool bIsActiveMVP;
var transient int Knockouts;
var transient int StackedKnockoutCount;
var transient float LastKnockoutTime;
var const float MaxKnockoutStackTime;
var transient int KnockoutAssists;
var repnotify transient int KnockoutDeaths;
var transient int DamageCaused;
var transient int Hits;
var transient int Grabs;
var transient int Blocks;
var transient int EliminationOrder;
var transient int MatchPlacement;
var int SpectateDelaySeconds;

defaultproperties
{
	MaxKnockoutStackTime=7.0
	SpectateDelaySeconds=3
	
	Components(0)=GroupComponent_ORS'Default__PRI_KnockOut_TA.DefaultRegistryGroup'
}