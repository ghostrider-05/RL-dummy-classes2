/*******************************************************************************
* ProfileCameraSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProfileCameraSave_TA extends SaveObject_TA
	config(Game);

var ProfileAutoCamSettings AutoCam;
var ProfileCameraSettings Camera;
var bool bInvertSwivelPitch;
var bool bInvertSpectatorPitch;
var bool bLockSpectatorBallCam;
var bool bFreecam;
var bool bPrefersSecondaryCamera;
var /*0x00080000-0x00000000*/ bool bToggleSecondaryCamera;
var bool bToggleRearCamera;
var bool bUseBallIndicator;
var bool bUseBallCamIndicator;
var bool bEnableCameraShake;
var bool bDirectorAllowCameraBlending;
var /*0x00080000-0x00000000*/ bool bHoldMouseCameraEnabled;
var /*0x00080000-0x00000000*/ bool bMouseCameraSwivel;
var config _Types_TA.ECameraSettingsPreset CameraSettingsPreset;
var float DirectorMinChangeTeamFocusTime;
var float DirectorMinSameTeamFocusTime;
var /*0x00080000-0x00000000*/ float MaxProximityDistance;

defaultproperties
{
	AutoCam=(FOV=90.0,Height=250.0,Distance=1200.0,MoveSpeed=2.0,MoveSpeedZ=0.50,RotateSpeed=3.0,AerialDistance=300.0,FocusBlendSpeed=15.0,AerialPrediction=0.10,bUseReplayCamera=true,bFocusOnGoals=true)
	Camera=(FOV=90.0,Height=100.0,Pitch=-3.0,Distance=270.0,Stiffness=0.50,SwivelSpeed=2.50,TransitionSpeed=1.0)
	bInvertSwivelPitch=true
	bToggleSecondaryCamera=true
	bUseBallIndicator=true
	bUseBallCamIndicator=true
	bEnableCameraShake=true
	bDirectorAllowCameraBlending=true
	bHoldMouseCameraEnabled=true
	bMouseCameraSwivel=true
	CameraSettingsPreset=CameraSettingsPreset_Custom
	DirectorMinChangeTeamFocusTime=5.0
	DirectorMinSameTeamFocusTime=4.0
	MaxProximityDistance=500.0
}