/*******************************************************************************
* CheckReservation_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CheckReservation_X extends Object;

var() float StartDelay;
var() float Rate;
var transient float LastMatchmakingHeartbeatTime;
var transient AsyncTask CheckReservationTask;
var ServerReservationData FoundReservation;
var PsyNetConfig_X Config;
var export editinline ReservationBeacon_X ReservationBeacon;

defaultproperties
{
	StartDelay=5.0
	Rate=2.0
}