/*******************************************************************************
* GFxData_MapSelection_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MapSelection_TA extends GFxDataSingleton_X;

struct GFxMapSelectionData
{
	var databinding name Name;
	var databinding bool bSelected;

	structdefaultproperties
	{
		Name=None
		bSelected=false
	}
};

var databinding array<GFxMapSelectionData> Selections;

defaultproperties
{
	TableName=MapSelection
}