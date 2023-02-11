/*******************************************************************************
* ForceVolume_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ForceVolume_TA extends Volume
	hidecategories(Navigation,Object,Movement,Display)
	implements(ITickNotify_TA);

enum EForceDirection
{
	EFD_VolumeRotation,
	EFD_ActorVelocity,
	EFD_Custom,
	EFD_MAX
};

var native const noexport Pointer VfTable_IITickNotify_TA;
var() ForceVolume_TA.EForceDirection ForceDirection;
var() Actor.EForceMode ConstantForceMode;
var() Actor.EForceMode EnterForceMode;
var() float ConstantForce;
var() float EnterForce;
var() Actor CustomForceDirection;

defaultproperties
{
	EnterForceMode=ForceMode_Impulse
	
	BrushComponent=BrushComponent0
	begin object name=BrushComponent0 class=BrushComponent
		ReplacementPrimitive=none
		bAcceptsLights=false
		BlockZeroExtent=true
		AlwaysLoadOnClient=false
	end object
	// Reference: BrushComponent'Default__ForceVolume_TA.BrushComponent0'
	Components(0)=BrushComponent0
	
	CollisionComponent=BrushComponent0
}