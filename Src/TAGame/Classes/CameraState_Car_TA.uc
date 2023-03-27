/*******************************************************************************
* CameraState_Car_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraState_Car_TA extends CameraState_CarRef_TA;

struct InterpVector
{
	var() float Rate;
	var() float MaxDistance;
	var Vector Location;
	var bool bInitialized;
	var() float Rate_Old;
	var Vector Velocity;

	structdefaultproperties
	{
		Rate=0.0
		MaxDistance=0.0
		Location=(X=0.0,Y=0.0,Z=0.0)
		bInitialized=false
		Rate_Old=0.0
		Velocity=(X=0.0,Y=0.0,Z=0.0)
	}
};

var() float InterpToAirRate;
var() float InterpToGroundRate;
var() InterpVector FocusInterp;
var() InterpVector FocusOffsetInterp;
var() InterpVector DistanceInterp;
var() float GroundRotationInterpRate;
var() float GroundRotationInterpRateWall;
var() float AirVelocityInfluence;
var() float AirVelocityInfluenceMaxSpeed;
var() float DistanceSpeedScale;
var() float DistanceOffsetMin;
var() float MaxSpeedFOV;
var() float FOVInterpSpeed;
var() float SupersonicFOV;
var() float SupersonicFOVInterpSpeed;
var() float BouncyChassisScale;
var() float RollScale;
var() float GroundNormalInterpRate;
var transient float AirGroundBlend;
var transient CameraOrientation ViewOffset;
var transient bool bFirstExecution;
var transient bool bOnGround;
var transient Vector GroundNormal;
var float CameraStartDistance;
var CameraConfig_TA Config;
var transient float ProximityDistance;
var const float ProximityDetectionSpeedCap;
var const float ProximityDistanceMultiplier;
var const float ProximityDetectionMultiplier;
var const float ProximityDistanceBlendInSpeed;
var const float ProximityDistanceBlendOutSpeed;
var const class ProximityTargetClass;
var const ProfileSliderLimits ProximityDistanceLimits;

defaultproperties
{
	ProximityDetectionSpeedCap=300.0
	ProximityDistanceMultiplier=1.0
	ProximityDetectionMultiplier=3.50
	ProximityDistanceBlendInSpeed=20.0
	ProximityDistanceBlendOutSpeed=0.750
	ProximityDistanceLimits=(Min=0.0,Max=500.0,interval=50.0)
	bShowCarHUD=true
}