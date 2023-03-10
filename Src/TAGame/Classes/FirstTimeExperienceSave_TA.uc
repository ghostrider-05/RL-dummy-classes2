/*******************************************************************************
* FirstTimeExperienceSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FirstTimeExperienceSave_TA extends SaveObject_TA;

struct CompletedFTEInfo
{
	var name GroupName;
	var bool bHasCompletedGroup;
	var array<name> CompletedCheckpoints;
	var int GroupVersion;

	structdefaultproperties
	{
		GroupName=None
		bHasCompletedGroup=false
		CompletedCheckpoints.Empty
		GroupVersion=0
	}
};

var array<CompletedFTEInfo> CompletedFTEs;
var FirstTimeExperienceManager_TA.FTEVersioning Versioning;
var FirstTimeExperienceManager_TA.FTELegacyGroupType LegacyGroupType;
var name ActiveGroup;
var name ActiveCheckpoint;
var bool bTentativelyComplete;
