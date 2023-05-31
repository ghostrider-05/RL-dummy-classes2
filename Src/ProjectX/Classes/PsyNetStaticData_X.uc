/*******************************************************************************
* PsyNetStaticData_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PsyNetStaticData_X extends Component
	config(Engine);

var() config string PsyConfigTemplateURL;
var() config float LocalCacheTimeoutSeconds;
var() config float SyncDataTimeoutSeconds;
var PsyNet_X PsyNet;
var OnlineSubsystem OnlineSub;
var WebConfig_X WebConfig;
var() bool bDebug;
var transient bool bLoaded;
var() export editinline CacheTimer_X CacheTimer;
var() export editinline OnlineResource_X WebData;
var() array<Object> DefaultObjects;
var transient array<Object> DownloadedObjects;
var transient array<Object> RegisteredObjects;
var transient string PsyConfigQueryParams;
var const string PsyConfigSecret;
var const string PsyConfigAltEnv;
var float BlockingSyncStartTime;

defaultproperties
{
	/**PsyConfigTemplateURL="https://config.psynet.gg/v2/Config/BattleCars/{BuildID}/{Environment}/{Platform}/{Language}/{QueryParams}"*/
	/**LocalCacheTimeoutSeconds=6.0*/
	/**SyncDataTimeoutSeconds=6.0*/
	bDebug=true
	//CacheTimer=CacheTimer_X'Default__PsyNetStaticData_X.DefaultCacheTimer'
	
	WebData=DefaultWebData
	PsyConfigSecret="secret="
	PsyConfigAltEnv="altenv="
}