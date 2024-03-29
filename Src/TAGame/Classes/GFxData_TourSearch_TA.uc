/*******************************************************************************
* GFxData_TourSearch_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TourSearch_TA extends GFxDataSingleton_X;

var TourConfig_TA Config;
var() databinding string Text;
var() databinding int RankMin;
var() databinding int RankMax;
var() databinding int GameMode;
var() databinding array<GFxRegion> Regions;
var() databinding int TeamSize;
var() databinding int BracketSize;
var() databinding bool bShowIneligibleRank;
var() export editinline GFxTourList_TA GFxTourList;
var() export editinline TourList_TA TourList;
var transient Profile_TA Profile;
var transient AsyncTask SearchTask;
var transient TournamentSettingsSave_TA TournamentSave;

defaultproperties
{
	
	
	TableName=TournamentSearch
}