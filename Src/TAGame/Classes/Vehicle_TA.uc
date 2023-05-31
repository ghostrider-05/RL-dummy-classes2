/*******************************************************************************
* Vehicle_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Vehicle_TA extends RBActor_TA
	config(Game)
	hidecategories(Navigation);

struct native CarInteractionData
{
	var transient Vehicle_TA LastHitCar;
	var transient float LastHitTime;

	structdefaultproperties
	{
		LastHitCar=None
		LastHitTime=0.0
	}
};

var() const export editinline CarMeshComponent_TA CarMesh;
var() export editinline VehicleSim_TA VehicleSim;
var() StickyForceData StickyForce;
var() AutoFlipData AutoFlip;
var transient bool bDriving;
var const transient bool bReplicatedHandbrake;
var transient bool bJumped;
var transient bool bDoubleJumped;
var transient bool bOnGround;
var transient bool bSuperSonic;
var repnotify transient bool bPodiumMode;
var const transient VehicleInputs Input;
var const transient byte ReplicatedThrottle;
var const transient byte ReplicatedSteer;
var transient AIController_TA AIController;
var transient PlayerController_TA PlayerController;
var transient PRI_TA PRI;
var editoronly const transient int VehicleUpdateTag;
var CarInteractionData CarInteraction;
var const transient Vector LocalCollisionOffset;
var const transient Vector LocalCollisionExtent;
var transient int LastBallTouchFrame;
var transient int LastBallImpactFrame;
var transient CarComponent_Boost_TA BoostComponent;
var transient CarComponent_Dodge_TA DodgeComponent;
var transient CarComponent_AirControl_TA AirControlComponent;
var transient CarComponent_Jump_TA JumpComponent;
var transient CarComponent_DoubleJump_TA DoubleJumpComponent;
var const export editinline PitchTekDrawingComponent_TA PitchTekComponent;
var export editinline transient LocalPlayerAudioParamsComponent_TA LocalPlayerAudioParamsComponent;
var transient float TimeBelowSupersonicSpeed;
var NetworkConfig_TA NetworkConfig;

defaultproperties
{
	ReplicatedThrottle=128
	ReplicatedSteer=128
	begin object name=DefaultPTDComponent class=PitchTekDrawingComponent_TA
		DecalType=PTDT_Car
	end object
	// Reference: PitchTekDrawingComponent_TA'Default__Vehicle_TA.DefaultPTDComponent'
	PitchTekComponent=DefaultPTDComponent
	RBHistoryClass=class'RBVehicleHistory_TA'
	//Replay=ReplayComponent_TA'Default__Vehicle_TA.ReplayComponent0'
	
	LandMovementState=Driving
	
	CylinderComponent=CollisionCylinder
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__Vehicle_TA.CollisionCylinder'
	Components(0)=CollisionCylinder
//	Components(1)=GroupComponent_ORS'Default__Vehicle_TA.DefaultRegistryGroup'
//	Components(2)=ReplayComponent_TA'Default__Vehicle_TA.ReplayComponent0'
	
	Components(3)=DefaultPTDComponent
	Physics=PHYS_None
	
	CollisionComponent=CollisionCylinder
}
replication
{
	 if(bNetInitial)
		bDriving, bPodiumMode;

	 if(bNetDirty)
		ReplicatedSteer, ReplicatedThrottle, 
		bReplicatedHandbrake;
}
