/*******************************************************************************
* GFxData_Stats_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Stats_TA extends GFxDataSingleton_X;

struct GFxStatData
{
	var databinding string Id;
	var databinding string Name;
	var databinding string DisplayValue;
	var databinding Texture Texture;
	var databinding string Description;
	var class DisplayProductStatClass;

	structdefaultproperties
	{
		Id=""
		Name=""
		DisplayValue=""
		Texture=None
		Description=""
		DisplayProductStatClass=None
	}
};

var databinding array<GFxStatData> Events;
var const array<StatEvent_TA> StatEvents;

defaultproperties
{
	
	TableName=Stat
}