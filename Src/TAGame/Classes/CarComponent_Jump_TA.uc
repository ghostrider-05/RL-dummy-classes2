/*******************************************************************************
* CarComponent_Jump_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarComponent_Jump_TA extends CarComponent_TA
	notplaceable
	hidecategories(Navigation);

// Force jump to stay active for this amount of time (mouse button taps have significantly variable hold time)
var() float MinJumpTime;
// The impulse that is added to the car as soon as it jumps
var() float JumpImpulse;
// The force that is applied to the car over time as it jumps
var() float JumpForce;
// Fade out the jump force over this amount of time
var() float JumpForceTime;
// Fade out the jump force over this amount of time when in podium mode
var() float PodiumJumpForceTime;
var transient float JumpImpulseSpeed;
var transient float JumpAccel;
var transient float MaxJumpHeight;
var transient float MaxJumpHeightTime;
var transient bool bDeactivate;

defaultproperties
{
	FXEvent=FXActorEvent_X'FXActorEvents.Jump'
}