/*******************************************************************************
* SeqEvent_GameEventStateChanged_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqEvent_GameEventStateChanged_TA extends SequenceEvent
	forcescriptorder(true)
	hidecategories(Object);

/**
Names:
- WaitingForPlayers
- Countdown
- Active
- PostGoalScored
- ReplayPlayback
- PrePodiumSpotligh
- PodiumSpotlight
- Finished
*/
var string StateName;

defaultproperties
{
	// The maximum number of times this event can be triggered, 0 for always
	MaxTriggerCount=0
	bPlayerOnly=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="State Name",LinkVar=None,PropertyName=StateName,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="GameEvent State Changed"
	ObjCategory="TAGame"
}