/*******************************************************************************
* OnlineGamePrivateMatch_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGamePrivateMatch_X extends OnlineGameMatchmakingBase_X within OnlineGame_X;

var transient string PreferredRegion;
var() const localized string SearchingString;
var() const localized string StartSearchFailString;
var() const localized string FoundServerString;
var() const localized string AlreadyJoiningGameString;
var() const localized string TimeoutString;
var() const localized string WrongRegionString;
var transient CustomMatchSettings Settings;
var() const float SearchTimeout;

defaultproperties
{
	SearchingString="Searching for Private Match in: [Region]"
	StartSearchFailString="Unable to contact server. Please try again later... (Error: 88)"
	FoundServerString="Found game server! Connecting to [GameServerName] for Private Match..."
	AlreadyJoiningGameString="Already trying to join another game, try again later... (Error: 89)"
	TimeoutString="Unable to find a game server.  Please try again later... (Error: 90)"
	WrongRegionString="Server is from the wrong region. Please try again later... (Error: 91)"
	SearchTimeout=30.0
}