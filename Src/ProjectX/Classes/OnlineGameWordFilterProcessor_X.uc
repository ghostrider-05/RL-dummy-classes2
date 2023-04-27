/*******************************************************************************
* OnlineGameWordFilterProcessor_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameWordFilterProcessor_X extends Online_X;

struct WordFilterRequest
{
	var WebRequest_X Request;
	var string Comment;
	var string Sanitized;

	structdefaultproperties
	{
		Request=None
		Comment=""
		Sanitized=""
		
	}
};

var const float ResponseDelay;
var transient array<WordFilterRequest> SanitizeCallbacks;
