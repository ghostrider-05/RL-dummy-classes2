/*******************************************************************************
* Mutator_Car_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Mutator_Car_TA extends Mutator_TA;

var() float CarScale;
var() float JumpScale;
var() float CarMaxLinearSpeedScale;
var() float MaxTimeForDodge;
var() bool bUnlimitedTimeForDodge;
var() bool bUnlimitedJumps;
var() int MaxNumJumps;

defaultproperties
{
	MaxTimeForDodge=-1.0
	MaxNumJumps=-1
}