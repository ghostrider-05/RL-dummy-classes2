/*******************************************************************************
* SeqEvent_UserSettingChanged_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqEvent_UserSettingChanged_TA extends SequenceEvent
	forcescriptorder(true)
	hidecategories(Object);

var() name SettingName;

defaultproperties
{
	// The maximum number of times this event can be triggered, 0 for always
	MaxTriggerCount=0
	bAutoActivateOutputLinks=true
	ObjName="User Setting Changed"
	ObjCategory="TAGame"
}