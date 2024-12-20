/*******************************************************************************
* Replay_Soccar_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Replay_Soccar_TA extends Replay_TA
	config(Game);

struct ScoredGoal
{
	var databinding int frame;
	var databinding string PlayerName;
	var databinding int PlayerTeam;

	structdefaultproperties
	{
		frame=0
		PlayerName=""
		PlayerTeam=0
	}
};

struct Highlight
{
	var int frame;
	var name CarName;
	var name BallName;
	var name GoalActorName;

	structdefaultproperties
	{
		frame=0
		CarName=None
		BallName=None
		GoalActorName=None
	}
};

struct ReplayPlayerStats
{
	var UniqueNetId PlayerID;
	var string Name;
	var _Types_Core.OnlinePlatform Platform;
	var Qword OnlineID;
	var int Team;
	var int Score;
	var int Goals;
	var int Assists;
	var int Saves;
	var int Shots;
	var bool bBot;

	structdefaultproperties
	{
		
		Name=""
		Platform=OnlinePlatform_Unknown
		
		Team=0
		Score=0
		Goals=0
		Assists=0
		Saves=0
		Shots=0
		bBot=false
	}
};

// Number of players per team (1v2, 2v2, etc)
var databinding int TeamSize;
var databinding int UnfairTeamSize;
var databinding bool bUnfairBots;
var databinding bool bNoContest;
var databinding bool bForfeit;
var bool bLocalPlayerAbandoned;
// Team of primary player
var int PrimaryPlayerTeam;
// Match score for team 0
var databinding int Team0Score;
// Match score for team 1
var databinding int Team1Score;
var float TotalSecondsPlayed;
var Qword MatchStartEpoch;
var int WinningTeam;
var databinding array<ScoredGoal> Goals;
var array<Highlight> HighLights;
var array<ReplayPlayerStats> PlayerStats;
