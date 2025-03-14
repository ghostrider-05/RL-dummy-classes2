/*******************************************************************************
* EpicConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EpicConfig_X extends OnlineConfig_X
	config(Engine);

struct ChatPermissionPair
{
	var string PermissionLabel;
	var EChatPermissionLevel Level;

	structdefaultproperties
	{
		PermissionLabel=""
		Level=CPL_Everybody
	}
};

struct TradePermissionPair
{
	var string PermissionLabel;
	var ETradePermissionLevel Level;

	structdefaultproperties
	{
		PermissionLabel=""
		Level=TPL_Everybody
	}
};

struct TradePermissionEnabledPair
{
	var ETradePermissionLevel Level;
	var bool bEnabled;

	structdefaultproperties
	{
		Level=TPL_Everybody
		bEnabled=false
	}
};

var() bool bAllowRemoteAvatars;
var() bool bPollDuringAccountLinking;
var bool bEnforcePinRequirementForFriends;
var bool bEnforceCabinedMode;
var bool bPromptForPin;
var bool bForceEnableTrade;
var() float RemoteAvatarPermissionRequestDelay;
var() int SecondsBetweenPolling;
var() int SecondsBeforeRequestsTimeout;
var() int SecondsToWaitBeforeRetryingAuth;
var() int SecondsToWaitBeforeUpdatingFriendsList;
var() array<LocalizedAccountLinkURL> AccountLinkURLOverrides;
var() string DefaultAccountLinkURL;
var string PermissionServerURL;
var string IdentityServerURL;
var string CabinedModeURL;
var string CreateAccountURL;
var array<ChatPermissionPair> ChatPermissionPairs;
var EChatPermissionLevel DefaultChatPermissionLevel;
var PlayerPermissions DefaultPermissions;
var string ForgotPinURL;
var string ParentalControlsURL;
var string PrivacyPolicyURL;
var string ActivateURL;
var string AccountURL;
var string TOSURL;
var() config string SandboxId;
var() config string DeploymentId;

defaultproperties
{
	bPollDuringAccountLinking=true
	bEnforcePinRequirementForFriends=true
	RemoteAvatarPermissionRequestDelay=0.10
	SecondsBetweenPolling=15
	SecondsBeforeRequestsTimeout=30
	SecondsToWaitBeforeRetryingAuth=45
	SecondsToWaitBeforeUpdatingFriendsList=2
	PermissionServerURL="https://api.kws.ol.epicgames.com/v1/epic-settings/public/users/{AccountId}/values?game=rl"
	IdentityServerURL="https://api.epicgames.dev/epic/id"
	CabinedModeURL="/v1/accounts?accountId={AccountId}"
	CreateAccountURL="/v1/accounts"
	DefaultChatPermissionLevel=CPL_Nobody
	DefaultPermissions=(TextChat=CPL_Nobody,VoiceChat=CPL_Nobody,Trade=TPL_Nobody,bRequirePinForFriends=true,bItemShopNotificationsAllowed=false,VoiceReporting=VRP_Always)
	ForgotPinURL="https://rocketleague.com/pin-reset/"
	ParentalControlsURL="https://rl.gg/cabinedAccounts"
	PrivacyPolicyURL="https://www.epicgames.com/site/privacypolicy"
	ActivateURL="https://www.rocketleague.com/Activate/"
	AccountURL="https://www.epicgames.com/account"
	TOSURL="https://www.epicgames.com/site/tos"
}