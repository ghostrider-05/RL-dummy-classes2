/*******************************************************************************
* SeqAct_TermPhys_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_TermPhys_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var Actor RBObj;

defaultproperties
{
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="RB Actor",LinkVar=None,PropertyName=RBObj,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Terminate RB Physics"
	ObjCategory="TAGame"
}