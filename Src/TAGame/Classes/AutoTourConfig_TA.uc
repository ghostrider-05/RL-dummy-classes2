/*******************************************************************************
* AutoTourConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AutoTourConfig_TA extends OnlineConfig_X;

struct ScheduleRegion
{
	var string Id;
	var string Label;

	structdefaultproperties
	{
		Id=""
		Label=""
	}
};

var int MaxTournamentsPerWeek;
var int TourResultsTimeoutSeconds;
var int MaxNumPlayers;
var bool bAutoPartyUpEnabled;
var array<ScheduleRegion> ScheduleRegions;

defaultproperties
{
	MaxTournamentsPerWeek=3
	TourResultsTimeoutSeconds=30
	MaxNumPlayers=32
	bAutoPartyUpEnabled=true
}