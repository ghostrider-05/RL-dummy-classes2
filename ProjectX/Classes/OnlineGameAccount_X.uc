/*******************************************************************************
* OnlineGameAccount_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameAccount_X extends Online_X within OnlineGame_X;

var transient OnlinePlayer_X PrimaryPlayer;
var() float UpdateCurrentGameTaskTimer;
var transient int CurrentPlaylistId;

defaultproperties
{
	UpdateCurrentGameTaskTimer=300.0
}