/*******************************************************************************
* FXActor_BallHaunted_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FXActor_BallHaunted_TA extends FXActor_Ball_TA
	hidecategories(Navigation);

var() AkSoundCue SwitchTeamSFX;
var() AkSoundCue IdleSFX;
var() AkSoundCue BeamBreakSFX;
var() AkSoundCue BallEnterTrapSFX;
var() AkSoundCue BallExitTrapSFX;
var() AkSoundCue BallCountdownSFX;
var() array<FXActorEvent_X> DamageEvents;
var() ParticleSystem PulsePSArchetype;
var() name PulsePSParam;
var() float BallPulseTimeModifier;
var() float BrokenBeamResetTime;
var() float MaxTimePercentageToPerformPulse;
var transient Ball_Haunted_TA BallHaunted;
var transient int DamageIndex;
var transient bool bBallExploded;
var transient bool bBeamIsBroken;
var transient float CurrentBrokenTime;
var transient float NextPulseTime;
var export editinline transient ParticleSystemComponent PulsePSC;

defaultproperties
{
	BallPulseTimeModifier=3.0
	BrokenBeamResetTime=1.0
	MaxTimePercentageToPerformPulse=0.950
	Parameters=ParameterDispenser_X'Default__FXActor_BallHaunted_TA.DefaultParameters'
}