/*******************************************************************************
* GFxData_PartyMemberProfile_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_PartyMemberProfile_TA extends GFxDataRow_X;

var databinding UniqueNetId PlayerID;
var databinding name Title;
var databinding string TitleText;
var databinding Color TitleColor;
var databinding Color TitleGlowColor;
var export editinline transient OtherPlayerProfile_TA Profile;
var OnlineGameParty_TA OnlineGameParty;

defaultproperties
{
	
	
	TableName=PartyMemberProfile
}