/*******************************************************************************
* CameraState_Countdown_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraState_Countdown_TA extends CameraState_DirectorProxy_TA;

var() int MaxCarsShown;
var() float TimePerCar;
var() bool bSwitchTeamsEveryCar;
var transient array<Car_TA> ShownCars;
var transient Car_TA CurrentCar;
var transient Car_TA NextCar;
var transient int LastTeam;
var transient float LastChangeCarTime;

defaultproperties
{
	MaxCarsShown=3
	TimePerCar=1.30
}