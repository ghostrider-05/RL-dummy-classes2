/*******************************************************************************
* EngineAudioRevSimGearManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EngineAudioRevSimGearManager_TA extends Component;

var int RealGear;
var int FakeGear;
var bool bPendingSilentDownShift;
var float TimeRemaining;
var float SilentDownShiftDelay;

defaultproperties
{
	SilentDownShiftDelay=0.020
}