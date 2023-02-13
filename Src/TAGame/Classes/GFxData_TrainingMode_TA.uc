/*******************************************************************************
* GFxData_TrainingMode_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TrainingMode_TA extends GFxDataRow_X;

var TrainingConfig_TA TrainingModeConfig;
var databinding transient EBasicLoadResult Status;
var databinding transient string SanitizedTrainingModeName;
var databinding transient string SanitizedCreatorName;
var databinding transient string Tags;
var databinding transient bool bOwned;
var databinding transient bool bFavorited;
var databinding transient bool bOutOfDate;
var databinding transient string PublishedTime;
var databinding transient string UpdatedAtTime;
var databinding transient int ShotsCompleted;
var databinding transient string CreatorPlatform;
var databinding transient Texture CreatorAvatar;
var transient string SaveDataFilename;
var transient string SavingFilename;
var transient string AutoplayName;
var transient SaveData_GameEditor_Training_TA SaveData;
var const string OpenTrainingMapBaseCmd;
var const localized string OutOfDateMessage;
var const localized string DownloadingTrainingModeTitleMessage;
var const localized string DownloadingTrainingModeBodyMessage;
var transient GFxModal_X ModalProcessing;

defaultproperties
{
	OpenTrainingMapBaseCmd="Start $0?Game=TAGame.GameInfo_TrainingEditor_TA?Offline"
	TableName=TrainingMode
	ProxyClass=class'TrainingEditorData_TA'
}