/*******************************************************************************
* Ball_Breakout_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Ball_Breakout_TA extends Ball_TA
	config(Game)
	hidecategories(Navigation);

struct native BreakoutDamage
{
	var float Time;
	var int Damage;

	structdefaultproperties
	{
		Time=0.0
		Damage=0
	}
};

var() array<BreakoutDamage> DamageAtTime;
var() array<int> DamageForceLevels;
var bool bClearTeamOnDamage;
var bool bCanDamageOwnTeam;
var float MinDamageVelocity;
var float MinDamageTime;
var int MinImpactSpeedForCharge;
var float DoubleTapTime;
var float ForceAccumDecayPerSecond;
var float ForceAccumMax;
var transient float ForceAccumRecent;
var repnotify byte LastTeamTouch;
var Car_TA LastCarTouch;
var int LastDamage;
var float LastDamageTime;
var repnotify int DamageIndex;
var transient float AbsorbedForce;
var repnotify AppliedBreakoutDamage AppliedDamage;

defaultproperties
{
	MinDamageVelocity=250.0
	MinDamageTime=0.20
	DoubleTapTime=0.10
	LastTeamTouch=255
	LastDamageTime=-1.0
	
	StaticMesh=DefaultMesh
	BallCamTarget=BallCamTarget_TA'Default__Ball_Breakout_TA.DefaultBallCamTarget'
	PitchTekComponent=PitchTekDrawingComponent_TA'Default__Ball_Breakout_TA.DefaultPTDComponent'
	Replay=ReplayComponent_TA'Default__Ball_Breakout_TA.ReplayComponent0'
	
	begin object name=CollisionCylinder
		ReplacementPrimitive=none
	end object
	// Reference: CylinderComponent'Default__Ball_Breakout_TA.CollisionCylinder'
	CylinderComponent=CollisionCylinder
	Components(0)=none
	
	Components(1)=CollisionCylinder
	Components(2)=none
	Components(3)=GroupComponent_ORS'Default__Ball_Breakout_TA.DefaultRegistryGroup'
	Components(4)=ReplayComponent_TA'Default__Ball_Breakout_TA.ReplayComponent0'
	begin object name=DefaultMesh
		ReplacementPrimitive=none
	end object
	// Reference: StaticMeshComponent'Default__Ball_Breakout_TA.DefaultMesh'
	Components(5)=DefaultMesh
	Components(6)=PitchTekDrawingComponent_TA'Default__Ball_Breakout_TA.DefaultPTDComponent'
	
	CollisionComponent=DefaultMesh
}