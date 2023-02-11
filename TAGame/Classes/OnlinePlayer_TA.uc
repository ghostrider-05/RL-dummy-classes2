/*******************************************************************************
* OnlinePlayer_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayer_TA extends OnlinePlayer_X within LocalPlayer_TA;

var AchievementManager_TA AchievementManagerArchetype;
var AchievementManager_TA AchievementManager;
var NotificationManager_TA NotificationManager;
var PlayerProgressionManager_TA PlayerProgressionManager;
var PlayerProgressionManager_TA PlayerProgressionManagerArchetype;
var FirstTimeExperienceManager_TA FirstTimeManagerArchetype;
var FirstTimeExperienceManager_TA FTEManager;
var StatusTriggerManager_TA TriggerManager;
var /*0x00010000-0x00000000*/ EOSMetrics_X EOSMetricHeartbeat;
var /*0x00010000-0x00000000*/ CrumbTrails_TA CrumbTrailArchetype;
var /*0x00010000-0x00000000*/ CrumbTrails_TA CrumbsMgr;
var /*0x00010000-0x00000000*/ ChallengeManager_TA ChallengeManager;
var Wallet_TA WalletArchetype;
var Wallet_TA Wallet;
var /*0x00010000-0x00000000*/ ShopsManager_TA ShopsManagerArchetype;
var /*0x00010000-0x00000000*/ ShopsManager_TA ShopsManager;
var ChatHistory_TA ChatHistory;
var OnlinePlayerMTX_TA MTX;
var export editinline ObjectProvider RewardDrops;
var export editinline AccountSettingsComponent_TA AccountSettings;
var /*0x00010000-0x00000000*/ transient UniqueNetId StayAsPartyLeaderID;
var EOSPermissions_TA EOSPermissions;
var bool bInCabinedMode;
var bool bAskAge;
var bool bAskParentEmail;
var bool bConfirmDisplayName;
var bool bUnsupportedCorrectiveActionNeeded;
var bool bShowedAgeGate;
var string Country;
var /*0x00008000-0x00000000*/ EpicConfig_X EpicConfig;
var /*0x00008000-0x00000000*/ ESportConfig_TA ESportConfig;
var const localized string InvalidDate;
var const localized string InvalidEmail;

defaultproperties
{
	StayAsPartyLeaderID=Uid=,
/* Exception thrown while deserializing StayAsPartyLeaderID
System.ArgumentException: De aangevraagde waarde NpId is niet gevonden.
   bij System.Enum.EnumResult.SetFailure(ParseFailureKind failure, String failureMessageID, Object failureMessageFormatArgument)
   bij System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   bij System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   bij System.Enum.Parse(Type enumType, String value)
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 212
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
}