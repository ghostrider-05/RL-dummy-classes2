/*******************************************************************************
* RPCConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RPCConfig_X extends OnlineConfig_X;

var() array< class > DisabledClasses;
var() array<string> DisabledServices;
var() int MaxRPCsPerBatch;

defaultproperties
{
	MaxRPCsPerBatch=10
}