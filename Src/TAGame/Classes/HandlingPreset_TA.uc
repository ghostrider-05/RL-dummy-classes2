/*******************************************************************************
* HandlingPreset_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class HandlingPreset_TA extends Object
	hidecategories(Object);

struct native VehicleAxleData
{
	var() float WheelRadius;
	var() float WheelWidth;
	var() Vector LocalRestPosition;

	structdefaultproperties
	{
		WheelRadius=0.0
		WheelWidth=0.0
		LocalRestPosition=(X=0.0,Y=0.0,Z=0.0)
	}
};

var() VehicleAxleData FrontAxle;
var() VehicleAxleData BackAxle;
var() PhysicsAsset PhysAsset;
var() SimpleSpringSettings ChassisSpringDefaults;

defaultproperties
{
	FrontAxle=(WheelRadius=12.50,WheelWidth=15.0,LocalRestPosition=(X=51.250,Y=25.90,Z=-6.0))
	BackAxle=(WheelRadius=15.0,WheelWidth=15.0,LocalRestPosition=(X=-34.250,Y=29.50,Z=-4.30))
	ChassisSpringDefaults=(Strength=(X=100.0,Y=100.0,Z=100.0),Damping=(X=5.0,Y=5.0,Z=5.0),MaxDisplacement=(X=50.0,Y=50.0,Z=50.0),bUseMinDisplacement=false,MinDisplacement=(X=0.0,Y=0.0,Z=0.0),Mass=1.0,MassOffset=(X=0.0,Y=0.0,Z=0.0),MaxSpeed=3000.0,bDebug=false,DrawDebugOffset=0.0)
}