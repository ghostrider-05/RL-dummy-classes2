/*******************************************************************************
* Message_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Message_TA extends Object
	hidecategories(Object);

// The type of message this is (decides where to display it)
var() const name Type;
// Sound to play when displayed
var() const AkSoundCue Sound;
var() const AkSoundCue PrimaryPlayerSound;
// The key to look up in the localization file
var() const string Key;
// Which section in the localization file
var() const string Section;
var() const EHUDMessageLevel MessageLevel;
var const transient string LocalizedMessage;
var const transient array<name> ParamNames;
var const transient array<string> ParamTokens;
var transient MessagePacket Packet;
var transient MessagePacket DefaultPacket;

defaultproperties
{
	Section="Messages"
}