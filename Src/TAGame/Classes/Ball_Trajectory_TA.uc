/*******************************************************************************
* Ball_Trajectory_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Ball_Trajectory_TA extends Ball_TA
	config(Game)
	hidecategories(Navigation);

var array<Vector> AccurateTrajectoryPoints;
var array<Vector> AllPoints;
var float LastCalculateTime;
var float FixedDeltaTime;
var float TotalPathDistance;
var int FrameCount;
var int TotalStepCount;
var int TotalFrameCount;
var int CurrentStepCount;
var int StepToPutAPointAt;
var Vector LastLocation;
var Vector LastVelocity;
var Vector LastAngularVelocity;
var Rotator LastRotation;
var TrajectorySetup TrajectorySettings;
var export editinline BallTrajectoryComponent_TA TrajectoryComponentToUpdate;

defaultproperties
{
	LastCalculateTime=-1.0
	
	StaticMesh=DefaultMesh
	BallCamTarget=none
	PitchTekComponent=PitchTekDrawingComponent_TA'Default__Ball_Trajectory_TA.DefaultPTDComponent'
	Replay=ReplayComponent_TA'Default__Ball_Trajectory_TA.ReplayComponent0'
	RegistryGroup=GroupComponent_ORS'Default__Ball_Trajectory_TA.DefaultRegistryGroup'
	begin object name=CollisionCylinder
		ReplacementPrimitive=none
		CollideActors=false
		BlockNonZeroExtent=false
	end object
	// Reference: CylinderComponent'Default__Ball_Trajectory_TA.CollisionCylinder'
	CylinderComponent=CollisionCylinder
	Components(0)=none
	
	Components(1)=CollisionCylinder
	Components(2)=none
	Components(3)=GroupComponent_ORS'Default__Ball_Trajectory_TA.DefaultRegistryGroup'
	Components(4)=ReplayComponent_TA'Default__Ball_Trajectory_TA.ReplayComponent0'
	begin object name=DefaultMesh
		ReplacementPrimitive=none
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BulletSceneGroup=1
	end object
	// Reference: StaticMeshComponent'Default__Ball_Trajectory_TA.DefaultMesh'
	Components(5)=DefaultMesh
	Components(6)=PitchTekDrawingComponent_TA'Default__Ball_Trajectory_TA.DefaultPTDComponent'
	bHidden=true
	bTickIsDisabled=true
	
	CollisionComponent=DefaultMesh
}