/*******************************************************************************
* CameraState_Demolished_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraState_Demolished_TA extends CameraState_TA;

var() float RotationInterpRate;
var transient Pawn DemolishedPawn;
var transient float StateTime;
var() float InitialFOV;
var() float FOVBlendTime;
var transient bool bInterp;
var() bool bTrackDemolisher;
var() float MaxZoomInFOV;
var() float MaxFOVBlendDistance;
var() float Distance;