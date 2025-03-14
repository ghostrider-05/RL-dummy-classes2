/*******************************************************************************
* CarComponent_Boost_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarComponent_Boost_TA extends CarComponent_AirActivate_TA
	notplaceable
	hidecategories(Navigation);

struct native ReplicatedBoostData
{
	var byte GrantCount;
	var byte BoostAmount;
	var byte Unused1;
	var byte Unused2;

	structdefaultproperties
	{
		GrantCount=0
		BoostAmount=0
		Unused1=0
		Unused2=0
	}
};

var() float BoostConsumptionRate;
// maximum amount of boost (in seconds) this car can hold
var() float MaxBoostAmount;
// how much boost the car starts with
var() float StartBoostAmount;
// how much boost (in seconds) the car currently has
var() float CurrentBoostAmount;
var() float BoostModifier;
var transient float LastBoostAmountRequestTime;
var transient float LastBoostAmount;
var transient bool bPendingConfirmBoostAmount;
var bool bRechargeGroundOnly;
var() repnotify bool bNoBoost;
// Overall boost force
var() float BoostForce;
// when someone presses boost, don't cut off unless this amount of time has passed: prevents annoying on/off boosting
var() float MinBoostTime;
var float RechargeRate;
var float RechargeDelay;
var() int UnlimitedBoostRefCount;
var EBoostRestriction BoostRestriction;
var repnotify transient byte ReplicatedBoostAmount;
var repnotify transient ReplicatedBoostData ReplicatedBoost;
var ProductAsset_Boost_TA BoostAsset;
var() FXActorEvent_X BoostShakeState;
var ProfileControlsSave_TA ControlsSave;

defaultproperties
{
	BoostModifier=1.0
	BoostShakeState=FXActorEvent_X'FXActorEvents.BoostShake'
}
replication
{
	 if(bNetInitial)
		BoostModifier, bNoBoost;

	 if(bNetDirty)
		CurrentBoostAmount, StartBoostAmount;

	 if(bNetInitial/**Empty key for position: 35.*/)
		ReplicatedBoost, ReplicatedBoostAmount;

	 if(bNetInitial/**Empty key for position: 62.*/)
		RechargeDelay, RechargeRate, 
		UnlimitedBoostRefCount, bRechargeGroundOnly;

	 if(bNetInitial/**Missing key for position: 72.*/)
		BoostRestriction;
}
