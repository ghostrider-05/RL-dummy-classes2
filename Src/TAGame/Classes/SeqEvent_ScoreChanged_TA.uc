/*******************************************************************************
* SeqEvent_ScoreChanged_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqEvent_ScoreChanged_TA extends SequenceEvent
	forcescriptorder(true)
	hidecategories(Object);

var int BlueScore;
var int RedScore;

defaultproperties
{
	MaxTriggerCount=0
	bPlayerOnly=false
	bAutoActivateOutputLinks=true
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Blue Score",LinkVar=None,PropertyName=BlueScore,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Red Score",LinkVar=None,PropertyName=RedScore,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Score Changed"
	ObjCategory="TAGame"
}