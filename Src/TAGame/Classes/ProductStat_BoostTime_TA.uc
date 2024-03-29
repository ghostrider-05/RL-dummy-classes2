/*******************************************************************************
* ProductStat_BoostTime_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductStat_BoostTime_TA extends ProductStat_TA
	config(Game);

var transient CarComponent_Boost_TA BoostComponent;
var transient float BoostStartTime;
var transient float LeftoverTime;

defaultproperties
{
	/**Label="Boost Time"*/
	/**Description="When equipped, this item keeps track of how much time you spend boosting."*/
}