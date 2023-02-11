/*******************************************************************************
* SpecialPickup_Tornado_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialPickup_Tornado_TA extends SpecialPickup_TA
	notplaceable
	hidecategories(Navigation);

var() float Height;
var() float Radius;
var() Vector Offset;
var() InterpCurveFloat VerticalForceCurve;
var() float RotationalForce;
var() InterpCurveFloat CentripetalForceCurve;
var() InterpCurveFloat CarDirectionForceCurve;
var() float Torque;
var() Vector FXScale;
var() Vector FXOffset;
var() StaticMesh TornadoMesh;
var() Vector MeshOffset;
var() Vector MeshScale;
var() MaterialInstanceConstant TornadoMIC0;
var() MaterialInstanceConstant TornadoMIC1;
var() MaterialInstanceConstant TornadoMIC2;
var() MaterialInstanceConstant TornadoMIC3;
var() MaterialInstanceConstant TornadoMIC4;
var() MaterialInstanceConstant TornadoMIC5;
var() InterpCurveFloat OpacityCurve;
var() float MaxVelocityOffset;
var() float BallMultiplier;
var() bool bDebugVis;
var() float VelocityEase;
var() AkSoundCue BallSFX;
var() AkSoundCue CarSFX;
var export editinline StaticMeshComponent SMC;
var MaterialInstanceConstant MIC0;
var MaterialInstanceConstant MIC1;
var MaterialInstanceConstant MIC2;
var MaterialInstanceConstant MIC3;
var MaterialInstanceConstant MIC4;
var MaterialInstanceConstant MIC5;
var transient Vector Vel;
var transient array<RBActor_TA> Affecting;

defaultproperties
{
	MaxVelocityOffset=1000.0
	VelocityEase=5.0
}