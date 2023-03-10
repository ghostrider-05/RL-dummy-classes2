/*******************************************************************************
* GFxData_Stats_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Stats_TA extends GFxDataSingleton_X;

struct GFxStatData
{
	var databinding string Id;
	var databinding string Name;
	var databinding string DisplayValue;
	var databinding Texture Texture;
	var databinding string Description;
	var class DisplayProductStatClass;

	structdefaultproperties
	{
		Id=""
		Name=""
		DisplayValue=""
		Texture=none
		Description=""
		DisplayProductStatClass=none
	}
};

var databinding array<GFxStatData> Events;
var const array<StatEvent_TA> StatEvents;

defaultproperties
{
	StatEvents(0)=StatEvent_TA'StatEvents.Events.TimePlayed'
	StatEvents(1)=StatEvent_TA'StatEvents.Events.Win'
	StatEvents(2)=StatEvent_TA'StatEvents.Events.Loss'
	StatEvents(3)=StatEvent_TA'StatEvents.Events.MVP'
	StatEvents(4)=StatEvent_TA'StatEvents.Events.Goal'
	StatEvents(5)=StatEvent_TA'StatEvents.Events.AerialGoal'
	StatEvents(6)=StatEvent_TA'StatEvents.Events.BackwardsGoal'
	StatEvents(7)=StatEvent_TA'StatEvents.Events.BicycleGoal'
	StatEvents(8)=StatEvent_TA'StatEvents.Events.LongGoal'
	StatEvents(9)=StatEvent_TA'StatEvents.Events.OvertimeGoal'
	StatEvents(10)=StatEvent_TA'StatEvents.Events.HatTrick'
	StatEvents(11)=StatEvent_TA'StatEvents.Events.TurtleGoal'
	StatEvents(12)=StatEvent_TA'StatEvents.Events.Assist'
	StatEvents(13)=StatEvent_TA'StatEvents.Events.Playmaker'
	StatEvents(14)=StatEvent_TA'StatEvents.Events.Save'
	StatEvents(15)=StatEvent_TA'StatEvents.Events.EpicSave'
	StatEvents(16)=StatEvent_TA'StatEvents.Events.Savior'
	StatEvents(17)=StatEvent_TA'StatEvents.Events.Shot'
	StatEvents(18)=StatEvent_TA'StatEvents.Events.Center'
	StatEvents(19)=StatEvent_TA'StatEvents.Events.Clear'
	StatEvents(20)=StatEvent_TA'StatEvents.Events.AerialHit'
	StatEvents(21)=StatEvent_TA'StatEvents.Events.BicycleHit'
	StatEvents(22)=StatEvent_TA'StatEvents.Events.JuggleHit'
	StatEvents(23)=StatEvent_TA'StatEvents.Events.Demolish'
	StatEvents(24)=StatEvent_TA'StatEvents.Events.Demolition'
	StatEvents(25)=StatEvent_TA'StatEvents.Events.FirstTouch'
	StatEvents(26)=StatEvent_TA'StatEvents.Events.PoolShot'
	StatEvents(27)=StatEvent_TA'StatEvents.Events.LowFive'
	StatEvents(28)=StatEvent_TA'StatEvents.Events.HighFive'
	StatEvents(29)=StatEvent_TA'StatEvents.Events.BreakoutDamage'
	StatEvents(30)=StatEvent_TA'StatEvents.Events.BreakoutDamageLarge'
	StatEvents(31)=StatEvent_TA'StatEvents.Events.HoopsSwishGoal'
	TableName=Stat
}