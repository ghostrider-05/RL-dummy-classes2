/*******************************************************************************
* GFxData_EOSVoiceRoomMember_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_EOSVoiceRoomMember_TA extends GFxDataRow_X;

var databinding string EpicAccountId;
var databinding UniqueNetId PlayerID;
var databinding string RoomName;
var databinding bool bLocal;
var databinding bool bSpeaking;
var databinding bool bSelfMuted;
var databinding bool bLocalMuted;
var databinding bool bAdminMuted;
var databinding bool bBlocked;
var transient Persona_TA Persona;
var array<ActivePlayerVoice> PlayerActivity;

defaultproperties
{
	
	TableName=EOSVoiceRoomMember
	bLevelTransitionPersistent=true
}