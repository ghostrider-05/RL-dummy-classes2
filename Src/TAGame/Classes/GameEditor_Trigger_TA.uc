/*******************************************************************************
* GameEditor_Trigger_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEditor_Trigger_TA extends GameEditor_Actor_TA
	notplaceable
	hidecategories(Navigation);

var bool bEnabled;

defaultproperties
{
	begin object name=StaticComponent0
		ReplacementPrimitive=None
	end object
	// Reference: StaticMeshComponent'Default__GameEditor_Trigger_TA.StaticComponent0'
	Mesh=StaticComponent0
	begin object name=DefaultCollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__GameEditor_Trigger_TA.DefaultCollisionCylinder'
	Components(0)=DefaultCollisionCylinder
	
	Components(1)=StaticComponent0
	
	CollisionComponent=DefaultCollisionCylinder
}