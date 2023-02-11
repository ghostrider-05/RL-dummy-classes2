/*******************************************************************************
* _UserBugReportTypes_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class _UserBugReportTypes_TA extends Object
	abstract;

enum EUserBugReportCategoryType
{
	UBRCT_UserInput,
	UBRCT_AutoReport,
	UBRCT_CustomerSupport,
	UBRCT_Parent,
	UBRCT_MAX
};

struct UserBugReportCategory
{
	var() name Id;
	var() name ParentId;
	var() _UserBugReportTypes_TA.EUserBugReportCategoryType Type;
	var() string Label;

	structdefaultproperties
	{
		Id=None
		ParentId=None
		Type=UBRCT_UserInput
		Label=""
	}
};
