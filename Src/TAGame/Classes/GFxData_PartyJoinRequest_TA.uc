/*******************************************************************************
* GFxData_PartyJoinRequest_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_PartyJoinRequest_TA extends GFxDataSingleton_X;

var const localized string RequestTitle;
var const localized string RequestSendBody;
var const localized string RequestAcceptBody;
var const Qword ExpirationTimeSeconds;
var OnlineGameParty_X OnlineGameParty;
var Personas_TA PersonasData;
var Parties_X PsyNetParty;

defaultproperties
{
	/**RequestTitle="Party Request"*/
	/**RequestSendBody="Join request sent to [PlayerName]"*/
	/**RequestAcceptBody="Join request from [PlayerName] was accepted"*/
	
	TableName=PartyJoinRequest
	bLevelTransitionPersistent=true
}