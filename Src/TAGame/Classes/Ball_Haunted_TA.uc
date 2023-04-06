/*******************************************************************************
* Ball_Haunted_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Ball_Haunted_TA extends Ball_TA
	config(Game)
	hidecategories(Navigation);

var Vector2D SeekPositionRangeLength;
var Vector2D SeekPositionRangeWidth;
var Vector2D SeekPositionRangeHeight;
var Vector2D NextSeekTimeRange;
var float TrappedHoverHeight;
var float HorizontalSpeed;
var float VerticalSpeed;
var float ArrivalDistance;
var float TrappedHorizontalSpeed;
var float TrappedVerticalSpeed;
var float TrappedCaptureTime;
var float HitPhysicsDuration;
var byte ReplicatedBeamBrokenValue;
var byte LastTeamTouch;
var byte DeactivatedGoalIndex;
var transient byte TotalActiveBeams;
var transient Vector SeekTarget;
var transient float NextNeutralTime;
var transient bool bHitPhysicsActive;
var transient bool bIsBallBeamed;
var transient bool bIsTrapped;
var transient float CurrentCaptureTime;
var transient float CaptureTimePercentage;
var transient float CaptureTimeAtExit;
var export editinline transient Goal_TA ActiveGoal;
var transient int NumActiveBeamsByTeam[2];

defaultproperties
{
	LastTeamTouch=255
	DeactivatedGoalIndex=255
	SeekTarget=(X=0.0,Y=0.0,Z=250.0)
	
	StaticMesh=DefaultMesh
	BallCamTarget=BallCamTarget_TA'Default__Ball_Haunted_TA.DefaultBallCamTarget'
	PitchTekComponent=PitchTekDrawingComponent_TA'Default__Ball_Haunted_TA.DefaultPTDComponent'
	Replay=ReplayComponent_TA'Default__Ball_Haunted_TA.ReplayComponent0'
	
	begin object name=CollisionCylinder
		ReplacementPrimitive=none
	end object
	// Reference: CylinderComponent'Default__Ball_Haunted_TA.CollisionCylinder'
	CylinderComponent=CollisionCylinder
	Components(0)=none
	
	Components(1)=CollisionCylinder
	Components(2)=none
	Components(3)=GroupComponent_ORS'Default__Ball_Haunted_TA.DefaultRegistryGroup'
	Components(4)=ReplayComponent_TA'Default__Ball_Haunted_TA.ReplayComponent0'
	begin object name=DefaultMesh
		ReplacementPrimitive=none
	end object
	// Reference: StaticMeshComponent'Default__Ball_Haunted_TA.DefaultMesh'
	Components(5)=DefaultMesh
	Components(6)=PitchTekDrawingComponent_TA'Default__Ball_Haunted_TA.DefaultPTDComponent'
	
	CollisionComponent=DefaultMesh
}
replication
{
	 if(bNetInitial)
		DeactivatedGoalIndex, LastTeamTouch, 
		ReplicatedBeamBrokenValue, TotalActiveBeams, 
		bIsBallBeamed;
}
