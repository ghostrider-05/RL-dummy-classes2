/*******************************************************************************
* OnlinePlayerStorageManifest_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlinePlayerStorageManifest_X extends Object within OnlinePlayerStorage_X;

struct StorageMetadata
{
	var name Category;
	var int Checksum;
	var EObjectEncoding Encoding;

	structdefaultproperties
	{
		Category=None
		Checksum=0
		Encoding=OPSE_UObject
	}
};

var array<StorageMetadata> MetaData;