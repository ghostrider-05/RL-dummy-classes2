/*******************************************************************************
* ReservationsPasswordMessage_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ReservationsPasswordMessage_X extends BeaconMessage_X within ReservationBeacon_X;

enum EPasswordFailureReason
{
	PFR_Empty,
	PFR_Mismatch,
	PFR_MAX
};

var ReservationsPasswordMessage_X.EPasswordFailureReason Reason;
