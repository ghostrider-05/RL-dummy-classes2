/*******************************************************************************
* MenuTreePlaylistQueue_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MenuTreePlaylistQueue_TA extends Object;

struct ActivePlaylistQueueInfo
{
	var int PlaylistDataIndex;
	var Qword StartTime;

	structdefaultproperties
	{
		PlaylistDataIndex=0
		
	}
};

var array<ActivePlaylistInfo> PlaylistData;
var array<ActivePlaylistQueueInfo> Queue;
var array<ActivePlaylistInfo> DebugPlaylistData;
var IEpochNow TimeProvider;
