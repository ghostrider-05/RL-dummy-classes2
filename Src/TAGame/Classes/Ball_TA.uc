/*******************************************************************************
* Ball_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Ball_TA extends RBActor_TA
	config(Game)
	hidecategories(Navigation);

struct native ExplosionData
{
	var export editinline Goal_TA Goal;
	var Vector Location;

	structdefaultproperties
	{
		Goal=None
		Location=(X=0.0,Y=0.0,Z=0.0)
	}
};

struct native ExplosionDataExtended
{
	var export editinline Goal_TA Goal;
	var Vector Location;
	var PRI_TA Scorer;

	structdefaultproperties
	{
		Goal=None
		Location=(X=0.0,Y=0.0,Z=0.0)
		Scorer=None
	}
};

struct native PredictedPosition
{
	var Vector Location;
	var Vector Velocity;

	structdefaultproperties
	{
		Location=(X=0.0,Y=0.0,Z=0.0)
		Velocity=(X=0.0,Y=0.0,Z=0.0)
	}
};

struct native GoalPenetrationData
{
	var export editinline Goal_TA Goal;
	var Vector PlaneLocation;
	var Vector PlaneNormal;
	var float PenetrationDistance;

	structdefaultproperties
	{
		Goal=None
		PlaneLocation=(X=0.0,Y=0.0,Z=0.0)
		PlaneNormal=(X=0.0,Y=0.0,Z=0.0)
		PenetrationDistance=0.0
	}
};

struct native CarBallInteractionSettings
{
	var() bool bSkipScriptForces;
	var() InterpCurveFloat PushFactorCurve;
	var() float PushZScale;
	var() float PushForwardScale;
	var() float MaxRelativeSpeed;
	var() float Restitution;
	var() float Friction;

	structdefaultproperties
	{
		bSkipScriptForces=false
		PushFactorCurve=(Points=None,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		PushZScale=0.0
		PushForwardScale=0.0
		MaxRelativeSpeed=0.0
		Restitution=0.0
		Friction=0.0
	}
};

// visual mesh
var() export editinline StaticMeshComponent StaticMesh;
var export editinline StaticMeshComponent TranslucentStaticMesh;
var const float MeshTranslucency;
var const array<MaterialInterface> TranslucentMaterials;
var() CarBallInteractionSettings CarInteraction;
// FX to replace the ball with when the game ends
var() FXActor_X EndOfGameFXArchetype;
// explosion to spawn
var() Explosion_X ExplosionArchetype;
var() Explosion_X NoGoalExplosionArchetype;
var() bool bAllowPlayerExplosionOverride;
var transient bool bNotifyGroundHit;
var repnotify transient bool bEndOfGameHidden;
var bool bFadeIn;
var bool bFadeOut;
var const transient bool bPredictionOnGround;
var transient bool bCanBeAttached;
var transient bool bItemFreeze;
var() Vector MagnusCoefficient;
var() float BallHitSpinScale;
var export editinline BallCamTarget_TA BallCamTarget;
var transient float Radius;
var float VisualRadius;
var transient array<BallHitInfo> Touches;
var transient float LastCalculateCarHit;
var transient Vector InitialLocation;
var transient Rotator InitialRotation;
var transient float LastHitWorldTime;
var repnotify float ReplicatedBallScale;
var repnotify StaticMesh ReplicatedBallMesh;
var repnotify float ReplicatedWorldBounceScale;
var repnotify float ReplicatedBallGravityScale;
var repnotify float ReplicatedBallMaxLinearSpeedScale;
var float ReplicatedAddedCarBounceScale;
var float AdditionalCarGroundBounceScaleZ;
var float AdditionalCarGroundBounceScaleXY;
var repnotify PhysicalMaterial ReplicatedPhysMatOverride;
// Team index that last hit the ball
var repnotify transient byte HitTeamNum;
var repnotify transient GameEvent_Soccar_TA GameEvent;
var repnotify transient ExplosionData ReplicatedExplosionData;
var repnotify transient ExplosionDataExtended ReplicatedExplosionDataExtended;
var transient Explosion_X Explosion;
var transient float ExplosionTime;
var transient Vector OldLocation;
var array<MaterialInterface> FadeMaterials;
// Timestep when predicting our next position(s)
var() float PredictionTimestep;
var const transient array<PredictedPosition> PredictedPositions;
var const transient float LastPredictionTime;
var transient GoalPenetrationData GoalPenetration;
var() float GroundForce;
var transient Car_TA CurrentAffector;
var export editinline BallTrajectoryComponent_TA TrajectoryComponent;
var const export editinline PitchTekDrawingComponent_TA PitchTekComponent;
var transient GoalExplosionOrientation_TA GoalExplosionOrientation;

defaultproperties
{
	
	StaticMesh=DefaultMesh
	bAllowPlayerExplosionOverride=true
	bFadeIn=true
	bFadeOut=true
	//BallCamTarget=BallCamTarget_TA'Default__Ball_TA.DefaultBallCamTarget'
	HitTeamNum=255
	PredictionTimestep=0.050
	//PitchTekComponent=PitchTekDrawingComponent_TA'Default__Ball_TA.DefaultPTDComponent'
	//Replay=ReplayComponent_TA'Default__Ball_TA.ReplayComponent0'
	
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__Ball_TA.CollisionCylinder'
	CylinderComponent=CollisionCylinder
	Components(0)=None
	
	Components(1)=CollisionCylinder
	Components(2)=None
//	Components(3)=GroupComponent_ORS'Default__Ball_TA.DefaultRegistryGroup'
//	Components(4)=ReplayComponent_TA'Default__Ball_TA.ReplayComponent0'
	begin object name=DefaultMesh class=StaticMeshComponent
		ReplacementPrimitive=None
		RBChannel=RBCC_Ball
		BlockRigidBody=true
		bNotifyRigidBodyCollision=true
		RBCollideWithChannels=(Default=true,Vehicle=true,GameplayPhysics=true,EffectPhysics=true,Ball=true,BallBlocker=true,BlockingVolume=true)
		ScriptRigidBodyCollisionThreshold=0.000010
	end object
	// Reference: StaticMeshComponent'Default__Ball_TA.DefaultMesh'
	Components(5)=DefaultMesh
//	Components(6)=PitchTekDrawingComponent_TA'Default__Ball_TA.DefaultPTDComponent'
	NetPriority=10.0
	
	CollisionComponent=DefaultMesh
}
replication
{
	 if(bNetInitial)
		BallHitSpinScale, GameEvent, 
		MagnusCoefficient, ReplicatedAddedCarBounceScale, 
		ReplicatedBallGravityScale, ReplicatedBallMaxLinearSpeedScale, 
		ReplicatedBallMesh, ReplicatedBallScale, 
		ReplicatedPhysMatOverride, ReplicatedWorldBounceScale;

	 if(bNetDirty)
		HitTeamNum, ReplicatedExplosionData, 
		ReplicatedExplosionDataExtended, bEndOfGameHidden;
}
