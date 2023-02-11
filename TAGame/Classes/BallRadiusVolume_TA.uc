/*******************************************************************************
* BallRadiusVolume_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class BallRadiusVolume_TA extends Actor
	placeable
	hidecategories(Navigation);

var() float Radius;
var const export editinline DrawSphereComponent PreviewRadius;
var transient array<Ball_TA> InRadius;

defaultproperties
{
	Radius=50.0
	begin object name=PreviewRadius0 class=DrawSphereComponent
		SphereColor=(R=173,G=239,B=231,A=255)
		SphereSides=32
		ReplacementPrimitive=none
		AbsoluteScale=true
	end object
	// Reference: DrawSphereComponent'Default__BallRadiusVolume_TA.PreviewRadius0'
	PreviewRadius=PreviewRadius0
	
	Components(0)=PreviewRadius0
	SupportedEvents(0)=class'SeqEvent_BallInRange_TA'
}