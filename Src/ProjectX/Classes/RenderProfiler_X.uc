/*******************************************************************************
* RenderProfiler_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RenderProfiler_X extends Actor
	notplaceable
	hidecategories(Navigation);

struct native PrimitiveComponentProfile
{
	var string ContentName;
	var export editinline array<export editinline PrimitiveComponent> Components;
	var RenderProfile InclusiveProfile;
	var RenderProfile ExclusiveProfile;

	structdefaultproperties
	{
		ContentName=""
		Components.Empty
		InclusiveProfile=(GameThreadTime=0.0,RenderThreadTime=0.0,GPUTime=0.0,FrameTime=0.0,FPS=0.0,AccumGameThreadTime=0.0,AccumRenderThreadTime=0.0,AccumGPUTime=0.0,AccumFrameTime=0.0,NumSamples=0)
		ExclusiveProfile=(GameThreadTime=0.0,RenderThreadTime=0.0,GPUTime=0.0,FrameTime=0.0,FPS=0.0,AccumGameThreadTime=0.0,AccumRenderThreadTime=0.0,AccumGPUTime=0.0,AccumFrameTime=0.0,NumSamples=0)
	}
};

var() float TimePerPrimitive;
var transient array<PrimitiveComponentProfile> PrimitiveProfiles;
var transient int CurrentIndex;
var transient bool bInclusive;
var transient float PrimitiveTime;

defaultproperties
{
	TimePerPrimitive=2.0
}