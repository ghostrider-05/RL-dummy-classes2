/*******************************************************************************
* AkEnvironments generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AkEnvironments extends Object
	native;

struct uint
{
	var int dummyint;

	structdefaultproperties
	{
		dummyint=0
	}
};

struct native AkEnvironment
{
	var() string Id;
	var() int Priority;
	var() float WetValue;
	var() float DryValue;
	var const uint HashedEnvID;

	structdefaultproperties
	{
		Id=""
		Priority=0
		WetValue=0.0
		DryValue=1.0
		HashedEnvID=(dummyint=0)
	}
};

struct native AkActorEnvironment
{
	var array<AkEnvironment> Environments;
	var Actor TargetActor;

	structdefaultproperties
	{
		Environments.Empty
		TargetActor=None
	}
};

var native const noexport Pointer VfTable_FObjectDestructionSubscriber;
var array<AkEnvironment> LevelEnvironments;
var array<AkActorEnvironment> ActorEnvironments;
var bool bLevelDirty;
var bool bActorEnvironmentDirty;