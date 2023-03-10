/*******************************************************************************
* ProductAttribute_InheritCarSetting_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductAttribute_InheritCarSetting_TA extends ProductAttribute_TA
	editinlinenew
	collapsecategories
	hidecategories(Object);

struct InheritedParameter
{
	var() name ParentParameterName;
	var() name AssetParameterName;

	structdefaultproperties
	{
		ParentParameterName=None
		AssetParameterName=None
	}
};

var() array<InheritedParameter> Parameters;
