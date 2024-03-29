/*******************************************************************************
* PostProcessManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PostProcessManager_TA extends PostProcessManager_X within PlayerControllerBase_TA;

var transient EPostProcessAAType PostProcessAAType;
var float DOF_DistanceLimit;
var float DOF_InnerRadiusLimit;
var float DOF_KernelDefault;
var float DOF_MaxFarDefault;
var float DOF_DistanceExtent;
var bool bPostProcessedSettingsCached;

defaultproperties
{
	DOF_DistanceLimit=1.0
	DOF_InnerRadiusLimit=1.0
	DOF_KernelDefault=1.0
	DOF_MaxFarDefault=1.0
	DOF_DistanceExtent=1.0
}