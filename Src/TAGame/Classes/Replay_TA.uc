/*******************************************************************************
* Replay_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Replay_TA extends Object
	native
	config(Game);

enum EReplayVersion
{
	ReplayVersion_Base,
	ReplayVersion_OnlineLoadout,
	ReplayVersion_CameraSettings,
	ReplayVersion_TeamLoadouts,
	ReplayVersion_MatchType,
	ReplayVersion_ActorName,
	ReplayVersion_MutatorSeekFree,
	ReplayVersion_ClubColors,
	ReplayVersion_CameraTrack,
	ReplayVersion_MAX
};

enum EReplayState
{
	ReplayState_Idle,
	ReplayState_Recording,
	ReplayState_Playing,
	ReplayState_MAX
};

struct native export ReplayLogItem
{
	var int frame;
	var init string PlayerName;
	var init string Text;

	structdefaultproperties
	{
		frame=0
		PlayerName=""
		Text=""
	}
};

struct native export ReplayKeyframe
{
	var float Time;
	var int frame;
	var int Position;

	structdefaultproperties
	{
		Time=0.0
		frame=0
		Position=0
	}
};

struct native ReplayActorChannel
{
	var Actor Actor;
	var class ActorClass;
	var name actorName;
	var array<byte> Recent;
	var array<int> StillDirty;
	var float CloseTime;
	var bool bNetInitial;
	var bool bPlaybackPersistent;

	structdefaultproperties
	{
		Actor=None
		ActorClass=None
		actorName=None
		Recent.Empty
		StillDirty.Empty
		CloseTime=0.0
		bNetInitial=false
		bPlaybackPersistent=false
	}
};

struct native CarFrameSettings
{
	var string PlayerName;
	var ClientLoadoutData CarLoadout;
	var LinearColor TeamColor;
	var LinearColor AccentColor;
	var array<int> PaintIDs;
	var array<int> EsportsIDs;

	structdefaultproperties
	{
		PlayerName=""
		CarLoadout=(Products=None)
		TeamColor=(R=0.0,G=0.0,B=0.0,A=1.0)
		AccentColor=(R=0.0,G=0.0,B=0.0,A=1.0)
		PaintIDs.Empty
		EsportsIDs.Empty
	}
};

struct native SceneFrameCapture
{
	var name SceneName;
	var name CameraModeName;
	var string FocusActorName;
	var float TimeCaptured;
	var float CameraFOV;
	var Vector CameraLocation;
	var Rotator CameraRotation;
	var array<CarFrameSettings> PlayerCarSettings;
	var string OverrideBallType;

	structdefaultproperties
	{
		SceneName=None
		CameraModeName=None
		FocusActorName=""
		TimeCaptured=0.0
		CameraFOV=0.0
		CameraLocation=(X=0.0,Y=0.0,Z=0.0)
		CameraRotation=(Pitch=0,Yaw=0,Roll=0)
		PlayerCarSettings.Empty
		OverrideBallType=""
	}
};

struct native export TimelineKeyframe
{
	var databinding name Type;
	var databinding int frame;

	structdefaultproperties
	{
		Type=None
		frame=0
	}
};

var databinding string ReplayName;
var const transient int EngineVersion;
var const transient int LicenseeVersion;
var const transient int NetVersion;
var const int ReplayVersion;
var const int ReplayLastSaveVersion;
var const int GameVersion;
var const int BuildID;
var const int Changelist;
var const string BuildVersion;
var config int ReserveMegabytes;
var databinding const config float RecordFPS;
var const config float KeyframeDelay;
var const config int MaxChannels;
var const config int MaxReplaySizeMB;
var transient array< class > PlaybackClasses;
var transient array< class > IgnoreClasses;
var databinding transient string FilePath;
var databinding string Id;
var string MatchGuid;
var databinding bool bIsUnfinishedMatchReplay;
var databinding const bool bFileCorrupted;
var const transient bool bForceKeyframe;
var const transient bool bLoadedNetPackages;
var() transient bool bDebug;
var databinding const name MapName;
var databinding const string Date;
var databinding const int NumFrames;
var databinding name MatchType;
var databinding string PlayerName;
var const transient array<byte> Data;
var const transient array<ReplayKeyframe> KeyFrames;
var const transient EReplayState ReplayState;
var const transient int CurrentFrame;
var const transient int NextKeyframe;
var const transient float CurrentTime;
var const transient array<ReplayActorChannel> Channels;
var native const transient Map_Mirror ChannelsMap;
var const transient PackageMap PackageMap;
var const transient array<name> Levels;
var const transient array<int> FreeChannels;
var const transient float AccumulatedDeltaTime;
var const transient float TimeToSkipTo;
var const transient int FrameToSkipTo;
var const transient int PlayersOnlyTicks;
var const transient float TimePrevToSkip;
var native const transient Pointer WriterAr;
var native const transient Pointer ReaderAr;
var transient array<ReplayLogItem> Logs;
var databinding transient array<TimelineKeyframe> TimelineKeyframes;
var transient CameraTrack_TA CameraTrack;

defaultproperties
{
	/**ReserveMegabytes=4*/
	/**RecordFPS=30.0*/
	/**KeyframeDelay=10.0*/
	/**MaxChannels=2047*/
	/**MaxReplaySizeMB=10*/
	PlaybackClasses(0)=class'RBActor_TA'
	PlaybackClasses(1)=class'CarComponent_TA'
	PlaybackClasses(2)=class'VehiclePickup_TA'
	PlaybackClasses(3)=class'Explosion_X'
	PlaybackClasses(4)=class'CameraSettingsActor_TA'
	PlaybackClasses(5)=class'BreakOutActor_Platform_TA'
	PlaybackClasses(6)=class'Cannon_TA'
	PlaybackClasses(7)=class'RumblePickups_TA'
	IgnoreClasses(0)=class'ReplayDirector_TA'
	IgnoreClasses(1)=class'VoteActor_TA'
}