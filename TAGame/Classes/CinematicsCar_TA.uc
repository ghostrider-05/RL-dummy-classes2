/*******************************************************************************
* CinematicsCar_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CinematicsCar_TA extends Car_TA
	config(Game)
	hidecategories(Navigation);

defaultproperties
{
	
	EngineAudio=DefaultEngineAudio
	Loadout=ProductLoader_TA'Default__CinematicsCar_TA.DefaultCarLoadout'
	CarTrajectoryComponent=CarTrajectoryComponent_TA'Default__CinematicsCar_TA.CarTrajectoryComponent0'
	NameplateComponentCar=NameplateComponentCar_TA'Default__CinematicsCar_TA.NameplateComponentCar0'
	begin object name=DefaultMesh class=CarMeshComponent_TA
		ReplacementPrimitive=none
	end object
	// Reference: CarMeshComponent_TA'Default__CinematicsCar_TA.DefaultMesh'
	CarMesh=DefaultMesh
	VehicleSim=VehicleSim_TA'Default__CinematicsCar_TA.DefaultVehicleSim'
	PitchTekComponent=PitchTekDrawingComponent_TA'Default__CinematicsCar_TA.DefaultPTDComponent'
	Replay=ReplayComponent_TA'Default__CinematicsCar_TA.ReplayComponent0'
	RegistryGroup=GroupComponent_ORS'Default__CinematicsCar_TA.DefaultRegistryGroup'
	
	Mesh=DefaultMesh
	
	CylinderComponent=CollisionCylinder
	begin object name=CollisionCylinder class=CylinderComponent
		ReplacementPrimitive=none
	end object
	// Reference: CylinderComponent'Default__CinematicsCar_TA.CollisionCylinder'
	Components(0)=CollisionCylinder
	Components(1)=GroupComponent_ORS'Default__CinematicsCar_TA.DefaultRegistryGroup'
	Components(2)=ReplayComponent_TA'Default__CinematicsCar_TA.ReplayComponent0'
	Components(3)=PitchTekDrawingComponent_TA'Default__CinematicsCar_TA.DefaultPTDComponent'
	Components(4)=CarTrajectoryComponent_TA'Default__CinematicsCar_TA.CarTrajectoryComponent0'
	
	CollisionComponent=CollisionCylinder
}