/*******************************************************************************
* GameEvent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_TA extends Actor
	abstract
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

var() export editinline GroupComponent_ORS RegistryGroup;
// Type of match for this game event (online, private, season)
var() MatchType_TA MatchType;
var() repnotify class MatchTypeClass;
// Editor ID for identifying this type of game event (Soccar, Knockout)
var() const name EventType;
var() name AudioSoundMode;
var() const name MatchTypeName;
// What type of car to spawn
var() Car_TA CarArchetype;
// How long of a countdown to do
var() int CountdownTime;
// How long we should stay in the finished(match ended) state
var() int FinishTime;
// If true, multiple players participate in this event
var() const bool bMultiplayer;
var bool bCountdownMessagesDisabled;
// Fill teams with AI?
var() bool bFillWithAI;
var() bool bAllowQueueSaveReplay;
var transient bool bAllowReadyUp;
var bool bRestartingMatch;
var repnotify transient bool bHasLeaveMatchPenalty;
var repnotify transient bool bCanVoteToForfeit;
var bool bAwardAchievements;
var bool bIsBotMatch;
var bool bAllowTeamVoiceChat;
var bool bAllowSpectatorVoiceChat;
// If multiplayer, limits on how many people can play this event
var() int MinPlayers;
// If multiplayer, limits on how many people can play this event
var() int MaxPlayers;
// Starting points for this event
var(Setup) array<Actor> SpawnPoints;
// AI manager to spawn
var() AIManager_TA AIManagerArchetype;
var transient AIManager_TA AIManager;
var(Setup) Pylon_Soccar_TA Pylon;
// AI controller to use for bots
var() AIController_TA BotArchetype;
var transient float BotSkill;
var() array<Mutator_TA> DefaultMutators;
var transient array<Mutator_TA> Mutators;
var() float MatchTimeDilation;
// HUD Archetype for this game event
var() HUD HUDArchetype;
var transient PlayerController_TA Activator;
var transient Car_TA ActivatorCar;
var transient array<Controller> Players;
var transient array<PRI_TA> PRIs;
var transient array<Car_TA> Cars;
var transient array<PlayerController_TA> LocalPlayers;
var transient int StartPointIndex;
var repnotify const transient byte ReplicatedStateIndex;
var const array<name> DeprecatedIndexToState;
var repnotify transient name ReplicatedStateName;
var Message_TA GameFullMessage;
var Message_TA OtherActiveMessage;
var Message_TA NotEnoughPlayersMessage;
var Message_TA TooManyPlayersMessage;
var Message_TA NotPartyLeaderMessage;
var array<Message_TA> CountdownMessages;
var Message_TA GoMessage;
var array<Message_TA> ReplacingBotCountdownMessages;
var Message_TA ReplacingBotGoMessage;
var SpawnDelayConfig_TA SpawnDelayConfig;
var transient array<PlayerChatMessage> ChatHistory;
var transient int GameStateTimeRemaining;
var repnotify transient int ReplicatedGameStateTimeRemaining;
var BotConfig_TA BotConfig;
var transient array<UniqueNetId> ForfeitInitiatorIDs;
var transient array<UniqueNetId> BannedPlayers;
var repnotify transient PRI_TA GameOwner;
var repnotify transient CustomMatchSettings MatchSettings;
var string RichPresenceString;
var transient MatchAdminComponent_TA MatchAdmin;
var ListenServer_TA ListenServer;
var repnotify int ReplicatedRoundCountDownNumber;
var MatchRecorder_TA MatchRecorder;
var array<ProductAsset_Bot_TA> RandomizedBots;
var array<GameState_TA> GameStates;
var GameState_TA GameState;
var transient PauseStaticDataSync_X PauseInstance;

defaultproperties
{
	
	CountdownTime=3
	bAllowQueueSaveReplay=true
	bAwardAchievements=true
	bAllowTeamVoiceChat=true
	bAllowSpectatorVoiceChat=true
	MinPlayers=2
	MaxPlayers=16
	MatchTimeDilation=1.0
	DeprecatedIndexToState(0)=Auto
	DeprecatedIndexToState(1)=Finished
	DeprecatedIndexToState(2)=GameEnded
	DeprecatedIndexToState(3)=ReplayPlayback
	DeprecatedIndexToState(4)=PostGoalScored
	DeprecatedIndexToState(5)=Active
	DeprecatedIndexToState(6)=Countdown
	DeprecatedIndexToState(7)=ActiveBase
	DeprecatedIndexToState(8)=WaitingForPlayers
	DeprecatedIndexToState(9)=Finished
	DeprecatedIndexToState(10)=Finished
	DeprecatedIndexToState(11)=Active
	DeprecatedIndexToState(12)=Countdown
	DeprecatedIndexToState(13)=ActiveBase
	DeprecatedIndexToState(14)=NoSpawnState
	
	GameFullMessage=DefaultGameFullMessage
	
	OtherActiveMessage=DefaultOtherActiveMessage
	
	NotEnoughPlayersMessage=DefaultNotEnoughPlayersMessage
	
	TooManyPlayersMessage=DefaultTooManyPlayersMessage
	
	NotPartyLeaderMessage=DefaultNotPartyLeaderMessage
	
	
	Components(0)=DefaultRegistryGroup
	CollisionType=COLLIDE_CustomDefault
	bAlwaysRelevant=true
	NetPriority=10.0
}
replication
{
	 if(bNetInitial)
		MatchSettings;

	 if(bNetInitial/**Empty key for position: 27.*/)
		ActivatorCar, BotSkill, 
		MatchTypeClass, bIsBotMatch;

	 if(bNetInitial && Role==ROLE_Authority)
		GameOwner, ReplicatedGameStateTimeRemaining, 
		ReplicatedRoundCountDownNumber, ReplicatedStateName, 
		bAllowReadyUp, bCanVoteToForfeit, 
		bHasLeaveMatchPenalty;

	 if(bNetInitial/**Empty key for position: 47.*/)
		ReplicatedStateIndex;
}
