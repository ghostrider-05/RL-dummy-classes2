/*******************************************************************************
* OnlineMessageComponent_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineMessageComponent_X extends Component;

struct native OnlineMessageHandler
{
	var class MessageClass;
	var array< Object > Delegates;

	structdefaultproperties
	{
		MessageClass=None
		Delegates.Empty
	}
};

var() Serializer_X Serializer;
var() Compression_X Compressor;
var const transient array<OnlineMessageHandler> MessageHandlers;

defaultproperties
{
	Serializer=JSONSerializer_X'Default__OnlineMessageComponent_X.DefaultSerializer'
}