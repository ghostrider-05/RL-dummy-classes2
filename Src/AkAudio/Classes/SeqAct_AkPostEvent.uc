/*******************************************************************************
* SeqAct_AkPostEvent generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_AkPostEvent extends SeqAct_Latent
	forcescriptorder(true)
	hidecategories(Object);

var const transient array<int> PlayingIDs;
var() AkSoundCue SoundCue;
var() bool bHasSubtitles;

defaultproperties
{
	bHasSubtitles=true
	InputLinks(0)=(LinkDesc="Post",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	InputLinks(1)=(LinkDesc="Stop",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="AkPostEvent"
	ObjCategory="AkAudio"
}