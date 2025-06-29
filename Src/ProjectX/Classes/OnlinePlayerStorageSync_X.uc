/*******************************************************************************
* OnlinePlayerStorageSync_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayerStorageSync_X extends Object within OnlinePlayerStorage_X;

struct OnlinePlayerStorageSyncRequest
{
	var Object DataObj;
	var int ClientTick;
	var EObjectEncoding Encoding;

	structdefaultproperties
	{
		DataObj=None
		ClientTick=0
		Encoding=OPSE_UObject
	}
};

struct OnlinePlayerStorageSyncResult
{
	var class<GFxSoundPack_X> DataClass;
	var Object RemoteData;
	var int ServerTick;
	var int Checksum;
	var bool bChecksumMatch;
	var EObjectEncoding Encoding;

	structdefaultproperties
	{
		DataClass=None
		RemoteData=None
		ServerTick=0
		Checksum=0
		bChecksumMatch=false
		Encoding=OPSE_UObject
	}
};

