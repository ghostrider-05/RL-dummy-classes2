/*******************************************************************************
* PsyNetRequestQue_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PsyNetRequestQue_X extends Object;

struct native PsyNetRequest
{
	var name Id;
	var TAsyncResult__PsyNetMessage_X Task;
	var float TimeoutTime;
	var float SendTime;

	structdefaultproperties
	{
		Id=None
		Task=None
		TimeoutTime=0.0
		SendTime=0.0
	}
};

var() float RequestTimeout;
var array<PsyNetRequest> Requests;

defaultproperties
{
	RequestTimeout=20.0
}