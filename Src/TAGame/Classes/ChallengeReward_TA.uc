/*******************************************************************************
* ChallengeReward_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ChallengeReward_TA extends ListenObject_TA;

var databinding int XP;
var array<ChallengeCurrency_TA> Currency;
var array<OnlineProductData> Products;
var databinding string ProductHashIDs;
var export editinline transient OnlineProductStoreSet_TA OnlineProductStoreSet;