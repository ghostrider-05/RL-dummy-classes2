/*******************************************************************************
* GFxData_Training_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Training_TA extends GFxDataSingleton_X;

struct UseAction
{
	var databinding string ActionName;
	var databinding string LocalizedActionName;

	structdefaultproperties
	{
		ActionName=""
		LocalizedActionName=""
	}
};

var databinding name TrainingType;
var databinding int CurrentScore;
var databinding int CurrentRound;
var databinding int TotalRounds;
var databinding string Difficulty;
var databinding name SelectedFreeplayMap;
var databinding bool bShowBoostMeter;
var databinding bool bShufflePlay;
var databinding bool bIsCustomTraining;
var databinding array<UseAction> UseActions;
var databinding string TutorialTip;
var databinding array<TrainingRoundProgress> ProgressPerShot;
var databinding int CurrentPlaylistIndex;
var databinding EControlsVisibilityType ControlsVisibility;
var GameEvent_TrainingEditor_TA TrainingEditor;
var transient TrainingProgressTracker_TA ProgressTracker;
var TrainingConfig_TA TrainingConfig;

defaultproperties
{
	CurrentScore=-1
	bShowBoostMeter=true
	TableName=Training
}