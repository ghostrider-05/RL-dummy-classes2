/*******************************************************************************
* GFxData_EOSVoiceRoomMember_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_EOSVoiceRoomMember_TA extends GFxDataRow_X;

var /*0x00010000-0x00000000*/ databinding string EpicAccountId;
var /*0x00010000-0x00000000*/ databinding UniqueNetId PlayerID;
var /*0x00010000-0x00000000*/ databinding string RoomName;
var /*0x00010000-0x00000000*/ databinding bool bLocal;
var /*0x00010000-0x00000000*/ databinding bool bSpeaking;
var /*0x00010000-0x00000000*/ databinding bool bSelfMuted;
var /*0x00010000-0x00000000*/ databinding bool bLocalMuted;
var /*0x00010000-0x00000000*/ databinding bool bAdminMuted;
var /*0x00010000-0x00000000*/ databinding bool bBlocked;
var /*0x00010000-0x00000000*/ transient Persona_TA Persona;
var /*0x00010000-0x00000000*/ array<ActivePlayerVoice> PlayerActivity;

defaultproperties
{
	PlayerID=Uid=,
/* Exception thrown while deserializing PlayerID
System.ArgumentException: De aangevraagde waarde NpId is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
	TableName=EOSVoiceRoomMember
	bLevelTransitionPersistent=true
}