/*******************************************************************************
* ShopMetrics_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopMetrics_TA extends MetricsGroup_X;

struct ShopItemData
{
	var /*0x00010000-0x00000000*/ int ShopItemID;
	var /*0x00010000-0x00000000*/ int NumTimesPreviewed;

	structdefaultproperties
	{
		ShopItemID=0
		NumTimesPreviewed=0
	}
};

struct ShopTabData
{
	var /*0x00010000-0x00000000*/ int FromShopID;
	var /*0x00010000-0x00000000*/ int NewShopID;
	var /*0x00010000-0x00000000*/ int FromCatalogID;
	var /*0x00010000-0x00000000*/ int NewCatalogID;
	var /*0x00010000-0x00000000*/ Qword StartTimestamp;
	var /*0x00010000-0x00000000*/ Qword EndTimestamp;
	var /*0x00010000-0x00000000*/ array<ShopItemData> ItemMetrics;

	structdefaultproperties
	{
		FromShopID=0
		NewShopID=0
		FromCatalogID=0
		NewCatalogID=0
		
		
		ItemMetrics.Empty
	}
};

var /*0x00010000-0x00000000*/ array<ShopTabData> CurrentShopTabMetrics;
var /*0x00010000-0x00000000*/ int CurrentBrowseSourceID;
