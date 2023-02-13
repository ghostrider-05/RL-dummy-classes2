/*******************************************************************************
* ProductAsset_Skin_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductAsset_Skin_TA extends ProductAsset_TA
	editinlinenew
	hidecategories(Object);

struct native ParameterInformation
{
	var() editoronly ProductAsset_PaintFinish_TA PaintFinishToApply;
	var() array<TextureParameterValue> TextureParameterValues;
	var() array<ScalarParameterValue> ScalarParameterValues;
	var() array<VectorParameterValue> VectorParameterValues;

	structdefaultproperties
	{
		PaintFinishToApply=none
		TextureParameterValues.Empty
		ScalarParameterValues.Empty
		VectorParameterValues.Empty
	}
};

struct native BodyChassisOverride
{
	var() editinline ProductAssetReferenceBody_TA Body;
	var() editinline ProductOverride_SpecificMaterials_TA MaterialOverride;

	structdefaultproperties
	{
		Body=none
		MaterialOverride=none
	}
};

var() MaterialInterface Skin;
var() array<SkinBodySettings> BodySettings;
var() array<BodyChassisOverride> BodyChassisOverrides;
var() array<ProductAttachment> Attachments;
var() ESkinType SkinType;
var(Thumbnail) LinearColor ThumbnailTeamColor;
var(Thumbnail) LinearColor ThumbnailCustomColor;
var() bool bTeamFinishDisabled;
var() bool bCustomFinishDisabled;
var() ParameterInformation TeamFinishToApply;
var() ParameterInformation CustomFinishToApply;
var() LinearColor ForcedTeamColors[2];
var() LinearColor ForcedCustomColor[2];

defaultproperties
{
	ThumbnailTeamColor=(R=0.160,G=0.0,B=0.870,A=1.0)
	ThumbnailCustomColor=(R=1.0,G=1.0,B=1.0,A=1.0)
	ForcedTeamColors[0]=(R=0.0,G=0.0,B=0.0,A=1.0)
	ForcedTeamColors[1]=(R=0.0,G=0.0,B=0.0,A=1.0)
	ForcedCustomColor[0]=(R=0.0,G=0.0,B=0.0,A=1.0)
	ForcedCustomColor[1]=(R=0.0,G=0.0,B=0.0,A=1.0)
	ThumbnailRenderer=ThumbnailRenderer_TA'ThumbnailRenderers.Skin_Renderer'
	ThumbnailCameraTranslationOffset=(X=-1000.0,Y=0.0,Z=0.0)
	ThumbnailCameraRotationOffset=(Pitch=9102,Yaw=9102,Roll=0)
}