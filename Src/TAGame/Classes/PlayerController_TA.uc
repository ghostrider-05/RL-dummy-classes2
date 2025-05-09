/*******************************************************************************
* PlayerController_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PlayerController_TA extends PlayerControllerBase_TA
	config(Game)
	hidecategories(Navigation);

struct native ChatSpamData
{
	var() float RiseAmount;
	var() float RiseMultiplier;
	var() float DecayRate;
	var() float MaxValue;
	var float Value;
	var float LastChatTime;

	structdefaultproperties
	{
		RiseAmount=0.0
		RiseMultiplier=0.0
		DecayRate=0.0
		MaxValue=0.0
		Value=0.0
		LastChatTime=0.0
	}
};

struct native CrosshairExtentInfo
{
	var Vector Extent;
	var float minDot;

	structdefaultproperties
	{
		Extent=(X=0.0,Y=0.0,Z=0.0)
		minDot=0.0
	}
};

var transient Car_TA Car;
var transient PRI_TA PRI;
var transient VehicleInputs VehicleInput;
var transient bool bReceivedServerShutdownMessage;
var transient bool bFilterNonTacticalQuickChat;
var bool bOverrideInput;
var bool bJumpPressed;
var bool bBoostPressed;
var bool bHandbrakePressed;
var bool bHasPitchedOrRolled;
var bool bAirPitchSafetyEnabled;
var config bool bAllowAsymmetricalMute;
var bool bReportedPlayer;
var bool bUsePickupPressed;
var transient string LoginURL;
var transient EVoiceFilter DeprecatedVoiceFilter;
var transient EChatFilter QuickChatFilter;
var transient EChatFilter MatchChatFilter;
var ENetworkInputBuffer RequestedInputBufferType;
var() ChatSpamData ChatSpam;
var ChatSpamData ChatSpamHarsh;
var export editinline LightBarComponent_TA LightBar;
var export editinline GameMusicComponent_TA MusicComponent;
var export editinline AudioPriorityComponent_TA AudioPriorityComponent;
var export editinline AudioMixStateComponent_TA AudioMixStateComponent;
var export editinline TeamDemoAudioComponent_TA TeamDemoAudioComponent;
var transient PRI_TA FollowTarget;
var() Camera SpectatorCameraArchetype;
var() HUD SpectatorHUDArchetype;
var() class SpectatorInputClass;
var() Camera EditorCameraArchetype;
var() HUD EditorHUDArchetype;
var() class EditorInputClass;
var Interface_GameEditor_TA MoveActor;
var Vector MoveActorGrabOffset;
var float MoveActorGrabIncrement;
var float MinMoveActorGrabDistance;
var float MouseIncrementSpeed;
var float BallVelocityIncrementAmount;
var int BallVelocityIncrementFireCount;
var float BallVelocityIncrementFireCountMax;
var float BallVelocityIncrementSpeedDefault;
var float BallVelocityIncrementSpeedMax;
var float CrosshairTraceDistance;
var Actor TracedCrosshairActor;
var array<CrosshairExtentInfo> CrosshairTraceExtents;
var Interface_GameEditor_TA RotatedActor;
var Vector RotateActorCameraLocationOffset;
var Vector RotateActorCameraRotationOffset;
var int RotateActorCameraSide;
var float DesiredCameraSide;
var float PawnTypeChangedTime;
var int SelectedSpawnArchetype;
var transient VehicleInputs OverrideInput;
var() config int MinClientInputRate;
var() config int MedianClientInputRate;
var() config int MaxClientInputRate;
var() config int ConfiguredClientInputRate;
var transient float TimeSinceLastMovePacket;
var transient float TimeLastReplicatedMovePacket;
var export editinline transient PlatformMetrics_TA PlatformMetrics;
var float MouseXDeadZone;
var float MouseYDeadZone;
var float MouseXDeadZoneAir;
var float MouseYDeadZoneAir;
var VehicleInputs LastInputs;
var transient PRI_TA PendingViewPRI;
var export editinline transient ClientConnectionTracker_TA ConnectionTracker;
var transient ProfileCameraSave_TA CameraSave;
var EngineShare_TA EngineShare;
var repnotify NetworkInputBuffer_TA InputBuffer;
var CrossplayConfig_X CrossplayConfig;
var const localized string PlayerReportedMessage;
var const localized string PlayerReportedPostGameMessage;
var const localized string CheckPlayerReportStatusMessage;
var VoiceRoomCredentials RoomCredentials;
var EOSGameClipsController_TA EOSGameClipsControllerArchetype;
var EOSGameClipsController_TA EOSGameClipsController;
var repnotify repretry PrespawnData Prespawn;
var FreeplaySessionManager_TA FreeplaySessionManager;
var Actor TargettedActor;
var float PickupButtonPressedSeconds;
var float PickupActivationBuffer;

defaultproperties
{
	MoveActorGrabIncrement=100.0
	MinMoveActorGrabDistance=300.0
	MouseIncrementSpeed=0.010
	BallVelocityIncrementAmount=50.0
	BallVelocityIncrementFireCountMax=2.0
	BallVelocityIncrementSpeedDefault=0.250
	BallVelocityIncrementSpeedMax=0.020
	CrosshairTraceDistance=12000.0
	CrosshairTraceExtents(0)=(Extent=(X=1.0,Y=1.0,Z=1.0),minDot=0.0)
	CrosshairTraceExtents(1)=(Extent=(X=100.0,Y=100.0,Z=100.0),minDot=0.70)
	CrosshairTraceExtents(2)=(Extent=(X=500.0,Y=500.0,Z=500.0),minDot=0.990)
	RotateActorCameraSide=-1
	/**MinClientInputRate=20*/
	/**MedianClientInputRate=40*/
	/**MaxClientInputRate=60*/
	/**ConfiguredClientInputRate=60*/
	/**PlayerReportedMessage="Your report will be sent after the match.\\nThank you"*/
	/**PlayerReportedPostGameMessage="Thank you"*/
	/**CheckPlayerReportStatusMessage="To check the status of your report, go to safety.epicgames.com/reports"*/
	CheatClass=class'CheatManager_TA'
	InputClass=class'PlayerInput_Game_TA'
	CylinderComponent=None
	
	NavigationHandleClass=None
	//Components(0)=GroupComponent_ORS'Default__PlayerController_TA.DefaultRegistryGroup'
	CollisionComponent=None
}
replication
{
	 if(bNetInitial)
		FreeplaySessionManager, InputBuffer;

	 if(bNetDirty)
		Prespawn;
}
