/*******************************************************************************
* Scout_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Scout_TA extends Scout
	transient
	config(Game)
	hidecategories(Navigation);

defaultproperties
{
	PathSizes(0)=(Desc=Car,Radius=64.0,Height=64.0,CrouchHeight=0.0,PathColor=0)
	NavMeshGen_StepSize=20.0
	NavMeshGen_EntityHalfHeight=32.0
	NavMeshGen_StartingHeightOffset=32.0
	NavMeshGen_MaxDropHeight=400.0
	NavMeshGen_MaxPolyHeight=180.0
	NavMeshGen_MaxGroundCheckSize=20.0
	
	WalkableFloorZ=0.7070
	
	CylinderComponent=CollisionCylinder
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__Scout_TA.CollisionCylinder'
	Components(0)=CollisionCylinder
//	Components(1)=GroupComponent_ORS'Default__Scout_TA.DefaultRegistryGroup'
	
	CollisionComponent=CollisionCylinder
}