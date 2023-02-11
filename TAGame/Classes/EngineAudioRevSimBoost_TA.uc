/*******************************************************************************
* EngineAudioRevSimBoost_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EngineAudioRevSimBoost_TA extends Component;

var(BoostInterp) float InterpTime;
var(BoostInterp) float InterpScale;
var(BoostInterp) float InterpExp;
var transient float ActiveTime;

defaultproperties
{
	InterpTime=2.0
	InterpScale=5.0
	InterpExp=4.0
}