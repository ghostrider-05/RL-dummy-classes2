/*******************************************************************************
* RetryDelayer_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RetryDelayer_X extends Component;

var() array<float> RetryDelays;
var() float RepeatBackoff;
var() int RepeatCycleCount;
var() bool bRepeatUntilSuccess;
var int FailedAttempts;
var int FailedCycles;

defaultproperties
{
	RetryDelays(0)=1.0
	RetryDelays(1)=3.0
	RetryDelays(2)=10.0
	RetryDelays(3)=20.0
	RepeatBackoff=60.0
}