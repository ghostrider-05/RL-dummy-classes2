/*******************************************************************************
* FreeplaySessionManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FreeplaySessionManager_TA extends Actor
	notplaceable
	hidecategories(Navigation);

struct FreeplaySettings
{
	var transient EGoalResetType GoalResetValue;
	var transient EBoostFillType BoostFillValue;

	structdefaultproperties
	{
		GoalResetValue=GoalReset_Standard
		BoostFillValue=BoostFill_Unlimited
	}
};

var repnotify transient FreeplayCommands_TA FreeplayCommands;
var transient GameEvent_Soccar_TA SoccarEvent;
var transient bool bCanDisableGoalReset;
var bool bDefaultBoostRechargeGroundOnly;
var transient FreeplaySettings Settings;
var float DefaultBoostRechargeRate;
var float DefaultBoostRechargeDelay;
var transient OnlineFreeplaySettingsSave_TA OnlineFreeplaySettings;

defaultproperties
{
	bCanDisableGoalReset=true
	bDefaultBoostRechargeGroundOnly=true
	DefaultBoostRechargeRate=0.1660
	DefaultBoostRechargeDelay=1.50
	RemoteRole=ROLE_SimulatedProxy
	CollisionType=COLLIDE_CustomDefault
	bOnlyRelevantToOwner=true
}
replication
{
	 if(bNetInitial)
		FreeplayCommands, Settings, 
		bCanDisableGoalReset;
}
