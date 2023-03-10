/*******************************************************************************
* OnlineGameJoinGame_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameJoinGame_X extends Online_X within OnlineGame_X;

var() int JoinCountdownTime;
var() string FailCommand;
var() string LoadingScreenCommand;
var() export editinline ShakeComponent_X JoinGameShake;
var export editinline ReservationBeacon_X ReservationBeacon;
var const localized string WaitingForPlayersString;
var const localized string ReservationNotRespondingString;
var const localized string ReservationFullString;
var const localized string PartyTeamReservationFullString;
var const localized string NoFriendJoinPrivateMatchString;
var const localized string BeaconTimedOutString;
var const localized string NotAllPlayersJoinedString;
var const localized string CanceledString;
var const localized string SecurityKeyAcquisitionFailed;
var const localized string SecurityKeyVerificationFailed;
var const localized string SendingReservationMessage;
var const localized string JoiningPartyLeadersGame;
var const localized string InvalidPassword;
var const localized string WrongPlaylistString;
var const localized string WrongRankedMatchString;
var const localized string MatchEndedString;
var const localized string CrossplayDisabled;
var const localized string AnotherPlayerCanceled;
var transient ActiveServerData ActiveServer;
var transient JoinMatchSettings Settings;
var transient string PendingFailMessage;
var transient array<Player> JoinedPlayers;
var CustomMatchSettings CustomMatch;

defaultproperties
{
	JoinCountdownTime=3
	
	ReservationBeacon=DefaultBeacon
}