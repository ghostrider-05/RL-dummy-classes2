/*******************************************************************************
* ReservationBeacon_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ReservationBeacon_X extends Component;

struct native BeaconMessageHandler
{
	var class MessageClass;
	var array< Object > Delegates;

	structdefaultproperties
	{
		MessageClass=None
		Delegates.Empty
	}
};

var const array<BeaconMessageHandler> MessageHandlers;
var export editinline PsyNetBeacon_X PsyNetBeacon;

defaultproperties
{
	PsyNetBeacon=PsyNetBeacon_X'Default__ReservationBeacon_X.DefaultPsyNetBeacon'
}