/*******************************************************************************
* CarThumbnailActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarThumbnailActor_TA extends Actor
	placeable
	hidecategories(Navigation);

var() export editinline CarMeshComponent_TA Mesh;

defaultproperties
{
	begin object name=DefaultCarMesh class=CarMeshComponent_TA
		ReplacementPrimitive=None
		LightingChannels=(BSP=false,Static=false)
	end object
	// Reference: CarMeshComponent_TA'Default__CarThumbnailActor_TA.DefaultCarMesh'
	Mesh=DefaultCarMesh
	
	Components(0)=DefaultCarMesh
}