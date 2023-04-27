/*******************************************************************************
* PsyNetChannel_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PsyNetChannel_X extends Object;

struct PendingChannelService
{
	var PsyNetClientService_X Service;
	var int MessageId;
	var AsyncTask Task;
	var float ReceiveTime;

	structdefaultproperties
	{
		Service=None
		MessageId=0
		Task=None
		ReceiveTime=0.0
	}
};

var string ChannelName;
var bool bOpen;
var bool bReceivedFirstMessage;
var bool bClosed;
var bool bTimedOut;
var int NextMessageID;
var() float WaitForMessageTime;
var array<PendingChannelService> ServiceQueue;
var export editinline PsyNetServiceSubscriptions_X Subscriptions;

defaultproperties
{
	WaitForMessageTime=10.0
	Subscriptions=PsyNetServiceSubscriptions_X'Default__PsyNetChannel_X.DefaultSubscriptions'
}