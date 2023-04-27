/*******************************************************************************
* RocketPass_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RocketPass_TA extends Object;

var array<RocketPassRewardData> FreeRewards;
var array<RocketPassRewardData> PremiumRewards;
var array<RocketPassRewardData> PrestigeRewards;
var databinding int TierCap;
var databinding bool bIsPassActive;
var databinding bool bOwnsPremium;
var bool bPrestigeItemsDirtied;
var databinding float XPMultiplier;
var databinding int TierLevel;
var databinding int SecondsRemaining;
var export editinline RocketPassBundleContainer_TA Bundles;
var transient AsyncTask SyncAllInfoTask;
var transient AsyncTask PendingPlayerInfoTask;
var transient AsyncTask PendingRewardsTask;
var transient AsyncTask PendingPrestigeRewardsTask;
var transient AsyncTask PurchasePremiumTask;
var transient AsyncTask PurchaseTiersTask;
var const int CodeRedemptionPurchasableID;
var transient RocketPassConfig_TA RocketPassConfig;
var transient OnlineGame_X OnlineGame;
var transient Wallet_TA Wallet;

defaultproperties
{
	Bundles=RocketPassBundleContainer_TA'Default__RocketPass_TA.RPBundles'
}