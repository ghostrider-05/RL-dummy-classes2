/*******************************************************************************
* GFxData_EOSGameClipsMaskArea_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_EOSGameClipsMaskArea_TA extends GFxDataSingleton_X;

var EOSGameClipsManager_TA GameClipsManager;
var array<GameClipsMaskArea> ActiveMaskAreas;
var Canvas DrawableCanvas;
var const Color DebugDrawColor;

defaultproperties
{
	DebugDrawColor=(R=252,G=104,B=12,A=255)
	TableName=EOSGameClipsMaskArea
}