/*******************************************************************************
* StayAsPartyMetrics_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class StayAsPartyMetrics_TA extends MetricsGroup_X;

struct PartyMergeResult
{
	var UniqueNetId PlayerID;
	var UniqueNetId LeaderID;
	var bool bSuccess;
	var name FailReason;

	structdefaultproperties
	{
		
		
		bSuccess=false
		FailReason=None
	}
};
