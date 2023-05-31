/*******************************************************************************
* EngineShare_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EngineShare_TA extends EngineShare_X
	transient
	config(Engine);

var() const bool bEnableClientPrediction;
var const transient bool bClientPhysicsUpdate;
var transient bool bDisableClientCorrections;
var const bool bRunningPhysicsFrame;
var bool bDebugClientCorrections;
var bool bForceClientCorrection;
var transient ReplayManager_TA ReplayManager;
var transient AdManager_TA AdManager;
var export editinline transient OnlineProductStore_TA OnlineProductStore;
var() float PhysicsFramerate;
var() const int MaxPhysicsSubsteps;
var() int MaxUploadedClientFrames;
var const transient int MaxClientReplayFrames;
var const transient int PhysicsFrame;
var const transient float RenderAlpha;
var const transient int ReplicatedPhysicsFrame;
var const transient int DirtyPhysicsFrame;
var transient int ForceCorrectionFrames;
var const transient array<ITickNotify_TA> TickNotifies;
var const transient int TickNotifyIndex;
var config string ShellArchetypePath;
var transient SystemSettingsManager_TA SystemSettingsManager;
var float DebugClientCorrectionStartTime;
var int DebugClientCorrectionCount;
var export editinline StatGraphSystem_TA StatGraphs;
var PhysicsConfig_TA PhysicsConfig;
var array<NetworkInputBuffer_TA> InputBuffers;
var float LastPhysicsDeltaTimeScale;

defaultproperties
{
	bEnableClientPrediction=true
	//OnlineProductStore=OnlineProductStore_TA'Default__EngineShare_TA.DefaultOnlineProductStore'
	PhysicsFramerate=120.0
	MaxPhysicsSubsteps=5
	MaxUploadedClientFrames=30
	DirtyPhysicsFrame=-1
	TickNotifyIndex=-1
	/**ShellArchetypePath="GFxShell.GFx.GFxShell"*/
	ArchetypeString_OnlineGame="Archetypes.Online.OnlineGame"
	ArchetypeString_OnlineGameDedicatedServer="Archetypes.Online.OnlineGameDedicatedServer"
}