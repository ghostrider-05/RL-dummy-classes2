/*******************************************************************************
* SeqAct_ConcatenateStrings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_ConcatenateStrings_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var() string ValueA;
var() string ValueB;
// Concatenate with a space between the values
var() bool ConcatenateWithSpace;
var string StringResult;

defaultproperties
{
	ConcatenateWithSpace=true
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="A",LinkVar=None,PropertyName=ValueA,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="B",LinkVar=None,PropertyName=ValueB,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="StringResult",LinkVar=None,PropertyName=StringResult,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Concatenate Strings"
	ObjCategory="TAGame"
}