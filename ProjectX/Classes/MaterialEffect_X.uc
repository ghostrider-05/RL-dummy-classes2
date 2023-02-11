/*******************************************************************************
* MaterialEffect_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MaterialEffect_X extends MaterialEffect
	hidecategories(Object);

enum EMaterialEffectStage
{
	EFFECT_INACTIVE,
	EFFECT_FADE_IN,
	EFFECT_ACTIVE,
	EFFECT_FADE_OUT,
	EFFECT_MAX
};

var() name TimeParamName;
var() float FadeInTime;
var() float FadeInFalloff;
var() float FadeOutTime;
var() float FadeOutFalloff;
var() float ActiveTime;
var() float ValueMin;
var() float ValueMax;
var transient MaterialInstanceConstant MatInst;
var transient MaterialEffect_X.EMaterialEffectStage Stage;
var transient float StageTime;

defaultproperties
{
	FadeInTime=0.50
	FadeInFalloff=1.0
	FadeOutTime=0.50
	FadeOutFalloff=1.0
	ValueMax=1.0
}