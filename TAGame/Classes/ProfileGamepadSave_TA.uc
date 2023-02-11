/*******************************************************************************
* ProfileGamepadSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProfileGamepadSave_TA extends SaveObject_TA;

enum EProfileGamepadSaveVersion
{
	ProfileGamepadSaveVersion_NewDefaultControls,
	ProfileGamepadSaveVersion_MAX
};

var array<PlayerBinding> GamepadBindings;
var float ControllerDeadzone;
var float DodgeInputThreshold;
var float SteeringSensitivity;
var float AirControlSensitivity;

defaultproperties
{
	ControllerDeadzone=0.20
	DodgeInputThreshold=0.80
	SteeringSensitivity=1.0
	AirControlSensitivity=1.0
}