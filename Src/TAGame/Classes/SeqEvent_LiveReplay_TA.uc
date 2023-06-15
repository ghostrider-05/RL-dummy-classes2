/*******************************************************************************
* SeqEvent_LiveReplay_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqEvent_LiveReplay_TA extends SequenceEvent
	forcescriptorder(true)
	hidecategories(Object);

defaultproperties
{
	// The maximum number of times this event can be triggered, 0 for always
	MaxTriggerCount=0
	bPlayerOnly=false
	OutputLinks(0)=(LinkDesc="Live Replay Started",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=None,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
	ObjName="Live Replay Start"
	ObjCategory="TAGame"
}