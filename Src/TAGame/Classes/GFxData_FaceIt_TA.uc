/*******************************************************************************
* GFxData_FaceIt_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_FaceIt_TA extends GFxDataSingleton_X;

var databinding bool bEnabled;
var() transient FaceIt_TA FaceIt;
var transient FaceItConfig_TA Config;
var PsyNet_X PsyNet;
var Qword LastSpectatorPopupTime;
var Qword SpectatorPopupDelaySeconds;

defaultproperties
{
	
	TableName=FaceIt
}