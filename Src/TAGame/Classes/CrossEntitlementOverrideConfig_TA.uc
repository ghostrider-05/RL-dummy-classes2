/*******************************************************************************
* CrossEntitlementOverrideConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CrossEntitlementOverrideConfig_TA extends OnlineConfig_X;

struct native XEStatusOverride
{
	var array<int> ProductIDs;
	var ECrossEntitlementStatus XEStatus;
	var bool bIncludeSE;

	structdefaultproperties
	{
		ProductIDs.Empty
		XEStatus=CES_None
		bIncludeSE=false
	}
};

var array<XEStatusOverride> XEStatusOverrides;
