/*******************************************************************************
* ShopTabs_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopTabs_TA extends Component;

enum EShopTabType
{
	ShopTabType_ShopCatalogueTable,
	ShopTabType_EMtxCatalogCategory,
	ShopTabType_Esports,
	ShopTabType_MAX
};

struct ShopTab
{
	var databinding EShopTabType Type;
	var databinding int Index;
	var databinding string Label;

	structdefaultproperties
	{
		Type=ShopTabType_ShopCatalogueTable
		Index=0
		Label=""
	}
};

var() ShopTabsConfig_TA Config;
var() export editinline LoadedMtxCatalog_TA LoadedMtx;
var transient string EsportsLabel;

defaultproperties
{
	//LoadedMtx=LoadedMtxCatalog_TA'Default__ShopTabs_TA.DefaultLoadedMtx'
}