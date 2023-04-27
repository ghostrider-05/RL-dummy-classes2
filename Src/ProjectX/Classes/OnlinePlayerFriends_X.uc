/*******************************************************************************
* OnlinePlayerFriends_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayerFriends_X extends Online_X within OnlinePlayer_X
	config(Game);

struct EpicSocialTaskData
{
	var UniqueNetId PlayerID;

	structdefaultproperties
	{
		
		
	}
};

var config bool bAllowSamePlatformPsyNetFriends;
var const config bool bRepeatFriendsListDownloadsUntilSuccess;
var bool bFetchingLinkedAccounts;
var export editinline OnlineFriendMap_X CachedFriends;
var export editinline PlatformFriends_X PlatformFriends;
var export editinline EpicFriends_X EpicFriends;
var array<OnlineFriend> EpicInvites;
var export editinline OnlineFriendMap_X BlockedPlayers;
var export editinline OnlineFriendMap_X EpicBlockList;
var export editinline OnlineFriendMap_X PlatformBlockList;
var export editinline LinkedAccountMap_X PlatformToEpicAccountMap;
var export editinline LinkedAccountMap_X EpicToPlatformAccountMap;
var export editinline RetryDelayer_X PlatformFriendsDownloadDelayer;
var export editinline RetryDelayer_X PsyNetFriendsDownloadDelayer;
var export editinline RetryDelayer_X EpicFriendsDownloadDelayer;
var array<UniqueNetId> PendingFriendAccepts;
var BlockStatusReporter_X BlockStatusReporter;
var() OSSConfig_X OSSConfig;
var EpicConfig_X EpicConfig;
var() EpicFriendsPlugin_X EpicFriendsPlugin;
var array<EpicSocialTaskData> BlockPlayerCallbacks;
var array<EpicSocialTaskData> UnblockPlayerCallbacks;

defaultproperties
{
	/**bRepeatFriendsListDownloadsUntilSuccess=true*/
	CachedFriends=OnlineFriendMap_X'Default__OnlinePlayerFriends_X.DefaultCachedFriends'
	PlatformFriends=PlatformFriends_X'Default__OnlinePlayerFriends_X.DefaultPlatformFriends'
	EpicFriends=EpicFriends_X'Default__OnlinePlayerFriends_X.DefaultEpicFriends'
	BlockedPlayers=OnlineFriendMap_X'Default__OnlinePlayerFriends_X.DefaultBlockedPlayers'
	EpicBlockList=OnlineFriendMap_X'Default__OnlinePlayerFriends_X.DefaultEpicBlockList'
	PlatformBlockList=OnlineFriendMap_X'Default__OnlinePlayerFriends_X.DefaultPlatformBlockList'
	PlatformToEpicAccountMap=LinkedAccountMap_X'Default__OnlinePlayerFriends_X.DefaultLinkedAccounts'
	EpicToPlatformAccountMap=LinkedAccountMap_X'Default__OnlinePlayerFriends_X.DefaultEpicToPlatformAccountMap'
	PlatformFriendsDownloadDelayer=RetryDelayer_X'Default__OnlinePlayerFriends_X.DefaultPlatformDelayer'
	PsyNetFriendsDownloadDelayer=RetryDelayer_X'Default__OnlinePlayerFriends_X.DefaultPsyNetDelayer'
	EpicFriendsDownloadDelayer=RetryDelayer_X'Default__OnlinePlayerFriends_X.DefaultEpicDelayer'
}