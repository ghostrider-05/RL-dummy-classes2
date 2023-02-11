/*******************************************************************************
* GFxData_UserSetting_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_UserSetting_TA extends GFxDataRow_X;

enum EUserSettingType
{
	UserSettingType_List,
	UserSettingType_Boolean,
	UserSettingType_Scalar,
	UserSettingType_MAX
};

var databinding GFxData_UserSetting_TA.EUserSettingType Type;
var databinding name Group;
var databinding name Id;
var databinding string Label;
var databinding string Description;
var databinding string Values;
var transient array<string> ValuesArray;
var databinding string Labels;
var databinding string Value;
var databinding bool bUserSetting;
var databinding bool bEnabled;
var string DefaultValue;
var transient ProfileSliderLimits Limits;

defaultproperties
{
	Limits=(Min=0.0,Max=1.0,interval=0.010)
	TableName=UserSettings
}