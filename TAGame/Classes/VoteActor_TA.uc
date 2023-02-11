/*******************************************************************************
* VoteActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class VoteActor_TA extends Actor
	notplaceable
	hidecategories(Navigation);

const MAX_REPLICATED_VOTERS = 8;

struct native Voter
{
	var PRI_TA PRI;
	var _Types_TA.EVoteStatus Status;

	structdefaultproperties
	{
		PRI=none
		Status=VOTE_Pending
	}
};

var() _Types_TA.EVoteSubject Subject;
var() int TimeRemaining;
var() bool bUnanimousVote;
var() bool bAllowSplitscreenVoters;
var() bool bFilterIdleBannedPlayers;
var repnotify transient bool bFinished;
var transient array<Voter> Voters;
var repnotify transient Voter ReplicatedVoters[8];

defaultproperties
{
	RemoteRole=ROLE_SimulatedProxy
	bAlwaysRelevant=true
	bReplicateMovement=false
	bSkipActorPropertyReplication=true
	bOnlyDirtyReplication=true
}