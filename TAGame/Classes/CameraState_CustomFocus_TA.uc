/*******************************************************************************
* CameraState_CustomFocus_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraState_CustomFocus_TA extends CameraState_Car_TA;

var() float RotationRate;
var() float PitchScale;
var() float PitchFocusZFactor;
var() float PitchExtentMin;
var() float PitchExtentMax;
var transient CustomFocusTarget_TA FocusTarget;
