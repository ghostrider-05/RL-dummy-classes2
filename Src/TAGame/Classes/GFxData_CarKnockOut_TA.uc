/*******************************************************************************
* GFxData_CarKnockOut_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_CarKnockOut_TA extends GFxDataSingleton_X;

enum EStunlockType
{
	SL_None,
	SL_Stunned,
	SL_Grabbed,
	SL_MAX
};

var databinding int LivesRemaining;
var databinding int DodgesRemaining;
var databinding int JumpsRemaining;
var databinding float StunlockAlpha;
var databinding EStunlockType StunlockType;
var databinding float GrabbingAlpha;
var transient Car_KnockOut_TA ActiveGrabbedCar;

defaultproperties
{
	TableName=CarKnockOut
}