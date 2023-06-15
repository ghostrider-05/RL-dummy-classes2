/*******************************************************************************
* RBActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RBActor_TA extends Pawn_X
	native
	nativereplication
	config(Game)
	hidecategories(Navigation)
	implements(ITickNotify_TA);

struct native WorldContactData
{
	var bool bHasContact;
	var Vector Location;
	var Vector Velocity;
	var Vector Normal;

	structdefaultproperties
	{
		bHasContact=false
		Location=(X=0.0,Y=0.0,Z=0.0)
		Velocity=(X=0.0,Y=0.0,Z=0.0)
		Normal=(X=0.0,Y=0.0,Z=0.0)
	}
};

struct native NetworkSyncSettingsData
{
	// How fast to blend out location errors over time
	var() float LocationFixRate;
	// How fast to blend out angular errors over time
	var() float AngularFixRate;
	// Don't apply correction if the location difference is less than this
	var() float MinDeltaLocation;
	var() float WeldedLerpRate;
	// Don't apply correction if the rotation difference is less than this
	var() const int MinDeltaRotation;
	// Don't apply correction if the velocity difference is less than this
	var() float MinDeltaLinearVelocity;
	var() float ForceReplicationDelay;
	var() bool bDebug;

	structdefaultproperties
	{
		LocationFixRate=4.0
		AngularFixRate=5.0
		MinDeltaLocation=5.0
		WeldedLerpRate=18.0
		MinDeltaRotation=100
		MinDeltaLinearVelocity=10.0
		ForceReplicationDelay=0.350
		bDebug=false
	}
};

struct native TimeOfImpactData
{
	var float Fraction;
	var Vector Location;
	var Rotator Rotation;
	var Vector OtherLocation;
	var Rotator OtherRotation;
	var Vector ImpactLocation;
	var Vector ImpactNormal;

	structdefaultproperties
	{
		Fraction=0.0
		Location=(X=0.0,Y=0.0,Z=0.0)
		Rotation=(Pitch=0,Yaw=0,Roll=0)
		OtherLocation=(X=0.0,Y=0.0,Z=0.0)
		OtherRotation=(Pitch=0,Yaw=0,Roll=0)
		ImpactLocation=(X=0.0,Y=0.0,Z=0.0)
		ImpactNormal=(X=0.0,Y=0.0,Z=0.0)
	}
};

var native const noexport Pointer VfTable_IITickNotify_TA;
// Don't exceed this linear speed
var() repnotify const float MaxLinearSpeed;
// Don't exceed this angular speed
var() repnotify const float MaxAngularSpeed;
var const float RollingFriction;
// Don't let this RB actor sleep, ever
var() const bool bDisableSleeping;
var const transient bool bReplayActor;
var repnotify transient bool bFrozen;
var const bool bAutoInitFXEffects;
var transient bool bIgnoreSyncing;
var transient bool bPhysInitialized;
var transient bool bSkipNextErrorAccumulation;
// Adjust how we interpolate updates from the server
var() NetworkSyncSettingsData NetworkSyncSettings;
var const transient ReplicatedRBState OldRBState;
var const transient ReplicatedRBState RBState;
var const transient ReplicatedRBState ReplicatedRBState;
var const transient ReplicatedRBState ClientCorrectionRBState;
var const transient WorldContactData WorldContact;
var const transient Vector SyncErrorLocation;
var const transient float SyncErrorAngle;
var const transient Vector SyncErrorAxis;
var export editinline AkParamGroup Ak;
// FXActor to create
var() FXActor_X FXActorArchetype;
var transient FXActor_X FXActor;
// Handles playing collision FX
var() export editinline ImpactEffectsComponent_TA ImpactEffectsComponent;
var const transient array<AccumulatedRigidBodyCollision> RBCollisions;
// Saves and restores vehicle history for networking
var() class RBHistoryClass;
var const export editinline transient RBHistory_TA RBHistory;
var const transient int LastRBCollisionsFrame;
var export editinline ReplayComponent_TA Replay;
var repnotify repretry transient WeldingInfo WeldedInfo;
var transient RBActor_TA WeldedActor;
var transient RBActor_TA WeldedTo;
var transient float PreWeldMass;
var repnotify transient float ReplicatedGravityScale;
var repnotify transient float ReplicatedCollisionScale;
var native transient Pointer Constraint2D;
var native transient Pointer BulletRigidBody;
var PhysicsConfig_TA PhysicsConfig;
var repnotify transient byte TeleportCounter;

defaultproperties
{
	MaxLinearSpeed=10000.0
	MaxAngularSpeed=10.0
	bAutoInitFXEffects=true
	NetworkSyncSettings=(LocationFixRate=4.0,AngularFixRate=5.0,MinDeltaLocation=5.0,WeldedLerpRate=18.0,MinDeltaRotation=100,MinDeltaLinearVelocity=10.0,ForceReplicationDelay=0.350,bDebug=false)
	ReplicatedRBState=(Quaternion=(X=0.0,Y=0.0,Z=0.0,W=1.0),Location=(X=0.0,Y=0.0,Z=0.0),LinearVelocity=(X=0.0,Y=0.0,Z=0.0),AngularVelocity=(X=0.0,Y=0.0,Z=0.0),Time=0.0,bSleeping=false,bNewData=false)
	RBHistoryClass=class'RBHistory_TA'
	//Replay=ReplayComponent_TA'Default__RBActor_TA.ReplayComponent0'
	
	bSimulateGravity=false
	bCanBeBaseForPawns=true
	bDontPossess=true
	
	CylinderComponent=CollisionCylinder
	Components(0)=None
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
		AlwaysCheckCollision=true
		BlockActors=false
		BlockZeroExtent=false
	end object
	// Reference: CylinderComponent'Default__RBActor_TA.CollisionCylinder'
	Components(1)=CollisionCylinder
	Components(2)=None
//	Components(3)=GroupComponent_ORS'Default__RBActor_TA.DefaultRegistryGroup'
//	Components(4)=ReplayComponent_TA'Default__RBActor_TA.ReplayComponent0'
	Physics=PHYS_RigidBody
	TickGroup=TG_PostAsyncWork
	bAlwaysRelevant=true
	bReplicateMovement=false
	bNetInitialRotation=true
	bNoEncroachCheck=true
	bCollideAsEncroacher=true
	
	CollisionComponent=CollisionCylinder
}
replication
{
	 if(bNetInitial)
		ReplicatedRBState;

	 if(bNetInitial/**Empty key for position: 1.*/)
		MaxAngularSpeed, MaxLinearSpeed, 
		bReplayActor;

	 if(bNetInitial/**Empty key for position: 11.*/)
		ReplicatedCollisionScale, ReplicatedGravityScale, 
		TeleportCounter, WeldedInfo, 
		bFrozen, bIgnoreSyncing;
}
