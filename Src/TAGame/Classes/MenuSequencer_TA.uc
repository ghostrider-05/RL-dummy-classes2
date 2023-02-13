/*******************************************************************************
* MenuSequencer_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MenuSequencer_TA extends ActorComponent_X;

enum ESequenceStatus
{
	SS_Idle,
	SS_Entering,
	SS_Leaving,
	SS_Pending,
	SS_MAX
};

var() array<MenuSequence_TA> Sequences;
var() name DefaultSequence;
var MenuSequence_TA CurrentSequence;
var MenuSequence_TA PendingSequence;
var ESequenceStatus Status;
var array<MenuSequence_TA> PendingSequenceQueue;
