/*******************************************************************************
* EngineAudioProfile_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EngineAudioProfile_TA extends EngineAudioProfileBase_TA
	collapsecategories
	hidecategories(Object);

struct native AudioMinMax
{
	var() float Min;
	var() float RandRange;

	structdefaultproperties
	{
		Min=0.0
		RandRange=0.0
	}
};

struct native AudioGear
{
	var() AudioMinMax RPMShiftDownRange;
	var() AudioMinMax RPMShiftUpRange;

	structdefaultproperties
	{
		RPMShiftDownRange=(Min=0.0,RandRange=0.0)
		RPMShiftUpRange=(Min=0.0,RandRange=0.0)
	}
};

var() array<AudioGear> Gears;
var() float GearSwitchTime;
var() float RPMAccelStart;
var() float RPMAccelEnd;
var() float RPMAccelClutched;
var() float RPMDecelClutched;
var() float RPMMaxClutched;
var() float RPMAccelFactor;
var() float RPMDecelFactor;
var() float RPMAccelBoostStart;
var() float RPMAccelBoostEnd;
var() float RPMShiftUpBoost;
var() float RPMMaxLoad;
var() float EngineLoadSmoothFactor;
var() float AirMaxThrottleTime;
var() float RevLimitRPM;
var() float RevLimitRPMDecel;

defaultproperties
{
	Gears(0)=(RPMShiftDownRange=(Min=1000.0,RandRange=250.0),RPMShiftUpRange=(Min=7000.0,RandRange=250.0))
	Gears(1)=(RPMShiftDownRange=(Min=4000.0,RandRange=250.0),RPMShiftUpRange=(Min=7000.0,RandRange=250.0))
	Gears(2)=(RPMShiftDownRange=(Min=5000.0,RandRange=500.0),RPMShiftUpRange=(Min=7500.0,RandRange=500.0))
	Gears(3)=(RPMShiftDownRange=(Min=5000.0,RandRange=500.0),RPMShiftUpRange=(Min=7500.0,RandRange=500.0))
	GearSwitchTime=0.50
	RPMAccelStart=2000.0
	RPMAccelEnd=100.0
	RPMAccelClutched=5500.0
	RPMDecelClutched=1000.0
	RPMMaxClutched=8000.0
	RPMAccelFactor=35.0
	RPMDecelFactor=1.0
	RPMAccelBoostStart=6000.0
	RPMAccelBoostEnd=500.0
	RPMShiftUpBoost=1500.0
	RPMMaxLoad=2000.0
	EngineLoadSmoothFactor=2.0
	AirMaxThrottleTime=1.0
	RevLimitRPM=250.0
	RevLimitRPMDecel=5000.0
}