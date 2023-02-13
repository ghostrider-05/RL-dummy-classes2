/*******************************************************************************
* OnlineGame_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGame_TA extends OnlineGame_X
	config(Engine);

var() OnlineGameTournaments_TA Tournaments;
var() OnlineGameTourMatchmaking_TA TourMatchmaking;
var Personas_TA Personas;
var ClubPersonas_TA ClubPersonas;

defaultproperties
{
	Eula=OnlineLegalText_X'Default__OnlineGame_TA.DefaultEula'
	PrivacyPolicy=OnlineLegalText_X'Default__OnlineGame_TA.DefaultPrivacyPolicy'
	ToS=OnlineLegalText_X'Default__OnlineGame_TA.DefaultToS'
	SCT=OnlineLegalText_X'Default__OnlineGame_TA.DefaultSCT'
	PaymentServices=OnlineLegalText_X'Default__OnlineGame_TA.DefaultPaymentServices'
}