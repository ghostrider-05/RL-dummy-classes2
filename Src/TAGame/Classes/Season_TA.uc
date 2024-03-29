/*******************************************************************************
* Season_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Season_TA extends Object;

// # of teams participating
var databinding int NumTeams;
// 1v1, 2v2, etc
var databinding int TeamSize;
// AI difficulty (0, 1, 2)
var databinding int Difficulty;
// # of games in the regular season
var databinding int NumRegularWeeks;
// # of games in the playoffs
var databinding int NumPlayoffsWeeks;
// # of teams that make it to the playoffs
var databinding int NumPlayoffsTeams;
// Info on teams participating in this season
var databinding array<SeasonTeam> Teams;
// Info on players participating in this season
var databinding array<SeasonPlayer> Players;
// Player Stats for Season
var databinding array<SeasonPlayerStat> PlayerStats;
// Which year this season is
var databinding int Year;
// How many weeks into the season we are. This will exceed NumRegularWeeks as we enter the playoffs.
var databinding int CurrentWeek;
var array<SeasonMatch> Matches;

defaultproperties
{
	NumTeams=10
	TeamSize=3
	NumRegularWeeks=27
	NumPlayoffsTeams=4
}