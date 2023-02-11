/*******************************************************************************
* WheelShimmy_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class WheelShimmy_TA extends AttachmentBehavior_TA
	editinlinenew
	hidecategories(Object);

var() float AccumDistance;
var() float Wave1Freq;
var() float Wave2Freq;
var() float OnOffBias;
var() float HighFreq;
var() editinline float ShimmyMag;
var() array<int> AffectedWheels;
var export editinline transient SkeletalMeshComponent SkelMeshComponent;
var export editinline transient Wheel_TA Wheel;
var transient SkelControlSingleBone RollControl;

defaultproperties
{
	Wave1Freq=0.001750
	Wave2Freq=0.0010
	OnOffBias=-0.50
	HighFreq=0.060
	ShimmyMag=8000.0
}