/*******************************************************************************
* SaveData_GameEditor_Training_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SaveData_GameEditor_Training_TA extends SaveData_GameEditor_TA;

var transient string LoadedSaveName;
var TrainingEditorData_TA TrainingData;
var int PlayerTeamNumber;
var bool bUnowned;
var bool bPerfectCompleted;
var int ShotsCompleted;
var const string FavoritesFolderPath;
var const string MyTrainingFolderPath;
var const string DownloadedFolderPath;

defaultproperties
{
	FavoritesFolderPath="Favorities\\"
	MyTrainingFolderPath="MyTraining\\"
	DownloadedFolderPath="Downloaded\\"
	DirectoryPath="..\\..\\TAGame\\Training\\"
	SaveExt="Tem"
	bExactFileMatch=true
}