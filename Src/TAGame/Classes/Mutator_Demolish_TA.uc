/*******************************************************************************
* Mutator_Demolish_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Mutator_Demolish_TA extends Mutator_TA;

var() EDemolishTarget DemolishTarget;
var() EDemolishSpeed DemolishSpeed;
var() EVehicleDemolishMode VehicleDemolishMode;
var() bool bAwardDemolishCredit;

defaultproperties
{
	bAwardDemolishCredit=true
}