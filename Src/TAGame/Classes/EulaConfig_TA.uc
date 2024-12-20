/*******************************************************************************
* EulaConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EulaConfig_TA extends OnlineConfig_X;

var() bool bRequiresAcceptance;
var() bool bAllowEulaReset;
var() array<_Types_Core.OnlinePlatform> ExcludedPlatforms;
var() array<int> IgnoredHashIds;

defaultproperties
{
	bRequiresAcceptance=true
	bAllowEulaReset=true
}