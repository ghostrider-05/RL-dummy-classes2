/*******************************************************************************
* SeqAct_TriggerFXActor_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_TriggerFXActor_X extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var() FXActorEvent_X Event;
var() Actor AttachTo;

defaultproperties
{
	InputLinks(0)=(LinkDesc="Push",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	InputLinks(1)=(LinkDesc="Pop",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	InputLinks(2)=(LinkDesc="Toggle",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target",LinkVar=None,PropertyName=Targets,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="AttachTo",LinkVar=None,PropertyName=AttachTo,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Trigger FXActor"
	ObjCategory="ProjectX"
}