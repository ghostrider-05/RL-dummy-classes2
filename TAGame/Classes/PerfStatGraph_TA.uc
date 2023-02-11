/*******************************************************************************
* PerfStatGraph_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PerfStatGraph_TA extends StatGraph_TA;

var export editinline SampleHistory_TA FPS;
var export editinline SampleHistory_TA FrameTime;
var export editinline SampleHistory_TA GameThreadTime;
var export editinline SampleHistory_TA RenderThreadTime;
var export editinline SampleHistory_TA GPUFrameTime;
var export editinline array<export editinline SampleHistory_TA> FrameTimeHistories;
var float MaxFPS;
var float TargetFPS;
