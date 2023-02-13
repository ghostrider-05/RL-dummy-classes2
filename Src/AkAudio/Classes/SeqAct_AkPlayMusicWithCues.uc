/*******************************************************************************
* SeqAct_AkPlayMusicWithCues generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_AkPlayMusicWithCues extends SeqAct_Latent
	forcescriptorder(true)
	hidecategories(Object);

enum EMusicSyncType
{
	MusicSyncType_EndOfEvent,
	MusicSyncType_UserCue,
	MusicSyncType_MAX
};

struct native MusicSyncEvent
{
	var string CueName;
	var EMusicSyncType CueType;

	structdefaultproperties
	{
		CueName=""
		CueType=MusicSyncType_EndOfEvent
	}
};

var() AkSoundCue SoundCue;
var array<MusicSyncEvent> MusicSyncEvents;

defaultproperties
{
	bCallHandler=false
	InputLinks(0)=(LinkDesc="Play",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	OutputLinks(0)=(Links=none,LinkDesc="Out",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
	ObjName="AkPlayMusicWithCues"
	ObjCategory="AkAudio"
}