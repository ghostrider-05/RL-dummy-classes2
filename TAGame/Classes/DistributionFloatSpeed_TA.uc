/*******************************************************************************
* DistributionFloatSpeed_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class DistributionFloatSpeed_TA extends DistributionFloatParameterBase
	editinlinenew
	collapsecategories
	hidecategories(Object,Object,Object);

enum ESpeedDistributionSpace
{
	SDD_Forward,
	SDD_Side,
	SDD_Up,
	SDD_World,
	SDD_MAX
};

var() Vector VelocityScale;
var() DistributionFloatSpeed_TA.ESpeedDistributionSpace VelocitySpace;

defaultproperties
{
	VelocityScale=(X=1.0,Y=1.0,Z=1.0)
	ParameterName=Velocity
}