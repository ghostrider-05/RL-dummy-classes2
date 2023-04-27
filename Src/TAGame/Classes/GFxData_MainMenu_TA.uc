/*******************************************************************************
* GFxData_MainMenu_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MainMenu_TA extends GFxDataSingleton_X;

var() float PreviewCameraRotationScale;
var transient name RequestedDLCName;
var transient int RequestedSubIdx;
var transient name QueuedName;
var transient int QueuedSubIdx;
var const name UISoundState_AudioPreview;
var const name UISoundState_MusicPreview;
var name UISoundState_CurrentPreview;

defaultproperties
{
	PreviewCameraRotationScale=50.0
	UISoundState_AudioPreview=AudioPreview
	UISoundState_MusicPreview=MusicPreview
	TableName=MainMenu
}