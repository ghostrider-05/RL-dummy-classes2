/*******************************************************************************
* EpicFriendsPlugin_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EpicFriendsPlugin_X extends Object within OnlinePlayer_X
	config(Game);

var string ServerURL;
var config string FriendsServerURL;
var config string AddFriendURL;
var config string RemoveFriendURL;
var config string OutgoingFriendRequestsURL;
var config string IncomingFriendRequestsURL;
var config string BlockPlayerURL;
var config string BlockListURL;
var config string AccountSummaryURL;

defaultproperties
{
	/**FriendsServerURL="https://api.epicgames.dev/epic/friends"*/
	/**AddFriendURL="/v1/{AccountId}/friends/{FriendId}"*/
	/**RemoveFriendURL="/v1/{AccountId}/friends/{FriendId}"*/
	/**OutgoingFriendRequestsURL="/v1/{AccountId}/outgoing"*/
	/**IncomingFriendRequestsURL="/v1/{AccountId}/incoming"*/
	/**BlockPlayerURL="/v1/{AccountId}/blocklist/{UserId}"*/
	/**BlockListURL="/v1/{AccountId}/blocklist"*/
	/**AccountSummaryURL="/v1/{AccountId}"*/
}