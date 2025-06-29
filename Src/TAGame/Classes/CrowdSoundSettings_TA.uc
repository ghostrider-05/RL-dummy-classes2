/*******************************************************************************
* CrowdSoundSettings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CrowdSoundSettings_TA extends CrowdSoundSettingsBase_TA;

var(Tension) export editinline DynamicValueModifierCurve_X TensionScorability;
var(Tension) export editinline DynamicValueModifierCurve_X TensionOpenGoal;
var(Tension) export editinline DynamicValueModifierCurve_X TensionSpeedTowardsGoal;
var(Tension) export editinline DynamicValueModifierCurve_X TensionCloseToGoal;
var(Tension) export editinline DynamicValueModifierCurve_X TensionDistanceFromGoal;
var(Tension) export editinline DynamicValueModifierCurve_X TensionAerial;
var(Tension) export editinline DynamicValueModifierDuration_X TensionFastBreak;
var(Tension) export editinline DynamicValueModifierCurve_X TensionTimeSinceLastGoal;
var(Tension) export editinline DynamicValueModifierCurve_X TensionScoreSeparation;
var(Tension) export editinline DynamicValueModifierCurve_X TensionTimeNearGoal;
var(Tension) export editinline DynamicValueModifierCurve_X TensionLeadChanges;
var(Tension) export editinline DynamicValueModifierDuration_X TensionGoalScored;
var(Excitement) export editinline DynamicValueModifierDuration_X ExcitementKickoffTouch;
var(Excitement) export editinline DynamicValueModifierCurve_X ExcitementScorability;
var(Excitement) export editinline DynamicValueModifierDuration_X ExcitementFastBreak;
var(Excitement) export editinline DynamicValueModifierDuration_X ExcitementGoal;
var(Excitement) export editinline DynamicValueModifierDuration_X ExcitementAerial;
var(Excitement) export editinline DynamicValueModifierDuration_X ExcitementTenseClear;
var(Excitement) export editinline DynamicValueModifierCurve_X ExcitementLeadChanges;
var(Excitement) export editinline DynamicValueModifierCurve_X ExcitementScoreSeparation;
var(Excitement) export editinline DynamicValueModifierCurve_X ExcitementTimeSinceLastGoal;
var(Upset) export editinline DynamicValueModifierDuration_X UpsetAnyDemo;
var(Upset) export editinline DynamicValueModifierDuration_X UpsetRelevantDemo;
var(Upset) export editinline DynamicValueModifierDuration_X UpsetGoal;
var(Anticipation) export editinline DynamicValueModifierCurve_X AnticipationScorability;
var(Anticipation) export editinline DynamicValueModifierDuration_X AnticipationFastBreak;
var(Anticipation) export editinline DynamicValueModifierCurve_X AnticipationOpenGoal;
var(Events) float OpenGoalMinDuration;
var(Events) float OpenGoalMaxDistance;
var(Events) float OpenGoalMaxDefense;
var(Events) float LongTimeNearGoalDuration;
var(Events) float LongTimeNearGoalMaxDistance;
var(Events) float ShotMaxDistanceToGoal;
var(Events) float ShotScorability;
var(Events) float ShotSpeedTowardsGoal;
var(Events) float SaveScorability;
var(Events) float SaveDistanceToGoal;
var(Events) float SaveHitMaxTime;
var(Events) float SaveShotMaxTime;
var(Events) float FastBreakMinDistanceToGoal;
var(Events) float FastBreakMaxDistanceToGoal;
var(Events) float FastBreakSpeedTowardsGoal;
var(Events) float FastBreakDuration;
var(Events) float MissedShotMinScorability;
var(Events) float MissedShotMinTension;
var(Events) float MissedShotMinLastHitTime;
var(Events) float RelevantDemoMaxDistanceToBall;
var(Events) float RelevantDemoMaxBallDistanceToGoal;
var(Events) float AerialMinValue;
var(Events) float AerialMinDuration;
var(Events) float AerialMinCarInAirDuration;
var(Events) float AerialCooldown;
var(Events) int KickoffScoreSeparation;
var(Events) float TenseNearGoalMinTension;
var(Events) float TenseNearGoalDuration;
var(Events) float TenseNearGoalDistance;
var(Events) float TenseClearDistance;
var(Events) float MinCrossbarImpactForce;
var(State) array<CrowdScoreState> ScoreStates;

defaultproperties
{
	
	TensionScorability=DefaultTensionScorability
	
	TensionOpenGoal=DefaultTensionOpenGoal
	
	TensionSpeedTowardsGoal=DefaultTensionSpeedTowardsGoal
	
	TensionCloseToGoal=DefaultTensionCloseToGoal
	
	TensionDistanceFromGoal=DefaultTensionDistanceFromGoal
	
	TensionAerial=DefaultTensionAerial
	
	TensionFastBreak=DefaultTensionFastBreak
	
	TensionTimeSinceLastGoal=DefaultTensionTimeSinceLastGoal
	
	TensionScoreSeparation=DefaultTensionScoreSeparation
	
	TensionTimeNearGoal=DefaultTensionTimeNearGoal
	
	TensionLeadChanges=DefaultTensionLeadChanges
	
	TensionGoalScored=DefaultTensionGoalScored
	
	ExcitementKickoffTouch=DefaultExcitementKickoffTouch
	
	ExcitementScorability=DefaultExcitementScorability
	
	ExcitementFastBreak=DefaultExcitementFastBreak
	
	ExcitementGoal=DefaultExcitementGoal
	
	ExcitementAerial=DefaultExcitementAerial
	
	ExcitementTenseClear=DefaultExcitementTenseClear
	
	ExcitementLeadChanges=DefaultExcitementLeadChanges
	
	ExcitementScoreSeparation=DefaultExcitementScoreSeparation
	
	ExcitementTimeSinceLastGoal=DefaultExcitementTimeSinceLastGoal
	
	UpsetAnyDemo=DefaultUpsetAnyDemo
	
	UpsetRelevantDemo=DefaultUpsetRelevantDemo
	
	UpsetGoal=DefaultUpsetGoal
	
	AnticipationScorability=DefaultAnticipationScorability
	
	AnticipationFastBreak=DefaultAnticipationFastBreak
	
	AnticipationOpenGoal=DefaultAnticipationOpenGoal
	ShotMaxDistanceToGoal=3500.0
	ShotScorability=0.90
	ShotSpeedTowardsGoal=800.0
	MissedShotMinScorability=0.80
	MissedShotMinTension=0.20
	MissedShotMinLastHitTime=1.0
	RelevantDemoMaxDistanceToBall=2000.0
	RelevantDemoMaxBallDistanceToGoal=2000.0
	AerialMinValue=0.60
	AerialMinDuration=0.50
	AerialMinCarInAirDuration=3.0
	AerialCooldown=5.0
	KickoffScoreSeparation=2
	TenseNearGoalMinTension=35.0
	TenseNearGoalDuration=3.0
	TenseNearGoalDistance=1200.0
	TenseClearDistance=2000.0
	MinCrossbarImpactForce=1000.0
	ScoreStates(0)=(MaxIncreaseScoreSeparation=99,MaxDecreaseScoreSeparation=99,StateName=High)
	ScoreStates(1)=(MaxIncreaseScoreSeparation=3,MaxDecreaseScoreSeparation=4,StateName=Med)
	ScoreStates(2)=(MaxIncreaseScoreSeparation=2,MaxDecreaseScoreSeparation=2,StateName=Low)
	
	ExcitementGameStart=DefaultExcitementGameStart
	
	ExcitementRoundStart=DefaultExcitementRoundStart
	
	ExcitementOvertimeStart=DefaultExcitementOvertimeStart
	//ExcitementTimeRemaining=DynamicValueModifierCurve_X'Default__CrowdSoundSettings_TA.DefaultExcitementTimeRemaining'
	//Excitement0Seconds=DynamicValueModifierCurve_X'Default__CrowdSoundSettings_TA.DefaultExcitement0Seconds'
	//Anticipation0Seconds=DynamicValueModifierCurve_X'Default__CrowdSoundSettings_TA.DefaultAnticipation0Seconds'
	//AnticipationExcitementMultiplier=DynamicValueModifierCurve_X'Default__CrowdSoundSettings_TA.DefaultAnticipationExcitementMultiplier'
}