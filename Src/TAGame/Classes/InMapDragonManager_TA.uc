/*******************************************************************************
* InMapDragonManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class InMapDragonManager_TA extends TickableStateObject_X;

const GoalExitDelaySeconds = 0.4f;
const FieldHeight = 2.7272f;
const DirectionBoneName = 'forward_direction_jnt';
const LookSpeed = 0.85f;
const AimNodeName = 'AimNode';

struct DragonEntry
{
	var export editinline AnimStateComponent_TA AnimState;
	var int TeamIndex;
	var AnimNodeAimOffset AimOffsetNode;
	var transient Rotator DesiredAim;
	var transient Rotator CurrentAim;

	structdefaultproperties
	{
		AnimState=none
		TeamIndex=0
		AimOffsetNode=none
		DesiredAim=(Pitch=0,Yaw=0,Roll=0)
		CurrentAim=(Pitch=0,Yaw=0,Roll=0)
	}
};

var() array<Rotator> AimOffsets;
var() array<Rotator> MaxAims;
var() array<Rotator> MinAims;
var transient array<DragonEntry> DragonData;
var transient GameEvent_Soccar_TA CachedGameEvent;
var transient name LastExitAnim;
var transient byte LastScoredOnTeam;
var transient bool bViewingReplayFile;

defaultproperties
{
	AimOffsets(0)=
	AimOffsets(1)=
	MaxAims(0)=
	MaxAims(1)=
	MinAims(0)=
	MinAims(1)=
	bAutoTick=false
}