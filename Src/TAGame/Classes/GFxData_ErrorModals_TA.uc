/*******************************************************************************
* GFxData_ErrorModals_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_ErrorModals_TA extends GFxDataSingleton_X;

struct PendingError
{
	var Error Error;
	var class ModalClass;

	structdefaultproperties
	{
		Error=None
		
		ModalClass=None
	}
};

var() GameEvent_TA GameEvent;
var array<PendingError> PendingErrors;

defaultproperties
{
	TableName=ErrorModals
	bLevelTransitionPersistent=true
}