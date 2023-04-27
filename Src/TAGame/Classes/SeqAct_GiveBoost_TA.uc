/*******************************************************************************
* SeqAct_GiveBoost_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_GiveBoost_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var Actor Instigator;
var() float BoostAmount;

defaultproperties
{
	BoostAmount=33.0
	bCallHandler=false
	InputLinks(0)=(LinkDesc="Give Boost Amount",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	InputLinks(1)=(LinkDesc="Give Super Boost",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Instigator",LinkVar=None,PropertyName=Instigator,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Give Boost"
	ObjCategory="TAGame"
}