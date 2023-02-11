/*******************************************************************************
* SeqAct_InstanceMaterial_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_InstanceMaterial_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var() MaterialInstanceConstant MaterialInstance;
var SkeletalMeshActor SK;
var StaticMeshActor SM;
var MaterialInstanceConstant InstancedMaterial;
var int MatIndex;

defaultproperties
{
	bCallHandler=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Static Mesh Actor",LinkVar=None,PropertyName=SM,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkedVariables=none,LinkDesc="Material Index",LinkVar=None,PropertyName=MatIndex,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Instanced Material",LinkVar=None,PropertyName=InstancedMaterial,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(3)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Skeletal Mesh Actor",LinkVar=None,PropertyName=SK,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Instance Material"
	ObjCategory="TAGame"
}