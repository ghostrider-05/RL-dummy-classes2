/*******************************************************************************
* SeqAct_CompleteFTECheckpoint_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_CompleteFTECheckpoint_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var string CheckpointName;

defaultproperties
{
	bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="CheckpointName",LinkVar=None,PropertyName=CheckpointName,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Complete FTE Checkpoint"
	ObjCategory="TAGame"
}