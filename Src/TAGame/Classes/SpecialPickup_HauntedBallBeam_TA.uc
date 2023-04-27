/*******************************************************************************
* SpecialPickup_HauntedBallBeam_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SpecialPickup_HauntedBallBeam_TA extends SpecialPickup_BallGravity_TA
	notplaceable
	hidecategories(Navigation);

var bool bIsPhasingBall;
var bool bIsInRange;
var bool bSFxLoopIsPlaying;
var Ball_Haunted_TA PrevHauntedBall;
var int MaxSimulatedClients;
var float ArrivalDistance;
var Vector CarAvoidenceOffset;
var() AkSoundCue BeamEndSFX;
var() AkSoundCue ConnectedBeamLoopSFX;
var() AkSoundCue BeamLoopSFX;