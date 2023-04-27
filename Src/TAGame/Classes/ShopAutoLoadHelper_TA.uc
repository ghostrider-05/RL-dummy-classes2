/*******************************************************************************
* ShopAutoLoadHelper_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ShopAutoLoadHelper_TA extends Object within GFxData_ShopCatalogue_TA
	config(Game);

var config int SyncRequestRange;
var export editinline RetryDelayer_X AutoLoadDelayer;
var transient AsyncTask AutoLoadAsyncTask;
var transient array<ShopItem> AutoLoadedItems;
var ShopItemExpirationHelper_TA AutoLoadExpirationHelper;
var Qword MinEndDateOffset;
var Qword MaxEndDateOffset;
var Qword RandomEndDateOffset;

defaultproperties
{
	/**SyncRequestRange=100*/
}