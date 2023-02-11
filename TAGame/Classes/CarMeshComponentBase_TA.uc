/*******************************************************************************
* CarMeshComponentBase_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CarMeshComponentBase_TA extends SkeletalMeshComponent_TA
	config(Engine)
	editinlinenew
	hidecategories(Object);

struct native InheritedObjects
{
	var ProductAsset_TA Asset;
	var Object ObjectToEdit;
	var ProductAttribute_InheritCarSetting_TA InheritSetting;

	structdefaultproperties
	{
		Asset=none
		ObjectToEdit=none
		InheritSetting=none
	}
};

var ProductAsset_Body_TA BodyAsset;
var ProductAsset_Skin_TA SkinAsset;
var ProductAsset_Wheel_TA WheelAsset;
var transient LinearColor TeamColorOverride;
var transient LinearColor CustomColorOverride;
var transient int Team;
var transient int TeamColorID;
var transient int CustomColorID;
var transient ProductAsset_Logo_TA Logo;
var transient bool bSwapLogoColors;
var transient bool bBoosting;
var bool bLocalPlayer;
var transient ProductAsset_PaintFinish_TA TeamFinish;
var transient ProductAsset_PaintFinish_TA CustomFinish;
var transient ClubColorSet ClubColors;
var export editinline transient array<export editinline AntennaComponent_TA> Antennas;
var export editinline transient array<export editinline MeshComponent> WheelMeshes;
var transient FXActor_X BodyFX;
var transient array<FXActor_X> FXActors;
var transient array<AttachmentBehavior_TA> Behaviors;
var transient FXActor_X BodyFXActor;
var transient ClientLoadoutOnlineData ProductAttributes;
var() const array<name> ProductAttachmentSockets;
var transient int QueuedTeamFinishID;
var transient int QueuedCustomFinishID;
var transient array<InheritedObjects> ObjectsWithInheritedSettings;

defaultproperties
{
	TeamColorOverride=(R=0.0,G=0.0,B=0.0,A=1.0)
	CustomColorOverride=(R=0.0,G=0.0,B=0.0,A=1.0)
	TeamColorID=-1
	CustomColorID=-1
	ProductAttachmentSockets(0)=HatSocket
	ProductAttachmentSockets(1)=FrontSocket
	ProductAttachmentSockets(2)=AntennaSocket
	ProductAttachmentSockets(3)=Underglow
	ProductAttachmentSockets(4)=chassis_jnt
	ReplacementPrimitive=none
	LightingChannels=(BSP=true,Static=true,Dynamic=true)
}