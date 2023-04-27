/*******************************************************************************
* ProductAttribute_SpecialEditionSettings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductAttribute_SpecialEditionSettings_TA extends ProductAttribute_TA
	editinlinenew
	collapsecategories
	hidecategories(Object);

struct native SpecialEditionConfig
{
	var() ProductSpecialEdition_TA SpecialEdition;
	var() editinline ProductAssetReference_TA SpecialEditionProductAsset;

	structdefaultproperties
	{
		SpecialEdition=None
		SpecialEditionProductAsset=None
	}
};

var() array<SpecialEditionConfig> Editions;
var() editoronly const transient array<editoronly ProductSpecialEdition_TA> SupportedEditions;