# UE3 Changelog

> **warning**
> This list does not contain all differences from classes in `Engine/Classes/`.
> Some (variable) changes might result in compile errors, try them one by one to check if it will compile.

## AnimSet

### defaultproperties

```diff
- bAnimRotationOnly=true
```

## PhysicalMaterial

### defaultproperties

```diff
+ InertiaScale=1.0
```

## variables

```diff
+ var() float InertiaScale;
- var(Impact)  float      ImpactThreshold;
- var(Impact)  float      ImpactReFireDelay;
- var(Impact)  ParticleSystem    ImpactEffect;
- var(Impact)  SoundCue     ImpactSound;
- var(Slide)  float      SlideThreshold;
- var(Slide)  float      SlideReFireDelay;
- var(Slide)  ParticleSystem    SlideEffect;
- var(Slide)  SoundCue     SlideSound;
- var(Fracture) SoundCue     FractureSoundExplosion;
- var(Fracture) SoundCue     FractureSoundSingle;
+ var  float      ImpactThreshold;
+ var  float      ImpactReFireDelay;
+ var  ParticleSystem    ImpactEffect;
+ var  SoundCue     ImpactSound;
+ var  float      SlideThreshold;
+ var  float      SlideReFireDelay;
+ var  ParticleSystem    SlideEffect;
+ var  SoundCue     SlideSound;
+ var SoundCue     FractureSoundExplosion;
+ var SoundCue     FractureSoundSingle;
```

## PhysicsVolume

### variables

```diff
- var() float DamagePerSec;
- var() class<DamageType> DamageType<AllowAbstract>;
- var() bool    bPainCausing;
- var() float    PainInterval;
- var() bool    bAIShouldIgnorePain;
- var() bool    bEntryPain;
- var bool    BACKUP_bPainCausing;
- var() bool    bNoInventory;
- var() bool    bNeutralZone;
- var bool    bWaterVolume;
- var Info    PainTimer;
- var Controller   DamageInstigator;
```

## Prefab

### defaultproperties

```diff
+ bAutoUpdatePrefabInstances=true
```

### variables

```diff
+ var bool bWorldspacePrefab;
+ var() bool bAutoUpdatePrefabInstances;
+ var(PsyonixEmptyThisArray) const array<Object> RemovedArchetypes;
- var const array<Object> RemovedArchetypes;
```

## PrimitiveComponent

```diff
enum ERBCollisionChannel
{
    RBCC_Default,
    RBCC_Nothing, // Special channel that nothing should request collision with.
    RBCC_Pawn,
    RBCC_Vehicle,
    RBCC_Water,
    RBCC_GameplayPhysics,
    RBCC_EffectPhysics,
+   RBCC_Ball,
+   RBCC_VehicleBlocker,
+   RBCC_BallBlocker,
-   RBCC_Untitled1,
-   RBCC_Untitled2,
-   RBCC_Untitled3,
    RBCC_Untitled4,
    RBCC_Cloth,
    RBCC_FluidDrain,
    RBCC_SoftBody,
    RBCC_FracturedMeshPart,
    RBCC_BlockingVolume,
    RBCC_DeadPawn,
    RBCC_Clothing,
    RBCC_ClothingCollision
};
```

## SequenceOp

### defaultproperties

```diff
+    bAutoActivateOutputLinks=true
+    PlayerIndex=-1
+    GamepadID=255
```

### variables

```diff
+ var bool bAutoActivateOutputLinks
+ var noimport transient int PlayerIndex
+ var noimport transient byte GamepadID
```

## SkeletalMesh

```diff
struct native SkeletalMeshLODDistanceInfo
{
    var() float DisplayFactor;
    var() float LODHysteresis;

    structdefaultproperties
    {
        DisplayFactor=0.0
        LODHysteresis=0.020
    }
};
```

## variables

```diff
+ var() int LODBiasPS4;
+ var() int LODBiasNNX;
+ var() array<SkeletalMeshLODDistanceInfo> LODDistanceInfo;
```

## StaticLightCollectionActor

### flags

```diff
+ placeable
```

## StaticMeshActor

```diff
+ struct native PreCombinedStaticMeshActor
+ {
+     var StaticMesh Mesh;
+     var Vector Location;
+     var Rotator Rotation;
+     var Vector PrePivot;
+     var float DrawScale;
+     var Vector DrawScale3D;
+     var Vector ComponentScale3D;
+
+    structdefaultproperties
+    {
+        Mesh=none
+        Location=(X=0.0,Y=0.0,Z=0.0)
+        Rotation=(Pitch=0,Yaw=0,Roll=0)
+        PrePivot=(X=0.0,Y=0.0,Z=0.0)
+        DrawScale=0.0
+        DrawScale3D=(X=0.0,Y=0.0,Z=0.0)
+        ComponentScale3D=(X=0.0,Y=0.0,Z=0.0)
+    }
+};
```

### defaultproperties

```diff
begin object name=StaticMeshComponent0 class=StaticMeshComponent
    bAllowApproximateOcclusion=TRUE
    bForceDirectLightMap=TRUE
    bUsePrecomputedShadows=TRUE
+   bForceDirectLightMap=true
-   BlockRigidBody=false
-   bAcceptsDynamicDecals=false
+   bDisableAllRigidBody=true
end object
```

### variables

```diff
+ var() editoronly const editconst array<editoronly editconst PreCombinedStaticMeshActor> PreCombinedStaticMeshActors
```

## StaticMeshCollectionActor

### flags

```diff
+ placeable
```

## StaticMeshComponent

### defaultproperties

```diff
+ bAcceptsDynamicDecals=false
- BlockRigidBody=True
- bAcceptsStaticDecals=TRUE
- bAcceptsDecals=TRUE
- bOverrideLightMapResolution=TRUE
- OverriddenLightMapResolution=0
- bOverrideLightMapRes=FALSE
- bForceStaticDecals=FALSE
- bCanHighlightSelectedSections=false;
```

## Teleporter

### variables

```diff
- var() bool bCanTeleportVehicles
```

## Texture2D

### defaultproperties

```diff
- MipsToRemoveOnCompress=0
- bIsEditorOnly=false
```

## TextureRenderTarget

### defaultproperties

```diff
- SRGB=True
```

## TextureRenderTarget2D

### variables

```diff
+ var() const int ExtraTexCreateFlags
```

## WindDirectionalSourceComponent

### defaultproperties

```diff
- Frequency=1.0
```

## ZoneInfo

## variables

```diff
- KillZDamageType
```

## defaultproperties

```diff
+ KillZ=-2048.0
- KillZ=-262143.0  // this is HALF_WORLD_MAX1
```

<!-- markdownlint-disable-file MD024 -->