/*******************************************************************************
* OnlineStorageSyncManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineStorageSyncManager_TA extends Object within SaveData_TA;

var() /*0x00008000-0x00000000*/ OnlineStorageConfig_TA Config;
var EOSOnlineStorageSync_TA EOSOnlineStorageSync;
var() bool bDebugSyncManager;
var bool bSyncInProgress;
