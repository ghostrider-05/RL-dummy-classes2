/*******************************************************************************
* Pylon_Soccar_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Pylon_Soccar_TA extends Pylon
	hidecategories(Navigation,Lighting,LightColor,Force,Lighting,LightColor,Force);

// Direction the field is facing
var() Rotator FieldOrientation;
// Size of the field (in FieldOriention space)
var() Vector FieldSize;
// Half size of the field (in FieldOriention space)
var() Vector FieldExtent;
// Floating center of field
var() Vector FieldCenter;
// Goals contained in this field
var() export editinline array<export editinline Goal_TA> Goals;
// PlayerStarts contained in this field
var() array<PlayerStart> SpawnPoints;
var const float GroundZ;
var() Vector PodiumSpotlightOverride;
var() float PodiumSpotlightZ;
var() bool bRandomBallSpawnPoint;

defaultproperties
{
	bRandomBallSpawnPoint=true
	bUseRecast=true
	
	CylinderComponent=CollisionCylinder
	Components(0)=None
	Components(1)=None
	Components(2)=None
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__Pylon_Soccar_TA.CollisionCylinder'
	Components(3)=CollisionCylinder
	Components(4)=None
	Components(5)=None
	Components(6)=None
	Components(7)=None
	
	CollisionComponent=CollisionCylinder
}