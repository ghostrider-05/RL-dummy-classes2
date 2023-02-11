/*******************************************************************************
* OnlinePlayerFriends_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayerFriends_TA extends OnlinePlayerFriends_X within OnlinePlayer_X
	config(Game);

var /*0x00008000-0x00000000*/ transient Personas_TA PersonasData;

defaultproperties
{
	CachedFriends=OnlineFriendMap_X'Default__OnlinePlayerFriends_TA.DefaultCachedFriends'
	PlatformFriends=PlatformFriends_X'Default__OnlinePlayerFriends_TA.DefaultPlatformFriends'
	EpicFriends=EpicFriends_X'Default__OnlinePlayerFriends_TA.DefaultEpicFriends'
	BlockedPlayers=OnlineFriendMap_X'Default__OnlinePlayerFriends_TA.DefaultBlockedPlayers'
	EpicBlockList=OnlineFriendMap_X'Default__OnlinePlayerFriends_TA.DefaultEpicBlockList'
	PlatformBlockList=OnlineFriendMap_X'Default__OnlinePlayerFriends_TA.DefaultPlatformBlockList'
	PlatformToEpicAccountMap=LinkedAccountMap_X'Default__OnlinePlayerFriends_TA.DefaultLinkedAccounts'
	EpicToPlatformAccountMap=LinkedAccountMap_X'Default__OnlinePlayerFriends_TA.DefaultEpicToPlatformAccountMap'
	PlatformFriendsDownloadDelayer=RetryDelayer_X'Default__OnlinePlayerFriends_TA.DefaultPlatformDelayer'
	PsyNetFriendsDownloadDelayer=RetryDelayer_X'Default__OnlinePlayerFriends_TA.DefaultPsyNetDelayer'
	EpicFriendsDownloadDelayer=RetryDelayer_X'Default__OnlinePlayerFriends_TA.DefaultEpicDelayer'
}