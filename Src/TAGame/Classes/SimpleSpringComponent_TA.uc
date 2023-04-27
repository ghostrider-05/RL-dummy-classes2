/*******************************************************************************
* SimpleSpringComponent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SimpleSpringComponent_TA extends Component
	editinlinenew
	collapsecategories
	hidecategories(Object);

var() SimpleSpringSettings Spring;
var() bool bEnabled;
var transient bool bInitialized;
var transient Vector Displacement;
var transient Vector MassLocation;
var transient Vector MassVelocity;

defaultproperties
{
	Spring=(Strength=(X=100.0,Y=100.0,Z=100.0),Damping=(X=5.0,Y=5.0,Z=5.0),MaxDisplacement=(X=50.0,Y=50.0,Z=50.0),bUseMinDisplacement=false,MinDisplacement=(X=0.0,Y=0.0,Z=0.0),Mass=1.0,MassOffset=(X=0.0,Y=0.0,Z=0.0),MaxSpeed=3000.0,bDebug=false,DrawDebugOffset=0.0)
	bEnabled=true
}