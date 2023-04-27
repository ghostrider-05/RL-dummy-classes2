/*******************************************************************************
* SpecialPickup_TimeBomb_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialPickup_TimeBomb_TA extends SpecialPickup_TA
	notplaceable
	hidecategories(Navigation);

var() float Radius;
var() float AlmostReadyDuration;
var() float StartMatSpeed;
var() float AlmostReadyMatSpeed;
var() float ImpulseForce;
var() float CarVerticalForce;
var() float CarTorque;
var() bool bDemolish;
var() bool bImpulse;