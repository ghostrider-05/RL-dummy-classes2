/*******************************************************************************
* GFxData_RedeemCodes_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_RedeemCodes_TA extends GFxDataSingleton_X;

var transient AsyncTask RedeemTask;
var const localized string RedeemingTitleString;
var const localized string RedeemingBodyString;

defaultproperties
{
	/**RedeemingTitleString="Redeeming"*/
	/**RedeemingBodyString="Redeeming..."*/
	TableName=RedeemCodes
}