/*******************************************************************************
* ProductDatabase_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductDatabase_TA extends Object
	native
	config(Game);

struct native TemporaryProduct
{
	var config string AssetPath;
	var config name SlotName;

	structdefaultproperties
	{
		/**AssetPath=""*/
		/**SlotName=None*/
	}
};

struct native GarageFolderData
{
	var native array<int> FolderIDs;
	var native Map_Mirror ProductIDToFolderID;
};

var() const array<Product_TA> Products_New;
var const transient array<Product_TA> Products_Pristine;
var() array<DLCPack_TA> DLCPacks;
var const transient array<DLCPack_TA> DLCPacks_Pristine;
var() array<ProductAsset_TA> AlwaysLoadedAssets;
var() array<BodyToEngineAudioPair> BodyToEngineAudioMap;
var const transient array<BodyToEngineAudioPair> BodyToEngineAudioMap_Pristine;
var() GarageFolderData GarageFolderInfo;
var native const Map_Mirror ProductNameToProductID;
var native const transient Map_Mirror ProductNameToProductID_Pristine;
var native const Map_Mirror DuplicateToAssetSourceMap;
var config transient array<config TemporaryProduct> TemporaryProducts;
var config bool bUseQualityToCheckForOnlineProduct;

defaultproperties
{
	/**bUseQualityToCheckForOnlineProduct=true*/
}