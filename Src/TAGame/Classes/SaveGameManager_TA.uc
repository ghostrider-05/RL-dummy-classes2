/*******************************************************************************
* SaveGameManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SaveGameManager_TA extends Object
	config(Engine);

var SaveObjectManager_TA SaveObjectManager;
var string SaveDataID;
var transient LocalPlayer_TA Player;
var export editinline SaveData_TA SaveData;
var export editinline transient ObjectProvider SaveObjectProvider;
var config float MinTimeBetweenSaves;
var transient float LastSaveTime;
var transient Error DataLoadError;
var transient Error DataSaveError;
var transient bool bDataLoaded;
var transient bool bUserIgnoredLoadFailure;
var transient bool bEnableSaving;
var transient bool bDisableSaveOSS;
var transient bool bDirty;
var config string SaveFolderPath;
var config string EpicSaveFolderPath;

defaultproperties
{
	SaveDataID="SaveData"
	//SaveData=SaveData_TA'Default__SaveGameManager_TA.SaveData0'
	/**MinTimeBetweenSaves=3.0*/
	/**SaveFolderPath="..\\..\\TAGame\\SaveData\\"*/
	/**EpicSaveFolderPath="..\\..\\TAGame\\SaveDataEpic\\"*/
}