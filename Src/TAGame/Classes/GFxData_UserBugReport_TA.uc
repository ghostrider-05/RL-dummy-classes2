/*******************************************************************************
* GFxData_UserBugReport_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_UserBugReport_TA extends GFxDataSingleton_X;

enum EUserBugReportSubmitStatus
{
	UBRSS_None,
	UBRSS_Generated,
	UBRSS_Submitting,
	UBRSS_Success,
	UBRSS_Error,
	UBRSS_MAX
};

struct GFxUserBugReportCategory
{
	var databinding name Id;
	var databinding EUserBugReportCategoryType Type;
	var databinding string Label;

	structdefaultproperties
	{
		Id=None
		Type=UBRCT_UserInput
		Label=""
	}
};

var UserBugReportConfig_TA Config;
var databinding bool bEnabled;
var databinding array<GFxUserBugReportCategory> Categories;
var databinding array<GFxUserBugReportCategory> SelectedCategories;
var databinding string UserMessage;
var databinding EUserBugReportSubmitStatus Status;
var databinding string SubmitError;
var databinding string ConfirmationCode;
var UserBugReportGeneratedData_TA PendingData;
var TAsyncResult__UserBugReportUploadResult_TA UploadTask;

defaultproperties
{
	TableName=UserBugReport
	bLevelTransitionPersistent=true
}