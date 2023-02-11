/*******************************************************************************
* RewardDropGroup_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RewardDropGroup_TA extends ItemDropGroup_TA;

struct GFxRewardDrop
{
	var databinding name RewardName;
	var databinding int Total;
	var databinding int Base;
	var databinding int BaseLevel;
	var databinding int Level;

	structdefaultproperties
	{
		RewardName=None
		Total=0
		Base=0
		BaseLevel=0
		Level=0
	}
};

var databinding array<GFxRewardDrop> Rewards;
var databinding array<GFxLevelThreshold> Thresholds;

defaultproperties
{
	GFxDataClass=class'GFxData_RewardDropGroup_TA'
	DisplayOrder=DropGroupDisplayOrder_RewardDrop
}