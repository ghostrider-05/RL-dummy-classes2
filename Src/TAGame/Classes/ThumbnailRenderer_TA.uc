/*******************************************************************************
* ThumbnailRenderer_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ThumbnailRenderer_TA extends Object
	config(Game);

var(Scene) Rotator CameraRotation;
var(Scene) Vector CameraTranslation;
var(Scene) float CameraFOV;
var(Scene) bool bAutoZoomCamera;
var(Scene) bool bDisableLightEnvironment;
var(Texture) bool CompressionNone;
var(Debug) bool bSkipBackground;
var(Debug) bool bSkipScene;
var(Scene) Rotator ProductRotation;
var(Scene) Vector ProductTranslation;
var(Scene) Prefab ScenePrefab;
var(Scene) PostProcessChain ScenePostProcessChain;
var(Scene) PostProcessSettings ScenePostProcessSettings;
var(Scene) config LinearColor BackgroundColor;
var(Texture) config int RenderWidth;
var(Texture) config int RenderHeight;
var(Texture) config int TextureWidth;
var(Texture) config int TextureHeight;
var(Texture) Texture.TextureMipGenSettings MipGenSettings;
var(Texture) int LODBias;

defaultproperties
{
	CameraRotation=(Pitch=0,Yaw=32768,Roll=0)
	CameraFOV=10.0
	bAutoZoomCamera=true
	CompressionNone=true
	ScenePostProcessSettings=(bOverride_EnableBloom=true,bOverride_EnableDOF=true,bOverride_EnableMotionBlur=true,bOverride_EnableSceneEffect=true,bOverride_AllowAmbientOcclusion=true,bOverride_OverrideRimShaderColor=true,bOverride_Bloom_Scale=true,bOverride_Bloom_Threshold=true,bOverride_Bloom_Tint=true,bOverride_Bloom_ScreenBlendThreshold=true,bOverride_Bloom_InterpolationDuration=true,bOverride_DOF_FalloffExponent=true,bOverride_DOF_BlurKernelSize=true,bOverride_DOF_BlurBloomKernelSize=true,bOverride_DOF_MaxNearBlurAmount=true,bOverride_DOF_MinBlurAmount=false,bOverride_DOF_MaxFarBlurAmount=true,bOverride_DOF_FocusType=true,bOverride_DOF_FocusInnerRadius=true,bOverride_DOF_FocusDistance=true,bOverride_DOF_FocusPosition=true,bOverride_DOF_InterpolationDuration=true,bOverride_DOF_BokehTexture=false,bOverride_MotionBlur_MaxVelocity=false,bOverride_MotionBlur_Amount=false,bOverride_MotionBlur_FullMotionBlur=false,bOverride_MotionBlur_CameraRotationThreshold=false,bOverride_MotionBlur_CameraTranslationThreshold=false,bOverride_MotionBlur_InterpolationDuration=false,bOverride_Scene_Desaturation=true,bOverride_Scene_Colorize=false,bOverride_Scene_TonemapperScale=false,bOverride_Scene_ImageGrainScale=false,bOverride_Scene_HighLights=true,bOverride_Scene_MidTones=true,bOverride_Scene_Shadows=true,bOverride_Scene_InterpolationDuration=true,bOverride_Scene_ColorGradingLUT=false,bOverride_RimShader_Color=true,bOverride_RimShader_InterpolationDuration=true,bOverride_MobileColorGrading=false,bEnableBloom=true,bEnableDOF=false,bEnableMotionBlur=true,bEnableSceneEffect=true,bAllowAmbientOcclusion=true,bOverrideRimShaderColor=false,Bloom_Scale=1.0,Bloom_Threshold=1.0,Bloom_Tint=(R=255,G=255,B=255,A=0),Bloom_ScreenBlendThreshold=10.0,Bloom_InterpolationDuration=1.0,DOF_BlurBloomKernelSize=16.0,DOF_FalloffExponent=4.0,DOF_BlurKernelSize=16.0,DOF_MaxNearBlurAmount=1.0,DOF_MinBlurAmount=0.0,DOF_MaxFarBlurAmount=1.0,DOF_FocusType=FOCUS_Distance,DOF_FocusInnerRadius=2000.0,DOF_FocusDistance=0.0,DOF_FocusPosition=(X=0.0,Y=0.0,Z=0.0),DOF_InterpolationDuration=1.0,DOF_BokehTexture=none,MotionBlur_MaxVelocity=1.0,MotionBlur_Amount=0.50,MotionBlur_FullMotionBlur=true,MotionBlur_CameraRotationThreshold=45.0,MotionBlur_CameraTranslationThreshold=10000.0,MotionBlur_InterpolationDuration=1.0,Scene_Desaturation=0.0,Scene_Colorize=(X=1.0,Y=1.0,Z=1.0),Scene_TonemapperScale=1.0,Scene_ImageGrainScale=0.0,Scene_HighLights=(X=1.0,Y=1.0,Z=1.0),Scene_MidTones=(X=1.0,Y=1.0,Z=1.0),Scene_Shadows=(X=0.0,Y=0.0,Z=0.0),Scene_InterpolationDuration=1.0,RimShader_Color=(R=0.8277260,G=0.5859730,B=0.470440,A=1.0),RimShader_InterpolationDuration=1.0,ColorGrading_LookupTable=none,ColorGradingLUT=(LUTTextures=none,LUTWeights=none),MobileColorGrading=(TransitionTime=1.0,Blend=0.0,Desaturation=0.0,HighLights=(R=0.70,G=0.70,B=0.70,A=1.0),MidTones=(R=0.0,G=0.0,B=0.0,A=1.0),Shadows=(R=0.0,G=0.0,B=0.0,A=1.0)),MobilePostProcess=(bOverride_Mobile_BlurAmount=false,bOverride_Mobile_TransitionTime=false,bOverride_Mobile_Bloom_Scale=false,bOverride_Mobile_Bloom_Threshold=false,bOverride_Mobile_Bloom_Tint=false,bOverride_Mobile_DOF_Distance=false,bOverride_Mobile_DOF_MinRange=false,bOverride_Mobile_DOF_MaxRange=false,bOverride_Mobile_DOF_FarBlurFactor=false,Mobile_BlurAmount=16.0,Mobile_TransitionTime=1.0,Mobile_Bloom_Scale=0.50,Mobile_Bloom_Threshold=0.750,Mobile_Bloom_Tint=(R=1.0,G=1.0,B=1.0,A=1.0),Mobile_DOF_Distance=1500.0,Mobile_DOF_MinRange=600.0,Mobile_DOF_MaxRange=1200.0,Mobile_DOF_FarBlurFactor=1.0))
	MipGenSettings=TMGS_Sharpen10
}