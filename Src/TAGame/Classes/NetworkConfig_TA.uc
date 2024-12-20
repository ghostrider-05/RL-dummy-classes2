/*******************************************************************************
* NetworkConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class NetworkConfig_TA extends OnlineConfig_X;

struct native NetworkLimit
{
	var() float Min;
	var() float Max;
	var float OldMin;
	var float OldMax;

	structdefaultproperties
	{
		Min=0.0
		Max=0.0
		OldMin=0.0
		OldMax=0.0
	}
};

var() NetworkLimit ReplicationRate;
var() NetworkLimit ClientRate;
var() NetworkLimit ClientInputRate;
var float MatchFailureSecondsOriginalValue;
var() int MaxClientUploadFrames;
var() bool bForceNetPackets;
var() float ForcePacketSignificantDistance;
var() float MatchFailureSeconds;

defaultproperties
{
	MaxClientUploadFrames=10
	bForceNetPackets=true
	ForcePacketSignificantDistance=1000.0
	MatchFailureSeconds=8.0
}