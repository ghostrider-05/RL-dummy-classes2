/*******************************************************************************
* PlayerController_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PlayerController_X extends PlayerController
	config(Game)
	hidecategories(Navigation);

var() Camera CameraArchetype;
var() HUD HUDArchetype;
var transient Pawn OldPawnReference;
var transient Actor LockedDebugActor;
var transient bool bPausedForExternalUI;
var transient NetConnection NetConnection;

defaultproperties
{
	CheatClass=class'CheatManager_X'
	InputClass=class'PlayerInput_X'
	
	CylinderComponent=CollisionCylinder
	
	Components(0)=GroupComponent_ORS'Default__PlayerController_X.DefaultRegistryGroup'
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__PlayerController_X.CollisionCylinder'
	Components(1)=CollisionCylinder
	
	CollisionComponent=CollisionCylinder
}