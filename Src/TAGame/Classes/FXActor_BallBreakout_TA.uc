/*******************************************************************************
* FXActor_BallBreakout_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FXActor_BallBreakout_TA extends FXActor_Ball_TA
	hidecategories(Navigation);

var() AkSoundCue MaxChargeSFX;
var() AkSoundCue SwitchTeamSFX;
var() AkSoundCue IdleSFX;
var() AkSoundCue ResetSFX;
var() array<AkSoundCue> ChargeSFX;
var() array<AkSoundCue> DamageSFX;
var() array<FXActorEvent_X> DamageEvents;
var transient Ball_Breakout_TA BallBreakout;
var int LastDamage;
var float LastNoDamageHit;

defaultproperties
{
	Parameters=ParameterDispenser_X'Default__FXActor_BallBreakout_TA.DefaultParameters'
}