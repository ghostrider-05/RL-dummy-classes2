/*******************************************************************************
* GameEvent_Lobby_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_Lobby_TA extends GameEvent_TA
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

var() Ball_TA BallArchetype;
var transient Ball_TA Ball;

defaultproperties
{
	RegistryGroup=GroupComponent_ORS'Default__GameEvent_Lobby_TA.DefaultRegistryGroup'
	bMultiplayer=true
	GameFullMessage=Message_TA'Default__GameEvent_Lobby_TA.DefaultGameFullMessage'
	OtherActiveMessage=Message_TA'Default__GameEvent_Lobby_TA.DefaultOtherActiveMessage'
	NotEnoughPlayersMessage=Message_TA'Default__GameEvent_Lobby_TA.DefaultNotEnoughPlayersMessage'
	TooManyPlayersMessage=Message_TA'Default__GameEvent_Lobby_TA.DefaultTooManyPlayersMessage'
	NotPartyLeaderMessage=Message_TA'Default__GameEvent_Lobby_TA.DefaultNotPartyLeaderMessage'
	PauseInstance=PauseStaticDataSync_X'Default__GameEvent_Lobby_TA.DefaultPauseInstance'
	Components(0)=GroupComponent_ORS'Default__GameEvent_Lobby_TA.DefaultRegistryGroup'
}