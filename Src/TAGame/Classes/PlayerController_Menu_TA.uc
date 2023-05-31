/*******************************************************************************
* PlayerController_Menu_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PlayerController_Menu_TA extends PlayerControllerBase_TA
	config(Game)
	hidecategories(Navigation);

var() array<PlayerInputSequence_TA> InputSequences;
var transient bool bExecutedKonamiCode;

defaultproperties
{
	InputClass=class'PlayerInput_Menu_TA'
	
	CylinderComponent=CollisionCylinder
	
	//Components(0)=GroupComponent_ORS'Default__PlayerController_Menu_TA.DefaultRegistryGroup'
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__PlayerController_Menu_TA.CollisionCylinder'
	Components(1)=CollisionCylinder
	
	CollisionComponent=CollisionCylinder
}