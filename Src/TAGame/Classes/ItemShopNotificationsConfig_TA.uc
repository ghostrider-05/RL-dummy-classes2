/*******************************************************************************
* ItemShopNotificationsConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ItemShopNotificationsConfig_TA extends OnlineConfig_X;

var() databinding bool bItemShopNotificationsEnabled;
var() float PopUpDuration;
var() int MinRequiredLevel;

defaultproperties
{
	bItemShopNotificationsEnabled=true
	PopUpDuration=8.0
	MinRequiredLevel=20
}