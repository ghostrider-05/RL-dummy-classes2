/*******************************************************************************
* GFxModal_RankedReconnect_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxModal_RankedReconnect_TA extends GFxModal_X;

var() const localized string ConnectingTitleString;
var() const localized string ConnectingBodyString;
var FindServerTask_X Task;

defaultproperties
{
	ConnectingTitleString="Reconnect"
	ConnectingBodyString="Reconnecting..."
}