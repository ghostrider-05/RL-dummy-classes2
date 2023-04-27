/*******************************************************************************
* ShopTabsConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopTabsConfig_TA extends OnlineConfig_X;

var() array<string> EsportsShopValidRegions;
var string ShopType_Esports;
var string ShopType_EsportsTeam;
var string ShopType_MTX;
var() bool bDisableItemsInCatalogCheck;
var() bool bDebugShowIds;
var() bool bDebugVerboseDebugging;
var() array<string> DisabledTypes;
var IEpochNow Time;

defaultproperties
{
	EsportsShopValidRegions(0)="NA"
	EsportsShopValidRegions(1)="EU"
	EsportsShopValidRegions(2)="OCE"
	EsportsShopValidRegions(3)="SAM"
	EsportsShopValidRegions(4)="APAC"
	EsportsShopValidRegions(5)="MENA"
	ShopType_Esports="Esports"
	ShopType_EsportsTeam="EsportsTeam"
	ShopType_MTX="MTX"
	bDisableItemsInCatalogCheck=true
	DisabledTypes(0)="Tournament"
}