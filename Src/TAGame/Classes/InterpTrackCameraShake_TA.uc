/*******************************************************************************
* InterpTrackCameraShake_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class InterpTrackCameraShake_TA extends InterpTrackToggle
	collapsecategories
	hidecategories(Object);

var() editinline CameraShake Shake;
var() float ShakeScale;
var() ECameraAnimPlaySpace PlaySpace;
var() Rotator PlaySpaceRotation;

defaultproperties
{
	
	Shake=DefaultShake
	ShakeScale=1.0
	TrackTitle="Camera Shake"
}