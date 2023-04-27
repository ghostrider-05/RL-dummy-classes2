/*******************************************************************************
* GFxData_Friends_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Friends_TA extends GFxDataSingleton_X
	config(Game);

const PartyGroupID = 10;
const HiddenGroupId = 11;

enum ENameDisplayRelationshipProxy
{
	NameDisplayRelationshipProxy_NoChange,
	NameDisplayRelationshipProxy_ForcePlatform,
	NameDisplayRelationshipProxy_ForcePsyNet,
	NameDisplayRelationshipProxy_ForceAll,
	NameDisplayRelationshipProxy_MAX
};

var databinding array<PersonaDataId> Friends;
var databinding array<PersonaDataId> PlatformFriends;
var databinding array<PersonaDataId> EpicFriends;
var databinding array<PersonaDataId> bLocked;
var export editinline RecentPlayers_TA RecentPlayers;
var transient array<Persona_TA> RecentPlayersToBeAdded;
var databinding array<PersonaDataId> Recent;
var databinding array<PersonaDataId> Pending;
var databinding int NumOnlineFriendsPlatform;
var databinding int NumInGameFriendsPlatform;
var databinding int NumOnlineFriendsEpic;
var databinding int NumInGameFriendsEpic;
var databinding bool bPlatformFriendsDownloadFailed;
var databinding bool bEpicFriendsDownloadFailed;
var databinding bool bPromptForPin;
var databinding bool bRequirePinForFriends;
var const config bool bUsePresenceGroups;
var bool bCrossplayEnabled;
var bool bPermissionsInitialized;
var databinding string ForgotPinURL;
var GFxData_FriendsHiddenManager_TA HiddenManager;
var transient Personas_TA PersonasData;
var transient OnlineGame_X OnlineGame;
var export editinline transient AccountSettingsComponent_TA AccountSettings;
var const config array<EPresenceGroup> DefaultPlatformFriendGroups;
var const config array<EPresenceGroup> DefaultEpicFriendGroups;
var const config array<EPresenceGroup> DefaultAllFriendGroups;
var transient OnlineGameParty_X Party;
var array<Persona_TA> PartyMemberPersonas;
var GFxData_PersonaGroup_TA PlatformPartyPresenceGroup;
var GFxData_PersonaGroup_TA EpicPartyPresenceGroup;
var export editinline transient OtherPlayerProfile_TA ObservedProfile;
var string PinGrantPlatformName;
var int PinGrantPlatform;

defaultproperties
{
	
	/**bUsePresenceGroups=true*/
	/**DefaultPlatformFriendGroups(0)=84
	DefaultPlatformFriendGroups(1)=57*/
	/**DefaultEpicFriendGroups(0)=84
	DefaultEpicFriendGroups(1)=57*/
	/**DefaultAllFriendGroups(0)=83*/
	
	TableName=Personas
	bLevelTransitionPersistent=true
}