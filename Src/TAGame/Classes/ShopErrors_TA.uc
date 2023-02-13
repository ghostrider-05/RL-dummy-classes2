/*******************************************************************************
* ShopErrors_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopErrors_TA extends ErrorList;

var const ErrorType ShopItemBadData;
var const ErrorType ShopItemDiscountBadData;
var const ErrorType ShopSyncedBadData;
var const ErrorType ShopNotEnoughCurrency;

defaultproperties
{
	ShopItemBadData=ErrorType'Default__ShopErrors_TA.ShopItemBadData'
	ShopItemDiscountBadData=ErrorType'Default__ShopErrors_TA.ShopItemDiscountBadData'
	ShopSyncedBadData=ErrorType'Default__ShopErrors_TA.ShopSyncedBadData'
	ShopNotEnoughCurrency=ErrorType'Default__ShopErrors_TA.ShopNotEnoughCurrency'
	LocalizationPackage="TAErrors"
}