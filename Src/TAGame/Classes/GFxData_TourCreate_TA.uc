/*******************************************************************************
* GFxData_TourCreate_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TourCreate_TA extends GFxData_PrivateMatch_TA;

var const localized string PrivateNoPassword;
var const localized string StartTimeTooSoon;
var() databinding int MaxBracketSize;
var() databinding int RankMin;
var() databinding int RankMax;
var() databinding int SeriesLength;
var() databinding int FinalSeriesLength;
var() databinding array<GFxTournamentReward> Rewards;
var() databinding ETourSeedType SeedingType;
var() databinding int /** _Types_TA.EMatchTieBreaker*/ TieBreaker;
var() OnlineSubsystem OnlineSub;
var() OnlineGameTournaments_TA Tournaments;
var() TourConfig_TA Config;
var transient TourSettings_TA Settings;
var transient TournamentSettingsSave_TA TournamentSave;
var MapSet_TA DefaultMapSet;

defaultproperties
{
	/**PrivateNoPassword="Private Tournaments require a password"*/
	/**StartTimeTooSoon="Tournament must start at least {Minutes} minutes in the future"*/
	
	SettingsType=CustomMatchSettingsType_TourCreate
	TableName=TournamentCreate
}