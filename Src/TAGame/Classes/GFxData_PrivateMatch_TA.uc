/*******************************************************************************
* GFxData_PrivateMatch_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_PrivateMatch_TA extends GFxData_OnlineMatch_TA;

var databinding array<GFxRegion> Regions;
var() databinding string ServerName;
var() databinding string Password;
var() databinding int SelectedMaxPlayerCount;
var() databinding bool bPublicMatch;
var() const int MinServerNameLength;
var() const localized string AlreadySearchingMessage;
var() const localized string AlreadySearchingForPublicMessage;
var() const localized string ServerNameLengthError;
var() const localized string DuplicateLanServerMessage;
var transient _Types_TA.SearchStatusOwner SearchStatusOwner;
var const ECustomMatchSettingsType SettingsType;

defaultproperties
{
	MinServerNameLength=3
	SearchStatusOwner=StatusOwner_PrivateMatch
	TableName=PrivateMatch
}