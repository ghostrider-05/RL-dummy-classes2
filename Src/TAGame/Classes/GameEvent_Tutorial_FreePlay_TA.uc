/*******************************************************************************
* GameEvent_Tutorial_FreePlay_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_Tutorial_FreePlay_TA extends GameEvent_Tutorial_TA
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

defaultproperties
{
	ActiveFpsRecorder=FpsBucketRecorder_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultActiveFpsRecorder'
	InactiveFpsRecorder=FpsBucketRecorder_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultInactiveFpsRecorder'
	
	bMultiplayer=true
	GameFullMessage=Message_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultGameFullMessage'
	OtherActiveMessage=Message_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultOtherActiveMessage'
	NotEnoughPlayersMessage=Message_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultNotEnoughPlayersMessage'
	TooManyPlayersMessage=Message_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultTooManyPlayersMessage'
	NotPartyLeaderMessage=Message_TA'Default__GameEvent_Tutorial_FreePlay_TA.DefaultNotPartyLeaderMessage'
	PauseInstance=PauseStaticDataSync_X'Default__GameEvent_Tutorial_FreePlay_TA.DefaultPauseInstance'
	Components(0)=GroupComponent_ORS'Default__GameEvent_Tutorial_FreePlay_TA.DefaultRegistryGroup'
}