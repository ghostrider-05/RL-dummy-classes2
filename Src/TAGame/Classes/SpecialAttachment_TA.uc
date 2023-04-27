/*******************************************************************************
* SpecialAttachment_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialAttachment_TA extends RBActor_TA
	config(Game)
	hidecategories(Navigation);

var() Vector Offset;
var() export editinline StaticMeshComponent StaticMesh;
var() float BallHitMultiplier;
var() float CarHitMultiplier;
var() float CarHitVerticalMultiplier;
var() float CarHitTorque;
var() bool bUseCarsBump;
var() bool bDemolishOnHit;
var() bool bDemolishTeam;
var transient Car_TA AttachedCar;

defaultproperties
{
	
	StaticMesh=DefaultMesh
	Replay=ReplayComponent_TA'Default__SpecialAttachment_TA.ReplayComponent0'
	
	begin object name=CollisionCylinder
		ReplacementPrimitive=None
	end object
	// Reference: CylinderComponent'Default__SpecialAttachment_TA.CollisionCylinder'
	CylinderComponent=CollisionCylinder
	Components(0)=None
	
	Components(1)=CollisionCylinder
	Components(2)=None
	Components(3)=GroupComponent_ORS'Default__SpecialAttachment_TA.DefaultRegistryGroup'
	Components(4)=ReplayComponent_TA'Default__SpecialAttachment_TA.ReplayComponent0'
	begin object name=DefaultMesh class=StaticMeshComponent
		ReplacementPrimitive=None
		RBChannel=RBCC_Vehicle
		BlockRigidBody=true
		bNotifyRigidBodyCollision=true
		RBCollideWithChannels=(Vehicle=true,GameplayPhysics=true,EffectPhysics=true,Ball=true,BallBlocker=true)
		ScriptRigidBodyCollisionThreshold=0.000010
	end object
	// Reference: StaticMeshComponent'Default__SpecialAttachment_TA.DefaultMesh'
	Components(5)=DefaultMesh
	
	CollisionComponent=DefaultMesh
}
replication
{
	 if(bNetInitial)
		AttachedCar;
}