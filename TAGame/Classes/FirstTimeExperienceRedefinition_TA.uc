/*******************************************************************************
* FirstTimeExperienceRedefinition_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FirstTimeExperienceRedefinition_TA extends Object;

enum FTERedefinitionAction
{
	RT_Rename,
	RT_Add,
	RT_Remove,
	RT_MAX
};

enum FTERedefinitionType
{
	ER_Group,
	ER_Checkpoint,
	ER_Triggers,
	ER_UserGroup,
	ER_SaveGroup,
	ER_SaveAll,
	ER_MAX
};

struct RedefinedInfo
{
	var FirstTimeExperienceRedefinition_TA.FTERedefinitionAction RedefinedAction;
	var FirstTimeExperienceRedefinition_TA.FTERedefinitionType RedefinedType;
	var name GroupName;
	var array<name> CheckpointNames;
	var array<TriggerClump_TA> TriggerClumps;
	var name NameValue;
	var int IntValue;
	var bool bValue;

	structdefaultproperties
	{
		RedefinedAction=RT_Rename
		RedefinedType=ER_Group
		GroupName=None
		CheckpointNames.Empty
		TriggerClumps.Empty
		NameValue=None
		IntValue=0
		bValue=false
	}
};

var() array<RedefinedInfo> FTERedefinedInfo;
var() bool bFTEManagerEnabled;
var() bool bClearActiveFTE;

defaultproperties
{
	bFTEManagerEnabled=true
}