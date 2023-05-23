/*******************************************************************************
* SeqEvent_StadiumTeamColorsChanged_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqEvent_StadiumTeamColorsChanged_TA extends SequenceEvent
	forcescriptorder(true)
	hidecategories(Object);

var() int Team;
var Vector Primary;
var Vector Secondary;

defaultproperties
{
	/** The maximum number of times this event can be triggered, 0 for always */
	MaxTriggerCount=0
	bPlayerOnly=false
	VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Vector',LinkDesc="Primary",LinkVar=None,PropertyName=Primary,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Vector',LinkDesc="Secondary",LinkVar=None,PropertyName=Secondary,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=None,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
	ObjName="Stadium Team Colors Changed"
	ObjCategory="TAGame"
}