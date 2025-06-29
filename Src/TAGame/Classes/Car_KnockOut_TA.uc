/*******************************************************************************
* Car_KnockOut_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Car_KnockOut_TA extends Car_TA
	config(Game)
	hidecategories(Navigation);

struct PendingHit
{
	var Car_KnockOut_TA Attacker;
	var Vector HitDirection;
	var float HitSpeed;
	var bool bHeavyAttack;

	structdefaultproperties
	{
		Attacker=None
		HitDirection=(X=0.0,Y=0.0,Z=0.0)
		HitSpeed=0.0
		bHeavyAttack=false
	}
};

struct ImpulseData
{
	var int CompressedRotation;
	var float ImpulseSpeed;

	structdefaultproperties
	{
		CompressedRotation=0
		ImpulseSpeed=0.0
	}
};

var transient PRI_KnockOut_TA PRI_KO;
var repnotify transient name ReplicatedStateName;
var repnotify transient byte ReplicatedStateChanged;
var repnotify transient ImpulseData ReplicatedImpulse;
var transient Vector HitImpulse;
var const float RespawnImmunityTime;
var const float StunTimeHitScale;
var const float AttackRadius;
var const float AttackYExtent;
var const float AttackZExtent;
var const float MaxAttackDegrees;
var const float DefaultAttackDamage;
var const float AttackLingerTime;
var const float GrabbingLingerTime;
var const float MinGrabTimeBeforeThrow;
var const float BlockTime;
var const float GrabThrowTime;
var const float GrabStunTime;
var const float DodgeThrowImpulse;
var const float DoubleJumpThrowImpulse;
var const float LightGrabTime;
var const float HeavyGrabTime;
var const float AttackHitKnockbackScale;
var const float MinHitImpulseSpeed;
var const float LightHitImpulseScale;
var const float HeavyHitImpulseScale;
var const float SuddenKOImpulse;
var const float SuddenKOThrowTime;
var const float LightHitPitchDegrees;
var const float HeavyHitPitchDegrees;
var const float SuddenKOHitPitchDegrees;
var const float AttackBeginDelay;
var const float HitTime;
var const float AttackStunTorqueScale;
var const float TradeStunTorqueScale;
var const float TradeStunTime;
var const float TradeStunImpulseScale;
var const float TradeStunPitchDegrees;
var const float ThrowPitchOffset;
var const Vector GrabAttachOffset;
var const float ThrowBackwardVelocityScale;
var const float TradeImpulseSpeed;
var const float TorqueStunBeginDelay;
var const float DamagePointsPerImpulseSpeed;
var const float ThrowVelocityTransferScale;
var() float GrabFixJumpVelocity;
var const export editinline Target_TA AttachedTarget;
var transient array<CarComponent_TA> AttackComponents;
var transient CarComponent_Torque_TA TorqueComponent;
var transient array<PendingHit> TakenHits;
var transient Car_KnockOut_TA PendingGrabber;
var transient CarComponent_TA UsedAttackComponent;
var transient float SuperSonicStartTime;
var const float SuperSonicTimeForHeavyAttack;
var transient float ReturnToSafezoneTime;
var transient float ThrowMashAlpha;
var array<PRI_TA> AttackerPRIs;
var float ResetAttackPRIDelay;
var const FXActor_Knockout_Attack_TA FX_AttackArchetype;
var const FXActor_Knockout_Attack_TA FX_GrabAttackArchetype;
var const FXActor_TA FX_HitAttackLightArchetype;
var const FXActor_TA FX_HitAttackHeavyArchetype;
var const FXActor_TA FX_HitBlockArchetype;
var const FXActor_TA FX_GrabHitArchetype;
var const name DemoSoundAttachmentName;
var const AkSoundCue DemoSoundOverride;
var const Stunlock_TA StunlockArchetype;
var transient Stunlock_TA Stunlock;
var const bool bDrawDebug;
var transient FXActor_Knockout_Attack_TA FX_Attack;
var transient Car_KnockOut_TA PendingCarToGrab;
var transient Car_KnockOut_TA CarPendingThrow;

defaultproperties
{
	//AttachedTarget=Target_Knockout_TA'Default__Car_KnockOut_TA.DefaultTarget'
	ResetAttackPRIDelay=1.0
	
	EngineAudio=DefaultEngineAudio
	//Loadout=ProductLoader_TA'Default__Car_KnockOut_TA.DefaultCarLoadout'
	//CarTrajectoryComponent=CarTrajectoryComponent_TA'Default__Car_KnockOut_TA.CarTrajectoryComponent0'
	//NameplateComponentCar=NameplateComponentCar_TA'Default__Car_KnockOut_TA.NameplateComponentCar0'
	begin object name=DefaultMesh
		ReplacementPrimitive=None
	end object
	// Reference: CarMeshComponent_TA'Default__Car_KnockOut_TA.DefaultMesh'
	CarMesh=DefaultMesh
	//VehicleSim=VehicleSim_TA'Default__Car_KnockOut_TA.DefaultVehicleSim'
	//PitchTekComponent=PitchTekDrawingComponent_TA'Default__Car_KnockOut_TA.DefaultPTDComponent'
	//Replay=ReplayComponent_TA'Default__Car_KnockOut_TA.ReplayComponent0'
	
	
	Mesh=DefaultMesh
	
	CylinderComponent=CollisionCylinder
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__Car_KnockOut_TA.CollisionCylinder'
	Components(0)=CollisionCylinder
//	Components(1)=GroupComponent_ORS'Default__Car_KnockOut_TA.DefaultRegistryGroup'
//	Components(2)=ReplayComponent_TA'Default__Car_KnockOut_TA.ReplayComponent0'
//	Components(3)=PitchTekDrawingComponent_TA'Default__Car_KnockOut_TA.DefaultPTDComponent'
//	Components(4)=CarTrajectoryComponent_TA'Default__Car_KnockOut_TA.CarTrajectoryComponent0'
//	Components(5)=Target_Knockout_TA'Default__Car_KnockOut_TA.DefaultTarget'
	
	CollisionComponent=CollisionCylinder
}
replication
{
	 if(bNetInitial)
		ReplicatedImpulse, ReplicatedStateChanged, 
		ReplicatedStateName, UsedAttackComponent;
}
