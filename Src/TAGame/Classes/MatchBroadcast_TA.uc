/*******************************************************************************
* MatchBroadcast_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchBroadcast_TA extends Actor
	notplaceable
	hidecategories(Navigation);

var repnotify transient GameEvent_Soccar_TA GameEvent;
var transient array<PlayerReplicationInfo> RecordedPlayers;
var transient bool bBroadcasting;

defaultproperties
{
	RemoteRole=ROLE_SimulatedProxy
	CollisionType=COLLIDE_CustomDefault
	bHidden=true
	bOnlyRelevantToOwner=true
	bAlwaysRelevant=true
	bOnlyDirtyReplication=true
}
replication
{
	 if(bNetInitial)
		GameEvent;
}