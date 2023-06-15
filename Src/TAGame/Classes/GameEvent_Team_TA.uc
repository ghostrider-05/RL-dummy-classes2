/*******************************************************************************
* GameEvent_Team_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_Team_TA extends GameEvent_TA
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

// Teams to create
var() array<Team_TA> TeamArchetypes;
var transient array<Team_TA> Teams;
var transient int MaxTeamSize;
var transient int NumBots;
var() bool bMuteOppositeTeams;
var transient bool bDisableMutingOtherTeam;
var transient bool bForfeit;
var transient bool bUnfairTeams;
var bool bAlwaysAutoSelectTeam;
// Archetype for the rematch vote actor
var() VoteActor_TA RematchVoteArchetype;
var transient VoteActor_TA RematchVote;
var transient array<ProductAsset_TA> PreloadedBotAssets;

defaultproperties
{
	
	
	
	
	
	
	
	
}
replication
{
	 if(bNetInitial)
		MaxTeamSize;

	 if(bNetDirty)
		bDisableMutingOtherTeam, bForfeit;
}
