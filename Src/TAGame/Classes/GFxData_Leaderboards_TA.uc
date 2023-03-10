/*******************************************************************************
* GFxData_Leaderboards_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Leaderboards_TA extends GFxDataSingleton_X;

var databinding array<LeaderboardData> LeaderboardDataSet;
var databinding int PlayerLeaderboardValue;
var databinding int PlayerLeaderboardDivision;
var databinding float PlayerLeaderboardMMR;
var databinding string PlayerLeaderboardName;
var databinding bool bShowGlobalLeaderboards;
var transient bool bWordFilterError;
var transient OnlineGameLeaderboards_X Leaderboards;
var transient name PendingLeaderboardRequestID;
var transient VanitySetManager_TA VanityManager;

defaultproperties
{
	TableName=Leaderboards
}