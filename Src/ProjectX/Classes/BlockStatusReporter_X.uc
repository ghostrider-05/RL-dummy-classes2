/*******************************************************************************
* BlockStatusReporter_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class BlockStatusReporter_X extends Object within OnlinePlayerFriends_X;

const PrimaryControllerId = 0;

struct PlayerBlockListenData
{
	var string EpicId;

	structdefaultproperties
	{
		EpicId=""
		
	}
};

var array<PlayerBlockListenData> PlayerSubscriptions;
var export editinline PlatformBlockListStatus PrimaryStatus;
var BlockStatusReporterConfig_X Config;
