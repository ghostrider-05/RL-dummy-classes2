/*******************************************************************************
* _Types_Core generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class _Types_Core extends Object
	abstract;

enum EImageType
{
	EIT_Unknown,
	EIT_JPEG,
	EIT_PNG,
	EIT_MAX
};

enum OnlinePlatform
{
	OnlinePlatform_Unknown,
	OnlinePlatform_Steam,
	OnlinePlatform_PS4,
	OnlinePlatform_PS3,
	OnlinePlatform_Dingo,
	OnlinePlatform_QQ_DEPRECATED,
	OnlinePlatform_OldNNX,
	OnlinePlatform_NNX,
	OnlinePlatform_PsyNet,
	OnlinePlatform_Deleted,
	OnlinePlatform_WeGame_DEPRECATED,
	OnlinePlatform_Epic,
	OnlinePlatform_MAX
};

enum EInputAPI
{
	InputAPI_Default,
	InputAPI_SteamInput,
	InputAPI_MAX
};

enum EFlushResult
{
	FlushResult_Success,
	FlushResult_InProgress,
	FlushResult_TimedOut,
	FlushResult_MAX
};

enum EVoiceResultCode
{
	VRC_Success,
	VRC_NoConnection,
	VRC_InvalidCredentials,
	VRC_TooManyParticipants,
	VRC_UserKicked,
	VRC_UserBanned,
	VRC_ServiceFailure,
	VRC_AccessDenied,
	VRC_UnexpectedError,
	VRC_MAX
};

struct native SceNpOnlineId
{
	var Qword Data[2];
	var byte Term;
	var byte Dummy[3];

	structdefaultproperties
	{
		
		
		Term=0
		Dummy[0]=0
		Dummy[1]=0
		Dummy[2]=0
	}
};

struct native SceNpId
{
	var const SceNpOnlineId Handle;
	var const Qword Opt;
	var const Qword Reserved;

	structdefaultproperties
	{
		
		
		
	}
};

struct native UniqueNetId
{
	var Qword Uid;
	var SceNpId NpId;
	var string EpicAccountId;
	var _Types_Core.OnlinePlatform Platform;
	var byte SplitscreenID;

	structdefaultproperties
	{
		
		
		EpicAccountId=""
		Platform=OnlinePlatform_Unknown
		SplitscreenID=0
	}
};

struct native ProductHashID
{
	var int Id;

	structdefaultproperties
	{
		Id=0
	}
};

struct native EncryptedKeyIndex
{
	var int Index;

	structdefaultproperties
	{
		Index=0
	}
};

struct native VoiceAudioDevice
{
	var databinding string Id;
	var databinding string Name;
	var databinding bool bDefault;

	structdefaultproperties
	{
		Id=""
		Name=""
		bDefault=false
	}
};

struct native VoiceRoomMemberStatus
{
	var bool bLocal;
	var bool bSpeaking;
	var bool bSelfMuted;
	var bool bLocalMuted;
	var bool bAdminMuted;
	var bool bBlocked;

	structdefaultproperties
	{
		bLocal=false
		bSpeaking=false
		bSelfMuted=false
		bLocalMuted=false
		bAdminMuted=false
		bBlocked=false
	}
};

struct native ProductInstanceID
{
	var Qword UpperBits;
	var Qword LowerBits;

	structdefaultproperties
	{
		
		
	}
};
