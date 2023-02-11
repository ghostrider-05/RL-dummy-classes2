/*******************************************************************************
* EngineAudioPreview_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EngineAudioPreview_TA extends EngineAudioPreviewBase_TA;

var EngineAudioProfile_TA Profile;
var native const Pointer NativeState;
var() InterpCurveFloat GearToWheelSpeedAccel;
var float PreviewSpeed;
var float MaxPreviewSpeed;
var float WheelSpeedToPreviewSpeed;
var float BrakeFactor;
var name IsLocalRTPC;

defaultproperties
{
	GearToWheelSpeedAccel=(Points=((InVal=0.0,OutVal=10.0,ArriveTangent=0.0,LeaveTangent=0.0,ArriveWeight=0.0,LeaveWeight=0.0,InterpMode=CIM_Linear),(InVal=1.0,OutVal=20.0,ArriveTangent=0.0,LeaveTangent=0.0,ArriveWeight=0.0,LeaveWeight=0.0,InterpMode=CIM_Linear),(InVal=3.0,OutVal=40.0,ArriveTangent=0.0,LeaveTangent=0.0,ArriveWeight=0.0,LeaveWeight=0.0,InterpMode=CIM_Linear),(InVal=4.0,OutVal=60.0,ArriveTangent=0.0,LeaveTangent=0.0,ArriveWeight=0.0,LeaveWeight=0.0,InterpMode=CIM_Linear),(InVal=5.0,OutVal=80.0,ArriveTangent=0.0,LeaveTangent=0.0,ArriveWeight=0.0,LeaveWeight=0.0,InterpMode=CIM_Linear)),InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
	MaxPreviewSpeed=2300.0
	BrakeFactor=5.0
}