/*******************************************************************************
* Persona_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Persona_TA extends Object;

var databinding string PlayerName;
var string UnSanitizedPlayerName;
var databinding UniqueNetId PlayerID;
var databinding OnlineSubsystem.EOnlineFriendState OnlinePresenceState;
var OnlineSubsystem.EOnlineFriendState OnlinePresenceState_Platform;
var OnlineSubsystem.EOnlineFriendState OnlinePresenceState_PsyNet;
var OnlineSubsystem.EOnlineFriendState OnlinePresenceState_Epic;
var databinding _Types_Core.OnlinePlatform Platform;
var databinding _Types_Core.OnlinePlatform SecondaryPlatform;
var databinding string OnlinePresenceMessage;
var databinding bool bBlockedStatus;
var databinding bool bPlatformFriend;
var databinding bool bPsyNetFriend;
var databinding bool bEpicFriend;
var databinding bool bNoEpicAccountIdFound;
var databinding bool bNameSanitized;
var databinding bool bCanShowAvatar;
var bool bAvatarPermissionDownloaded;
var databinding int GroupId;
var databinding Qword LastActive;
var databinding string PlayerNote;
var /*0x00010000-0x00000000*/ databinding string ClubTag;
var string UnsanitizedEpicName;
var databinding string SecondaryPlayerName;
var string UnsanitizedSecondaryPlayerName;
var string EpicAccountId;

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
	OnlinePresenceState_Platform=OFS_Unknown
	OnlinePresenceState_PsyNet=OFS_Unknown
	OnlinePresenceState_Epic=OFS_Unknown
}