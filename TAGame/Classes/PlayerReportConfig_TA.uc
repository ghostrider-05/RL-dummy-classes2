/*******************************************************************************
* PlayerReportConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PlayerReportConfig_TA extends OnlineConfig_X;

struct PlayerReportReason
{
	var databinding int ReasonID;
	var databinding string Reason;

	structdefaultproperties
	{
		ReasonID=0
		Reason=""
	}
};

var() databinding array<PlayerReportReason> Reasons;
