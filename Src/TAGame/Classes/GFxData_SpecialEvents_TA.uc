/*******************************************************************************
* GFxData_SpecialEvents_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_SpecialEvents_TA extends GFxDataSingleton_X;

var transient SpecialEventConfig_TA EventData;
var databinding ESpecialEventState EventState;
var databinding int Currency;
var databinding int SecondsRemaining;
var transient array<GFxData_SpecialEventStore_TA> EventStores;
var transient Wallet_TA Wallet;
var databinding bool bSpecialEventButtonVisible;

defaultproperties
{
	TableName=SpecialEvents
	
}