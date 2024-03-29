/*******************************************************************************
* OrbitHitHandler_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OrbitHitHandler_TA extends DefaultHitHandler_TA
	editinlinenew;

enum EOrbitCenterLocation
{
	OCB_BallHitLocation,
	OCB_CenterOfGoal,
	OCB_MAX
};

enum EOrbitAxisBehavior
{
	OAB_StaticRotationAxis,
	OAB_RandomRotationAxis,
	OAB_MAX
};

struct native OrbitCarData
{
	var transient Vehicle_TA CarHit;
	var transient Vector OrbitAxis;
	var transient Vector OrbitLocation;
	var transient float RotationAngleRadians;
	var transient bool bShouldOrbit;

	structdefaultproperties
	{
		CarHit=None
		OrbitAxis=(X=0.0,Y=0.0,Z=0.0)
		OrbitLocation=(X=0.0,Y=0.0,Z=0.0)
		RotationAngleRadians=0.0
		bShouldOrbit=false
	}
};

var() const Vector RotationAxis;
var() const float CarDistanceBeforeOrbit;
var() const float StartAffectedRadius;
var() const float EndAffectedRadius;
var() const float StartOrbitDistance;
var() const float EndOrbitDistance;
var() const float StartOrbitSpeed;
var() const float EndOrbitSpeed;
var() const float FarAwayOrbitSpeedMultiplier;
var() const float MaxDeactivationVelocity;
var() const EOrbitCenterLocation OrbitCenterLocation;
var() const EOrbitAxisBehavior OrbitAxisBehavior;
var(Debug) const Color AffectedAreaColor;
var(Debug) const Color OrbitCenterColor;
var(Debug) const Color OrbitLocationColor;
var transient array<OrbitCarData> OrbitingCars;
var transient Vector OrbitCenter;
var transient Vector NormalizedRotationAxis;
var transient float AffectedRadiusSquared;
var transient float OrbitDistance;

defaultproperties
{
	RotationAxis=(X=0.0,Y=0.0,Z=1.0)
	CarDistanceBeforeOrbit=200.0
	StartAffectedRadius=1000.0
	EndAffectedRadius=2000.0
	StartOrbitDistance=200.0
	EndOrbitDistance=300.0
	StartOrbitSpeed=90.0
	EndOrbitSpeed=360.0
	FarAwayOrbitSpeedMultiplier=0.2250
	MaxDeactivationVelocity=1500.0
	AffectedAreaColor=(R=0,G=255,B=0,A=255)
	OrbitCenterColor=(R=0,G=255,B=255,A=255)
	OrbitLocationColor=(R=255,G=0,B=0,A=255)
	ImpulseVelocityMultiplier=0.0
	bApplyToAllCars=true
	bOnlyApplyImpulseOnce=false
	bPullTowardHitLocation=true
	Speed=34000.0
	MomentumOffset=(X=0.0,Y=0.0,Z=0.0)
}