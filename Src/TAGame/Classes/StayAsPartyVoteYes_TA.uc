/*******************************************************************************
* StayAsPartyVoteYes_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class StayAsPartyVoteYes_TA extends Actor
	notplaceable
	hidecategories(Navigation);

var repnotify transient StayAsPartyVoter_TA Voter;

defaultproperties
{
	RemoteRole=ROLE_SimulatedProxy
	CollisionType=COLLIDE_CustomDefault
	bAlwaysRelevant=true
}
replication
{
	 if(bNetInitial)
		Voter;
}
