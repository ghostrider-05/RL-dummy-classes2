/*******************************************************************************
* GFxData_MTXGarage_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MTXGarage_TA extends GFxDataSingleton_X;

struct MTXPurchaseInfo
{
	var databinding int CatalogID;
	var databinding string Title;
	var databinding string Description;
	var databinding string TabTitle;
	var databinding Texture Image;
	var databinding string PurchasePrice;
	var databinding string OriginalPrice;
	var databinding int DiscountPercentage;
	var databinding string ProductHashIDs;
	var databinding string BundleCurrencies;
	var databinding bool bCanBePlayerTraded;
	var databinding bool bIsOwned;
	var string ImageURL;

	structdefaultproperties
	{
		CatalogID=0
		Title=""
		Description=""
		TabTitle=""
		Image=none
		PurchasePrice=""
		OriginalPrice=""
		DiscountPercentage=0
		ProductHashIDs=""
		BundleCurrencies=""
		bCanBePlayerTraded=false
		bIsOwned=false
		ImageURL=""
	}
};

struct CartInfo
{
	var databinding int CatalogID;
	var databinding int Count;

	structdefaultproperties
	{
		CatalogID=0
		Count=0
	}
};

var databinding array<MTXPurchaseInfo> CatalogItems;
var transient array<MTCatalogInfo> CatalogProducts;
var databinding array<CartInfo> CartItems;
var databinding string CartTotal;
var transient string Currency;
var transient bool TransactionInProgress;
var bool bCatalogReady;
var transient GFxModal_X ModalProcessing;
var int BlackMarketSkinProductID;
var transient float CatalogExpirationTime;
var float CatalogCacheDuration;
var transient EMTXCatalogCategory CatalogCategory;
var const float PurchaseTimeoutTime;
var const float GetPriceTimeoutTime;
var transient GameInfo_GFxMenu_TA Menu;
var() MtxConfig_TA MtxConfig;
var OnlineSystemInterface SystemInterface;
var OnlinePurchaseInterface PurchaseInterface;
var PsyNetConnection_X PsyNetConnection;
var const localized string RegionRestrictedOpenCrate;
var export editinline transient OnlineProductStoreSet_TA OnlineProductStoreSet;

defaultproperties
{
	BlackMarketSkinProductID=1412
	CatalogCacheDuration=300.0
	PurchaseTimeoutTime=60.0
	GetPriceTimeoutTime=10.0
	TableName=MTXGarage
	bLevelTransitionPersistent=true
}