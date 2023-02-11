/*******************************************************************************
* CarMeshComponent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarMeshComponent_TA extends CarMeshComponentBase_TA
	config(Engine)
	editinlinenew
	hidecategories(Object);

struct native WheelSkelControlSet
{
	var() export editinline Wheel_TA Wheel;
	var() SkelControlSingleBone TranslationControl;
	var() SkelControlSingleBone SteerControl;
	var() SkelControlSingleBone RollControl;

	structdefaultproperties
	{
		Wheel=none
		TranslationControl=none
		SteerControl=none
		RollControl=none
	}
};

var() float BoostBlendInTime;
var() float BoostBlendOutTime;
var() float BoostDriveFlapScale;
var() float WheelSuspensionBlendRate;
var() float WheelSteerBlendRate;
var transient array<WheelSkelControlSet> WheelControls;
var() float BoostFlyHeight;
var transient array<SkelControlBase> BoostFlyControls;
var export editinline transient SimpleSpringComponent_TA ChassisSpringComponent;
var transient SkelControlSingleBone ChassisSpringControl;
var transient array<SkelControlBase> BoostControls;
var transient bool bInAir;
var transient bool bBoostFlying;
var transient bool bPreviewSupersonic;
var transient bool bWantsBoostCameraAdjustment;
var transient float Throttle;

defaultproperties
{
	BoostBlendInTime=0.250
	BoostBlendOutTime=0.50
	BoostDriveFlapScale=0.50
	WheelSuspensionBlendRate=3.0
	WheelSteerBlendRate=10.0
	BoostFlyHeight=200.0
	bWantsBoostCameraAdjustment=true
	bUseSingleBodyPhysics=1
	ReplacementPrimitive=none
	RBChannel=RBCC_Vehicle
	CollideActors=true
	BlockActors=true
	BlockZeroExtent=true
	BlockNonZeroExtent=true
	BlockRigidBody=true
	bNotifyRigidBodyCollision=true
	RBCollideWithChannels=(Default=true,Pawn=true,Vehicle=true,GameplayPhysics=true,EffectPhysics=true,Ball=true,VehicleBlocker=true,BlockingVolume=true)
	ScriptRigidBodyCollisionThreshold=5.0
}