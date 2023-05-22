/*******************************************************************************
* FXActor_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FXActor_X extends Actor
	placeable
	hidecategories(Navigation);

enum EFXComponentState
{
	FXComponentState_Detached,
	FXComponentState_Attached,
	FXComponentState_PendingDetach,
	FXComponentState_MAX
};

enum EFXComponentTarget
{
	FXComponentTarget_All,
	FXComponentTarget_Local,
	FXComponentTarget_NonLocal,
	FXComponentTarget_MAX
};

enum EAttachActorLocationUnlockFlags
{
	EAALUF_None,
	EAALUF_X,
	EAALUF_Y,
	EAALUF_Z,
	EAALUF_MAX
};

enum EFXLocality
{
	FXLocality_Controller,
	FXLocality_AlwaysLocal,
	FXLocality_NeverLocal,
	FXLocality_MAX
};

enum EFXOverrideAttachBehavior
{
	FXOverrideAttach_None,
	FXOverrideAttach_Owner,
	FXOverrideAttach_MAX
};

struct native FXEventSubscription
{
	var FXActorEvent_X Event;

	structdefaultproperties
	{
		Event=None
		
		
	}
};

struct native AttachToParameterWithUnlockAxes
{
	var() name Parameter;
	var() EAttachActorLocationUnlockFlags IgnoredAxis;

	structdefaultproperties
	{
		Parameter=None
		IgnoredAxis=EAALUF_None
	}
};

struct native FXAttachment
{
	var() name Name;
	var() name SkeletalMeshAttachName;
	var() name SocketOrBoneName;
	var() name AttachToParameter;
	var() float AttachDelay;
	var() float DetachDelay;
	var() float LifeTime;
	var() EFXComponentTarget Target;
	var() export editinline ActorComponent Component;
	var() array<FXActorEvent_X> AttachAny;
	var() array<FXActorEvent_X> DetachAny;
	var() array<FXActorEvent_X> AttachAll;
	var() editinline array<editinline RuntimeParameterBase_X> RuntimeParameters;
	var() editinline array<editinline FXAttachmentTraitBase_X> Traits;
	var() AttachToParameterWithUnlockAxes AttachToParameterActor;
	var() EFXOverrideAttachBehavior OverrideAttachBehavior;
	var() Vector OverrideAttachLocationOffset;
	var() Rotator OverrideAttachRotationOffset;
	var const bool bCreateDuplicates;
	var transient bool bWantsAttachment;
	var transient bool bInitializedTraits;
	var transient bool bWarnedMissingSocket;
	var editoronly bool bExistingComponent;
	var editoronly bool bExistingAttachment;
	var transient float AttachedTime;
	var transient EFXComponentState State;
	var transient float WantsAttachmentChangeTime;
	var export editinline transient SkeletalMeshComponent AttachedToMesh;
	var transient Matrix RelativeTransform;
	var transient int BoneIndex;
	var transient Actor AttachToActor;
	var transient Vector OffsetToAttachActor;

	structdefaultproperties
	{
		Name=None
		SkeletalMeshAttachName=None
		SocketOrBoneName=None
		AttachToParameter=None
		AttachDelay=0.0
		DetachDelay=0.0
		LifeTime=0.0
		Target=FXComponentTarget_All
		Component=None
		AttachAny.Empty
		DetachAny.Empty
		AttachAll.Empty
		RuntimeParameters.Empty
		Traits.Empty
		AttachToParameterActor=(Parameter=None,IgnoredAxis=EAALUF_None)
		OverrideAttachBehavior=FXOverrideAttach_None
		OverrideAttachLocationOffset=(X=0.0,Y=0.0,Z=0.0)
		OverrideAttachRotationOffset=(Pitch=0,Yaw=0,Roll=0)
		bCreateDuplicates=false
		bWantsAttachment=false
		bInitializedTraits=false
		bWarnedMissingSocket=false
		bExistingComponent=false
		bExistingAttachment=false
		AttachedTime=0.0
		State=FXComponentState_Detached
		WantsAttachmentChangeTime=0.0
		AttachedToMesh=None
		RelativeTransform=(XPlane=(X=0.0,Y=0.0,Z=0.0,W=0.0),YPlane=(X=0.0,Y=0.0,Z=0.0,W=0.0),ZPlane=(X=0.0,Y=0.0,Z=0.0,W=0.0),WPlane=(X=0.0,Y=0.0,Z=0.0,W=0.0))
		BoneIndex=0
		AttachToActor=None
		OffsetToAttachActor=(X=0.0,Y=0.0,Z=0.0)
	}
};

struct native FXActorEventCheck
{
	var FXActorEvent_X Event;
	var bool bHasTicked;

	structdefaultproperties
	{
		Event=None
		bHasTicked=false
	}
};

var FXActorEvent_X SpawnState;
var FXActorEvent_X ActivationState;
var() array<FXAttachment> Attachments;
var() EFXLocality Locality;
var() name SocketOrBoneName;
var() bool bDeactivateWhenOwnerDestroyed;
var() bool bAllowShadowCasting;
var() bool bAutoActivate;
var() bool bRenderInactive;
var transient bool bActive;
var const transient bool bHadOwner;
var() FXActor_X Parent;
var transient Actor AttachmentActor;
var transient array<FXActorEvent_X> FXStates;
var transient array<FXActorEventCheck> FXEvents;
var() float DestroyWaitTime;
var float DestroyTime;
var() export editinline ParameterDispenser_X Parameters;
var() editoronly const int EditID;
var const transient array<FXEventSubscription> EventSubscriptions;
var FXActorEvent_X AnimationEndState;

defaultproperties
{
	bDeactivateWhenOwnerDestroyed=true
	bAutoActivate=true
	DestroyWaitTime=10.0
	Parameters=ParameterDispenser_X'Default__FXActor_X.DefaultParameters'
	AnimationEndState=FXActorEvent_X'FXActorEvents.AnimationEnded'
	TickGroup=TG_PostAsyncWork
	bAlwaysRelevant=true
	bHardAttach=true
	bDedicatedServerRelevant=false
}