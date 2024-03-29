/*******************************************************************************
* GFxData_TourDetails_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TourDetails_TA extends GFxDataSingleton_X;

var transient TourSettings_TA Settings;
var export editinline transient OnlineProductStoreSet_TA OnlineProductSet;
var TourDetailsSync_TA DetailsSync;
var TourSettings_TA TourSettings;
var() OnlineGameTournaments_TA Tournaments;
var() databinding array<GFxTournamentReward> Rewards;
var databinding Texture CreatorAvatar;
var databinding string CreatorPlatform;
var databinding bool bRegistered;
var databinding bool bAdmin;
var databinding bool bCanCheckIn;

defaultproperties
{
	TableName=TournamentDetails
	
}