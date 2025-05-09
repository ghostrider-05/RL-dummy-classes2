/*******************************************************************************
* GFxData_OnlineFreeplay_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_OnlineFreeplay_TA extends GFxData_PrivateMatch_TA;

var databinding bool bCanUseFreeplayCommands;
var() databinding array<GameModeData> GameModes;
var databinding array<GoalResetOptionData> GoalResetOptions;
var() databinding int SelectedGameMode;
var() databinding EBoostFillType SelectedBoost;
var() databinding EGoalResetType SelectedGoalReset;
var transient int DefaultGameModeIndex;
var transient name DefaultMapName;
var const int MaxPlayerCount;
var array<int> BallResetRestrictedGameModes;
var int BallResetIndex;

defaultproperties
{
	DefaultMapName=RandomStandard
	MaxPlayerCount=8
	BallResetRestrictedGameModes(0)=1
	BallResetRestrictedGameModes(1)=2
	SettingsType=CustomMatchSettingsType_OnlineFreeplay
	TableName=OnlineFreeplay
}