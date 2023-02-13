/*******************************************************************************
* ProductAttribute_Trademark_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductAttribute_Trademark_TA extends ProductAttribute_TA
	editinlinenew
	collapsecategories
	hidecategories(Object);

enum ETrademarkGlyph
{
	TrademarkGlyph_TradeMark,
	TrademarkGlyph_Registered,
	TrademarkGlyph_Copyright,
	TrademarkGlyph_MAX
};

var() const ETrademarkGlyph Glyph;
