/*******************************************************************************
* SpecialPickup_CarFreeze_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialPickup_CarFreeze_TA extends SpecialPickup_Targeted_TA
	notplaceable
	hidecategories(Navigation);

var() FXActor_X OtherCarFXArchetype;
var() float TireFrictionScale;
var() float AddAngularVelocity;
var FXActor_X OtherCarFX;
var Car_TA OtherCar;
