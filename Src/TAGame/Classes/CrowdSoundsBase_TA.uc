/*******************************************************************************
* CrowdSoundsBase_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CrowdSoundsBase_TA extends Object;

var() AkSoundCue Sound;
var() CrowdExcitementSounds GameStart;
var() CrowdExcitementSounds RoundStart;
var() array<CrowdExcitementSounds> MatchEndCountDown;
var() AkSoundCue LowEnergyChant;
var() AkSoundCue OvertimeStart;
var() AkSoundCue Win;
var() AkSoundCue Lose;
var() AkSoundCue Forfeit;
var() AkSoundCue MatchEndedEncore;
var() float MatchEndedEncoreDelay;

defaultproperties
{
	GameStart=(Name=GameStart,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	RoundStart=(Name=RoundStart,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(0)=(Name=Second1,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(1)=(Name=Second2,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(2)=(Name=Second3,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(3)=(Name=Second4,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(4)=(Name=Second5,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(5)=(Name=Second6,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(6)=(Name=Second7,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(7)=(Name=Second8,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(8)=(Name=Second9,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
	MatchEndCountDown(9)=(Name=Second10,Cooldown=5.0,Sounds=None,CompareType=CVT_Excitement,LastPlayed=0.0)
}