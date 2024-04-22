/*******************************************************************************
* WordFilterConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class WordFilterConfig_X extends OnlineConfig_X
	config(Engine);

var() bool bSanitizeEntirePhrase;
var() bool PsyNetFilterEnabled;
var() int NameHistoryCacheLength;
var() config array<EWordFilterUsage> IgnoreFilterList;
var() config array<EWordFilterUsage> PlatformFilterList;
var() float PsyNetWordFilterBatchDelay;
var() int PsyNetWordFilterBatchMaxSize;

defaultproperties
{
	PsyNetFilterEnabled=true
	NameHistoryCacheLength=100
	/**IgnoreFilterList(0)=231
	IgnoreFilterList(1)=37
	IgnoreFilterList(2)=0
	IgnoreFilterList(3)=0
	IgnoreFilterList(4)=0*/
	/**PlatformFilterList(0)=229
	PlatformFilterList(1)=37*/
	PsyNetWordFilterBatchDelay=0.10
	PsyNetWordFilterBatchMaxSize=100
}