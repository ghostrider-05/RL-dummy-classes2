/*******************************************************************************
* GameInfo_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameInfo_TA extends GameInfoBase_TA
	config(Game)
	hidecategories(Navigation,Movement,Collision);

struct GameEventData
{
	var() GameEvent_TA Archetype;
	var() string LaunchOption;
	var() bool bDestroyCurrentGame;
	var() bool bAddAllPlayers;

	structdefaultproperties
	{
		Archetype=None
		LaunchOption=""
		bDestroyCurrentGame=true
		bAddAllPlayers=true
	}
};

var transient bool bShutdownQueued;
var transient bool bShuttingDown;
var transient GameEvent_TA CurrentGame;
var ServerConnectionInfo ReplacementServerInfo;

defaultproperties
{
	
	bRestartLevel=false
	bWaitingToStartMatch=true
	PlayerReplicationInfoClass=class'PRI_TA'
	Components(0)=GroupComponent_ORS'Default__GameInfo_TA.DefaultRegistryGroup'
}