/*******************************************************************************
* SkeletalMeshComponent_SplitBody_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SkeletalMeshComponent_SplitBody_TA extends SkeletalMeshComponent_TA
	config(Engine)
	editinlinenew
	hidecategories(Object);

var name CurrentAnim;
var name AnimToSyncWith;
var(Mesh) name SplitAttachBone;
var(Mesh) string SplitPrimarySuffix;
var(Mesh) string SplitSecondarySuffix;

defaultproperties
{
	bUpdateSkelWhenNotRendered=true
	ReplacementPrimitive=None
}