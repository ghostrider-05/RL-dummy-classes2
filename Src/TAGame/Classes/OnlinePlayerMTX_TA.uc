/*******************************************************************************
* OnlinePlayerMTX_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayerMTX_TA extends Object within OnlinePlayer_X
	config(Engine);

var bool bEntitlementsDirty;
var bool bClaimingEntitlements;
var bool bMtxCodeExpired;
var const config bool bAllowEntitlements;

defaultproperties
{
	/**bAllowEntitlements=true*/
}