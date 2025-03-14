/*******************************************************************************
* FreeplayCommands_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FreeplayCommands_TA extends Actor
	notplaceable
	hidecategories(Navigation);

struct ActivateFreeplayCommandOutParams
{
	var FreeplayCommandsMetricsData PreActivationData;
	var Error ExecutionError;

	structdefaultproperties
	{
		PreActivationData=(BallLocation=(X=0.0,Y=0.0,Z=0.0),BallVelocity=(X=0.0,Y=0.0,Z=0.0),CarLocation=(X=0.0,Y=0.0,Z=0.0),CarVelocity=(X=0.0,Y=0.0,Z=0.0),CarRotation=(Pitch=0.0,Yaw=0.0,Roll=0.0),MapName="",bCarOnGround=false)
		ExecutionError=None
	}
};

var transient GameEvent_Soccar_TA SoccarGame;
var transient PlayerController_TA PlayerController;
var FreeplayCommandsConfig_TA FreeplayConfig;
var const int ActivatedCommandsMaxLength;
var array<FreeplayCommandEvent> ActivatedCommands;
var transient float LastResetTime;
var const transient float ResetCooldown;

defaultproperties
{
	ActivatedCommandsMaxLength=150
	ResetCooldown=1.0
	RemoteRole=ROLE_SimulatedProxy
	CollisionType=COLLIDE_CustomDefault
	bOnlyRelevantToOwner=true
}