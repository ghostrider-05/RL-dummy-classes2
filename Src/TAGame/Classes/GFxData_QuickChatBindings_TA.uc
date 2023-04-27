/*******************************************************************************
* GFxData_QuickChatBindings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_QuickChatBindings_TA extends GFxDataSingleton_X;

enum EQuickChatState
{
	QCS_InGame,
	QCS_PostGame,
	QCS_PreGame,
	QCS_MAX
};

struct LocalizedQuickChat
{
	var databinding string MessageId;
	var databinding string Message;
	var databinding EQuickChatState QuickChatState;

	structdefaultproperties
	{
		MessageId=""
		Message=""
		QuickChatState=QCS_InGame
	}
};

struct LocalizedQuickChatBinding
{
	var databinding string MessageId;
	var databinding string Message;
	var databinding int Group;
	var databinding string Action;

	structdefaultproperties
	{
		MessageId=""
		Message=""
		Group=0
		Action=""
	}
};

var databinding array<LocalizedQuickChat> AllQuickChats;
var databinding array<LocalizedQuickChatBinding> Bindings;
var() array<name> QuickChats;
var() array<name> PostGameQuickChats;
var() array<name> PreGameQuickChats;
var transient ProfileQuickChatSave_TA QuickChatSave;

defaultproperties
{
	QuickChats(0)=Group1Message1
	QuickChats(1)=Group1Message2
	QuickChats(2)=Group1Message3
	QuickChats(3)=Group1Message4
	QuickChats(4)=Group1Message5
	QuickChats(5)=Group1Message6
	QuickChats(6)=Group1Message7
	QuickChats(7)=Group1Message8
	QuickChats(8)=Group1Message9
	QuickChats(9)=Group1Message10
	QuickChats(10)=Group1Message11
	QuickChats(11)=Group1Message12
	QuickChats(12)=Group1Message13
	QuickChats(13)=Group1Message14
	QuickChats(14)=Group2Message1
	QuickChats(15)=Group2Message2
	QuickChats(16)=Group2Message3
	QuickChats(17)=Group2Message4
	QuickChats(18)=Group2Message5
	QuickChats(19)=Group2Message6
	QuickChats(20)=Group2Message7
	QuickChats(21)=Group2Message8
	QuickChats(22)=Group2Message9
	QuickChats(23)=Group2Message10
	QuickChats(24)=Group3Message1
	QuickChats(25)=Group3Message2
	QuickChats(26)=Group3Message3
	QuickChats(27)=Group3Message4
	QuickChats(28)=Group3Message5
	QuickChats(29)=Group3Message6
	QuickChats(30)=Group3Message7
	QuickChats(31)=Group3Message8
	QuickChats(32)=Group3Message9
	QuickChats(33)=Group3Message10
	QuickChats(34)=Group3Message11
	QuickChats(35)=Group4Message1
	QuickChats(36)=Group4Message2
	QuickChats(37)=Group4Message3
	QuickChats(38)=Group4Message4
	QuickChats(39)=Group4Message5
	QuickChats(40)=Group4Message6
	QuickChats(41)=Group4Message7
	QuickChats(42)=Group6Message4
	PostGameQuickChats(0)=Group5Message1
	PostGameQuickChats(1)=Group5Message2
	PostGameQuickChats(2)=Group5Message3
	PostGameQuickChats(3)=Group5Message4
	PostGameQuickChats(4)=Group5Message5
	PostGameQuickChats(5)=Group5Message6
	PostGameQuickChats(6)=Group5Message7
	PostGameQuickChats(7)=Group5Message8
	PreGameQuickChats(0)=Group6Message1
	PreGameQuickChats(1)=Group6Message2
	PreGameQuickChats(2)=Group6Message3
	PreGameQuickChats(3)=Group6Message4
	PreGameQuickChats(4)=Group6Message5
	PreGameQuickChats(5)=Group6Message6
	PreGameQuickChats(6)=Group6Message7
	PreGameQuickChats(7)=Group6Message8
	TableName=QuickChatBindings
}