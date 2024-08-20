/*******************************************************************************
* LoadedMtxCatalog_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class LoadedMtxCatalog_TA extends Component;

struct LoadedMtxCatalog
{
	var int CatalogID;
	var string Label;
	var EMTXCatalogCategory Category;

	structdefaultproperties
	{
		CatalogID=0
		Label=""
		Category=MTX_None
	}
};

var() array<EMTXCatalogCategory> ValidMtxShopTabs;
var transient array<LoadedMtxCatalog> Catalogs;

defaultproperties
{
	ValidMtxShopTabs(0)=114
	ValidMtxShopTabs(1)=105
}