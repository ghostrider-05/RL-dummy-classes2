/*******************************************************************************
* NetworkSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class NetworkSave_TA extends SaveObject_TA;

var bool bEnableCrossPlatform;
var bool bDisableCrossPlay;
var ENetworkValue IncomingPacketFrequency;
var ENetworkValue OutgoingPacketFrequency;
var ENetworkValue IncomingBandwidth;
var ENetworkInputBuffer NetworkInputBuffer;

defaultproperties
{
	bEnableCrossPlatform=true
	IncomingPacketFrequency=Net_High
	OutgoingPacketFrequency=Net_High
	IncomingBandwidth=Net_High
}