/*******************************************************************************
* GFxData_MatchHistoryManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MatchHistoryManager_TA extends GFxDataSingleton_X;

enum ESyncStatus
{
	SyncStatus_None,
	SyncStatus_Syncing,
	SyncStatus_Success,
	SyncStatus_Error,
	SyncStatus_MAX
};

var ESyncStatus SyncStatus;
var string SyncErrorMsg;
var databinding bool bMatchHistorySyncFailed;
var bool bCached;
var array<GFxData_MatchHistory_TA> Matches;
var RPC_GetMatchHistory_TA SyncRPC;
var MatchHistoryConfig_TA Config;

defaultproperties
{
	TableName=MatchHistoryManager
}