/*******************************************************************************
* StatFactory_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class StatFactory_TA extends StatFactoryBase_TA
	notplaceable
	hidecategories(Navigation);

enum EFiveHitType
{
	FiveHit_None,
	FiveHit_Low,
	FiveHit_High,
	FiveHit_MAX
};

struct BallInfo
{
	var Ball_TA Ball;
	var export editinline Goal_TA ShotGoal;
	var export editinline Goal_TA RedZoneGoal;
	var PRI_TA RedZonePRI;
	var int RedZoneHitID;
	var float GroundHitTime;
	var float JuggleTime;
	var float SpecialHitTime;
	var float BallHitTime;
	var float SaveTime;
	var float ShotTime;
	var float CrossbarHitTime;

	structdefaultproperties
	{
		Ball=None
		ShotGoal=None
		RedZoneGoal=None
		RedZonePRI=None
		RedZoneHitID=0
		GroundHitTime=0.0
		JuggleTime=0.0
		SpecialHitTime=0.0
		BallHitTime=0.0
		SaveTime=0.0
		ShotTime=0.0
		CrossbarHitTime=0.0
	}
};

struct StatGroupCollection
{
	var() StatGroup_TA Wins;
	var() StatGroup_TA Losses;
	var() StatGroup_TA Goals;
	var() StatGroup_TA Saves;
	var() StatGroup_TA Shots;
	var() StatGroup_TA Assists;

	structdefaultproperties
	{
		Wins=None
		Losses=None
		Goals=None
		Saves=None
		Shots=None
		Assists=None
	}
};

struct StatEventCollection
{
	var() StatEvent_TA Win;
	var() StatEvent_TA Loss;
	var() StatEvent_TA TimePlayed;
	var() StatEvent_TA Shot;
	var() StatEvent_TA Assist;
	var() StatEvent_TA Center;
	var() StatEvent_TA Clear;
	var() StatEvent_TA PoolShot;
	var() StatEvent_TA Goal;
	var() StatEvent_TA AerialGoal;
	var() StatEvent_TA BicycleGoal;
	var() StatEvent_TA BulletGoal;
	var() StatEvent_TA BackwardsGoal;
	var() StatEvent_TA LongGoal;
	var() StatEvent_TA OvertimeGoal;
	var() StatEvent_TA TurtleGoal;
	var() StatEvent_TA AerialHit;
	var() StatEvent_TA BicycleHit;
	var() StatEvent_TA BulletHit;
	var() StatEvent_TA JuggleHit;
	var() StatEvent_TA FirstTouch;
	var() StatEvent_TA BallHit;
	var() StatEvent_TA Save;
	var() StatEvent_TA EpicSave;
	var() StatEvent_TA FreezeSave;
	var() StatEvent_TA HatTrick;
	var() StatEvent_TA Savior;
	var() StatEvent_TA Playmaker;
	var() StatEvent_TA MVP;
	var() StatEvent_TA FastestGoal;
	var() StatEvent_TA SlowestGoal;
	var() StatEvent_TA FurthestGoal;
	var() StatEvent_TA OwnGoal;
	var() StatEvent_TA MostBallTouches;
	var() StatEvent_TA FewestBallTouches;
	var() StatEvent_TA MostBoostPickups;
	var() StatEvent_TA FewestBoostPickups;
	var() StatEvent_TA BoostPickups;
	var() StatEvent_TA CarTouches;
	var() StatEvent_TA Demolition;
	var() StatEvent_TA Demolish;
	var() StatEvent_TA BallDemolitionScore;
	var() StatEvent_TA CarDemolitionScore;
	var() StatEvent_TA DemolitionSave;
	var() StatEvent_TA LowFive;
	var() StatEvent_TA HighFive;
	var() StatEvent_TA PossessionPoint;
	var() StatEvent_TA PossessionSteal;
	var() StatEvent_TA PossessionDenial;
	var() StatEvent_TA PossessionClear;
	var() StatEvent_TA SmallBoostsCollected;
	var() StatEvent_TA BigBoostsCollected;
	var() StatEvent_TA BoostUsed;
	var() StatEvent_TA Dodges;
	var() StatEvent_TA DistanceDrivenMeters;
	var() StatEvent_TA DistanceFlown;
	var() StatEvent_TA CrossbarHits;
	var() StatEvent_TA DoubleGrapple;
	var() StatEvent_TA MaxDodgeStreak;

	structdefaultproperties
	{
		Win=None
		Loss=None
		TimePlayed=None
		Shot=None
		Assist=None
		Center=None
		Clear=None
		PoolShot=None
		Goal=None
		AerialGoal=None
		BicycleGoal=None
		BulletGoal=None
		BackwardsGoal=None
		LongGoal=None
		OvertimeGoal=None
		TurtleGoal=None
		AerialHit=None
		BicycleHit=None
		BulletHit=None
		JuggleHit=None
		FirstTouch=None
		BallHit=None
		Save=None
		EpicSave=None
		FreezeSave=None
		HatTrick=None
		Savior=None
		Playmaker=None
		MVP=None
		FastestGoal=None
		SlowestGoal=None
		FurthestGoal=None
		OwnGoal=None
		MostBallTouches=None
		FewestBallTouches=None
		MostBoostPickups=None
		FewestBoostPickups=None
		BoostPickups=None
		CarTouches=None
		Demolition=None
		Demolish=None
		BallDemolitionScore=None
		CarDemolitionScore=None
		DemolitionSave=None
		LowFive=None
		HighFive=None
		PossessionPoint=None
		PossessionSteal=None
		PossessionDenial=None
		PossessionClear=None
		SmallBoostsCollected=None
		BigBoostsCollected=None
		BoostUsed=None
		Dodges=None
		DistanceDrivenMeters=None
		DistanceFlown=None
		CrossbarHits=None
		DoubleGrapple=None
		MaxDodgeStreak=None
	}
};

var() const StatEventCollection Events;
var transient array<BallInfo> BallCache;
var() float GoalSizeFudge;
var() float ShotMaxTime;
var() float ShotArriveTime;
var() float ShotMaxDistance;
var() float RedZoneDistance;
var() float JuggleMinSpeed;
var() float BulletHitSpeed;
var() float AerialHitHeight;
var() float AerialHitMinRelSpeed;
var() float BicycleSpinSpeed;
var() float LongGoalDistance;
var() int HatTrickThreshold;
var() int PlaymakerThreshold;
var() int SaviorThreshold;
var() int DemolitionThreshold;
var transient bool bGaveFirstTouch;
var transient GameEvent_Soccar_TA SoccarGame;
var transient PRI_TA ScoringPRI;
var transient array<Car_TA> CarsIssuedAnyFiveHit;
var const float MinPossessionTimeForSteal;
var const float CrossbarHitsCooldown;

defaultproperties
{
	MinPossessionTimeForSteal=0.10
	CrossbarHitsCooldown=0.10
	TickGroup=TG_PostAsyncWork
	bTickIsDisabled=true
}