/*******************************************************************************
* CameraSettingsActor_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class CameraSettingsActor_TA extends ReplicationInfo
	hidecategories(Navigation,Movement,Collision);

var() float UploadCameraDelay;
var repnotify transient PRI_TA PRI;
var transient ProfileCameraSettings ProfileSettings;
var transient bool bUsingSecondaryCamera;
var transient bool bUsingBehindView;
var transient bool bUsingFreecam;
var bool bDirtySecondaryCamera;
var bool bDirtyBehindView;
var transient byte CameraPitch;
var transient byte CameraYaw;
var transient float MaxProximityDistance;
var float LastRotationChangeTime;
var float LastReplicateRotationTime;

defaultproperties
{
	UploadCameraDelay=0.03330
	ProfileSettings=(FOV=90.0,Height=100.0,Pitch=-3.0,Distance=270.0,Stiffness=0.50,SwivelSpeed=2.50,TransitionSpeed=1.0)
	CameraPitch=127
	CameraYaw=127
	CollisionType=COLLIDE_CustomDefault
	bTickIsDisabled=true
	NetUpdateFrequency=30.0
}
replication
{
	 if(bNetInitial)
		PRI;

	 if(bNetDirty)
		CameraPitch, CameraYaw, 
		ProfileSettings, bUsingBehindView, 
		bUsingFreecam, bUsingSecondaryCamera;
}