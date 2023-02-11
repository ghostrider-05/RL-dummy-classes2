/*******************************************************************************
* OnlineGamePlayerTitles_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGamePlayerTitles_TA extends Online_X;

struct CachedPlayerData
{
	var UniqueNetId PlayerID;
	var array<name> Titles;
	var float CacheTime;
	var RPC_X RPC;
	var array< Object > Callbacks;

	structdefaultproperties
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
		Titles.Empty
		CacheTime=0.0
		RPC=none
		Callbacks.Empty
	}
};

var() float PlayerTitleCacheTime;
var transient array<CachedPlayerData> PlayerCache;
var /*0x00008000-0x00000000*/ PlayerTitleConfig_X TitleConfig;

defaultproperties
{
	PlayerTitleCacheTime=600.0
}