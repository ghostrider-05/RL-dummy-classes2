/*******************************************************************************
* GFxData_Chat_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Chat_TA extends GFxDataSingleton_X;

struct GFxChatMessage
{
	var databinding int Team;
	var databinding string PlayerName;
	var databinding string Message;
	var databinding EChatChannel ChatChannel;
	var databinding bool bLocalPlayer;
	var bool bTransient;
	var databinding UniqueNetId SenderId;
	var databinding bool bPreset;
	var databinding EChatMessageType MessageType;

	structdefaultproperties
	{
		Team=-1
		PlayerName=""
		Message=""
		ChatChannel=EChatChannel_Match
		bLocalPlayer=false
		bTransient=false
		
		bPreset=false
		MessageType=CMT_Default
	}
};

struct ChatPresetGroupOverride
{
	var() int GroupIndex;
	var() string GroupName;
	var() int MessageIDOffset;
	var() bool bTeam;

	structdefaultproperties
	{
		GroupIndex=-1
		GroupName=""
		MessageIDOffset=0
		bTeam=false
	}
};

struct ChatPresetMessageGroup
{
	var() bool bTeam;
	var databinding string Label;

	structdefaultproperties
	{
		bTeam=false
		Label=""
	}
};

struct ChatPresetMessage
{
	var() databinding int GroupIndex;
	var databinding name Id;
	var databinding bool bTeam;
	var databinding string Label;

	structdefaultproperties
	{
		GroupIndex=0
		Id=None
		bTeam=false
		Label=""
	}
};

struct ActiveChatTab
{
	var databinding EChatChannel Channel;
	var databinding UniqueNetId PersonaId;

	structdefaultproperties
	{
		Channel=EChatChannel_Match
		
	}
};

var() int MaxMessages;
var transient int MaxActiveChatTabs;
var() databinding array<ActiveChatTab> ActiveChatTabs;
var() databinding array<ChatPresetMessageGroup> PresetGroups;
var() databinding array<ChatPresetMessage> PresetMessages;
var databinding array<GFxChatMessage> Messages;
var transient bool bPreMatchLobby;
var ECrossPlatformChatState LastMessagedCrossPlatformChatState;
var ChatHistory_TA ChatHistory;
var const int MaxNumGroups;
var const int MaxNumMessagesPerGroup;
var const ChatPresetGroupOverride PostGameGroupOverride;
var const ChatPresetGroupOverride PreGameGroupOverride;
var AprilConfig_X AprilConfig;

defaultproperties
{
	MaxMessages=10
	MaxActiveChatTabs=5
	PresetGroups(0)=(bTeam=true,Label="")
	MaxNumGroups=4
	MaxNumMessagesPerGroup=4
	PostGameGroupOverride=(GroupIndex=0,GroupName="Group5",MessageIDOffset=16,bTeam=false)
	PreGameGroupOverride=(GroupIndex=0,GroupName="Group6",MessageIDOffset=20,bTeam=false)
	TableName=Chat
}