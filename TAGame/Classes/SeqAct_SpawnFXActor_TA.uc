/*******************************************************************************
* SeqAct_SpawnFXActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_SpawnFXActor_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var native const noexport Pointer VfTable_FTickableObject;
var() FXActor_X FXActor;
var() editinline ProductAssetReference_TA Product;
var Actor Transform;
var() Vector Location;
var() Rotator Rotation;
var Actor ActorToSpawnOn;
var FXActor_X SpawnedFXActor;
var() ProductPaint_TA Paint;
var() name PaintParameterNames;
var transient bool bTickable;
var transient MaterialInstanceConstant BallLocMic;

defaultproperties
{
	PaintParameterNames=CustomColor
	bTickable=true
	bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Actor to Spawn On",LinkVar=None,PropertyName=ActorToSpawnOn,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="FXActor",LinkVar=None,PropertyName=FXActor,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Transform",LinkVar=None,PropertyName=Transform,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(3)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Spawned FXActor",LinkVar=None,PropertyName=SpawnedFXActor,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Spawn FXActor"
	ObjCategory="TAGame"
}