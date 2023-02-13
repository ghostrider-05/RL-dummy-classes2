/*******************************************************************************
* ImpactEffectsComponent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ImpactEffectsComponent_TA extends ActorComponent_X;

struct native CollisionEffectData
{
	var PhysicalMaterial PhysMat;
	var PhysicalMaterialProperty_TA PhysMatProp;
	var EffectsMapping ImpactEffects;
	var Vector HitLocation;
	var Vector HitNormal;
	var Vector Momentum;
	var float ImpactMomentum;
	var float SlideMomentum;
	var int PhysicsFrame;
	var Actor HitActor;

	structdefaultproperties
	{
		PhysMat=none
		PhysMatProp=none
		ImpactEffects=(PhysicalMaterial=none,Particle=none)
		HitLocation=(X=0.0,Y=0.0,Z=0.0)
		HitNormal=(X=0.0,Y=0.0,Z=0.0)
		Momentum=(X=0.0,Y=0.0,Z=0.0)
		ImpactMomentum=0.0
		SlideMomentum=0.0
		PhysicsFrame=0
		HitActor=none
	}
};

var() int SoundPriority;
var() EffectsMap_X ImpactEffectsMap;
var() AkSoundCue AkImpactSound;
var() AkSoundCue AkSlideSound;
var() float AkSlideSoundDelay;
var() float AkSlideMomentumMin;
var() name AkImpactTypeKey;
var() name AkImpactIntensityKey;
var() float MinImpactMomentum;
var() float MinImpactDelay;
var() CameraShake ImpactCameraShake;
var() ForceFeedbackWaveform ImpactForceFeedback;
var() InterpCurveFloat ShakeScaleCurve;
var transient float LastWorldImpactTime;
var transient float LastActorImpactTime;
var transient float SlideTime;
var export editinline transient ParticleSystemComponent SlideParticleComponent;
var export editinline transient AkPlaySoundComponent SlideAudioComponent;
var export editinline transient ShakeComponent_X ShakeComponent;
var transient CollisionEffectData LastCollisionEffectData;
var transient CollisionEffectData SlideCollisionEffectData;
var transient PhysicalMaterialProperty_TA SlidePhysMatProp;
var() ArenaReflectionsManager_TA SlapbackManager;

defaultproperties
{
	AkImpactTypeKey=MaterialType
	AkImpactIntensityKey=ImpactIntensity
	MinImpactMomentum=1.0
	MinImpactDelay=0.150
}