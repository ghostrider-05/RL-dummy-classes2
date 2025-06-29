/*******************************************************************************
* ActorChannelMonitor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ActorChannelMonitor_TA extends Object;

struct OverflowedProperties
{
	var Actor OverflowedActor;
	var array<string> PropertyNames;

	structdefaultproperties
	{
		OverflowedActor=None
		PropertyNames.Empty
	}
};

struct ActorOverflowEvent
{
	var UniqueNetId PlayerID;
	var transient array<OverflowedProperties> OverflowedActors;

	structdefaultproperties
	{
		
		OverflowedActors.Empty
	}
};

var transient array<ActorOverflowEvent> OverflowEvents;
var export editinline transient ActorChannelMetrics_TA Metrics;
var transient GRI_X GRI;
var transient NetworkConfig_TA NetworkConfig;
