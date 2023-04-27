/*******************************************************************************
* AutoTour_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AutoTour_TA extends Object;

struct ScheduledTournament
{
	var Qword Time;
	var Qword ScheduleID;
	var string Description;
	var bool bUpdateSkill;
	var array<TourSettings_TA> Tournaments;

	structdefaultproperties
	{
		
		
		Description=""
		bUpdateSkill=false
		Tournaments.Empty
	}
};

struct TournamentWeek
{
	var array<TournamentResult> Results;

	structdefaultproperties
	{
		Results.Empty
	}
};

var array<ScheduledTournament> Schedules;
var transient array<TournamentWeek> CycleResults;
var Qword IneligibleScheduleID;
var string RegionID;
var Qword CycleID;
var databinding Qword CycleEndTime;
var databinding int WeekID;
var databinding Qword WeekEndTime;
var databinding array<ShopCurrencyInfo> WeeklyCurrencies;
var transient array<int> MaxTierScores;
var float DataRefreshTime;
var float LastSyncTime;
var AutoTourConfig_TA Config;
var OnlineGame_X OnlineGame;
var() OnlineGameTournaments_TA Tournaments;
var() export editinline TourList_TA TourList;
var transient AsyncTask SyncCycleDataTask;
var transient AsyncTask SyncScheduleTask;

defaultproperties
{
	DataRefreshTime=900.0
	TourList=TourList_TA'Default__AutoTour_TA.TourList0'
}