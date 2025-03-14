/*******************************************************************************
* ShopsConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopsConfig_TA extends OnlineConfig_X;

var int DebugShopID;
var bool bEnableShopMetrics;
var bool bHideMainMenuButton;
var bool bHidePurchaseEsportToken;
var array<string> ShopTypesForOwnedTracking;

defaultproperties
{
	DebugShopID=-1
	bEnableShopMetrics=true
	bHidePurchaseEsportToken=true
	ShopTypesForOwnedTracking(0)="Featured"
	ShopTypesForOwnedTracking(1)="Bundle"
}