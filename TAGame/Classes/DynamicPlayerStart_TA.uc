/*******************************************************************************
* DynamicPlayerStart_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class DynamicPlayerStart_TA extends PlayerStart_TA
	hidecategories(Navigation,Lighting,LightColor,Force,Collision);

defaultproperties
{
	
	CylinderComponent=CollisionCylinder
	Components(0)=none
	Components(1)=none
	Components(2)=none
	begin object name=CollisionCylinder class=CylinderComponent
		ReplacementPrimitive=none
	end object
	// Reference: CylinderComponent'Default__DynamicPlayerStart_TA.CollisionCylinder'
	Components(3)=CollisionCylinder
	Components(4)=none
	bStatic=false
	bNoDelete=false
	
	CollisionComponent=CollisionCylinder
}