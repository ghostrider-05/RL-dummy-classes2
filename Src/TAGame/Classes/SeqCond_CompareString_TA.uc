/*******************************************************************************
* SeqCond_CompareString_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqCond_CompareString_TA extends SequenceCondition
	forcescriptorder(true)
	hidecategories(Object);

var() bool bIgnoreCase;
var string StringA;
var string StringB;

defaultproperties
{
	bIgnoreCase=true
	OutputLinks(0)=(LinkDesc="True",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=None,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
	OutputLinks(1)=(LinkDesc="False",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=None,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="String A",LinkVar=None,PropertyName=StringA,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="String B",LinkVar=None,PropertyName=StringB,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Compare String"
	ObjCategory="TAGame"
}