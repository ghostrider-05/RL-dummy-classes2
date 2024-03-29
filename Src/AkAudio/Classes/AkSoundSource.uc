/*******************************************************************************
* AkSoundSource generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AkSoundSource extends ActorComponent
	native;

enum EAkEnvironmentType
{
	EnvironmentType_SpatializedAudio,
	EnvironmentType_UnspatializedAudio,
	EnvironmentType_Music,
	EnvironmentType_None,
	EnvironmentType_MAX
};

enum EAkCallbackType
{
	AkCallbackType_Marker,
	AkCallbackType_Duration,
	AkCallbackType_MAX
};

struct native ActiveSound
{
	var AkSoundCue Sound;
	var int PlayId;
	var int StopId;

	structdefaultproperties
	{
		Sound=None
		PlayId=0
		StopId=0
	}
};

var() const Vector Translation;
var() const Rotator Rotation;
var() const bool bDetachOnComplete;
var const transient bool bRegistered;
var const transient bool bUpdateOrientation;
var const transient Matrix CachedParentToWorld;
var const transient Vector WorldLocation;
var const transient Rotator WorldRotation;
var const export editinline transient AkParamGroup Params;
var const transient array<ActiveSound> ActiveSounds;
var transient EAkEnvironmentType EnvironmentType;
var array<EAkCallbackType> CallbackTypes;
var native transient Pointer SoundSourceId;
