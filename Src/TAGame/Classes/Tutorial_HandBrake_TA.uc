/*******************************************************************************
* Tutorial_HandBrake_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Tutorial_HandBrake_TA extends Tutorial_TA;

var bool bCheckHandbrakeDir;
var bool bTriggerTouched;
var Vector HandbrakeStartDir;
var float MinHandbrakeDotAngleForStart;
var float MinHandbrakeDotAngleForComplete;

defaultproperties
{
	bCheckHandbrakeDir=true
}