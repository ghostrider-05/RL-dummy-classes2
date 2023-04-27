/*******************************************************************************
* WebCache_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class WebCache_X extends Object;

struct CachedDataRequest
{
	var string URL;
	var string Path;
	var export editinline StringMap Headers;
	var CachedWebData_X CachedWebData;
	var bool bZipResponse;

	structdefaultproperties
	{
		URL=""
		Path=""
		Headers=None
		CachedWebData=None
		bZipResponse=false
		
	}
};

var transient array<CachedDataRequest> Requests;
