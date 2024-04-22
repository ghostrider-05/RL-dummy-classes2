/*******************************************************************************
* ProfileGameplaySave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProfileGameplaySave_TA extends SaveObject_TA;

enum EProfileGameplaySaveVersion
{
	ProfileGameplaySaveVersion_RankInfoDisplayType,
	ProfileGameplaySaveVersion_MAX
};

var bool bMetric;
var bool bTeamColoredBoostMeter;
var bool bDisableDivisions;
var bool bDisableDivisionsSports;
var EHUDMessageLevel HUDMessageThreshold;
var ERankInfoDisplayType RankInfoDisplayType;
var ENameplateMode NameplateMode;

defaultproperties
{
	bTeamColoredBoostMeter=true
	RankInfoDisplayType=RankInfoDisplayType_All
	NameplateMode=NameplateMode_AlwaysVisible
}