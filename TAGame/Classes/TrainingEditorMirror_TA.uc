/*******************************************************************************
* TrainingEditorMirror_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class TrainingEditorMirror_TA extends Object;

var /*0x00010000-0x00000000*/ GameEvent_TrainingEditor_TA TrainingEditor;
var /*0x00010000-0x00000000*/ transient int CurrentRoundNumber;
var /*0x00010000-0x00000000*/ transient Vector MirrorPoint;
var /*0x00010000-0x00000000*/ transient Vector MirrorLocationNormal;
var /*0x00010000-0x00000000*/ transient Rotator MirrorRotationAngle;
var /*0x00018000-0x00000000*/ transient Pylon_Soccar_TA Pylon;
var /*0x00018000-0x00000000*/ transient MirrorAxis_TA MirrorOverride;
var /*0x00010000-0x00000000*/ transient bool bMirrorShot;

defaultproperties
{
	MirrorLocationNormal=(X=0.0,Y=1.0,Z=0.0)
}