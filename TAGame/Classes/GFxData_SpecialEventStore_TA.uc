/*******************************************************************************
* GFxData_SpecialEventStore_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_SpecialEventStore_TA extends GFxDataRow_X;

struct GFxSpecialEventReward
{
	var /*0x00010000-0x00000000*/ int ProductID;
	var /*0x00010000-0x00000000*/ databinding ProductHashID HashID;
	var /*0x00010000-0x00000000*/ databinding int StoreProductID;
	var /*0x00010000-0x00000000*/ databinding int Cost;
	var /*0x00010000-0x00000000*/ databinding int Remaining;
	var /*0x00010000-0x00000000*/ databinding XPRewardData XPReward;

	structdefaultproperties
	{
		ProductID=0
		HashID=(Id=0)
		StoreProductID=0
		Cost=0
		Remaining=0
		XPReward=(Name=None,Amount=0.0)
	}
};

var /*0x00010000-0x00000000*/ databinding int EventID;
var /*0x00010000-0x00000000*/ transient array<GFxSpecialEventReward> Rewards;
var /*0x00010000-0x00000000*/ export editinline transient OnlineProductStoreSet_TA SpecialEventsSet;

defaultproperties
{
	TableName=SpecialEventStore
}