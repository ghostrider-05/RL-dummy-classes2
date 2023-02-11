/*******************************************************************************
* AkRevPhysicsSimulation generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AkRevPhysicsSimulation extends Object;

struct native AkRevSimPhysicsControls
{
	var() float Weight;
	var() float EngineTorque;
	var() float BreakingHorsePower;
	var() array<float> GearRatios;

	structdefaultproperties
	{
		Weight=900.0
		EngineTorque=2500.0
		BreakingHorsePower=6000.0
		GearRatios(0)=3.50
		GearRatios(1)=2.0
		GearRatios(2)=1.40
		GearRatios(3)=1.0
		GearRatios(4)=0.70
	}
};

struct native AkRevSimFrame
{
	var float RPM;
	var int Gear;
	var int RevGear;
	var float Velocity;

	structdefaultproperties
	{
		RPM=0.0
		Gear=0
		RevGear=0
		Velocity=0.0
	}
};

struct native AkRevSimUpdateParams
{
	var float Throttle;
	var float Brake;
	var float EngineFrictionScale;
	var float GroundFrictionScale;
	var float ClutchedGearRatio;
	var bool bEnableUpShifting;
	var AkRevSimPhysicsControls Controls;
	var AkRevSimFrame frame;

	structdefaultproperties
	{
		Throttle=0.0
		Brake=0.0
		EngineFrictionScale=1.0
		GroundFrictionScale=1.0
		ClutchedGearRatio=0.0
		bEnableUpShifting=true
		Controls=(Weight=900.0,EngineTorque=2500.0,BreakingHorsePower=6000.0,GearRatios=(3.50,2.0,1.40,1.0,0.70))
		frame=(RPM=0.0,Gear=0,RevGear=0,Velocity=0.0)
	}
};

var() float EngineGearRatio;
var() float EngineFriction;
var() float GroundFriction;
var() float WindResistancePerVelocity;
var() float UpShiftingRPM;
var() float DownShiftRPM;
var() float InfiniteGearRatioDecreaseAmount;
var() float ThrottleInterpolationTime;
var transient float EngineTorque;
var transient float BrakingForce;
var transient float WindResistance;
var transient float FrictionResistance;
var transient float EngineResistance;
var transient float NetForce;

defaultproperties
{
	EngineGearRatio=50.0
	EngineFriction=0.660
	GroundFriction=1.0
	WindResistancePerVelocity=0.0150
	UpShiftingRPM=0.970
	DownShiftRPM=0.940
	InfiniteGearRatioDecreaseAmount=0.90
	ThrottleInterpolationTime=0.050
}