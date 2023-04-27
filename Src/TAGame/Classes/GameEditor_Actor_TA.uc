/*******************************************************************************
* GameEditor_Actor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEditor_Actor_TA extends Actor
	notplaceable
	hidecategories(Navigation)
	implements(Interface_GameEditor_TA);

var export editinline PrimitiveComponent Mesh;
var Vector RotateCameraOffset;
var float MaxRotatePitch;
var float MaxInputRotatePitch;
var bool bModifiyPitchOnEditorSetRotation;
var() FXActor_X FXActorArchetype;
var transient FXActor_X FXActor;

defaultproperties
{
	begin object name=StaticComponent0 class=StaticMeshComponent
		ReplacementPrimitive=None
	end object
	// Reference: StaticMeshComponent'Default__GameEditor_Actor_TA.StaticComponent0'
	Mesh=StaticComponent0
	RotateCameraOffset=(X=-300.0,Y=0.0,Z=25.0)
	MaxRotatePitch=90.0
	MaxInputRotatePitch=90.0
	bModifiyPitchOnEditorSetRotation=true
	begin object name=DefaultCollisionCylinder class=CylinderComponent
		CollisionHeight=50.0
		CollisionRadius=50.0
		ReplacementPrimitive=None
		CollideActors=true
		BlockActors=true
	end object
	// Reference: CylinderComponent'Default__GameEditor_Actor_TA.DefaultCollisionCylinder'
	Components(0)=DefaultCollisionCylinder
	
	Components(1)=StaticComponent0
	CollisionType=COLLIDE_CustomDefault
	bCollideActors=true
	bCollideWorld=true
	bBlockActors=true
	
	CollisionComponent=DefaultCollisionCylinder
}