/*******************************************************************************
* GFxHUD_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxHUD_TA extends HUDBase_TA
	transient
	config(Game)
	hidecategories(Navigation);

struct ScreenLocation
{
	var Vector ScreenPos;
	var bool bOffScreen;

	structdefaultproperties
	{
		ScreenPos=(X=0.0,Y=0.0,Z=0.0)
		bOffScreen=false
	}
};

var() const string UIState;
var class GFxPRIClass;
var() GFxMoviePlayer_X MatchInfoMovieArchetype;
var transient GFxMoviePlayer_X MatchInfoMovie;
var() export editinline GFxNameplatesManager_TA NameplatesManager;
var const localized string PlayerJoinString;
var const localized string PlayerLeaveString;
var const localized string PlayerTimedOutString;
var const localized string ChatTitle;
var const localized string TeamChatTitle;
var const localized string ChatDisabledMessage;
var const localized string ReplayQueSaveMessage;
var const localized string ChatBannedMessage;
var const localized string ChatBannedPermanentlyMessage;
var transient PRI_TA OwnerPRI;
var transient Car_TA OwnerCar;
var transient GameEvent_TA GameEvent;
var transient GameEvent_Team_TA TeamGameEvent;
var transient GFxData_GameEvent_TA GameEventData;
var transient GFxData_LocalCar_TA CarData;
var transient array<GFxData_PRI_TA> PRIData;
var /*0x00010000-0x00000000*/ transient GFxData_MiniScoreboard_TA MiniScoreboard;
var /*0x00010000-0x00000000*/ transient GFxData_EOSGameClipsMaskArea_TA EOSGameClipsMaskHandler;
var transient array<GFxData_PlayerRecord_TA> PlayerRecordData;
var bool bAttackTargetActive;
var transient bool bShowedDisconnectMessage;
var Vector AttackTargetWorldPosition;
var Vector AttackTargetPositionOffset;
var transient float CloseScoreboardTime;
var transient array<PRI_TA> PendingShowAddMessagePlayers;
var transient Actor LastTarget;
var transient float TestLastLogTime;
var Car_TA CarDisplayingBoost;
var /*0x00008000-0x00000000*/ AdHocBeacon_X AdHocBeacon;
var const localized string ServerMigrationTitle;
var const localized string ServerMigrationBody;
var /*0x00010000-0x00000000*/ transient GFxData_Scoreboard_TA Scoreboard;

defaultproperties
{
	GFxPRIClass=class'GFxData_PRI_TA'
	PlayerJoinString="joined the match"
	PlayerLeaveString="left the match"
	PlayerTimedOutString="lost connection"
	ChatTitle="Send Chat Message"
	TeamChatTitle="Send Team Chat Message"
	ChatDisabledMessage="Chat disabled for [Time] second(s)."
	ReplayQueSaveMessage="A replay of this match will auto-save when the game ends. A keyframe will mark the current time."
	ChatBannedMessage="Chat is restricted for [Hours] hour(s), [Minutes] minute(s)."
	ChatBannedPermanentlyMessage="Chat is permanently restricted."
	ServerMigrationTitle="Server Migration"
	ServerMigrationBody="Server shutting down for maintenance, migrating to a new server."
	PartyChatTitle="Send Party Chat Message"
}