/*******************************************************************************
* SeqAct_SetMatInstParam_Vector generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_SetMatInstParam_Vector extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var() name ParamName;
var() MaterialInstanceActor MatInstActor;
var() Vector VectorValue;

defaultproperties
{
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Vector',LinkDesc="VectorValue",LinkVar=None,PropertyName=VectorValue,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="MatInstActor",LinkVar=None,PropertyName=MatInstActor,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Set VectorParam"
	ObjCategory="TAGame"
}