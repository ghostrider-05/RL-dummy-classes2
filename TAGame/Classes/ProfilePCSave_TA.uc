/*******************************************************************************
* ProfilePCSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProfilePCSave_TA extends SaveObject_TA;

enum EProfilePCSaveVersion
{
	ProfilePCSaveVersion_NewDefaultControls,
	ProfilePCSaveVersion_MAX
};

var array<PlayerBinding> PCBindings;
var float MouseSensitivity;
var float MouseXDeadZone;
var float MouseYDeadZone;
var float MouseXDeadZoneAir;
var float MouseYDeadZoneAir;
var float KeyboardAxisBlendTime;
var bool bAirPitchSafetyEnabled;

defaultproperties
{
	MouseSensitivity=10.0
	MouseYDeadZone=0.40
	bAirPitchSafetyEnabled=true
}