/*******************************************************************************
* GFxData_NotificationManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_NotificationManager_TA extends GFxDataSingleton_X;

struct GFXNotificationInfo
{
	var databinding int NotificationId;
	var databinding string TableName;
	var Notification_TA Notification;

	structdefaultproperties
	{
		NotificationId=0
		TableName=""
		Notification=None
	}
};

var() databinding array<GFXNotificationInfo> Notifications;
var() databinding bool bShowInGameNotifications;
var() databinding bool bShowItemShopNotifications;
var transient NotificationSave_TA NotificationSave;
var transient array<Notification_TA> PendingNotifications;

defaultproperties
{
	TableName=NotificationManager
}