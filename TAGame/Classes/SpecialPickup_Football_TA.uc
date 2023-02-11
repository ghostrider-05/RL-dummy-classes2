/*******************************************************************************
* SpecialPickup_Football_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialPickup_Football_TA extends SpecialPickup_TA
	notplaceable
	hidecategories(Navigation);

enum EThrowSetting
{
	ETS_Forward,
	ETS_Backward,
	ETS_Side,
	ETS_MAX
};

struct ThrowSetting
{
	var /*0x00010000-0x00000000*/ float Pitch;
	var /*0x00010000-0x00000000*/ float LinearScale;
	var /*0x00010000-0x00000000*/ float AngularScale;
	var /*0x00010000-0x00000000*/ float MinLinearForce;
	var /*0x00010000-0x00000000*/ float MaxLinearForce;
	var /*0x00010000-0x00000000*/ float MinAngularForce;
	var /*0x00010000-0x00000000*/ float MaxAngularForce;

	structdefaultproperties
	{
		Pitch=0.0
		LinearScale=0.0
		AngularScale=0.0
		MinLinearForce=0.0
		MaxLinearForce=0.0
		MinAngularForce=0.0
		MaxAngularForce=0.0
	}
};

var /*0x00010000-0x00000000*/ AkSoundCue BallHitSFX;
var /*0x00010000-0x00000000*/ AkSoundCue DeactivateSFX;
var /*0x00010000-0x00000000*/ transient float AttachTime;
var /*0x00010000-0x00000000*/ transient float DetachTime;
var /*0x00010000-0x00000000*/ array<ThrowSetting> ThrowSettings;
var /*0x00010000-0x00000000*/ Vector AttachOffset;
var /*0x00010000-0x00000000*/ float CarFumbleForce;
var /*0x00010000-0x00000000*/ float DoubleJumpUpForce;
var /*0x00010000-0x00000000*/ float DemolishUpForce;
var /*0x00010000-0x00000000*/ float MinBreakTime;
var /*0x00010000-0x00000000*/ float MinAttachTime;
var /*0x00010000-0x00000000*/ float CheckLastTouchRate;
var /*0x00010000-0x00000000*/ float OutOfBoundsZ;
var /*0x00010000-0x00000000*/ repnotify transient Ball_TA WeldedBall;
var /*0x00010000-0x00000000*/ transient float LastTouchCheckTime;
var /*0x00010000-0x00000000*/ transient Ball_TA PendingBall;
var /*0x00010000-0x00000000*/ transient Vector PendingBallDodge;

defaultproperties
{
	ThrowSettings(0)=(Pitch=19.0,LinearScale=1.30,AngularScale=1.30,MinLinearForce=22800.0,MaxLinearForce=66500.0,MinAngularForce=1000.0,MaxAngularForce=3000.0)
	ThrowSettings(1)=(Pitch=28.0,LinearScale=1.50,AngularScale=1.50,MinLinearForce=15000.0,MaxLinearForce=55000.0,MinAngularForce=1200.0,MaxAngularForce=3000.0)
	ThrowSettings(2)=(Pitch=20.0,LinearScale=1.50,AngularScale=1.50,MinLinearForce=10000.0,MaxLinearForce=70875.0,MinAngularForce=100.0,MaxAngularForce=3000.0)
	AttachOffset=(X=50.0,Y=0.0,Z=20.0)
	CarFumbleForce=18.0
	DoubleJumpUpForce=20000.0
	DemolishUpForce=30000.0
	MinAttachTime=0.20
	CheckLastTouchRate=0.50
	OutOfBoundsZ=800.0
}