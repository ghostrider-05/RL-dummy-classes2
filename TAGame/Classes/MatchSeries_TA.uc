/*******************************************************************************
* MatchSeries_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchSeries_TA extends Object;

struct SeriesTeam
{
	var array<UniqueNetId> Players;
	var int GamesWon;

	structdefaultproperties
	{
		Players.Empty
		GamesWon=0
	}
};

var int SeriesLength;
var array<SeriesTeam> Teams;

defaultproperties
{
	Teams(0)=(Players=none,GamesWon=0)
	Teams(1)=(Players=none,GamesWon=0)
}