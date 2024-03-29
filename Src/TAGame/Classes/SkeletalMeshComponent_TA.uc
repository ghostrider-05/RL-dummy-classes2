/*******************************************************************************
* SkeletalMeshComponent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SkeletalMeshComponent_TA extends SkeletalMeshComponent
	config(Engine)
	editinlinenew
	hidecategories(Object);

// Override the FOV we render with
var() const float FOVOverride;
var const transient bool bIgnoreScriptAttach;

defaultproperties
{
	WireframeColor=(R=221,G=221,B=64,A=255)
	bUpdateSkelWhenNotRendered=false
	bIgnoreControllersWhenNotRendered=true
	bTickAnimNodesWhenNotRendered=false
	bUpdateKinematicBonesFromAnimation=false
	ReplacementPrimitive=None
}