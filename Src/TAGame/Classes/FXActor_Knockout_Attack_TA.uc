/*******************************************************************************
* FXActor_Knockout_Attack_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FXActor_Knockout_Attack_TA extends FXActor_TA
	hidecategories(Navigation);

enum EAttackType
{
	AT_None,
	AT_Light,
	AT_Heavy,
	AT_MAX
};

var transient EAttackType AttackType;
var array<FXActorEvent_X> AttackEvents;

defaultproperties
{
	AttackEvents(0)=None
	AttackEvents(1)=FXActorEvent_X'FXActorEvents.KO_AttackLight'
	AttackEvents(2)=FXActorEvent_X'FXActorEvents.KO_AttackHeavy'
	//Parameters=ParameterDispenser_X'Default__FXActor_Knockout_Attack_TA.DefaultParameters'
}