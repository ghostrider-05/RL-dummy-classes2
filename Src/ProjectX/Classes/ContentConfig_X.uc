/*******************************************************************************
* ContentConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ContentConfig_X extends OnlineConfig_X;

struct native ContentPair
{
	var name KeyName;
	var string Content;
	var transient EncryptedKeyIndex Index;

	structdefaultproperties
	{
		KeyName=None
		Content=""
		Index=(Index=0)
	}
};

var array<ContentPair> ContentMap;
