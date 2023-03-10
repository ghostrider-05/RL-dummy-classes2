/*******************************************************************************
* PsyNetConnection_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PsyNetConnection_X extends Object
	implements(IDisposable);

var PsyNet_X PsyNet;
var OnlineSubsystem OnlineSub;
var PsyNetConfig_X Config;
var PsyNetRetryConfig_X RetryConfig;
var PsyNetUrl_X URL;
var export editinline StringMap Headers;
var PsyNetRequestQue_X RequestQue;
var export editinline RPCQueue_X RPCQueue;
var PsyNetServiceProvider_X ServiceProvider;
var PsyNetMessengerHttp_X HttpMessenger;
var PsyNetMessengerWebSocket_X PerConMessenger;
var PerCon_X PerCon;
var export editinline PerConMetrics_X PerConMetrics;
var bool bAuthorized;
var bool bConnected;
var bool bFreshConnection;
var bool bPerConConnected;
var float ConnectedChangeTime;
var Error DisabledError;
var array<Error> DisabledErrorStack;
var Error MaintenanceError;
var Error DuplicateLoginError;
var Error NoInternetError;
var Error NoUrlError;
var Error AuthDisabledError;
var() array<float> AuthRetryDelays;
var int ConsecutiveAuthFailures;

defaultproperties
{
	AuthRetryDelays(0)=2.0
	AuthRetryDelays(1)=5.0
	AuthRetryDelays(2)=10.0
	AuthRetryDelays(3)=20.0
	AuthRetryDelays(4)=40.0
	AuthRetryDelays(5)=60.0
}