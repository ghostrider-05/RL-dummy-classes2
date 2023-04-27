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
		Product=None
		OnlineProduct=None
	}
};

struct ShopCurrency
{
	var int /** _Types_TA.ECurrency*/ Type;
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
		Type=0
		Id=0
		SmallImage=None
		LargeImage=None
		Amount=0
		Name=""
		LocalizedName=""
		bCanBeTraded=false
		TradeHold=0
		ProductData=(Product=None,OnlineProduct=None)
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
	var databinding EItemDisplayType DisplayTypeID;

	structdefaultproperties
	{
		ShopItemCostID=0
		Price.Empty
		
		
		
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
		
		HashID=(Id=0)
		bOwned=false
		bOwnedUntradeable=false
		
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
		ItemTexture=None
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
		
		Value.Empty
	}
};