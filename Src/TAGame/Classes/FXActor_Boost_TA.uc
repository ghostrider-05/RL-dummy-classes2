/*******************************************************************************
* FXActor_Boost_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FXActor_Boost_TA extends FXActor_TA
	hidecategories(Navigation);

enum EmitterSocketBehavior
{
	ESB_Default,
	ESB_SingleEmitterAveragePosition,
	ESB_MAX
};

struct native ParticleBodyParameterSet
{
	var() name AttachmentName;
	var() array<ParticleSysParam> Parameters;

	structdefaultproperties
	{
		AttachmentName=None
		Parameters.Empty
	}
};

struct native ParticleParameterSet
{
	var() array<ParticleSysParam> Parameters;
	var() array<ParticleSysParam> DrivingParameters;

	structdefaultproperties
	{
		Parameters.Empty
		DrivingParameters.Empty
	}
};

struct native BoostMeshMaterialOverride
{
	var() MaterialInterface Material;
	var() array<int> Index;

	structdefaultproperties
	{
		Material=None
		Index.Empty
	}
};

struct native PreviewParticleOverride
{
	var() ParticleSystem Template;
	var() name FXAttachmentName;

	structdefaultproperties
	{
		Template=None
		FXAttachmentName=None
	}
};

var array<ParticleParameterSet> ParametersPerExtraBoostSockets;
var() array<ParticleBodyParameterSet> BodyParticleParameters;
var() AkSoundCue DryFireSound;
var() LinearColor CarBoostGlowColor;
var() array<AnimatedMaterialMesh> BoostMeshMaterialParams;
var() array<BoostMeshMaterialOverride> BoostMeshMaterialOverrides;
var() BoostMesh_TA BoostMeshArchetype;
var transient BoostMesh_TA BoostMesh;
var() RandomRange BoostMeshFadeInTime;
var() RandomRange BoostMeshFadeOutTime;
var() export editinline array<export editinline ParticleSystemComponent> MultipleBoostsOverride;
var() EmitterSocketBehavior BoostEmitterSocketBehavior;
var const array<PreviewParticleOverride> PreviewParticleOverrides;
var transient bool bWasBoosting;
var transient bool bWasInputBoosting;
var transient float MaxBoostMeshMaterialTime;
var transient Vehicle_TA Vehicle;
var transient CarPreviewActor_TA CarPreview;
var export editinline transient CarMeshComponentBase_TA CarMesh;

defaultproperties
{
	CarBoostGlowColor=(R=0.0,G=0.0,B=0.0,A=1.0)
	BoostMeshFadeInTime=(Min=0.0,Max=1.0)
	BoostMeshFadeOutTime=(Min=1.0,Max=2.0)
	bRenderInactive=true
	Parameters=ParameterDispenser_X'Default__FXActor_Boost_TA.DefaultParameters'
}