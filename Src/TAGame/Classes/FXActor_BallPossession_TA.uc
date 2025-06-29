/*******************************************************************************
* FXActor_BallPossession_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FXActor_BallPossession_TA extends FXActor_TA
	hidecategories(Navigation);

var const StaticMesh PossessionStaticMesh;
var const MaterialInstanceConstant MeshMaterialInstance;
var const name PossessionNeutralParam;
var const name PossessionTeamColorParam;
var const float BallFreezeScale;
var export editinline transient StaticMeshComponent PossessionMesh;
var transient MaterialInstanceConstant TeamOwnerInstance;

defaultproperties
{
	BallFreezeScale=1.10
	//Parameters=ParameterDispenser_X'Default__FXActor_BallPossession_TA.DefaultParameters'
	CollisionType=COLLIDE_CustomDefault
}