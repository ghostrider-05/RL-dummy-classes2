/*******************************************************************************
* SpecialPickup_Rugby_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialPickup_Rugby_TA extends SpecialPickup_TA
	notplaceable
	hidecategories(Navigation);

var() StaticMesh Mesh;
var() AkSoundCue BallHitSFX;
var() AkSoundCue DeactivateSFX;
var transient float AttachTime;
var() float MinDetachTime;
var() float MinBreakTime;
var() float MinBreakForce;
var() float CheckLastTouchRate;
var() float KickOffActivationDelay;
var() float BallReleaseForce;
var() float BallReleaseLift;
var() bool bUseForwardReleaseDirection;
var transient bool bBallWelded;
var() MaterialInstanceConstant MaterialInstanceOverride;
var() LinearColor Team0Color;
var() LinearColor Team1Color;
var() const name LightColorName;
var() AkSoundCue InstantDemoSFX;
var() AkSoundCue DodgeSFX;
var export editinline transient StaticMeshComponent SMC;
var transient Ball_TA WeldedBall;
var transient float LastTouchCheckTime;

defaultproperties
{
	CheckLastTouchRate=0.50
	Team0Color=(R=0.0,G=0.0,B=0.0,A=1.0)
	Team1Color=(R=0.0,G=0.0,B=0.0,A=1.0)
	LightColorName=LightColor
}
replication
{
	 if(bNetInitial)
		bBallWelded;
}
