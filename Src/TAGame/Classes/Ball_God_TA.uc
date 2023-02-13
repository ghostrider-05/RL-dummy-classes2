/*******************************************************************************
* Ball_God_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Ball_God_TA extends Ball_TA
	config(Game)
	hidecategories(Navigation);

var const float WallBounceSpeed;
var const float WallBounceBlend;
var const float WallBounceBackDistance;
var const float TargetBlendScaleXY;
var const float TargetBlendScaleZ;
var repnotify float TargetSpeed;
var const float TargetSpeedIncrement;
var const float TargetSpeedBlend;
var const float MaxVelocityPitch;
var float LastSpeedIncrementTime;
var const float TargetSpeedIncrementTime;
var const float MinGlowBrightness;
var const float MaxGlowBrightness;
var const float PulseSpeedScale;
var const float PulseBrightnessScale;
var const float PulseMinBrightness;
var const float PulseLifetime;
var const LinearColor GlowDefaultColor;
var const LinearColor MaxSpeedColor;
var const name AudioCurveName;
var const name AudioIntensityName;
var const FXActorEvent_X FXEvent_TeamChanged;
var const FXActorEvent_X FXEvent_IntensityChanged;

defaultproperties
{
	WallBounceSpeed=0.50
	WallBounceBlend=0.50
	WallBounceBackDistance=200.0
	TargetBlendScaleXY=1.450
	TargetBlendScaleZ=0.780
	TargetSpeed=3400.0
	TargetSpeedIncrement=100.0
	TargetSpeedBlend=0.30
	MaxVelocityPitch=7000.0
	TargetSpeedIncrementTime=1.0
	MinGlowBrightness=5.0
	MaxGlowBrightness=8.0
	PulseSpeedScale=40.0
	PulseBrightnessScale=1.0
	PulseMinBrightness=0.70
	PulseLifetime=5.0
	GlowDefaultColor=(R=0.90,G=0.90,B=0.90,A=1.0)
	MaxSpeedColor=(R=0.60,G=0.30,B=0.550,A=1.0)
	AudioCurveName=BallCurve
	AudioIntensityName=BallIntensity
	
	StaticMesh=DefaultMesh
	BallCamTarget=BallCamTarget_TA'Default__Ball_God_TA.DefaultBallCamTarget'
	PitchTekComponent=PitchTekDrawingComponent_TA'Default__Ball_God_TA.DefaultPTDComponent'
	Replay=ReplayComponent_TA'Default__Ball_God_TA.ReplayComponent0'
	RegistryGroup=GroupComponent_ORS'Default__Ball_God_TA.DefaultRegistryGroup'
	begin object name=CollisionCylinder
		ReplacementPrimitive=none
	end object
	// Reference: CylinderComponent'Default__Ball_God_TA.CollisionCylinder'
	CylinderComponent=CollisionCylinder
	Components(0)=none
	
	Components(1)=CollisionCylinder
	Components(2)=none
	Components(3)=GroupComponent_ORS'Default__Ball_God_TA.DefaultRegistryGroup'
	Components(4)=ReplayComponent_TA'Default__Ball_God_TA.ReplayComponent0'
	begin object name=DefaultMesh
		ReplacementPrimitive=none
	end object
	// Reference: StaticMeshComponent'Default__Ball_God_TA.DefaultMesh'
	Components(5)=DefaultMesh
	Components(6)=PitchTekDrawingComponent_TA'Default__Ball_God_TA.DefaultPTDComponent'
	
	CollisionComponent=DefaultMesh
}