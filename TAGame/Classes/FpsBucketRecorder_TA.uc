/*******************************************************************************
* FpsBucketRecorder_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FpsBucketRecorder_TA extends ActorComponent;

struct native FpsBucketData
{
	var() int FPS;
	var float TotalTime;
	var float GameThreadTime;
	var float RenderThreadTime;
	var float GPUFrameTime;
	var float AvgFPS;
	var int DockedResolutionIndexSum;
	var int UndockedResolutionIndexSum;
	var int Count;

	structdefaultproperties
	{
		FPS=0
		TotalTime=0.0
		GameThreadTime=0.0
		RenderThreadTime=0.0
		GPUFrameTime=0.0
		AvgFPS=0.0
		DockedResolutionIndexSum=0
		UndockedResolutionIndexSum=0
		Count=0
	}
};

var() array<FpsBucketData> Buckets;
var int MinFPS;
var int MaxFPS;

defaultproperties
{
	Buckets(0)=(FPS=0,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	Buckets(1)=(FPS=10,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	Buckets(2)=(FPS=20,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	Buckets(3)=(FPS=30,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	Buckets(4)=(FPS=40,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	Buckets(5)=(FPS=50,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	Buckets(6)=(FPS=60,TotalTime=0.0,GameThreadTime=0.0,RenderThreadTime=0.0,GPUFrameTime=0.0,AvgFPS=0.0,DockedResolutionIndexSum=0,UndockedResolutionIndexSum=0,Count=0)
	MinFPS=-1
}