/*******************************************************************************
* ObjectProvider generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ObjectProvider extends Component
	native;

struct native ObjectProviderSubscription
{
	var class ObjClass;
	var bool bFireOnce;

	structdefaultproperties
	{
		ObjClass=none
		
		bFireOnce=false
	}
};

struct native ObjectPropertyInjection
{
	var Object Subscriber;
	var ObjectProperty Property;

	structdefaultproperties
	{
		Subscriber=none
		Property=none
	}
};

struct native InterfacePropertyInjection
{
	var Object Subscriber;
	var InterfaceProperty Property;

	structdefaultproperties
	{
		Subscriber=none
		Property=none
	}
};

struct native ObjectProviderPendingCallback
{
	var Object Value;

	structdefaultproperties
	{
		
		Value=none
	}
};

var native const noexport Pointer VfTable_FObjectDestructionSubscriber;
var const transient array<Object> MyObjects;
var native const transient Map_Mirror ObjectRefs;
var const transient array<Object> TreeObjects;
var const transient array<ObjectProviderSubscription> SubscribedToAdds;
var const transient array<ObjectProviderSubscription> SubscribedToRemoves;
var const transient array<ObjectProviderSubscription> SubscribedToLists;
var native const transient Array_Mirror Injections;
var native const transient Array_Mirror InterfaceInjections;
var const transient array< class > PendingInjectionClasses;
var const transient array<ObjectProviderPendingCallback> PendingCallbacks;
var const transient byte bTriggeringCallbacks;
var const export editinline transient ObjectProvider Parent;
var const export editinline transient array<export editinline ObjectProvider> Children;
var const export editinline transient array<export editinline ObjectProvider> Proxies;
var const transient array<ObjectProviderPendingCallback> PendingInjectionCallbacks;
