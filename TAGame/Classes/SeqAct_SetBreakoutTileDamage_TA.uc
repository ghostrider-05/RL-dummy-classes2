/*******************************************************************************
* SeqAct_SetBreakoutTileDamage_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_SetBreakoutTileDamage_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var Actor PlatformObj;
var int Damage;

defaultproperties
{
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Breakout Platform",LinkVar=None,PropertyName=PlatformObj,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkedVariables=none,LinkDesc="Damage",LinkVar=None,PropertyName=Damage,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Set Breakout Platform Damage"
	ObjCategory="TAGame"
}