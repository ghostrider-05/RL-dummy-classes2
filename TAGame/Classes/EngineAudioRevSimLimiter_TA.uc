/*******************************************************************************
* EngineAudioRevSimLimiter_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EngineAudioRevSimLimiter_TA extends Component;

var() float LimitTime;
var() float SideSpeedThresh;
var() float DecelScale;
var() float AirMaxThrottleTime;
var transient float TimeRemaining;
var transient float TimeActiveInAir;

defaultproperties
{
	LimitTime=0.050
	SideSpeedThresh=200.0
	DecelScale=10.0
	AirMaxThrottleTime=0.30
}