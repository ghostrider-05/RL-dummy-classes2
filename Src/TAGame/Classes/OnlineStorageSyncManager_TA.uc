/*******************************************************************************
* OnlineStorageSyncManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineStorageSyncManager_TA extends Object within SaveData_TA;

var() OnlineStorageConfig_TA Config;
var transient ProductsConfig_TA ProductsConfig;
var EOSOnlineStorageSync_TA EOSOnlineStorageSync;
var() bool bDebugSyncManager;
var bool bSyncInProgress;
