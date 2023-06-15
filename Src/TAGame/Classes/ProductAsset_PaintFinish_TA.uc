/*******************************************************************************
* ProductAsset_PaintFinish_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductAsset_PaintFinish_TA extends ProductAsset_TA
	editinlinenew
	hidecategories(Object);

// Light falloff curve type selector
var() LightCurveType_TA LightCurveType;
// Tiling detail normal, for stuff like carbon fiber, brushed metal, wood etc.
var() Texture DetailNormal;
var() float SpecularTint;
var() float RimLightTint;
var() float DiffuseDetailNormalStrength;
var() float SpecularDetailNormalStrength;
var() float SpecularStrength;
var() float EnvironmentStrength;
var() float SparkleStrength;
var() float PearlescentStrength;
var() const array<TextureParameterValue> TextureParameterValues;
var() const array<ScalarParameterValue> ScalarParameterValues;
var() const array<VectorParameterValue> VectorParameterValues;
