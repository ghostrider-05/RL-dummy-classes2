/*******************************************************************************
* ShopsManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopsManager_TA extends Object within OnlinePlayer_X;

var() /*0x00010000-0x00000000*/ ShopsService_TA ServiceArchetype;
var() /*0x00010000-0x00000000*/ ShopsService_TA Service;
var /*0x00010000-0x00000000*/ transient int ActiveShopID;
var /*0x00010000-0x00000000*/ transient int ActiveCatalogID;

defaultproperties
{
	ActiveShopID=-1
	ActiveCatalogID=-1
}