/*******************************************************************************
* ServerConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ServerConfig_X extends OnlineConfig_X
	config(Engine);

var() config float HeartbeatSeconds;
var() config float HeartbeatRetrySeconds;
var() config bool bUploadLogFiles;
var() config bool bUploadReplays;
var() config bool bFlatbufferRecordInput;
var() config int MaxUploadLogFileSize;
var() config float NetServerMaxTickRate;
var() config float IdleNetServerMaxTickRate;
var() config float FlatbufferChance;
var() config int FlatbufferMaxRecordSizeMB;
var() config int FlatbufferPacketSendRate;
var() config float MinSecondsForUnstableConnection;
var() config float MinSecondsUntilConnectionCheck;

defaultproperties
{
	/**HeartbeatSeconds=300.0*/
	/**HeartbeatRetrySeconds=20.0*/
	/**bUploadLogFiles=true*/
	/**bUploadReplays=true*/
	/**bFlatbufferRecordInput=true*/
	/**MaxUploadLogFileSize=1048576*/
	/**NetServerMaxTickRate=57.0*/
	/**IdleNetServerMaxTickRate=20.0*/
	/**FlatbufferPacketSendRate=30*/
	/**MinSecondsForUnstableConnection=20.0*/
	/**MinSecondsUntilConnectionCheck=5.0*/
}