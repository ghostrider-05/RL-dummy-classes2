/*******************************************************************************
* AssetAttribute_GoalCountChanging_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AssetAttribute_GoalCountChanging_TA extends ProductAssetAttribute_TA
	editinlinenew
	collapsecategories
	hidecategories(Object);

struct GoalCountAndAsset
{
	var() int GoalToChangeOn;
	var() Object ObjectToChangeTo;

	structdefaultproperties
	{
		GoalToChangeOn=0
		ObjectToChangeTo=None
	}
};

var() array<GoalCountAndAsset> Assets;
var transient int CurrentGoalCount;
var transient int LastIndexUsed;
var transient bool bIsGaragePreview;
var transient Object CurrentObjectToUse;
var transient ProductAsset_TA AssetBeingUsed;

defaultproperties
{
	LastIndexUsed=-1
}