/*******************************************************************************
* GameEvent_Soccar_SubRules_Items_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_Soccar_SubRules_Items_TA extends GameEvent_Soccar_SubRules_TA within GameEvent_Soccar_TA;

var() PlayerItemDispenser_TA DispenserArchetype;
var() float StaggerTime;
var transient float CurrentStaggerByTeam[2];
var transient array<PlayerItemDispenser_TA> ItemDispensers;
