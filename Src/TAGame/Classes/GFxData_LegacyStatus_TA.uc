/*******************************************************************************
* GFxData_LegacyStatus_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_LegacyStatus_TA extends GFxDataSingleton_X;

enum ELegacyStatusSetState
{
	LSSS_NotSet,
	LSSS_Updating,
	LSSS_UnableToUpdate,
	LSSS_Set,
	LSSS_MAX
};

var databinding ELegacyBoxStatus LegacyStatus;
var databinding ELegacyStatusSetState LegacySetState;

defaultproperties
{
	LegacyStatus=LBS_New
	TableName=LegacyStatusInfo
	bLevelTransitionPersistent=true
}