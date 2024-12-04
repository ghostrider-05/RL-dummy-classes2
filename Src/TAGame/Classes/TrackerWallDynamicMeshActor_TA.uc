/*******************************************************************************
* TrackerWallDynamicMeshActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class TrackerWallDynamicMeshActor_TA extends DynamicMeshActor_TA
	placeable
	hidecategories(Navigation);

defaultproperties
{
	begin object name=TrackerWallMesh0 class=StaticMeshComponent
		StaticMesh=StaticMesh'Pong_Assets.Meshes.TER_MiddleWall_Tracker'
		ReplacementPrimitive=None
		BlockActors=false
		bNotifyRigidBodyCollision=true
	end object
	// Reference: StaticMeshComponent'Default__TrackerWallDynamicMeshActor_TA.TrackerWallMesh0'
	StaticMeshComponent=TrackerWallMesh0
	begin object name=StaticMeshComponent0 class=StaticMeshComponent
		ReplacementPrimitive=None
	end object
	// Reference: StaticMeshComponent'Default__TrackerWallDynamicMeshActor_TA.StaticMeshComponent0'
	Components(0)=StaticMeshComponent0
	
	Components(1)=TrackerWallMesh0
	
	Components(2)=TrackerWallBorder
	
	Components(3)=TrackerWallGlow
	RemoteRole=ROLE_SimulatedProxy
	bNoDelete=false
	bAlwaysRelevant=true
	
	CollisionComponent=StaticMeshComponent0
}