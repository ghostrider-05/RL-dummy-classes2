/*******************************************************************************
* LanBeacon_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class LanBeacon_X extends Component
	native
	config(Engine);

var native const noexport Pointer VfTable_FTickableObject;
var native const transient Pointer LanBeacon;
var const config int LanAnnouncePort;
var const Qword QueryNonce;
var const ELanBeaconState BeaconState;
var const export editinline OnlineMessageComponent_X MessageComponent;
var const int MaxPacketSize;

defaultproperties
{
	/**LanAnnouncePort=14001*/
	MessageComponent=OnlineMessageComponent_X'Default__LanBeacon_X.DefaultMessageComponent'
	MaxPacketSize=1024
}