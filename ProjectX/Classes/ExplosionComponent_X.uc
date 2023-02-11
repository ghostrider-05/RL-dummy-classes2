/*******************************************************************************
* ExplosionComponent_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ExplosionComponent_X extends ActorComponent_X;

var() float RBVelocityChange;
var() float StartRadius;
var() float EndRadius;
var() float Speed;
var() float Falloff;
var() bool bPassThroughWorldGeometry;
var() bool bIgnoreInstigator;
var() bool bDebug;
var() Vector MomentumOffset;
var transient float LifeTime;
var transient array<Actor> DamagedActors;

defaultproperties
{
	Speed=10000.0
}