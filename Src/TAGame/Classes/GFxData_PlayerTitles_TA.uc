/*******************************************************************************
* GFxData_PlayerTitles_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_PlayerTitles_TA extends GFxDataSingleton_X;

var databinding int SelectedTitle;
var databinding array<PlayerTitleData> PlayerTitles;
var transient ProfileLoadoutSave_TA LoadoutSave;
var PlayerTitleConfig_X TitleConfig;

defaultproperties
{
	TableName=PlayerTitles
}