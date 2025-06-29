/*******************************************************************************
* RBVehicleHistory_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RBVehicleHistory_TA extends RBHistory_TA within Vehicle_TA;

struct native RBVehicleSnapshot
{
	var VehicleInputs Input;
	var WheelContactData WheelContact0;
	var WheelContactData WheelContact1;
	var WheelContactData WheelContact2;
	var WheelContactData WheelContact3;
	var CarInteractionData CarInteraction;
	var float OutputHandbrake;
	var int LastHitBallFrame;

	structdefaultproperties
	{
		Input=(Throttle=0.0,Steer=0.0,Pitch=0.0,Yaw=0.0,Roll=0.0,DodgeForward=0.0,DodgeRight=0.0,bHandbrake=false,bJump=false,bActivateBoost=false,bHoldingBoost=false,bJumped=false,bGrab=false,bButtonMash=false,bTargetFind=false)
		WheelContact0=(bHasContact=false,bHasContactWithWorldGeometry=false,HasContactChangeTime=0.0,Actor=None,Component=None,Location=(X=0.0,Y=0.0,Z=0.0),Normal=(X=0.0,Y=0.0,Z=0.0),LatDirection=(X=0.0,Y=0.0,Z=0.0),LongDirection=(X=0.0,Y=0.0,Z=0.0),PhysMatProp=None)
		WheelContact1=(bHasContact=false,bHasContactWithWorldGeometry=false,HasContactChangeTime=0.0,Actor=None,Component=None,Location=(X=0.0,Y=0.0,Z=0.0),Normal=(X=0.0,Y=0.0,Z=0.0),LatDirection=(X=0.0,Y=0.0,Z=0.0),LongDirection=(X=0.0,Y=0.0,Z=0.0),PhysMatProp=None)
		WheelContact2=(bHasContact=false,bHasContactWithWorldGeometry=false,HasContactChangeTime=0.0,Actor=None,Component=None,Location=(X=0.0,Y=0.0,Z=0.0),Normal=(X=0.0,Y=0.0,Z=0.0),LatDirection=(X=0.0,Y=0.0,Z=0.0),LongDirection=(X=0.0,Y=0.0,Z=0.0),PhysMatProp=None)
		WheelContact3=(bHasContact=false,bHasContactWithWorldGeometry=false,HasContactChangeTime=0.0,Actor=None,Component=None,Location=(X=0.0,Y=0.0,Z=0.0),Normal=(X=0.0,Y=0.0,Z=0.0),LatDirection=(X=0.0,Y=0.0,Z=0.0),LongDirection=(X=0.0,Y=0.0,Z=0.0),PhysMatProp=None)
		CarInteraction=(LastHitCar=None,LastHitTime=0.0)
		OutputHandbrake=0.0
		LastHitBallFrame=0
	}
};

struct native CarComponentSnapshot
{
	var bool bActive;
	var float ActivityTime;
	var byte ComponentData;

	structdefaultproperties
	{
		bActive=false
		ActivityTime=0.0
		ComponentData=0
	}
};

struct native CarComponentHistory
{
	var CarComponent_TA CarComponent;
	var array<CarComponentSnapshot> Snapshots;
	var CarComponentSnapshot BackupSnapshot;

	structdefaultproperties
	{
		CarComponent=None
		Snapshots.Empty
		BackupSnapshot=(bActive=false,ActivityTime=0.0,ComponentData=0)
	}
};

var() float InputFadeTime;
var const transient array<RBVehicleSnapshot> RBVehicleSnapshots;
var const transient array<CarComponentHistory> ComponentHistories;
var const transient VehicleInputs BackupVehicleInputs;

defaultproperties
{
	InputFadeTime=0.10
}