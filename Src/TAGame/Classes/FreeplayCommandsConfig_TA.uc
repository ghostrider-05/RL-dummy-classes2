/*******************************************************************************
* FreeplayCommandsConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FreeplayCommandsConfig_TA extends OnlineConfig_X;

var() float BallSpinSpeedMultiplier;
var() float BallInFrontDistance;
var() float BallOnCarDistance;
var() float BallOnCarBaseForwardOffset;
var() float BallOnCarForwardOffsetFromTurn;
var() float BallOnCarAccelerationEffect;
var() float BallOnCarMaxRightOffset;
var() float BallOnCarSlowRightOffsetPerc;
var() float BallOnCarMinUpOffsetPerc;
var() float PopBallUpZVelocity;
var() float MaxVerticalLaunchSpeedRatio;
var() float MaxVerticalLaunchSpeedRatioHoops;
var() float DefendShotLaunchSpeed;
var() float DefendShotLaunchSpeedHoops;
var() float DefendShotLaunchSpeedBreakout;
var() float DefendShotHoopsRecommendedReboundRange;
var() float DefendShotHoopsSpeedDropoffRange;
var() float DefendShotBreakoutSpeedDropoffRange;
var() float DefendShotBreakoutSpeedDropoffRangeHeight;
var() float DefendShotHoopsMinSpeedReductionAngle;
var() float DefendShotHoopsAboveNetSpeedReduction;
var() float DefendShotBreakoutMaxTileDistance;
var() float RedirectPassLaunchSpeed;
var() float RedirectPassVelocityWeight;
var() float RedirectPassVelocityZWeight;
var() float RedirectPassGoalWeight;
var() float RedirectPassMaxGoalLeading;
var() float RedirectPassAdditionalHeight;
var() float RedirectPassSpeedDropoffRange;
var() int RedirectPassIterations;
var() int DefendShotHoopsMaxSamples;
var() int DefendShotHoopsReboundDenominator;
var() AkSoundCue TeleportSucceededSFX;
var() AkSoundCue TeleportFailedSFX;
var() AkSoundCue LaunchBallSFX;

defaultproperties
{
	BallSpinSpeedMultiplier=0.50
	BallInFrontDistance=50.0
	BallOnCarDistance=10.0
	BallOnCarBaseForwardOffset=30.0
	BallOnCarForwardOffsetFromTurn=-100.0
	BallOnCarAccelerationEffect=0.050
	BallOnCarMaxRightOffset=350.0
	BallOnCarSlowRightOffsetPerc=0.50
	BallOnCarMinUpOffsetPerc=0.250
	PopBallUpZVelocity=750.0
	MaxVerticalLaunchSpeedRatio=2.0
	MaxVerticalLaunchSpeedRatioHoops=3.0
	DefendShotLaunchSpeed=2778.0
	DefendShotLaunchSpeedHoops=2000.0
	DefendShotLaunchSpeedBreakout=2500.0
	DefendShotHoopsRecommendedReboundRange=0.10
	DefendShotHoopsSpeedDropoffRange=1200.0
	DefendShotBreakoutSpeedDropoffRange=2000.0
	DefendShotBreakoutSpeedDropoffRangeHeight=750.0
	DefendShotHoopsMinSpeedReductionAngle=-0.250
	DefendShotHoopsAboveNetSpeedReduction=0.750
	DefendShotBreakoutMaxTileDistance=1800.0
	RedirectPassLaunchSpeed=2778.0
	RedirectPassVelocityWeight=0.90
	RedirectPassVelocityZWeight=0.50
	RedirectPassGoalWeight=1.0
	RedirectPassMaxGoalLeading=400.0
	RedirectPassAdditionalHeight=100.0
	RedirectPassSpeedDropoffRange=3000.0
	RedirectPassIterations=5
	DefendShotHoopsMaxSamples=10
	DefendShotHoopsReboundDenominator=4
	TeleportSucceededSFX=AkSoundCue'SFX_UI_Training.UI_Training_Teleport'
	TeleportFailedSFX=AkSoundCue'SFX_UI_Training.UI_Training_Teleport_Fail'
}