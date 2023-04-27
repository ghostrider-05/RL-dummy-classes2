/*******************************************************************************
* GFxData_WalletCurrency_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_WalletCurrency_TA extends GFxDataRow_X;

var() databinding int CurrencyID;
var() databinding int /** _Types_TA.ECurrency*/ Type;
var() databinding Texture SmallImage;
var() databinding Texture LargeImage;
var() databinding int Amount;
var() databinding string LocalizedName;

defaultproperties
{
	TableName=WalletCurrency
}