/*******************************************************************************
* ShopAdsConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopAdsConfig_TA extends OnlineConfig_X;

struct ShopAdData
{
	var string IdleImageURL;
	var string HoverImageURL;
	var string ClickImageURL;
	var databinding Texture IdleImage;
	var databinding Texture HoverImage;
	var databinding Texture ClickImage;
	var databinding bool bOpenURLInCoherent;
	var databinding name Section;
	var databinding string Link;

	structdefaultproperties
	{
		IdleImageURL=""
		HoverImageURL=""
		ClickImageURL=""
		IdleImage=None
		HoverImage=None
		ClickImage=None
		bOpenURLInCoherent=false
		Section=None
		Link=""
	}
};

var() databinding array<ShopAdData> Ads;

defaultproperties
{
	bAllowOnServer=false
}