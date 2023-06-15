/*******************************************************************************
* SeqEvent_Spawned_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqEvent_Spawned_X extends SequenceEvent
	forcescriptorder(true)
	hidecategories(Object);

var transient Actor Spawned;

defaultproperties
{
	// The maximum number of times this event can be triggered, 0 for always
	MaxTriggerCount=0
	bPlayerOnly=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Instigator",LinkVar=None,PropertyName=None,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Spawned",LinkVar=None,PropertyName=Spawned,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Spawned"
	ObjCategory="ProjectX"
}