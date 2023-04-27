/*******************************************************************************
* RLBot_Util_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RLBot_Util_TA extends Object
	config(RLBot);

struct native BotLoadout
{
	var array<int> Products;
	var array<int> Paints;
	var Color PrimaryColor;
	var Color SecondaryColor;

	structdefaultproperties
	{
		Products.Empty
		Paints.Empty
		PrimaryColor=(R=0,G=0,B=0,A=0)
		SecondaryColor=(R=0,G=0,B=0,A=0)
	}
};

struct native PlayerStats
{
	var int Score;
	var int Goals;
	var int OwnGoals;
	var int Assists;
	var int Saves;
	var int Shots;
	var int Demolitions;

	structdefaultproperties
	{
		Score=0
		Goals=0
		OwnGoals=0
		Assists=0
		Saves=0
		Shots=0
		Demolitions=0
	}
};

var config string ControllerURL;
var config string OutputFilePath;
var config float PacketSendRate;
var bool bRecordInput;

defaultproperties
{
	/**ControllerURL="127.0.0.1:50000"*/
	/**PacketSendRate=60.0*/
	bRecordInput=true
}