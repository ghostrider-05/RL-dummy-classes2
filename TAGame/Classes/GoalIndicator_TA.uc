/*******************************************************************************
* GoalIndicator_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GoalIndicator_TA extends Actor
	notplaceable
	hidecategories(Navigation);

var export editinline transient Goal_TA Goal;
var transient PlayerController_TA PCOwner;
var transient PRI_TA PRI;
var export editinline LensFlareComponent_X LensFlareComponent;
var export editinline StaticMeshComponent StaticMeshComponent;
var StaticMesh DefenseMesh;
var StaticMesh OffenseMesh;
var MaterialInterface MaterialGoalDefense;
var MaterialInterface MaterialGoalOffense;
var array<LensFlare> LensFlareTeamList;

defaultproperties
{
	begin object name=LensFlareComponent0 class=LensFlareComponent_X
		ReplacementPrimitive=none
	end object
	// Reference: LensFlareComponent_X'Default__GoalIndicator_TA.LensFlareComponent0'
	LensFlareComponent=LensFlareComponent0
	begin object name=StaticMeshComponent0 class=StaticMeshComponent
		ReplacementPrimitive=none
	end object
	// Reference: StaticMeshComponent'Default__GoalIndicator_TA.StaticMeshComponent0'
	StaticMeshComponent=StaticMeshComponent0
	
	Components(0)=StaticMeshComponent0
	
	Components(1)=LensFlareComponent0
	CollisionType=COLLIDE_CustomDefault
	bTickIsDisabled=true
	bMovable=false
}