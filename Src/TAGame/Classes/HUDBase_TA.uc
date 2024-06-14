/*******************************************************************************
* HUDBase_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class HUDBase_TA extends HUD_X
	transient
	config(Game)
	hidecategories(Navigation);

struct ChatMessage
{
	var PlayerReplicationInfo PRI;
	var Team_TA Team;
	var string PlayerName;
	var string Message;
	var EChatChannel ChatChannel;
	var bool bPreset;
	var UniqueNetId Recipient;
	var string TimeStamp;

	structdefaultproperties
	{
		PRI=None
		Team=None
		PlayerName=""
		Message=""
		ChatChannel=EChatChannel_Match
		bPreset=false
		
		TimeStamp=""
	}
};

var transient GFxShell_TA Shell;
var const localized string DisconnectedString;
var const localized string ServerMaintString;
var const localized string PartyChatTitle;
var transient GFxData_Chat_TA ChatData;

defaultproperties
{
	/**DisconnectedString="Disconnected"*/
	/**ServerMaintString="Server went down for maintenance"*/
}