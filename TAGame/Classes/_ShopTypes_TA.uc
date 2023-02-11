/*******************************************************************************
* _ShopTypes_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class _ShopTypes_TA extends Object
	abstract;

enum EItemDisplayType
{
	DisplayDaily,
	DisplayFull,
	EItemDisplayType_MAX
};

enum EShopDeliverableType
{
	Deliverable_Product,
	Deliverable_MAX
};

struct ShopCurrencyData
{
	var int Id;
	var int Amount;

	structdefaultproperties
	{
		Id=0
		Amount=0
	}
};

struct CurrencyProductData
{
	var Product_TA Product;
	var OnlineProduct_TA OnlineProduct;

	structdefaultproperties
	{
		Product=none
		OnlineProduct=none
	}
};

struct ShopCurrency
{
	var _Types_TA.ECurrency Type;
	var int Id;
	var Texture SmallImage;
	var Texture LargeImage;
	var int Amount;
	var string Name;
	var string LocalizedName;
	var bool bCanBeTraded;
	var int TradeHold;
	var CurrencyProductData ProductData;

	structdefaultproperties
	{
		Type=Currency_Soft
		Id=0
		SmallImage=none
		LargeImage=none
		Amount=0
		Name=""
		LocalizedName=""
		bCanBeTraded=false
		TradeHold=0
		ProductData=(Product=none,OnlineProduct=none)
	}
};

struct ShopPrice
{
	var databinding int Id;
	var databinding int Amount;

	structdefaultproperties
	{
		Id=0
		Amount=0
	}
};

struct ShopDiscount
{
	var databinding int Id;
	var databinding int ShopItemCostID;
	var databinding Qword StartDate;
	var databinding Qword EndDate;
	var databinding array<ShopPrice> Price;
	var databinding int Quantity;

	structdefaultproperties
	{
		Id=0
		ShopItemCostID=0
		
		
		Price.Empty
		Quantity=0
	}
};

struct ShopCost
{
	var databinding int ShopItemCostID;
	var databinding array<ShopPrice> Price;
	var databinding ShopDiscount Discount;
	var databinding Qword StartDate;
	var databinding Qword EndDate;
	var databinding array<ShopDiscount> BulkDiscounts;
	var databinding _ShopTypes_TA.EItemDisplayType DisplayTypeID;

	structdefaultproperties
	{
		ShopItemCostID=0
		Price.Empty
		Discount=Id=0,ShopItemCostID=0,StartDate=,
/* Exception thrown while deserializing Discount
System.ArgumentException: De aangevraagde waarde EndDate is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
		
		
		BulkDiscounts.Empty
		DisplayTypeID=DisplayDaily
	}
};

struct native ShopCurrencyInfo
{
	var databinding int Id;
	var databinding int Amount;

	structdefaultproperties
	{
		Id=0
		Amount=0
	}
};

struct ShopDeliverable
{
	var databinding int Count;
	var databinding ProductInstanceID Id;
	var databinding ProductHashID HashID;
	var databinding bool bOwned;
	var databinding bool bOwnedUntradeable;
	var OnlineProductData Product;

	structdefaultproperties
	{
		Count=0
		Id=UpperBits=,
/* Exception thrown while deserializing Id
System.ArgumentException: De aangevraagde waarde LowerBits is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
		HashID=(Id=0)
		bOwned=false
		bOwnedUntradeable=false
		Product=ProductID=0,InstanceID=UpperBits=,
/* Exception thrown while deserializing InstanceID
System.ArgumentException: De aangevraagde waarde LowerBits is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */,
/* Exception thrown while deserializing Product
System.ArgumentException: De aangevraagde waarde _0x3 is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
	}
};

struct OnlineShopAttribute
{
	var databinding name Key;
	var databinding string Value;

	structdefaultproperties
	{
		Key=None
		Value=""
	}
};

struct ShopItem
{
	var databinding int ShopItemID;
	var databinding bool Purchasable;
	var databinding int PurchasedQuantity;
	var databinding int MaxQuantityPerPlayer;
	var databinding Qword StartDate;
	var databinding Qword EndDate;
	var databinding array<ShopDeliverable> DeliverableProducts;
	var databinding array<ShopCurrencyInfo> DeliverableCurrencies;
	var databinding array<ShopCost> Costs;
	var databinding array<string> FeaturedCollections;
	var databinding array<int> ShopItemLocations;
	var databinding string Title;
	var databinding string Description;
	var databinding array<OnlineShopAttribute> Attributes;
	var databinding string ImageURL;
	var databinding Texture ItemTexture;
	var databinding bool bOwnsAllUntradeableProducts;

	structdefaultproperties
	{
		ShopItemID=0
		Purchasable=false
		PurchasedQuantity=0
		MaxQuantityPerPlayer=0
		
		
		DeliverableProducts.Empty
		DeliverableCurrencies.Empty
		Costs.Empty
		FeaturedCollections.Empty
		ShopItemLocations.Empty
		Title=""
		Description=""
		Attributes.Empty
		ImageURL=""
		ItemTexture=none
		bOwnsAllUntradeableProducts=false
	}
};

struct ShopData
{
	var int Id;
	var string Name;
	var string Title;
	var string Type;
	var Qword StartDate;
	var Qword EndDate;
	var string LogoURL;

	structdefaultproperties
	{
		Id=0
		Name=""
		Title=""
		Type=""
		
		
		LogoURL=""
	}
};

struct native DestructionProductValue
{
	var databinding ProductInstanceID ProductInstanceID;
	var databinding array<ShopCurrencyInfo> Value;

	structdefaultproperties
	{
		ProductInstanceID=UpperBits=,
/* Exception thrown while deserializing ProductInstanceID
System.ArgumentException: De aangevraagde waarde LowerBits is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
		Value.Empty
	}
};
