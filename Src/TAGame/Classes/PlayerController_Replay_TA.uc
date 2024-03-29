/*******************************************************************************
* PlayerController_Replay_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PlayerController_Replay_TA extends PlayerControllerBase_TA
	config(Game)
	hidecategories(Navigation);

var() HUD SplitscreenHUDArchetype;
var transient GameEvent_TA GameEvent;

defaultproperties
{
	
	CylinderComponent=CollisionCylinder
	/**ForceFeedbackManagerClassName=""*/
	
	//Components(0)=GroupComponent_ORS'Default__PlayerController_Replay_TA.DefaultRegistryGroup'
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__PlayerController_Replay_TA.CollisionCylinder'
	Components(1)=CollisionCylinder
//	Components(2)=AudioParamsSuperSonicReplayComponent_TA'Default__PlayerController_Replay_TA.AudioParamsSuperSonicReplayComponent0'
//	Components(3)=AudioSlomoReplayComponent_TA'Default__PlayerController_Replay_TA.AudioSlomoReplayComponent0'
	
	CollisionComponent=CollisionCylinder
}