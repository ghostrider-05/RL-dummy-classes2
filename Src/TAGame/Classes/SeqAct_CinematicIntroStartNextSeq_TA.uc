/*******************************************************************************
* SeqAct_CinematicIntroStartNextSeq_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_CinematicIntroStartNextSeq_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var int CurrentSequenceIndex;

defaultproperties
{
	bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="SequenceIndex",LinkVar=None,PropertyName=CurrentSequenceIndex,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Cinematic Intro Start Next Sequence"
	ObjCategory="TAGame"
}