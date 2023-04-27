/*******************************************************************************
* FirstTimeExperienceManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FirstTimeExperienceManager_TA extends Object within OnlinePlayer_TA;

enum FTELegacyGroupType
{
	LGT_All,
	LGT_NewUser,
	LGT_LegacyUser,
	LGT_MAX
};

enum FTEVersioning
{
	FTEV_InitialVersion,
	FTEV_CustomizationRework,
	FTEV_MAX
};

struct FTEGroup
{
	var name GroupName;
	var string RequirementInfo;
	var array<TriggerClump_TA> TriggerClumps;
	var bool bCanBeDoneAgain;
	var FirstTimeExperienceManager_TA.FTELegacyGroupType GroupUserType;
	var int GroupVersion;
	var array<name> Checkpoints;

	structdefaultproperties
	{
		GroupName=None
		RequirementInfo=""
		TriggerClumps.Empty
		bCanBeDoneAgain=false
		GroupUserType=LGT_All
		GroupVersion=1
		Checkpoints.Empty
	}
};

struct FTELevelData
{
	var string LevelId;
	var class SequenceClass;
	var string MapName;
	var string MatchType;
	var array<string> AddedInfo;

	structdefaultproperties
	{
		LevelId=""
		SequenceClass=None
		MapName=""
		MatchType=""
		AddedInfo.Empty
	}
};

struct FTEChallengeInfo
{
	var name GroupName;
	var name CheckpointName;

	structdefaultproperties
	{
		GroupName=None
		CheckpointName=None
	}
};

var FirstTimeExperienceManager_TA.FTEVersioning Versioning;
var array<FTEGroup> FTEGroups;
var array<FTELevelData> FTELevelInfo;
var FirstTimeExperienceRedefinition_TA FTERedefine;
var transient FTEGroup CurrentActiveGroup;
var transient int CurrentCheckpointIndex;
var transient name CurrentCheckpoint;
var FirstTimeExperienceSave_TA FTESave;
var PlayerLegacyStatusSave_TA LegacySave;
var array<FTEChallengeInfo> ChallengeCompleteInfo;
var array<TriggerCondition_TA> ActiveTriggers;
var bool bEnabled;

defaultproperties
{
	CurrentActiveGroup=(GroupName=None,RequirementInfo="",TriggerClumps=None,bCanBeDoneAgain=false,GroupUserType=LGT_All,GroupVersion=1,Checkpoints=None)
	CurrentCheckpointIndex=-1
	bEnabled=true
}