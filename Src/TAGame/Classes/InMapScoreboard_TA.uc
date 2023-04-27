/*******************************************************************************
* InMapScoreboard_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class InMapScoreboard_TA extends Actor
	placeable
	hidecategories(Navigation);

var() StaticMeshActor StaticMesh;
var() MaterialInstanceConstant MaterialInstance;
var() int MaterialIndex;
var() int TeamIndex;
var() InterpCurveFloat GoalAnimation;
var() float GoDuration;
var() name GoSwitch;
var() name GoalXPos;
var() name CountdownSwitch;
var() name CountdownToggle;
var() name ScoreToggle;
var() name ScoreParam;
var() name CountdownValueParam;
var transient int LastCountdownTime;
var transient float ReplayCountdownTime;
var transient bool bHasReplayCountdownTime;
var transient GameEvent_Soccar_TA GameEvent;
var transient name LastState;
var transient MaterialInstanceConstant MIC;
var transient float GoalTime;

defaultproperties
{
	GoDuration=2.0
	GoSwitch=CDGo
	GoalXPos=X_Pos
	CountdownSwitch=CountdownSwitch
	CountdownToggle=CountdownToggle
	ScoreToggle=CountToggle
	ScoreParam=Count
	CountdownValueParam=Countdown
	RemoteRole=ROLE_Authority
	bNoDelete=true
	bDedicatedServerRelevant=false
}