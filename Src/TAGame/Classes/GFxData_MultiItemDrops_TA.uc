/*******************************************************************************
* GFxData_MultiItemDrops_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MultiItemDrops_TA extends GFxDataSingleton_X;

var MultiItemDropConfig_TA MultiItemDropConfig;
var GFxData_ItemDropGroup_TA ActiveGroup;
var array<ItemDropGroup_TA> PendingGroups;
var databinding int GroupsRemaining;
var databinding string DropTableName;
var Wallet_TA Wallet;
var transient array<OnlineXPReward> RewardDrops;
var const name DropGroupType_ALL;

defaultproperties
{
	DropGroupType_ALL=DropGroupType_ALL
	TableName=MultiItemDrops
	bLevelTransitionPersistent=true
}