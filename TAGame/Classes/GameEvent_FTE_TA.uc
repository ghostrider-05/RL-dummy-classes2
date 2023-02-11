/*******************************************************************************
* GameEvent_FTE_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameEvent_FTE_TA extends GameEvent_Soccar_TA
	collapsecategories
	notplaceable
	hidecategories(Navigation,Actor,Object);

var /*0x00010000-0x00000000*/ const int MaxTimeToShowInstructions;
var /*0x00010000-0x00000000*/ const int InvalidTeamNum;

defaultproperties
{
	MaxTimeToShowInstructions=30
	InvalidTeamNum=255
	ActiveFpsRecorder=FpsBucketRecorder_TA'Default__GameEvent_FTE_TA.DefaultActiveFpsRecorder'
	InactiveFpsRecorder=FpsBucketRecorder_TA'Default__GameEvent_FTE_TA.DefaultInactiveFpsRecorder'
	RegistryGroup=GroupComponent_ORS'Default__GameEvent_FTE_TA.DefaultRegistryGroup'
	GameFullMessage=Message_TA'Default__GameEvent_FTE_TA.DefaultGameFullMessage'
	OtherActiveMessage=Message_TA'Default__GameEvent_FTE_TA.DefaultOtherActiveMessage'
	NotEnoughPlayersMessage=Message_TA'Default__GameEvent_FTE_TA.DefaultNotEnoughPlayersMessage'
	TooManyPlayersMessage=Message_TA'Default__GameEvent_FTE_TA.DefaultTooManyPlayersMessage'
	NotPartyLeaderMessage=Message_TA'Default__GameEvent_FTE_TA.DefaultNotPartyLeaderMessage'
	PauseInstance=PauseStaticDataSync_X'Default__GameEvent_FTE_TA.DefaultPauseInstance'
	Components(0)=GroupComponent_ORS'Default__GameEvent_FTE_TA.DefaultRegistryGroup'
}