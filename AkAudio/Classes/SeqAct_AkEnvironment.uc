/*******************************************************************************
* SeqAct_AkEnvironment generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_AkEnvironment extends SequenceAction
	forcescriptorder(true)
	hidecategories(Object);

enum EAkEnvironmentTarget
{
	AkEnvironmentTarget_LevelDefault,
	AkEnvironmentTarget_Actor,
	AkEnvironmentTarget_MAX
};

var() AkEnvironment Environment;
var() SeqAct_AkEnvironment.EAkEnvironmentTarget Target;

defaultproperties
{
	Environment=(Id="",Priority=0,WetValue=0.0,DryValue=1.0,HashedEnvID=(dummyint=0))
	bCallHandler=false
	ObjName="AkSetEnvironment"
	ObjCategory="AkAudio"
}