/*******************************************************************************
* _Types_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class _Types_X extends Object
	abstract;

const MaxPrivateMatchNameLength = 16;
const MaxPrivateMatchPasswordLength = 16;
const ReservationType_JoinPrivateMatch = 'JoinPrivate';
const ReservationType_FriendJoin = 'FriendJoin';
const ReservationType_Reconnect = 'Reconnect';

enum EConnectionType_X
{
	ConnectionType_Unknown,
	ConnectionType_Wired,
	ConnectionType_WiFi,
	ConnectionType_Mixed,
	ConnectionType_Docked,
	ConnectionType_MAX
};

enum EOnlinePlayerRole
{
	OPR_PrivateMatchAdmin,
	OPR_SuperPrivateMatchAdmin,
	OPR_MAX
};

enum EOnlinePlayerPermission
{
	OPP_PrivateMatchAdmin,
	OPP_SuperPrivateMatchAdmin,
	OPP_MAX
};

enum EReservationStatus
{
	ReservationStatus_None,
	ReservationStatus_Reserved,
	ReservationStatus_Joining,
	ReservationStatus_InGame,
	ReservationStatus_MAX
};

enum EPartyMatchmakingRestriction
{
	PMR_NotOriginalAppOwner,
	PMR_PendingLicenseAgreement,
	PMR_InMainMenu,
	PMR_NotLoggedInPsyNet,
	PMR_MAX
};

enum EButtonPressType
{
	BPT_Normal,
	BPT_Tap,
	BPT_Hold,
	BPT_DoubleTap,
	BPT_Toggle,
	BPT_MAX
};

enum EAxisSign
{
	AxisSign_None,
	AxisSign_Positive,
	AxisSign_Negative,
	AxisSign_MAX
};

enum ERemappable
{
	Remappable_All,
	Remappable_Key,
	Remappable_Axis,
	Remappable_KeyTriggerAxis,
	Remappable_None,
	Remappable_MAX
};

enum EChatPermissionLevel
{
	CPL_Everybody,
	CPL_FriendsAndTeam,
	CPL_Friends,
	CPL_Nobody,
	CPL_MAX
};

enum ETradePermissionLevel
{
	TPL_Everybody,
	TPL_FriendsAndParty,
	TPL_Friends,
	TPL_Nobody,
	TPL_MAX
};

enum EDatabaseEnvironment
{
	DBE_DevLocal,
	DBE_Dev,
	DBE_Test,
	DBE_Production,
	DBE_MAX
};

enum EJoinMatchType
{
	JMT_Public,
	JMT_Private,
	JMT_MAX
};

enum EConsoleQualityMode
{
	ConsoleQualityMode_Performance,
	ConsoleQualityMode_Quality,
	ConsoleQualityMode_MAX
};

enum EBanType
{
	BanType_None,
	BanType_Auth,
	BanType_Chat,
	BanType_Voice,
	BanType_Club,
	BanType_Trade,
	BanType_QuitPenalty,
	BanType_Social,
	BanType_MAX
};

enum ESeverityType
{
	SeverityType_None,
	SeverityType_Low,
	SeverityType_Medium,
	SeverityType_High,
	SeverityType_MAX
};

struct native NetStats
{
	var float PingMin;
	var float Jitter;
	var float LossPct;

	structdefaultproperties
	{
		PingMin=0.0
		Jitter=0.0
		LossPct=0.0
	}
};

struct PlayerPermissionsList
{
	var UniqueNetId PlayerID;
	var array<EOnlinePlayerPermission> Permissions;

	structdefaultproperties
	{
		
		Permissions.Empty
	}
};

struct ClubMember
{
	var UniqueNetId PlayerID;
	var UniqueNetId EpicPlayerID;
	var string PlayerName;

	structdefaultproperties
	{
		
		
		PlayerName=""
	}
};

struct native DownloadedImage
{
	var string URL;
	var Texture2DDynamic Texture;

	structdefaultproperties
	{
		URL=""
		Texture=none
	}
};

struct native IntVector3
{
	var() int X;
	var() int Y;
	var() int Z;

	structdefaultproperties
	{
		X=0
		Y=0
		Z=0
	}
};

struct native MetricsEvent
{
	var UniqueNetId PlayerID;
	var float TimeSeconds;
	var int Version;
	var string EventName;
	var string EventData;

	structdefaultproperties
	{
		
		TimeSeconds=0.0
		Version=0
		EventName=""
		EventData=""
	}
};

struct native RenderProfile
{
	var float GameThreadTime;
	var float RenderThreadTime;
	var float GPUTime;
	var float FrameTime;
	var float FPS;
	var float AccumGameThreadTime;
	var float AccumRenderThreadTime;
	var float AccumGPUTime;
	var float AccumFrameTime;
	var int NumSamples;

	structdefaultproperties
	{
		GameThreadTime=0.0
		RenderThreadTime=0.0
		GPUTime=0.0
		FrameTime=0.0
		FPS=0.0
		AccumGameThreadTime=0.0
		AccumRenderThreadTime=0.0
		AccumGPUTime=0.0
		AccumFrameTime=0.0
		NumSamples=0
	}
};

struct PlayerTitleCategory
{
	var name Id;
	var string Color;
	var string GlowColor;

	structdefaultproperties
	{
		Id=None
		Color=""
		GlowColor=""
	}
};

struct PlayerTitleData
{
	var databinding name Id;
	var databinding string Text;
	var name Category;
	var databinding Color Color;
	var databinding Color GlowColor;

	structdefaultproperties
	{
		Id=None
		Text=""
		Category=None
		Color=(R=0,G=0,B=0,A=0)
		GlowColor=(R=0,G=0,B=0,A=0)
	}
};

struct PartyMemberServer
{
	var string ServerName;
	var string CustomPassword;
	var string JoinName;
	var string JoinPassword;
	var int PlaylistId;

	structdefaultproperties
	{
		ServerName=""
		CustomPassword=""
		JoinName=""
		JoinPassword=""
		PlaylistId=0
	}
};

struct PartyMember
{
	var UniqueNetId PrimaryMemberId;
	var UniqueNetId MemberId;
	var string MemberName;
	var int MatchmakeRestrictions;
	var int LocalControllerId;
	var ECrossPlatformChatState CrossChatState;
	var bool bDisableCrossPlay;
	var bool bTradingEnabled;
	var UniqueNetId TradingMemberId;
	var Guid TradeId;
	var bool bReadyToLockTrade;
	var bool bReadyToConfirmTrade;
	var PartyMemberServer Server;
	var UniqueLobbyId PlatformParty;

	structdefaultproperties
	{
		
		
		MemberName=""
		MatchmakeRestrictions=0
		LocalControllerId=-1
		CrossChatState=PCCS_Everybody
		bDisableCrossPlay=false
		bTradingEnabled=false
		
		TradeId=(A=0,B=0,C=0,D=0)
		bReadyToLockTrade=false
		bReadyToConfirmTrade=false
		Server=(ServerName="",CustomPassword="",JoinName="",JoinPassword="",PlaylistId=0)
		
	}
};

struct CachedRegionPing
{
	var name Name;
	var float Ping;

	structdefaultproperties
	{
		Name=None
		Ping=0.0
	}
};

struct native PlayerSeasonRewardProgress
{
	var UniqueNetId PlayerID;
	var int SeasonLevel;
	var int SeasonLevelWins;

	structdefaultproperties
	{
		
		SeasonLevel=0
		SeasonLevelWins=0
	}
};

struct native SkillRating
{
	var float Mu;
	var float Sigma;

	structdefaultproperties
	{
		Mu=25.0
		Sigma=8.3330
	}
};

struct TierSkillRating extends _Types_X.SkillRating
{
	var int Tier;
	var int Division;
	var int MatchesPlayed;
	var int PlacementMatchesPlayed;
	var int WinStreak;
	var float MMR;
};

struct PlaylistSkillRating extends _Types_X.TierSkillRating
{
	var int Playlist;
};

struct PlayerSkillRating extends _Types_X.PlaylistSkillRating
{
	var UniqueNetId PlayerID;

	structdefaultproperties
	{
		
	}
};

struct UpdatedPlayerSkillRating extends _Types_X.PlayerSkillRating
{
	var float PrevMu;
	var float PrevSigma;
	var int PrevTier;
	var int PrevDivision;
};

struct PlaylistTierSkillRating extends _Types_X.TierSkillRating
{
	var int Playlist;
};

struct PlayerPermissions
{
	var EChatPermissionLevel TextChat;
	var EChatPermissionLevel VoiceChat;
	var ETradePermissionLevel Trade;
	var bool bRequirePinForFriends;

	structdefaultproperties
	{
		TextChat=CPL_Everybody
		VoiceChat=CPL_Everybody
		Trade=TPL_Everybody
		bRequirePinForFriends=false
	}
};

struct native BindingAction
{
	var databinding name Action;
	var databinding name Category;
	var databinding name Axis;
	var databinding EAxisSign AxisSign;
	var string Command;
	var bool bDisableRemapping;
	var int Priority;

	structdefaultproperties
	{
		Action=None
		Category=None
		Axis=None
		AxisSign=AxisSign_None
		Command=""
		bDisableRemapping=false
		Priority=0
	}
};

struct native PlayerBinding
{
	var databinding name Action;
	var databinding name Key;
	var databinding EAxisSign AxisSign;
	var databinding EButtonPressType PressType;
	var databinding float Speed;
	var databinding bool bRequired;
	var ERemappable Remappable;
	var transient float PressedTime;
	var transient float ReleasedTime;
	var transient bool bTapped;
	var transient bool bToggled;

	structdefaultproperties
	{
		Action=None
		Key=None
		AxisSign=AxisSign_None
		PressType=BPT_Normal
		Speed=0.0
		bRequired=false
		Remappable=Remappable_All
		PressedTime=0.0
		ReleasedTime=0.0
		bTapped=false
		bToggled=false
	}
};

struct native ReplicatedRBState
{
	var Quat Quaternion;
	var Vector Location;
	var Vector LinearVelocity;
	var Vector AngularVelocity;
	var float Time;
	var bool bSleeping;
	var bool bNewData;

	structdefaultproperties
	{
		Quaternion=(X=0.0,Y=0.0,Z=0.0,W=0.0)
		Location=(X=0.0,Y=0.0,Z=0.0)
		LinearVelocity=(X=0.0,Y=0.0,Z=0.0)
		AngularVelocity=(X=0.0,Y=0.0,Z=0.0)
		Time=0.0
		bSleeping=false
		bNewData=false
	}
};

struct native ReplicatedRBStateNoQuat
{
	var float QuatX;
	var float QuatY;
	var float QuatZ;
	var float QuatW;
	var Vector Location;
	var Vector LinearVelocity;
	var Vector AngularVelocity;
	var bool bSleeping;

	structdefaultproperties
	{
		QuatX=0.0
		QuatY=0.0
		QuatZ=0.0
		QuatW=0.0
		Location=(X=0.0,Y=0.0,Z=0.0)
		LinearVelocity=(X=0.0,Y=0.0,Z=0.0)
		AngularVelocity=(X=0.0,Y=0.0,Z=0.0)
		bSleeping=false
	}
};

struct ReservationPlayerData
{
	var UniqueNetId PlayerID;
	var string PlayerName;
	var float SkillMu;
	var float SkillSigma;
	var int Tier;
	var bool bRemotePlayer;
	var array<int> Loadout;
	var array<name> MapLikes;
	var array<name> MapDislikes;
	var Qword ClubID;

	structdefaultproperties
	{
		
		PlayerName=""
		SkillMu=0.0
		SkillSigma=0.0
		Tier=0
		bRemotePlayer=false
		Loadout.Empty
		MapLikes.Empty
		MapDislikes.Empty
		
	}
};

struct ReplicatedReservationData
{
	var UniqueNetId PlayerID;
	var string PlayerName;
	var EReservationStatus Status;

	structdefaultproperties
	{
		
		PlayerName=""
		Status=ReservationStatus_None
	}
};

struct native ClubColorSet
{
	var byte TeamColorID;
	var byte CustomColorID;
	var bool bTeamColorSet;
	var bool bCustomColorSet;

	structdefaultproperties
	{
		TeamColorID=0
		CustomColorID=0
		bTeamColorSet=false
		bCustomColorSet=false
	}
};

struct native CustomMatchTeamSettings
{
	var string Name;
	var ClubColorSet Colors;
	var int GameScore;

	structdefaultproperties
	{
		Name=""
		Colors=(TeamColorID=0,CustomColorID=0,bTeamColorSet=false,bCustomColorSet=false)
		GameScore=0
	}
};

struct native CustomMatchSettings
{
	var string GameTags;
	var name MapName;
	var byte GameMode;
	var int MaxPlayerCount;
	var string ServerName;
	var string Password;
	var bool bPublic;
	var CustomMatchTeamSettings TeamSettings[2];
	var bool bClubServer;

	structdefaultproperties
	{
		GameTags=""
		MapName=None
		GameMode=0
		MaxPlayerCount=0
		ServerName=""
		Password=""
		bPublic=false
		TeamSettings[0]=(Name="",Colors=(TeamColorID=0,CustomColorID=0,bTeamColorSet=false,bCustomColorSet=false),GameScore=0)
		TeamSettings[1]=(Name="",Colors=(TeamColorID=0,CustomColorID=0,bTeamColorSet=false,bCustomColorSet=false),GameScore=0)
		bClubServer=false
	}
};

struct JoinMatchSettings
{
	var EJoinMatchType MatchType;
	var int PlaylistId;
	var bool bFriendJoin;
	var bool bMigration;
	var bool bRankedReconnect;
	var string Password;

	structdefaultproperties
	{
		MatchType=JMT_Public
		PlaylistId=0
		bFriendJoin=false
		bMigration=false
		bRankedReconnect=false
		Password=""
	}
};

struct PartyJoinMatchSettings
{
	var string ServerName;
	var int PlaylistId;
	var bool bFriendJoin;
	var string CustomPassword;
	var string ReservationID;
	var string JoinName;
	var string JoinPassword;

	structdefaultproperties
	{
		ServerName=""
		PlaylistId=0
		bFriendJoin=false
		CustomPassword=""
		ReservationID=""
		JoinName=""
		JoinPassword=""
	}
};

struct SkillMatchPlayer
{
	var UniqueNetId PlayerID;
	var float PctTimePlayed;
	var float TimePlayed;
	var bool bQuitter;
	var int PartyID;
	var int Score;
	var int Team;

	structdefaultproperties
	{
		
		PctTimePlayed=0.0
		TimePlayed=0.0
		bQuitter=false
		PartyID=0
		Score=0
		Team=0
	}
};

struct ServerResult
{
	var string Address;
	var string ServerName;
	var CustomMatchSettings Settings;

	structdefaultproperties
	{
		Address=""
		ServerName=""
		Settings=(GameTags="",MapName=None,GameMode=0,MaxPlayerCount=0,ServerName="",Password="",bPublic=false,TeamSettings=(Name="",Colors=(TeamColorID=0,CustomColorID=0,bTeamColorSet=false,bCustomColorSet=false),GameScore=0),TeamSettings[1]=(Name="",Colors=(TeamColorID=0,CustomColorID=0,bTeamColorSet=false,bCustomColorSet=false),GameScore=0),bClubServer=false)
	}
};

struct SkillMatchData
{
	var string ServerId;
	var int Playlist;
	var int WinningTeam;
	var int Team0Score;
	var int Team1Score;
	var bool bOverTime;

	structdefaultproperties
	{
		ServerId=""
		Playlist=0
		WinningTeam=0
		Team0Score=0
		Team1Score=0
		bOverTime=false
	}
};

struct SkillMatchParty
{
	var int PartyID;
	var float PctTimePlayed;
	var bool bQuitter;
	var array<UniqueNetId> Players;

	structdefaultproperties
	{
		PartyID=0
		PctTimePlayed=0.0
		bQuitter=false
		Players.Empty
	}
};

struct SkillMatchPartyRating extends _Types_X.TierSkillRating
{
	var int PartyID;
};

struct ServerConnectionInfo
{
	var string ServerAddress;
	var string PingAddress;
	var string ServerName;

	structdefaultproperties
	{
		ServerAddress=""
		PingAddress=""
		ServerName=""
	}
};

struct native CrossplayGroup
{
	var array<_Types_Core.OnlinePlatform> Platforms;

	structdefaultproperties
	{
		Platforms.Empty
	}
};

struct native MapPrefs
{
	var array<name> Likes;
	var array<name> Dislikes;

	structdefaultproperties
	{
		Likes.Empty
		Dislikes.Empty
	}
};

struct CheckReservationResponse
{
	var string IP;
	var string ServerName;
	var int Playlist;
	var string Region;
	var string Host;
	var int Port;
	var string ReservationID;
	var string DSConnectToken;
	var NetworkEncryptionKey Keys;
	var bool IsServerKey;

	structdefaultproperties
	{
		IP=""
		ServerName=""
		Playlist=0
		Region=""
		Host=""
		Port=0
		ReservationID=""
		DSConnectToken=""
		Keys=none
		IsServerKey=false
	}
};

struct ServerReservationData
{
	var string ServerName;
	var int Playlist;
	var string Region;
	var string ReservationID;
	var string DSRToken;
	var NetworkEncryptionKey Keys;
	var string JoinName;
	var string JoinPassword;

	structdefaultproperties
	{
		ServerName=""
		Playlist=0
		Region=""
		ReservationID=""
		DSRToken=""
		Keys=none
		JoinName=""
		JoinPassword=""
	}
};

struct ActiveServerData
{
	var ServerReservationData Reservation;
	var string PingURL;
	var string GameURL;
	var string JoinCredentials;

	structdefaultproperties
	{
		Reservation=(ServerName="",Playlist=0,Region="",ReservationID="",DSRToken="",Keys=none,JoinName="",JoinPassword="")
		PingURL=""
		GameURL=""
		JoinCredentials=""
	}
};

struct native ReservationData
{
	var UniqueNetId PlayerID;
	var string PlayerName;
	var UniqueNetId PartyID;
	var EReservationStatus Status;
	var float TimeoutTime;
	var bool bDisableCrossPlay;
	var PlayerReplicationInfo PRI;
	var byte Team;
	var AddReservationMessage_X ReservationMessage;
	var IReservationConnection_X Connection;
	var bool bIgnoreBeaconDisconnect;
	var SkillRating Skill;
	var array<name> MapLikes;
	var array<name> MapDislikes;

	structdefaultproperties
	{
		
		PlayerName=""
		
		Status=ReservationStatus_None
		TimeoutTime=0.0
		bDisableCrossPlay=false
		PRI=none
		Team=255
		ReservationMessage=none
		Connection=none
		bIgnoreBeaconDisconnect=false
		Skill=(Mu=25.0,Sigma=8.3330)
		MapLikes.Empty
		MapDislikes.Empty
	}
};

struct MigrationReservationData
{
	var UniqueNetId PlayerID;
	var string PlayerName;
	var UniqueNetId PartyID;
	var EReservationStatus Status;
	var bool bDisableCrossPlay;
	var byte Team;
	var SkillRating Skill;
	var array<name> MapLikes;
	var array<name> MapDislikes;
	var NetworkEncryptionKey SecurityKey;

	structdefaultproperties
	{
		
		PlayerName=""
		
		Status=ReservationStatus_None
		bDisableCrossPlay=false
		Team=255
		Skill=(Mu=25.0,Sigma=8.3330)
		MapLikes.Empty
		MapDislikes.Empty
		SecurityKey=none
	}
};

struct native SuperSonicConfig
{
	var float Speed;
	var float TurnoffSpeedBuffer;
	var float TurnoffTime;

	structdefaultproperties
	{
		Speed=0.0
		TurnoffSpeedBuffer=0.0
		TurnoffTime=0.0
	}
};

struct native BumpAngleCheckConfig
{
	var bool bEnabled;
	var float BumpAngleYaw;
	var float BumpAnglePitch;
	var float DemolishAngleYaw;
	var float DemolishAnglePitch;

	structdefaultproperties
	{
		bEnabled=false
		BumpAngleYaw=0.0
		BumpAnglePitch=0.0
		DemolishAngleYaw=0.0
		DemolishAnglePitch=0.0
	}
};

struct native BumpAngleCurveCheckConfig
{
	var bool bEnabled;
	var InterpCurveFloat BumpAngleCurveYaw;
	var InterpCurveFloat BumpAngleCurvePitch;
	var InterpCurveFloat DemolishAngleCurveYaw;
	var InterpCurveFloat DemolishAngleCurvePitch;

	structdefaultproperties
	{
		bEnabled=false
		BumpAngleCurveYaw=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		BumpAngleCurvePitch=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		DemolishAngleCurveYaw=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		DemolishAngleCurvePitch=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
	}
};

struct native CarInteractionConfig
{
	var float PushFactor;
	var InterpCurveFloat BumperPushFactorCurveGround;
	var InterpCurveFloat BumperPushFactorCurveAir;
	var InterpCurveFloat ZPushFactorCurve;
	var float BumpInterval;
	var BumpAngleCheckConfig COMAngleCheck;
	var BumpAngleCheckConfig VictimHitAngleCheck;
	var BumpAngleCheckConfig AttackerHitAngleCheck;
	var BumpAngleCurveCheckConfig VictimHitAngleCurveCheck;
	var bool bCheckImpactNormal;
	var float ImpactNormalDotProductDemo;
	var float ImpactNormalDotProductBump;

	structdefaultproperties
	{
		PushFactor=0.0
		BumperPushFactorCurveGround=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		BumperPushFactorCurveAir=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		ZPushFactorCurve=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents)
		BumpInterval=0.0
		COMAngleCheck=(bEnabled=false,BumpAngleYaw=0.0,BumpAnglePitch=0.0,DemolishAngleYaw=0.0,DemolishAnglePitch=0.0)
		VictimHitAngleCheck=(bEnabled=false,BumpAngleYaw=0.0,BumpAnglePitch=0.0,DemolishAngleYaw=0.0,DemolishAnglePitch=0.0)
		AttackerHitAngleCheck=(bEnabled=false,BumpAngleYaw=0.0,BumpAnglePitch=0.0,DemolishAngleYaw=0.0,DemolishAnglePitch=0.0)
		VictimHitAngleCurveCheck=(bEnabled=false,BumpAngleCurveYaw=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents),BumpAngleCurvePitch=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents),DemolishAngleCurveYaw=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents),DemolishAngleCurvePitch=(Points=none,InterpMethod=IMT_UseFixedTangentEvalAndNewAutoTangents))
		bCheckImpactNormal=false
		ImpactNormalDotProductDemo=0.0
		ImpactNormalDotProductBump=0.0
	}
};

struct native PsyNetPersonaData
{
	var UniqueNetId PlayerID;
	var string PlayerName;
	var string PresenceInfo;
	var string PresenceState;

	structdefaultproperties
	{
		
		PlayerName=""
		PresenceInfo=""
		PresenceState=""
	}
};

struct RegionSecret
{
	var string Region;
	var string Secret;

	structdefaultproperties
	{
		Region=""
		Secret=""
	}
};

struct native OnlineStatus
{
	var UniqueNetId PlayerID;
	var string PresenceInfo;
	var EOnlineFriendState PresenceState;

	structdefaultproperties
	{
		
		PresenceInfo=""
		PresenceState=OFS_Offline
	}
};

struct native HonorDuelChallenge
{
	var UniqueNetId Challenger;
	var UniqueNetId Defender;

	structdefaultproperties
	{
		
		
	}
};

struct PsyNetBeaconPartyReservation
{
	var array<UniqueNetId> Members;

	structdefaultproperties
	{
		Members.Empty
	}
};

struct PsyNetBeaconPlayerReservation
{
	var UniqueNetId PlayerID;
	var NetworkEncryptionKey Keys;
	var string DSConnectToken;

	structdefaultproperties
	{
		
		Keys=none
		DSConnectToken=""
	}
};

struct PsyNetBeaconReservation
{
	var string ReservationID;
	var int Playlist;
	var bool IsBackfill;
	var bool IsBotMatch;
	var array<string> BotNames;
	var array<PsyNetBeaconPlayerReservation> Players;
	var array<PsyNetBeaconPartyReservation> Parties;

	structdefaultproperties
	{
		ReservationID=""
		Playlist=0
		IsBackfill=false
		IsBotMatch=false
		BotNames.Empty
		Players.Empty
		Parties.Empty
	}
};

struct native GFxBlurRect
{
	var string RectID;
	var float TopLeftX;
	var float TopLeftY;
	var float BottomRightX;
	var float BottomRightY;

	structdefaultproperties
	{
		RectID=""
		TopLeftX=0.0
		TopLeftY=0.0
		BottomRightX=0.0
		BottomRightY=0.0
	}
};

