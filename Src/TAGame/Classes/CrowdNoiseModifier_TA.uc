/*******************************************************************************
* CrowdNoiseModifier_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CrowdNoiseModifier_TA extends Object
	editinlinenew
	collapsecategories
	hidecategories(Object);

// Set the minimum crowd noise value to this
var() float ValueMin;
// Set the maximum crowd noise value to this
var() float ValueMax;
// Maintain the value for this amount of time
var() float DurationMin;
// Maintain the value for this amount of time
var() float DurationMax;
// Extra crowd sound
var() AkSoundCue OneShotSound;
