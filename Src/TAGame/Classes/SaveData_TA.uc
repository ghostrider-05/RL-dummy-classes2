/*******************************************************************************
* SaveData_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SaveData_TA extends Object
	config(SaveData);

struct OptionsValue
{
	var name Id;
	var string Value;

	structdefaultproperties
	{
		Id=None
		Value=""
	}
};

struct PlaylistSkillData
{
	var int Playlist;
	var int Tier;
	var int MatchesPlayed;

	structdefaultproperties
	{
		Playlist=0
		Tier=0
		MatchesPlayed=0
	}
};

var transient SaveGameManager_TA SaveManager;
var bool bFromPreviousSave;
var transient bool bClearSyncTimestampOnMissingProduct;
var config transient bool bEnableOnlineData;
var transient bool bUnloaded;
var array<OnlineProduct_TA> OnlineProducts;
var export editinline transient OnlineProductStoreSet_TA OnlineProductSet;
var Qword MostRecentProductUpdatedTimestamp;
var Qword LastFullProductSyncTimestamp;
var EPsyNetEnvironment PsyNetEnvironment;
var transient ProductsConfig_TA ProductsConfig;
var export editinline transient ProductTransactions_TA ProductTransactions;
// Loaded profiles
var(Account) array<Profile_TA> Profiles;
var const array<float> XPGainPercentage;
var transient int CurrentLevel;
var transient int SchematicResources;
var int SaveDataVersion;
var export editinline transient ObjectProvider SaveObjectProvider;
var array<SaveObject_TA> SaveObjects;
var int SaveTick;
var transient AsyncTask SyncOnlineStorageTask;
var transient OnlineStorageSyncManager_TA StorageSyncManager;
var transient EOSOnlineStorageUploader_TA EOSStorageUploader;
var transient OnlineProductExpirationHelper_TA ExpirationHelper;
var transient CachedUnlockedProducts_TA CachedUnlockedProducts;
var transient OnlineDLCProductCache_TA OnlineDLCProductCache;
var transient array<OnlineProduct_TA> NewProductNotificationQueue;
var float UploadDelayedTime;
var const string RPRewardForCurrentSeason;
var const string RPRewardForOldSeasons;
var const string CreditRefundForCurrentSeason;
var const string CreditRefundForOldSeasons;

defaultproperties
{
	/**bEnableOnlineData=true*/
	//ProductTransactions=ProductTransactions_TA'Default__SaveData_TA.DefaultProductTransactions'
	XPGainPercentage(0)=1.0
	XPGainPercentage(1)=0.50
	XPGainPercentage(2)=0.0
	UploadDelayedTime=0.10
	RPRewardForCurrentSeason="CrewSubscriptionCurrentSeasonReward"
	RPRewardForOldSeasons="CrewSubscriptionOldSeasonReward"
	CreditRefundForCurrentSeason="CrewSubscriptionCurrentSeasonRefund"
	CreditRefundForOldSeasons="CrewSubscriptionOldSeasonRefund"
}