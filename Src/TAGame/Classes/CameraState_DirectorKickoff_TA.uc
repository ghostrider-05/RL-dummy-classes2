/*******************************************************************************
* CameraState_DirectorKickoff_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraState_DirectorKickoff_TA extends CameraState_DirectorProxy_TA;

var() float Distance;
var() Rotator RotationOffset;
var() float FOV;
var() ViewTargetTransitionParams BlendToParams;

defaultproperties
{
	Distance=5000.0
	RotationOffset=(Pitch=35000,Yaw=0,Roll=0)
	FOV=120.0
	BlendToParams=(BlendTime=0.0,BlendFunction=VTBlend_Cubic,BlendExp=2.0,bLockOutgoing=false)
}