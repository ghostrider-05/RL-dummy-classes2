/*******************************************************************************
* SeqAct_SetStadiumTeamColors_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_SetStadiumTeamColors_TA extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

var() bool bSwapTeamColors;
var() array<LinearColor> BlueColors;
var() array<LinearColor> OrangeColors;

defaultproperties
{
	bCallHandler=false
	VariableLinks.Empty
	ObjName="Set Stadium Team Colors"
	ObjCategory="TAGame"
}