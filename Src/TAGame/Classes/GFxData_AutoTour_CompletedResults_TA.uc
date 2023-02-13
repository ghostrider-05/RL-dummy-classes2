/*******************************************************************************
* GFxData_AutoTour_CompletedResults_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_AutoTour_CompletedResults_TA extends GFxDataRow_X;

var PsyNet_X PsyNet;
var() OnlineGameTournaments_TA Tournaments;
var AutoTourConfig_TA Config;
var AutoTour_TA AutoTour;
var transient Qword CycleID;
var transient int WeekIndex;
var transient bool bEliminatedFirstRound;
var databinding bool bWeeksResultsChanged;
var databinding bool bReceivedResults;
var databinding bool bFailedToRetrieveResults;
var transient TournamentResult NewTournamentResult;
var transient array<TournamentResult> OldWeeklyResults;
var transient array<TournamentResult> NewWeeklyResults;
var transient array<ShopCurrencyInfo> CurrencyRewards;
var transient array<ShopCurrencyInfo> OldWeeklyCurrencies;
var transient array<ShopCurrencyInfo> WeeklyCurrencies;
var transient array<ShopCurrencyInfo> FinalCurrencies;
var databinding Qword TournamentID;
var databinding Qword ScheduleID;
var databinding Qword RejoinTournamentTime;

defaultproperties
{
	TableName=AutoTourCompletedResults
}