/*******************************************************************************
* EulaSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EulaSave_TA extends SaveObject_TA;

struct EulaVersion
{
	var int TextHash;

	structdefaultproperties
	{
		TextHash=0
	}
};

var array<EulaVersion> AcceptedEulas;
var int ResetCounter;
