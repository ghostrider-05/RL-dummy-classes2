/*******************************************************************************
* AdHocBrowser_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AdHocBrowser_X extends LanBrowser_X;

var AdHocBeacon_X AdHocBeacon;
var array<AdHocAccessPointInfo> AdHocNodesOnNetwork;
var() const float SearchTimeout;
var TAsyncResult__array_LanServerRecord_X SearchTask;
var array<LanServerRecord_X> SearchResults;
var array<AdHocAccessPointInfo> AdHocAccessPointsAvailable;

defaultproperties
{
	SearchTimeout=5.0
}