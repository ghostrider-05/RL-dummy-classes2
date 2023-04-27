/*******************************************************************************
* OnlineGameSearch_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameSearch_X extends OnlineGameSearch;

var transient array<string> InclusiveGameTagsArray;
var transient array<string> ExclusiveGameTagsArray;
var transient string MapName;
var() const string GameTagsDelimiter;

defaultproperties
{
	GameTagsDelimiter=","
	MaxSearchResults=125
}