/*******************************************************************************
* ClubInvite_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ClubInvite_X extends Object;

var /*0x00010000-0x00000000*/ Qword ClubID;
var /*0x00010000-0x00000000*/ string ClubName;
var /*0x00010000-0x00000000*/ string ClubTag;
var /*0x00010000-0x00000000*/ ClubMember InvitedBy;

defaultproperties
{
	InvitedBy=PlayerID=Uid=,
/* Exception thrown while deserializing PlayerID
System.ArgumentException: De aangevraagde waarde NpId is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */,
/* Exception thrown while deserializing InvitedBy
System.ArgumentException: De aangevraagde waarde __EventSyncComplete__Delegate is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
}