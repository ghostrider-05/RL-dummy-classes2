/*******************************************************************************
* SeqAct_DisableForceInFXActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_DisableForceInFXActor_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var FXActor_X InFXActor;

defaultproperties
{
	bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="FX Actor",LinkVar=None,PropertyName=InFXActor,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Disable Force Feedback in FXActor"
	ObjCategory="TAGame"
}