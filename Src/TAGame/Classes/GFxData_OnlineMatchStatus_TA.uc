/*******************************************************************************
* GFxData_OnlineMatchStatus_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_OnlineMatchStatus_TA extends GFxDataSingleton_X;

enum SearchMessageType
{
	MessageType_Status,
	MessageType_Warning,
	MessageType_MAX
};

var databinding transient bool bSearching;
var databinding transient name SearchState;
var transient string SavedSearchingString;
var databinding transient _Types_TA.SearchStatusOwner StatusOwner;
var transient OnlineGameParty_X OnlineParty;
var const localized string PartyLeaderSearchingMessage;

defaultproperties
{
	/**PartyLeaderSearchingMessage="Party leader is searching for a match."*/
	TableName=OnlineMatchStatus
	bLevelTransitionPersistent=true
}