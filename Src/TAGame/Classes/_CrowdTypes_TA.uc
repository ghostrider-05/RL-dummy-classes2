/*******************************************************************************
* _CrowdTypes_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class _CrowdTypes_TA extends Object
	abstract;

enum ECrowdValueType
{
	CVT_Excitement,
	CVT_Tension,
	CVT_Anticipation,
	CVT_Upset,
	CVT_MAX
};

struct CrowdExcitementSound
{
	var() AkSoundCue Sound;
	var() float Value;

	structdefaultproperties
	{
		Sound=None
		Value=0.0
	}
};

struct CrowdExcitementSounds
{
	var() name Name;
	var() float Cooldown;
	var() array<CrowdExcitementSound> Sounds;
	var() ECrowdValueType CompareType;
	var transient float LastPlayed;

	structdefaultproperties
	{
		Name=None
		Cooldown=5.0
		Sounds.Empty
		CompareType=CVT_Excitement
		LastPlayed=0.0
	}
};

struct CrowdDefense
{
	var() float DefenseZoneTime;
	var() float DefenseZoneDistance;
	var() float ReplayDelay;

	structdefaultproperties
	{
		DefenseZoneTime=0.0
		DefenseZoneDistance=0.0
		ReplayDelay=0.0
	}
};

struct CrowdScoreState
{
	var() int MaxIncreaseScoreSeparation;
	var() int MaxDecreaseScoreSeparation;
	var() name StateName;

	structdefaultproperties
	{
		MaxIncreaseScoreSeparation=0
		MaxDecreaseScoreSeparation=0
		StateName=None
	}
};

struct CrowdValueState
{
	var() float Value;
	var() name StateName;

	structdefaultproperties
	{
		Value=0.0
		StateName=None
	}
};