/*******************************************************************************
* CacheTimer_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CacheTimer_X extends Component;

var() float CacheTimeoutSeconds;
var transient float CacheExpireTime;
var transient bool bEnabled;

defaultproperties
{
	CacheTimeoutSeconds=300.0
}