/*******************************************************************************
* ReservationsReadyMessage_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ReservationsReadyMessage_X extends BeaconMessage_X within ReservationBeacon_X;

var string ServerAddress;
var string PingAddress;
var array<int> ProductIDs;
var NetworkEncryptionKey Keys;
