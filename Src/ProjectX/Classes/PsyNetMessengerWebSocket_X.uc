/*******************************************************************************
* PsyNetMessengerWebSocket_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PsyNetMessengerWebSocket_X extends PsyNetMessenger_X;

struct native QueuedPsyNetMessage
{
	var PsyNetMessage_X Message;
	var AsyncTask Task;
	var float TimeoutTime;

	structdefaultproperties
	{
		Message=none
		Task=none
		TimeoutTime=0.0
	}
};

var() float MessageSendTimeout;
var export editinline StringMap HandshakeHeaders;
var string URL;
var WebSocketConnection_X Connection;
var array<QueuedPsyNetMessage> QueuedMessages;
var PsyNetConfig_X PsyNetConfig;

defaultproperties
{
	MessageSendTimeout=10.0
}