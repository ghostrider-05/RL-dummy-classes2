/*******************************************************************************
* GFxData_FirstTimeExperience_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_FirstTimeExperience_TA extends GFxDataSingleton_X;

var databinding name CurrentCheckpoint;
var databinding name CurrentGroup;
var databinding bool bActive;
var FirstTimeExperienceManager_TA FTEManager;

defaultproperties
{
	TableName=FirstTimeExperience
	bLevelTransitionPersistent=true
}