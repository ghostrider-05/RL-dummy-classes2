/*******************************************************************************
* GFxData_OnlineMatch_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_OnlineMatch_TA extends GFxDataSingleton_X
	abstract;

var transient LocalPlayer_TA TAPlayer;
var transient Profile_TA Profile;
var const localized string NoRegionsMessage;
var const localized string NotLoggedInPsynetMessage;
var const localized string BannedMessage;
var const localized string NotPartyLeaderMsg;
var transient int CountdownSeconds;
var transient OnlineGameParty_X OnlineParty;
var databinding string OnlineStatusError;
var transient GFxData_OnlineMatchStatus_TA SearchStatusData;
var transient bool bSearching;

defaultproperties
{
	NoRegionsMessage="Unable to contact Rocket League? servers, please try again later."
	NotLoggedInPsynetMessage="Not logged in to Rocket League? servers."
	BannedMessage="You are banned from playing online."
	NotPartyLeaderMsg="Only the party leader can start and cancel matchmaking."
}