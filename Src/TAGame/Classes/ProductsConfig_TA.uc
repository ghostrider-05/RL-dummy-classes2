/*******************************************************************************
* ProductsConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductsConfig_TA extends OnlineConfig_X;

struct ReplacementProduct
{
	var int ProhibitedID;
	var bool bShowForOwningClient;
	var OnlineProductData Replacement;
	var transient OnlineProduct_TA ReplacementInstance;

	structdefaultproperties
	{
		ProhibitedID=0
		bShowForOwningClient=false
		
		ReplacementInstance=none
	}
};

struct SeriesGroup
{
	var int SeriesID;
	var array<_Types_TA.EProductQuality> ExcludedQualities;

	structdefaultproperties
	{
		SeriesID=0
		ExcludedQualities.Empty
	}
};

struct ProductTradeHoldOverride
{
	var int ProductID;
	var array<_Types_TA.EProductTradeRestriction> TradeRestrictions;
	var transient array<_Types_TA.EProductTradeRestriction> DefaultRestrictions;

	structdefaultproperties
	{
		ProductID=0
		TradeRestrictions.Empty
		DefaultRestrictions.Empty
	}
};

var array<ReplacementProduct> ProhibitedProducts;
var /*0x00010000-0x00000000*/ transient array<ProductTradeInFilter> TradeInFilters;
var array<SeriesGroup> ItemSeries_AllowTradeIn;
var array<SeriesGroup> ItemSeries_PreventP2PTrade;
var array<ProductTradeHoldOverride> ProductTradeHoldOverrides;

defaultproperties
{
	ItemSeries_AllowTradeIn(0)=(SeriesID=1,ExcludedQualities=none)
	ItemSeries_AllowTradeIn(1)=(SeriesID=855,ExcludedQualities=none)
	ItemSeries_PreventP2PTrade(0)=(SeriesID=855,ExcludedQualities=none)
}