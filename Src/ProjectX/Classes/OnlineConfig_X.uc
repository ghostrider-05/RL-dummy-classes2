/*******************************************************************************
* OnlineConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineConfig_X extends Object
	abstract;

struct native ModifierSubscription
{
	var class ObjClass;

	structdefaultproperties
	{
		ObjClass=None
		
		
	}
};

var() bool bAllowOnServer;
var transient array<ModifierSubscription> AllSubscriptions;

defaultproperties
{
	bAllowOnServer=true
}