/*******************************************************************************
* BreakOutActor_Platform_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class BreakOutActor_Platform_TA extends Actor
	placeable
	hidecategories(Navigation);

const FULL_SIZE_NEIGHBORS = 6;
const HALF_SIZE_NEIGHBORS = 4;

enum EBreakoutDamageState
{
	DamageState_Start,
	DamageState_Damaged,
	DamageState_Broken,
	DamageState_MAX
};

struct native BreakoutDamageState
{
	var byte State;
	var PRI_TA Causer;
	var Vector DamageLocation;
	var bool bDirectDamage;
	var bool bImmediate;

	structdefaultproperties
	{
		State=255
		Causer=None
		DamageLocation=(X=0.0,Y=0.0,Z=0.0)
		bDirectDamage=false
		bImmediate=false
	}
};

var() bool bHalfSize;
var() bool bPrimaryPlayerStart;
var() bool bLockedDamageState;
var() int TeamIndex;
var() int MaxDamage;
var() const export editinline StaticMeshComponent StaticMeshComponent;
var() const export editinline DynamicLightEnvironmentComponent LightEnvironment;
var() FXActor_X FXArchetype;
var() float NeighborRadius;
var() array<BreakOutActor_Platform_TA> Neighbors;
var() StaticMesh ConnectedCollisionMesh;
var() StaticMesh ConnectedCollisionMesh_HalfSize;
var() StaticMesh DisconnectedCollisionMesh;
var() StaticMesh DisconnectedCollisionMesh_HalfSize;
var export editinline transient array<export editinline StaticMeshComponent> CollisionComponents;
var float LastHitTime;
var repnotify BreakoutDamageState DamageState;
var EBreakoutDamageState DefaultDamageState;
var FXActor_X FXActor;
var transient BreakoutDamageState PreReplayState;
var const Vector HalfSizeFirstTileScale;

defaultproperties
{
	MaxDamage=2
	
	StaticMeshComponent=StaticMeshComponent0
	//LightEnvironment=DynamicLightEnvironmentComponent'Default__BreakOutActor_Platform_TA.MyLightEnvironment'
	NeighborRadius=700.0
	DamageState=(State=255,Causer=None,DamageLocation=(X=0.0,Y=0.0,Z=0.0),bDirectDamage=false,bImmediate=false)
	PreReplayState=(State=255,Causer=None,DamageLocation=(X=0.0,Y=0.0,Z=0.0),bDirectDamage=false,bImmediate=false)
	HalfSizeFirstTileScale=(X=1.0,Y=-1.0,Z=1.0)
	begin object name=StaticMeshComponent0 class=StaticMeshComponent
		ReplacementPrimitive=None
//		LightEnvironment=DynamicLightEnvironmentComponent'Default__BreakOutActor_Platform_TA.MyLightEnvironment'
		BlockRigidBody=true
		RBCollideWithChannels=(GameplayPhysics=true,EffectPhysics=true,Ball=true)
	end object
	// Reference: StaticMeshComponent'Default__BreakOutActor_Platform_TA.StaticMeshComponent0'
	Components(0)=StaticMeshComponent0
	RemoteRole=ROLE_SimulatedProxy
	CollisionType=COLLIDE_CustomDefault
	bNoDelete=true
	bTickIsDisabled=true
	bWorldGeometry=true
	bAlwaysRelevant=true
	bGameRelevant=true
	bMovable=false
	BlockRigidBody=true
	bCollideActors=true
	bCollideWorld=true
	bBlockActors=true
	
	CollisionComponent=StaticMeshComponent0
}
replication
{
	 if(bNetInitial)
		DamageState, DefaultDamageState, 
		bLockedDamageState;
}
