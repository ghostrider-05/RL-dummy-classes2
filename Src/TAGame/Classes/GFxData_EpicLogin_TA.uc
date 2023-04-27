/*******************************************************************************
* GFxData_EpicLogin_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_EpicLogin_TA extends GFxDataSingleton_X;

var transient EpicAccountSave_TA EpicAccountSave;
var databinding string EpicDisplayName;
var databinding string AccountLinkURL;
var databinding bool bEnforceCabinedMode;
var databinding bool bInCabinedMode;
var databinding string SetDOBErrorMessage;
var databinding string SetParentEmailErrorMessage;
var databinding string ConfirmDisplayNameErrorMessage;
var databinding string UnsupportedCorrectiveActionURL;
var databinding string EpicPlayerName;
var databinding string ParentalControlsURL;
var EpicConfig_X EpicConfig;

defaultproperties
{
	TableName=EpicLogin
	
	bLevelTransitionPersistent=true
}