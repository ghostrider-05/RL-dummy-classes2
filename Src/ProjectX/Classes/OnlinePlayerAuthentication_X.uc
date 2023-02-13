/*******************************************************************************
* OnlinePlayerAuthentication_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayerAuthentication_X extends Online_X within OnlinePlayer_X
	config(Engine);

var transient RPC_LoginAuthPlayer_X LoginRPC;
var transient RPC_LoginAuthPlayer_X LoginSuccessRPC;
var transient UniqueNetId LoggedInPlayerId;
var transient string LoggedInPlayerName;
var transient string PlayerUID;
var transient string Platform;
var bool bLoggedIn;
var transient bool bPlatformTokenAuthenticationFailed;
var transient bool bPlatformAuthTicketFailed_Switch;
var bool bSkipAuth;
var transient bool bLastChanceAuthBan;
var Error AuthLoginError;
var transient BanMessage_X BanMessage;
var transient string EncryptedAuthTicket;
var transient string EpicAuthTicket;
var config int AuthRequestFailureMax;
var const int AuthRequestRetryTime;
var transient int AuthRequestFailureCount;
var transient string AuthenticatedName;
var EpicLogin_X EpicLogin;
var Error PrimaryAccountNotSetError;

defaultproperties
{
	
	AuthRequestRetryTime=2
}