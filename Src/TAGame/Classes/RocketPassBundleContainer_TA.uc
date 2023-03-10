/*******************************************************************************
* RocketPassBundleContainer_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RocketPassBundleContainer_TA extends Component;

var() const name RocketPassMenuName;
var() const name ChallengeMenuName;
var databinding array<RocketPassBundleInfo> Premium;
var databinding array<RocketPassBundleInfo> Tier;
var const string RocketPassPackageName;
var const string TierBundleFileNameBase;

defaultproperties
{
	RocketPassMenuName=RocketPassMenuMovie
	ChallengeMenuName=ChallengesPrimeMenuMovie
	RocketPassPackageName="GFx_RocketPassMenu"
	TierBundleFileNameBase="TierBundle_"
}