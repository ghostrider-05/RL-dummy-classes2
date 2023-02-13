/*******************************************************************************
* _FreeplayCommandsTypes_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class _FreeplayCommandsTypes_TA extends Object
	abstract;

enum EFreeplayCommand
{
	FreeplayCommand_BallInFront,
	FreeplayCommand_BallOnCar,
	FreeplayCommand_RedirectPass,
	FreeplayCommand_PopBallUp,
	FreeplayCommand_DefendShot,
	FreeplayCommand_MAX
};

struct FreeplayCommandsMetricsData
{
	var Vector BallLocation;
	var Vector BallVelocity;
	var Vector CarLocation;
	var Vector CarVelocity;
	var RotatorRadians CarRotation;
	var string MapName;
	var bool bCarOnGround;

	structdefaultproperties
	{
		BallLocation=(X=0.0,Y=0.0,Z=0.0)
		BallVelocity=(X=0.0,Y=0.0,Z=0.0)
		CarLocation=(X=0.0,Y=0.0,Z=0.0)
		CarVelocity=(X=0.0,Y=0.0,Z=0.0)
		CarRotation=(Pitch=0.0,Yaw=0.0,Roll=0.0)
		MapName=""
		bCarOnGround=false
	}
};

struct FreeplayCommandEvent
{
	var Qword ActivationTimestamp;
	var EFreeplayCommand ActivatedCommand;
	var FreeplayCommandsMetricsData PreActivationData;
	var name CommandExecutionError;

	structdefaultproperties
	{
		
		ActivatedCommand=FreeplayCommand_BallInFront
		PreActivationData=(BallLocation=(X=0.0,Y=0.0,Z=0.0),BallVelocity=(X=0.0,Y=0.0,Z=0.0),CarLocation=(X=0.0,Y=0.0,Z=0.0),CarVelocity=(X=0.0,Y=0.0,Z=0.0),CarRotation=(Pitch=0.0,Yaw=0.0,Roll=0.0),MapName="",bCarOnGround=false)
		CommandExecutionError=None
	}
};
