/*******************************************************************************
* ClanforgeReservation_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ClanforgeReservation_X extends Object;

enum EReserveState
{
	ReserveState_Unitialized,
	ReserveState_Unreserved,
	ReserveState_Reserved,
	ReserveState_MAX
};

var string ReserveURLs[EReserveState];
var transient EReserveState ReserveState;
var() array<float> RetryDelays;
var transient int SendFailures;
var transient array<WebRequest_X> QueuedRequests;
var transient WebRequest_X PendingRequest;

defaultproperties
{
	RetryDelays(0)=1.0
	RetryDelays(1)=3.0
	RetryDelays(2)=10.0
	RetryDelays(3)=20.0
}