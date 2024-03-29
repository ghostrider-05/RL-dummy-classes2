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
var export editinline transient StaticMeshComponent SMC;
var transient Ball_TA WeldedBall;
var transient float LastTouchCheckTime;
var transient bool bBallWelded;

defaultproperties
{
	CheckLastTouchRate=0.50
}
replication
{
	 if(bNetInitial)
		bBallWelded;
}
