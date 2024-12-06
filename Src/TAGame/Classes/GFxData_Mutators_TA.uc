/*******************************************************************************
* GFxData_Mutators_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Mutators_TA extends GFxDataSingleton_X;

struct ModeMapPair
{
	var int GameMode;
	var name MapName;

	structdefaultproperties
	{
		GameMode=0
		MapName=None
	}
};

struct CustomGameSetting
{
	var databinding string MutatorCategoryName;
	var databinding string MutatorCategoryDesc;
	var databinding string SettingsName;
	var databinding int SettingIndex;
	var databinding int DefaultIndex;
	var name InternalName;
	var int MutatorGroupID;
	var int GameSettingCategoryIndex;
	var array<name> SettingNameExplicit;
	var databinding bool bPresetLocked;
	var databinding int RowID;

	structdefaultproperties
	{
		MutatorCategoryName=""
		MutatorCategoryDesc=""
		SettingsName=""
		SettingIndex=0
		DefaultIndex=0
		InternalName=None
		MutatorGroupID=0
		GameSettingCategoryIndex=0
		SettingNameExplicit.Empty
		bPresetLocked=false
		RowID=0
	}
};

struct OnlineFreeplayOption
{
	var int OptionIndex;
	var string LocalizationGroup;
	var string LocalizationPackage;
	var string LocalizationName;
	var string LocalizationDescription;

	structdefaultproperties
	{
		OptionIndex=0
		LocalizationGroup=""
		LocalizationPackage=""
		LocalizationName=""
		LocalizationDescription=""
	}
};

var() databinding name SelectedMapName;
var() databinding int SelectedGameMode;
var() databinding int SelectedBotDifficulty;
var() databinding array<GameModeData> GameModes;
var databinding array<CustomGameSetting> CustomGameSettings;
var transient array<GameSettingCategory_X> GameSettingCategories;
var transient array<GameSetting_X> GameModeMutatorSettingPresets;
var int PresetCategoryIndex;
var transient array<int> MutatorGroupIDs;
var transient array<ModeMapPair> ModeMaps;
var transient ECustomMatchSettingsType SettingsType;
var transient Profile_TA Profile;
var transient GameMode_TA GameModeObj;
var transient array<OnlineFreeplayOption> AllGoalResetOptions;
var transient bool bDisableGoalResetAllowed;
var databinding array<GoalResetOptionData> GoalResetOptions;
var databinding int SelectedGoalResetOption;
var transient array<OnlineFreeplayOption> AllBoostOptions;
var databinding array<BoostOptionData> BoostOptions;
var databinding int SelectedBoostOption;
var transient string BoostOptionKey;
var transient string GoalResetOptionKey;
var GameTags_TA GameTags;
var transient OnlineFreeplaySettingsSave_TA OnlineFreeplaySave;

defaultproperties
{
	PresetCategoryIndex=-1
	AllGoalResetOptions(0)=(OptionIndex=0,LocalizationGroup="OnlineFreePlay",LocalizationPackage="TAGame",LocalizationName="ResetStandard",LocalizationDescription="ResetStandardTip")
	AllGoalResetOptions(1)=(OptionIndex=1,LocalizationGroup="OnlineFreePlay",LocalizationPackage="TAGame",LocalizationName="DisableGoalDelay",LocalizationDescription="DisableGoalDelayTip")
	AllGoalResetOptions(2)=(OptionIndex=2,LocalizationGroup="OnlineFreePlay",LocalizationPackage="TAGame",LocalizationName="DisableGoalScoring",LocalizationDescription="DisableGoalScoringTip")
	bDisableGoalResetAllowed=true
	AllBoostOptions(0)=(OptionIndex=0,LocalizationGroup="OnlineFreePlay",LocalizationPackage="TAGame",LocalizationName="UnlimitedBooster",LocalizationDescription="")
	AllBoostOptions(1)=(OptionIndex=1,LocalizationGroup="OnlineFreePlay",LocalizationPackage="TAGame",LocalizationName="BoostStandard",LocalizationDescription="")
	AllBoostOptions(2)=(OptionIndex=2,LocalizationGroup="OnlineFreePlay",LocalizationPackage="TAGame",LocalizationName="BoostAutoRefill",LocalizationDescription="")
	BoostOptionKey="BoostOption"
	GoalResetOptionKey="GoalResetOption"
	TableName=Mutators
}