/*******************************************************************************
* TrainingConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class TrainingConfig_TA extends OnlineConfig_X;

var() int MaxHistoryItems;
var() bool bCanShowHistoryTab;
var() bool bCanShowProgressV2;
var() bool bEnableTrainingUIV2;

defaultproperties
{
	MaxHistoryItems=-1
	bCanShowHistoryTab=true
	bCanShowProgressV2=true
	bEnableTrainingUIV2=true
}