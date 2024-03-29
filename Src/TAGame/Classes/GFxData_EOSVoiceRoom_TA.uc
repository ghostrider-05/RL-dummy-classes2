/*******************************************************************************
* GFxData_EOSVoiceRoom_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_EOSVoiceRoom_TA extends GFxDataRow_X;

struct NotificationCooldown
{
	var string EpicAccountId;
	var Qword NotificationTime;

	structdefaultproperties
	{
		EpicAccountId=""
		
	}
};

var databinding string RoomName;
var databinding EVoiceRoomType RoomType;
var databinding string RoomTitle;
var const localized string PartyRoomTitle;
var const localized string MatchRoomTitle;
var const localized string SettingDisabledTitle;
var const localized string SettingDisabledDesc;
var const localized string MatchTypeTitle;
var const localized string PartyTypeTitle;
var const localized string SpectatorRoomTitle;
var const localized string SpectatorTypeTitle;
var const localized string RemotePlayerJoinedRoom;
var const localized string PlayerJoinedRoom;
var string RoomTypeString;
var array<GFxData_EOSVoiceRoomMember_TA> RoomMembers;
var transient EOSVoiceSettingsSave_TA VoiceSettingsSave;
var bool bManuallyJoined;
var array<NotificationCooldown> NotificationCooldowns;
var Qword CreatedTimestamp;
var VoiceRoomPlayerActivity PlayerActivity;
var EOSVoiceManager_TA VoiceManager;
var Personas_TA Personas;
var EOSVoiceConfig_TA VoiceConfig;

defaultproperties
{
	/**PartyRoomTitle="Party Channel"*/
	/**MatchRoomTitle="Team Channel"*/
	/**SettingDisabledTitle="Voice Disabled"*/
	/**SettingDisabledDesc="Voice chat is currently disabled in your settings."*/
	/**MatchTypeTitle="Team"*/
	/**PartyTypeTitle="Party"*/
	/**SpectatorRoomTitle="Spectator Channel"*/
	/**SpectatorTypeTitle="Spectator"*/
	/**RemotePlayerJoinedRoom="[PlayerName] has joined the [VoiceRoomType] Voice Channel"*/
	/**PlayerJoinedRoom="You have joined the [VoiceRoomType] Voice Channel"*/
	TableName=EOSVoiceRoom
	bLevelTransitionPersistent=true
}