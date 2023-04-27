/*******************************************************************************
* SeqAct_CheckRotationAngle_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_CheckRotationAngle_TA extends SeqAct_Latent
	forcescriptorder(true)
	hidecategories(Object);

enum ECheckAxis
{
	ECA_Pitch,
	ECA_Yaw,
	ECA_Roll,
	ECA_MAX
};

var Actor Actor;
var Actor CheckActor;
var float RotationAngle;
var Rotator LastRotation;
var float LastDirection;
var Vector CheckAxis;
var Vector TurnAxis;
var() float MaxRotationAngle;
var() bool bResetOnDirectionChange;
var() ECheckAxis AxisDirection;

defaultproperties
{
	MaxRotationAngle=360.0
	bResetOnDirectionChange=true
	AxisDirection=ECA_Yaw
	bCallHandler=false
	InputLinks(0)=(LinkDesc="Check",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=None,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	OutputLinks(0)=(LinkDesc="Completed",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=None,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
	OutputLinks(1)=(LinkDesc="Aborted",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=None,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Actor To Check",LinkVar=None,PropertyName=Actor,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Check Rotation Angle"
	ObjCategory="TAGame"
}