/*******************************************************************************
* OSSConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OSSConfig_X extends OnlineConfig_X
	config(Engine);

var() config bool bEnablePresence;
var() float EosInitTimeoutSeconds;
var() float GdkUpdateDlcTimeoutSeconds;
var() int GdkMaxConcurrentDlcLicenseRequests;

defaultproperties
{
	EosInitTimeoutSeconds=40.0
	GdkUpdateDlcTimeoutSeconds=4.0
	GdkMaxConcurrentDlcLicenseRequests=2
}