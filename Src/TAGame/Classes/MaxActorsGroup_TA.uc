/*******************************************************************************
* MaxActorsGroup_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MaxActorsGroup_TA extends Component
	native;

struct native MaxActorCallback
{
	var Actor Actor;
	var array< Object > EnabledDelegates;
	var array< Object > DisabledDelegates;
	var bool bEnabled;
	var float Distance;

	structdefaultproperties
	{
		Actor=None
		EnabledDelegates.Empty
		DisabledDelegates.Empty
		bEnabled=false
		Distance=0.0
	}
};

var native const noexport Pointer VfTable_FTickableObject;
// Don't allow more than this many active actors
var() const int MaxActors;
// Delay between updating actor distances to local viewers
var() const float UpdateDelay;
var const transient float NextUpdateTime;
var const transient array<MaxActorCallback> Actors;

defaultproperties
{
	MaxActors=100
	UpdateDelay=0.10
}