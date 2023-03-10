/*******************************************************************************
* GameEvent_Tutorial_Basic_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_Tutorial_Basic_TA extends GameEvent_Tutorial_TA
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

var int CurrentScore;
var int TotalRounds;
var int CurrentRounds;

defaultproperties
{
	CurrentScore=-1
	ActiveFpsRecorder=FpsBucketRecorder_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultActiveFpsRecorder'
	InactiveFpsRecorder=FpsBucketRecorder_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultInactiveFpsRecorder'
	RegistryGroup=GroupComponent_ORS'Default__GameEvent_Tutorial_Basic_TA.DefaultRegistryGroup'
	GameFullMessage=Message_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultGameFullMessage'
	OtherActiveMessage=Message_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultOtherActiveMessage'
	NotEnoughPlayersMessage=Message_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultNotEnoughPlayersMessage'
	TooManyPlayersMessage=Message_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultTooManyPlayersMessage'
	NotPartyLeaderMessage=Message_TA'Default__GameEvent_Tutorial_Basic_TA.DefaultNotPartyLeaderMessage'
	PauseInstance=PauseStaticDataSync_X'Default__GameEvent_Tutorial_Basic_TA.DefaultPauseInstance'
	Components(0)=GroupComponent_ORS'Default__GameEvent_Tutorial_Basic_TA.DefaultRegistryGroup'
}