/*******************************************************************************
* ActionQueue_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ActionQueue_X extends Component;

const QueueMax = 100;

var() float ActionsPerSecond;
var array< Object > Queue;
var int QueueIndex;

defaultproperties
{
	ActionsPerSecond=30.0
}