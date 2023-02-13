/*******************************************************************************
* GFxData_Products_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Products_TA extends GFxDataSingleton_X;

struct ProductStatInfo
{
	var databinding string ProductStatLabel;
	var databinding string ProductStatDescription;
	var databinding string ProductStatValue;
	var databinding string CertifiedStatLabel;

	structdefaultproperties
	{
		ProductStatLabel=""
		ProductStatDescription=""
		ProductStatValue=""
		CertifiedStatLabel=""
	}
};

var transient array<LoadingProduct_TA> LoadingProducts;
var databinding array<ProductStatInfo> Stats;
var databinding string ProductLabel;
var databinding string ProductLongLabel;
var databinding Texture ProductIcon;
var databinding string ProductDescription;
var databinding ProductInstanceID ProductID;
var databinding int BaseProductID;
var databinding ProductHashID HashID;
var databinding ProductHashID ProductPackHashID;
var databinding int SchematicPointerID;
var databinding int ProductSlot;
var databinding string ProductSlotLabel;
var databinding string ProductSlotLongLabel;
var databinding bool bProductEquipped;
var databinding bool bProductEquipped_1;
var databinding bool bProductUnlocked;
var databinding bool bProductIsPack;
var databinding bool bProductIsNew;
var databinding bool bProductHasNewSkin;
var databinding bool bProductCanBeTradedIn;
var databinding bool bProductCanBePlayerTraded;
var databinding bool bProductIsContainer;
var databinding bool bProductIsContainerKey;
var databinding bool bProductIsSchematic;
var databinding bool bIsFavorited;
var databinding bool bIsArchived;
var databinding bool bCanArchive;
var() bool bDebugLoadingProducts;
var databinding Color ProductPaintColor;
var databinding string ProductPaintColorName;
var databinding EProductQuality ProductQuality;
var databinding int ProductQuantity;
var databinding int TradeHold;
var databinding int SeriesID;
var databinding string SeriesDescription;
var databinding int SchematicResources;
var() export editinline GFxProductAttributeMap_TA AttributeMap;
var databinding string AttributeTables;
var array<Product_TA> NewProducts;
var transient ProductsFavoriteSave_TA FavoriteSave;
var transient ProductsArchiveSave_TA ArchiveSave;
var transient ProfileLoadoutSave_TA LoadoutSave;
var transient array< class > DynamicThumbnailsIgnorableOnlinePaintedProducts;
var() MtxConfig_TA MtxConfig;
var() ProductsConfig_TA ProductsConfig;

defaultproperties
{
	ProductQuantity=1
	
	AttributeMap=AttributeMap0
	DynamicThumbnailsIgnorableOnlinePaintedProducts(0)=class'ProductAsset_Skin_TA'
	DynamicThumbnailsIgnorableOnlinePaintedProducts(1)=class'ProductAsset_Boost_TA'
	DynamicThumbnailsIgnorableOnlinePaintedProducts(2)=class'ProductAsset_SupersonicTrail_TA'
	DynamicThumbnailsIgnorableOnlinePaintedProducts(3)=class'ProductAsset_GoalExplosion_TA'
	TableName=Products
}