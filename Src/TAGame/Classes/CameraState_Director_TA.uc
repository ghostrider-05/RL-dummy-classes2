/*******************************************************************************
* CameraState_Director_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraState_Director_TA extends CameraState_Replay_TA;

var() GameEvent_Soccar_TA GameEvent;
var() export editinline CameraStateSelector_TA IdleSelector;
var() export editinline CameraStateSelector_TA CountdownSelector;
var() export editinline CameraStateSelector_TA KickoffSelector;
var() export editinline CameraStateSelector_TA DefaultSelector;
var() const ProfileSliderLimits MinTransitionTimeLimits;
var export editinline CameraStateSelector_TA CurrentSelector;
var CameraState_X CurrentState;
var bool bInitialized;

defaultproperties
{
	MinTransitionTimeLimits=(Min=0.0,Max=30.0,interval=0.50)
	bUIHighlightFocus=false
}