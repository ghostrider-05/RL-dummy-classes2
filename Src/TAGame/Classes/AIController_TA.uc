/*******************************************************************************
* AIController_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AIController_TA extends AIController
	native
	hidecategories(Navigation);

struct native CachedTargetData
{
	var BTTarget Target;
	var int Index;
	var AIProxyData Data;
	var float CacheTime;

	structdefaultproperties
	{
		Target=None
		Index=0
		Data=(Location=(X=0.0,Y=0.0,Z=0.0),Velocity=(X=0.0,Y=0.0,Z=0.0),Gravity=(X=0.0,Y=0.0,Z=0.0),Rotation=(Pitch=0,Yaw=0,Roll=0),Radius=0.0,Bounce=0.0,Actor=None,Vehicle=None)
		CacheTime=0.0
	}
};

struct native CachedProxyData
{
	var BTProxyType Type;
	var int Index;
	var AIProxyData Data;
	var float CacheTime;

	structdefaultproperties
	{
		Type=None
		Index=0
		Data=(Location=(X=0.0,Y=0.0,Z=0.0),Velocity=(X=0.0,Y=0.0,Z=0.0),Gravity=(X=0.0,Y=0.0,Z=0.0),Rotation=(Pitch=0,Yaw=0,Roll=0),Radius=0.0,Bounce=0.0,Actor=None,Vehicle=None)
		CacheTime=0.0
	}
};

struct native SkillRange
{
	var() float Easy;
	var() float Hard;
	var transient float Value;

	structdefaultproperties
	{
		Easy=0.0
		Hard=0.0
		Value=0.0
	}
};

struct native CachedObstaclePoly
{
	var native Pointer Poly;
	var Plane Plane;

	structdefaultproperties
	{
		Plane=(X=0.0,Y=0.0,Z=0.0,W=0.0)
	}
};

struct native CachedObstaclesData
{
	var Vector CarLocation;
	var Vector CarNavMeshLocation;
	var array<CachedObstaclePoly> Polys;

	structdefaultproperties
	{
		CarLocation=(X=0.0,Y=0.0,Z=0.0)
		CarNavMeshLocation=(X=0.0,Y=0.0,Z=0.0)
		Polys.Empty
	}
};

var transient Car_TA Car;
var transient Vehicle_TA Vehicle;
/** Targets used by the behavior tree */
var() export editinline BTComponent BT;
/** Targets used by the behavior tree */
var() BTProxyType SelfProxyType;
/** Targets used by the behavior tree */
var() BTProxyType NoneProxyType;
/** Targets used by the behavior tree */
var() BTProxyType DebugProxyType;
var() BTProxyType TeamCarsProxyType;
var() BTProxyType EnemyCarsProxyType;
var() BTProxyType PlayerControlledCarsProxyType;
var() BTProxyType OtherCarsProxyType;
var() BTProxyType BoostPillsProxyType;
var() BTProxyType SelectedProxyType;
var() BTTarget SelfTarget;
var() BTTarget NoneTarget;
var() BTTarget IteratorTarget;
var() BTTarget TeamCarsTarget;
var() BTTarget SelectedTarget;
var transient BTTarget ContextTarget;
var() BTNode DebugBTNode;
/** Locks local to this AI */
var() export editinline BTLockCollection Locks;
/** Steer accuracy given the bot's skill level */
var() SkillRange SkillSteerError;
/** Steer speed given the bot's skill level */
var() SkillRange SkillSteerSpeed;
/** Throttle speed given the bot's skill level */
var() SkillRange SkillThrottleSpeed;
var transient GameEvent_TA GameEvent;
var transient AIManager_TA AIManager;
var transient VehicleInputs Input;
var transient Vector ForwardDir;
var transient Rotator ForwardRotation;
var transient Vector GroundNormal;
var transient array<CachedProxyData> CachedProxyDatas;
var transient array<CachedTargetData> CachedTargetDatas;
var native transient Map_Mirror TargetFilterMap;
var transient array<BTNode> CachedTargetFilters;
var transient Vector DebugDriveDestination;
var native transient CachedObstaclesData CachedObstacles;
var transient array<Car_TA> TeamCars;
var transient array<Car_TA> EnemyCars;
var transient array<Car_TA> PlayerControlledCars;
var transient array<Car_TA> OtherCars;
var const transient bool bForceUpdateConditions;
var transient bool bCanUseBoost;
var transient bool bBeingReplaced;
var transient GameShare_TA GameShare;
var const transient Actor SelectedActor;
var transient float FieldScalar;
var byte ForcedTeam;

defaultproperties
{
	Locks=BTLockCollection'Default__AIController_TA.DefaultLocks'
	FieldScalar=1.0
	ForcedTeam=255
	
	bIsPlayer=true
	NavigationHandleClass=class'NavigationHandle_TA'
	Components(0)=GroupComponent_ORS'Default__AIController_TA.DefaultRegistryGroup'
}