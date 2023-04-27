/*******************************************************************************
* GFxData_Restrictions_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Restrictions_TA extends GFxDataSingleton_X;

enum EReasonType
{
	RT_NotRestricted,
	RT_Credits,
	RT_ESportsTokens,
	RT_Merchandise,
	RT_MAX
};

var GFxModal_X RestrictedModal;
var EpicConfig_X EpicConfig;

defaultproperties
{
	TableName=Restrictions
}