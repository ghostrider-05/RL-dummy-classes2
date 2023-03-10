/*******************************************************************************
* OnlineResource_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineResource_X extends Component;

var() string URL;
var() array<float> RetryDelays;
var() float CacheSeconds;
var() bool bZipResponse;
var transient bool bSyncing;
var() export editinline StringMap Headers;
var transient CachedWebData_X CachedData;
var transient int RetryCount;
var transient float LastSyncTime;
var PsyNetRetryConfig_X RetryConfig;
var const string ServiceName;
