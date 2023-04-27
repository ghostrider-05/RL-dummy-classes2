/*******************************************************************************
* CarComponent_AirControl_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarComponent_AirControl_TA extends CarComponent_TA
	notplaceable
	hidecategories(Navigation);

var() Rotator AirTorque;
var() Rotator AirDamping;
var() float ThrottleForce;
var transient float AirControlSensitivity;

defaultproperties
{
	AirControlSensitivity=1.0
	RemoteRole=ROLE_None
}