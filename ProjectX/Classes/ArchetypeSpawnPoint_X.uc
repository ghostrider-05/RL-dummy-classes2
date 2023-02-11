/*******************************************************************************
* ArchetypeSpawnPoint_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ArchetypeSpawnPoint_X extends Actor
	native
	placeable
	hidecategories(Navigation)
	implements(Interface_NavMeshPathObject);

var string Invalid;
var() /*0x00000800-0x00000000*/ const string ArchetypePath;
var() bool bSeedNavMesh;
var() bool bSpawnOnLevelStart;
var() bool bOnlyAllowOneInstance;
var() Actor ActorArchetype;
var export editinline SpriteComponent PlacementSprite;
var export editinline SkeletalMeshComponent ArchetypeSkeletalMesh;
var export editinline StaticMeshComponent ArchetypeStaticMesh;
var transient array<Actor> SpawnedActors;
var transient Actor SpawnedActor;

defaultproperties
{
	bSpawnOnLevelStart=true
	Components(0)=none
	Components(1)=DynamicLightEnvironmentComponent'Default__ArchetypeSpawnPoint_X.MyLightEnvironment'
	Components(2)=none
	Components(3)=none
	Components(4)=none
	bStatic=true
	bHidden=true
	bNoDelete=true
	bMovable=false
	bForceAllowKismetModification=true
	SupportedEvents(0)=class'SeqEvent_Spawned_X'
}