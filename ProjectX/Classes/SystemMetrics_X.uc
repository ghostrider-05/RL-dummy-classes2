/*******************************************************************************
* SystemMetrics_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SystemMetrics_X extends MetricsGroup_X;

struct OSMetrics
{
	var string Type;
	var string Bits;

	structdefaultproperties
	{
		Type=""
		Bits=""
	}
};

struct CpuMetrics
{
	var string Type;
	var string Desc;
	var string Cores;
	var string Threads;

	structdefaultproperties
	{
		Type=""
		Desc=""
		Cores=""
		Threads=""
	}
};

struct MemoryMetrics
{
	var float Physical;

	structdefaultproperties
	{
		Physical=0.0
	}
};

struct VideoCardMetrics
{
	var string Type;
	var int RAM;

	structdefaultproperties
	{
		Type=""
		RAM=0
	}
};

struct NetworkAdapterMetrics
{
	var array<string> Types;

	structdefaultproperties
	{
		Types.Empty
	}
};

defaultproperties
{
	Category="System"
}