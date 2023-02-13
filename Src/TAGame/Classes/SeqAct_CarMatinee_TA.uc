/*******************************************************************************
* SeqAct_CarMatinee_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_CarMatinee_TA extends SeqAct_Interp
	config(Engine)
	forcescriptorder(true)
	hidecategories(Object);

var() const string CinematicCarArchPath;
var() bool bHideAfterPause;
var() bool bHideAfterCompleted;
var array< class > ClassesToNotShow;

defaultproperties
{
	bHideAfterCompleted=true
	ClassesToNotShow(0)=class'InterpActor'
	ObjName="Car Matinee"
	ObjCategory="TAGame"
}