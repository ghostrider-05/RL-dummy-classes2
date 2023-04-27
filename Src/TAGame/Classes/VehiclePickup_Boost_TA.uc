/*******************************************************************************
* VehiclePickup_Boost_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class VehiclePickup_Boost_TA extends VehiclePickup_TA
	placeable
	hidecategories(Navigation);

enum EBoostType
{
	BoostType_Unknown,
	BoostType_Pill,
	BoostType_Pad,
	BoostType_MAX
};

var() float BoostAmount;
var() AkSoundCue LocalPickupSound;
var() EBoostType BoostType;

defaultproperties
{
	
	CylinderComponent=DefaultCollisionCylinder
	begin object name=DefaultCollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__VehiclePickup_Boost_TA.DefaultCollisionCylinder'
	Components(0)=DefaultCollisionCylinder
	Components(1)=None
	
	CollisionComponent=DefaultCollisionCylinder
}