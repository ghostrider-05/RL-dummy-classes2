/*******************************************************************************
* PRI_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PRI_TA extends PRI_X
	hidecategories(Navigation,Movement,Collision)
	implements(IVanityLoadout_TA);

const MaxFriendKeyLength = 64;

struct SkillTierData
{
	var byte Tier;
	var byte PlacementMatchesPlayed;
	var bool bReplicated;

	structdefaultproperties
	{
		Tier=0
		PlacementMatchesPlayed=0
		bReplicated=false
	}
};

struct ClientLoadoutOnlineDatas
{
	var ClientLoadoutOnlineData Loadouts[2];
	var bool bLoadoutSet;
	var bool bDeprecated;

	structdefaultproperties
	{
		Loadouts[0]=(Products=None)
		Loadouts[1]=(Products=None)
		bLoadoutSet=false
		bDeprecated=false
	}
};

struct ClientLoadoutDatas
{
	var ClientLoadoutData Loadouts[2];

	structdefaultproperties
	{
		Loadouts[0]=(Products=None)
		Loadouts[1]=(Products=None)
	}
};

struct StatCooldown
{
	var StatEvent_TA Stat;
	var float UnlockWorldTime;

	structdefaultproperties
	{
		Stat=None
		UnlockWorldTime=0.0
	}
};

struct ScoreboardStat
{
	var name Name;
	var int Value;

	structdefaultproperties
	{
		Name=None
		Value=0
	}
};

var transient int MatchScore;
var transient int MatchGoals;
var transient int MatchOwnGoals;
var transient int MatchAssists;
var transient int MatchSaves;
var transient int MatchShots;
var transient int MatchDemolishes;
var transient int MatchBonusXP;
var transient int MatchBreakoutDamage;
var repnotify transient bool bMatchMVP;
var repnotify transient bool bMatchAdmin;
var transient bool bLoadoutSet;
var repnotify transient bool bOnlineLoadoutSet;
var transient bool bLoadoutsSet;
var transient bool bOnlineLoadoutsSet;
var transient bool bServerSetTeamLoadoutLocked;
var transient bool bTeamPaintSet;
var repnotify transient bool bReady;
var repnotify transient bool bIsDistracted;
var transient bool bUsingSecondaryCamera;
var transient bool bUsingBehindView;
var transient bool bUsingFreecam;
var repnotify bool bIsInSplitScreen;
var repnotify transient bool bStartVoteToForfeitDisabled;
var transient bool bUsingItems;
var repnotify bool PlayerHistoryValid;
var repnotify transient bool bIdleBanned;
var transient bool bStayAsPartyActive;
var transient bool bAbleToStart;
var transient bool bTeamChanged;
var transient GameEvent_TA GameEvent;
var repnotify transient GameEvent_TA ReplicatedGameEvent;
var transient Car_TA Car;
var transient LoadoutData FullLoadouts[2];
var transient LoadoutAttributesArray FullLoadoutAttributes[2];
var transient ClientLoadoutOnlineData FullOnlineLoadout[2];
var repnotify transient ClientLoadoutData ClientLoadout;
var repnotify transient ClientLoadoutOnlineData ClientLoadoutOnline;
var repnotify transient ClientLoadoutDatas ClientLoadouts;
var repnotify transient ClientLoadoutOnlineDatas ClientLoadoutsOnline;
var transient array<OnlineProductStat> OnlineProductStats;
var transient float TimeLoadoutWasLocked;
var transient LoadoutTeamPaint TeamPaint;
var transient array<TAPlayerStat> MatchStats;
var transient int WaitingStartTime;
var transient float TotalGameTimePlayed;
var repnotify transient CameraSettingsActor_TA PersistentCamera;
var transient CameraSettingsActor_TA Camera;
var transient ProfileCameraSettings CameraSettings;
var transient byte CameraPitch;
var transient byte CameraYaw;
// type to check if the player is spectating, in editor or a normal player
var repnotify EPawnType PawnType;
var repnotify byte PlayerHistoryKey[64];
var EConnectionQualityState ReplicatedWorstNetQualityBeyondLatency;
var repnotify transient ESeverityType QuitSeverity;
var transient array<ProductStat_TA> ProductStats;
var transient array<ProductStat> PendingProductStatValues;
var repnotify UniqueNetId PartyLeader;
var repnotify transient name Title;
var repnotify transient SkillTierData SkillTier;
var float DodgeInputThreshold;
var repnotify transient float SteeringSensitivity;
var transient float AirControlSensitivity;
var transient array<StatCooldown> StatCooldowns;
var transient int BoostPickups;
var transient int BallTouches;
var transient int CarTouches;
var repnotify transient PRI_TA ReplacingBotPRI;
var repnotify MemberTitleStat PrimaryTitle;
var repnotify MemberTitleStat SecondaryTitle;
var transient ProductAsset_GoalExplosion_TA PlayerGoalExplosion;
var export editinline PlayerBanner_TA PlayerBanner;
var export editinline PlayerAvatar_TA PlayerAvatar;
var export editinline PlayerAvatarBorder_TA PlayerBorder;
var transient ProductAsset_MusicStingers_TA PlayerMusicStinger;
var repnotify transient name BotProductName;
var repnotify int BotAvatarProductID;
var repnotify int BotBannerProductID;
var Qword ClubID;
var int LastTeamIndex;
var string PublicIP;
var repnotify transient int SpectatorShortcut;
var CarDistanceTracker_TA CarDistanceTracker;
var StayAsPartyVoter_TA StayAsPartyVoter;
var StayAsPartyVoteYes_TA StayAsPartyVoteYes;
var PickupTimer_TA PickupTimer;
var transient int TimeTillItem;
var transient int MaxTimeTillItem;
var ProductsConfig_TA ProductsConfig;
var repnotify string CurrentVoiceRoom;
var transient ServerSetLoadoutParams PendingLoadout;
var transient int PossessionSteals;
var transient int PossessionDenials;
var transient int PossessionClears;
var transient int BallDemolitionSaves;
var transient int CarDemolitions;
var transient int BallDemolitions;
var transient int SelfDemolitions;

defaultproperties
{
	FullLoadouts[0]=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=None,Products=None)
	FullLoadouts[1]=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=None,Products=None)
	CameraSettings=(FOV=90.0,Height=100.0,Pitch=-3.0,Distance=270.0,Stiffness=0.50,SwivelSpeed=2.50,TransitionSpeed=1.0)
	CameraPitch=128
	CameraYaw=128
	
	DodgeInputThreshold=0.50
	SteeringSensitivity=1.0
	AirControlSensitivity=1.0
	LastTeamIndex=-1
	PendingLoadout=(Title=XP,Loadouts=(Products=None,TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false)),Loadouts[1]=(Products=None,TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false)))
	
	//Components(0)=GroupComponent_ORS'Default__PRI_TA.DefaultRegistryGroup'
	TickGroup=TG_PreAsyncWork
}
replication
{
	 if(bNetInitial)
		ClientLoadout, ClientLoadoutOnline, 
		ClientLoadouts, ClientLoadoutsOnline, 
		ClubID, CurrentVoiceRoom, 
		PawnType, ReplicatedGameEvent, 
		SkillTier, StayAsPartyVoteYes, 
		StayAsPartyVoter, SteeringSensitivity, 
		Title, bIdleBanned, 
		bIsDistracted, bOnlineLoadoutSet, 
		bReady;

	 if(bNetDirty)
		PartyLeader, bIsInSplitScreen;

	 if(bNetInitial && Role==ROLE_Authority)
		MatchAssists, MatchBreakoutDamage, 
		MatchGoals, MatchSaves, 
		MatchScore, MatchShots, 
		bMatchMVP, bUsingItems;

	 if(bNetInitial/**Empty key for position: 47.*/)
		PrimaryTitle, SecondaryTitle;

	 if(bNetInitial/**Empty key for position: 57.*/)
		PlayerHistoryKey, PlayerHistoryValid;

	 if(bNetInitial/**Empty key for position: 67.*/)
		ReplicatedWorstNetQualityBeyondLatency, SpectatorShortcut;

	 if(bNetInitial/**Empty key for position: 77.*/)
		BallDemolitionSaves, BallDemolitions, 
		CarDemolitions, PossessionClears, 
		PossessionDenials, PossessionSteals, 
		SelfDemolitions;

	 if(bNetInitial/**Missing key for position: 87.*/)
		PickupTimer, QuitSeverity, 
		ReplacingBotPRI, bAbleToStart, 
		bMatchAdmin, bStartVoteToForfeitDisabled;

	 if(bNetInitial/**Missing key for position: 112.*/)
		BotAvatarProductID, BotBannerProductID, 
		BotProductName, PersistentCamera;
}
