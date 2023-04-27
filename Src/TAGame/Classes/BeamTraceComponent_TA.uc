/*******************************************************************************
* BeamTraceComponent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class BeamTraceComponent_TA extends ActorComponent_X
	editinlinenew;

struct BeamTraceProps
{
	var float NextTraceTime;
	var Vector LastWorldLocation;
	var bool LastWorldHit;
	var export editinline ParticleSystemComponent PSC;

	structdefaultproperties
	{
		NextTraceTime=0.0
		LastWorldLocation=(X=0.0,Y=0.0,Z=0.0)
		LastWorldHit=false
		PSC=None
	}
};

var() export editinline array<export editinline ParticleSystemComponent> BeamSystems;
var() float TraceDistance;
var() float MinRetraceRate;
var() float MaxRetraceRate;
var transient array<BeamTraceProps> Beams;
var transient FXActor_X FXOwner;
