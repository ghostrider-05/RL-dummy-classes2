/*******************************************************************************
* OnlineGameInvite_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameInvite_X extends Online_X within OnlineGame_X;

var transient UniqueNetId FriendJoinPlayerID;
var const localized string UnableToFindFriendsGameString;
var const localized string AlreadyInSameServerString;
var const localized string FriendNotJoinable;
var transient string GameInviteCredentials;
var transient name ActionRequired;

defaultproperties
{
	
	UnableToFindFriendsGameString="Unable to find friend's game, try again later"
	AlreadyInSameServerString="You are already in a game with this friend"
}