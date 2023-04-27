/*******************************************************************************
* ArenaSoundSettings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ArenaSoundSettings_TA extends Object;

struct native ArenaStatSound
{
	var() editconst StatEvent_TA StatEvent;
	var() AkSoundCue Sound;

	structdefaultproperties
	{
		StatEvent=None
		Sound=None
	}
};

var() AkSoundCue InGameMusicCue;
var() bool bDynamicMusic;
var(VO) editoronly bool UpdateStatSounds;
var() AkSoundCue GoalScoreSound;
var(Music) AkSoundCue GameStartStinger;
var(Music) AkSoundCue GoalScoreStinger;
var(Music) AkSoundCue EpicSaveStinger;
var(Music) AkSoundCue OvertimeStinger;
var(Music) AkSoundCue WinStinger;
var(Music) AkSoundCue LoseStinger;
var(Music) AkSoundCue ForfeitStinger;
var(Music) float GoalScoreStingerDelay;
var(VO) AkSoundCue Win;
var(VO) AkSoundCue Lose;
var(VO) AkSoundCue CountdownStart;
var(VO) AkSoundCue CountdownEnd;
var(VO) AkSoundCue OneMinRemaining;
var(VO) AkSoundCue ThirtySecondsRemaining;
var(VO) AkSoundCue OvertimeStart;
var(VO) editfixedsize array<ArenaStatSound> StatSounds;
var(VO) array<AkSoundCue> CountDownSoundList;
var(VO) array<AkSoundCue> RoundCountDownSoundList;
var(ReverbEnvironments) AkEnvironment GoalStingerEnvironment;
var(ReverbEnvironments) AkEnvironment LevelDefaultEnvironment;
var(ReverbEnvironments) name ArenaReverbShareset;

defaultproperties
{
	GoalStingerEnvironment=(Id="",Priority=0,WetValue=0.0,DryValue=1.0,HashedEnvID=(dummyint=0))
	LevelDefaultEnvironment=(Id="",Priority=0,WetValue=0.0,DryValue=1.0,HashedEnvID=(dummyint=0))
}