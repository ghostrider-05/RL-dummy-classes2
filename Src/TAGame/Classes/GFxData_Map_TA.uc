/*******************************************************************************
* GFxData_Map_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Map_TA extends GFxDataSingleton_X;

struct native GFxMapData
{
	var databinding name Name;
	var databinding string FriendlyName;
	var databinding Texture2D Thumbnail;
	var Texture2D LargeImage;
	var MapData_TA Data;
	var int GameMode;

	structdefaultproperties
	{
		Name=None
		FriendlyName=""
		Thumbnail=None
		LargeImage=None
		Data=None
		GameMode=0
	}
};

var() GFxMapData RandomMapData;
var() GFxMapData RandomStandardMapData;
var() databinding array<GFxMapData> Data;
var() databinding int ActiveMapIndex;
var Texture2D LastLoadedMapImage;
var const name RandomMapName;
var const name RandomStandardMapName;

defaultproperties
{
	RandomMapData=(Name=None,FriendlyName="",Thumbnail=,LargeImage=,Data=None,GameMode=0)
	RandomStandardMapData=(Name=None,FriendlyName="",Thumbnail=,LargeImage=,Data=None,GameMode=0)
	RandomMapName=Random
	RandomStandardMapName=RandomStandard
	TableName=Maps
}