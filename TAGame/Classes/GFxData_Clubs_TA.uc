/*******************************************************************************
* GFxData_Clubs_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Clubs_TA extends GFxDataSingleton_X;

var /*0x00010000-0x00000000*/ databinding Qword LocalClubID;
var /*0x00010000-0x00000000*/ databinding bool bClubOwner;
var /*0x00010000-0x00000000*/ databinding bool bSyncedLocalClub;
var /*0x00010000-0x00000000*/ transient bool bHasSyncedClubInvites;
var /*0x00010000-0x00000000*/ databinding string LocalClubSyncError;
var /*0x00010000-0x00000000*/ databinding string ExecutingClubAction;
var /*0x00018000-0x00000000*/ PsyNet_X PsyNet;
var /*0x00018000-0x00000000*/ OnlineClubProvider_X ClubProvider;
var /*0x00018000-0x00000000*/ ClubsConfig_TA ClubsConfig;
var /*0x00018000-0x00000000*/ OnlineGameParty_X Party;
var /*0x00018000-0x00000000*/ transient Personas_TA PersonasData;
var /*0x00010000-0x00000000*/ OnlineClubManager_X ClubManager;
var /*0x00010000-0x00000000*/ transient array<GFxData_ClubDetails_TA> AllClubDetails;
var /*0x00010000-0x00000000*/ transient GFxClubAction_TA CurrentClubAction;
var /*0x00010000-0x00000000*/ const localized string TagTooShort;
var /*0x00010000-0x00000000*/ const localized string TagTooLong;
var /*0x00010000-0x00000000*/ const localized string TagHasInvalidCharacters;
var /*0x00010000-0x00000000*/ const localized string NameTooShort;
var /*0x00010000-0x00000000*/ const localized string NameTooLong;
var /*0x00010000-0x00000000*/ const localized string NameHasInvalidCharacters;

defaultproperties
{
	TagTooShort="Club tag is too short."
	TagTooLong="Club tag is too long."
	TagHasInvalidCharacters="Club tag contains invalid characters."
	NameTooShort="Club name is too short."
	NameTooLong="Club name is too long."
	NameHasInvalidCharacters="Club name contains invalid characters."
	TableName=Clubs
	bLevelTransitionPersistent=true
}