/*******************************************************************************
* CarComponent_TerritoryDemolish_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarComponent_TerritoryDemolish_TA extends CarComponent_TA
	notplaceable
	hidecategories(Navigation);

enum TerritoryAudioCueType
{
	CrossWallEnter,
	CrossWallExit,
	CrossWallMuffle,
	TerritoryAudioCueType_MAX
};

var bool bSelfDestructCountdown;
var bool bBlueSide;
var bool bCrossWallSFX;
var transient bool bIsLocallyControlled;
var name AmbientMuffleRTCP;
var() AkSoundCue EnterWallSFX;
var() AkSoundCue ExitWallSFX;
var() FXActor_X DemoOverrideFXArchetype;

defaultproperties
{
	AmbientMuffleRTCP=SoccarPong_OOB
}