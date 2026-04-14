---
layout: project
title: "Obstacle Assault"
image_url: "/assets/images/obstacle.png"
engine: unreal
order: 2
type: personal
hide_header_image: true
---

<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 0 0 28px;">
  <source src="/assets/video/obstacle.mp4" type="video/mp4">
</video>

After proving I could work in Unreal with Blueprints, the next step was C++. I bought a course on Udemy, Unreal Engine 5 C++ Game Development, which guides you through the development of 4 video games. The first game was Obstacle Assault.

The game is a **Foddian** title — a genre named after Bennett Foddy, developer of *Getting Over It*. Games where you climb high, make one bad jump, and watch yourself tumble back to somewhere embarrassingly far below where you started. The genre is designed to be frustrating by nature. I can report that it succeeds. I had to play the game a lot to get the above video.

---

## From Blueprints to C++

Coming off Sam Unreal — which was Blueprints-only — the jump to C++ was the point of this project. Understanding how Unreal's C++ layer actually works: how classes relate to Actors, how the engine calls into your code, and how to expose the right things to the editor without hardcoding values you'll need to change.

The two main classes I wrote were `AMovingPlatform` and `AObstacleAssaultPlayerController`.

---

## AMovingPlatform

The moving platform actor handles both translational and rotational movement. Velocity, rotation speed, and travel distance are all `UPROPERTY(EditAnywhere)` — editable per-instance in the editor without touching code. This was one of the first things that clicked properly: the `UPROPERTY` macro is conceptually similar to `[SerializeField]` in Unity C#, but the range of specifiers (`EditAnywhere`, `VisibleAnywhere`, `EditDefaultsOnly`, etc.) gives you finer-grained control over what's visible where.

```cpp
UPROPERTY(EditAnywhere)
FVector Velocity = FVector(0, 0, 0);

UPROPERTY(EditAnywhere)
FRotator RotationVelocity;

UPROPERTY(EditAnywhere)
float MoveDistance = 100;
```

The movement logic runs in `Tick` (Unreal's equivalent of `Update`) and handles overshoot correction: rather than checking if the platform has gone past its target, it calculates exactly how far past it went and snaps to the precise endpoint before reversing. A small thing, but getting physics-adjacent movement code to behave cleanly without drift matters.

```cpp
float distance = GetDistanceMoved();
if (distance >= MoveDistance)
{
    float overshoot = distance - MoveDistance;
    FVector moveDirection = Velocity.GetSafeNormal();
    FVector targetLocation = StartLocation + moveDirection * MoveDistance;
    SetActorLocation(targetLocation);
    StartLocation = targetLocation;
    Velocity = -Velocity;
}
```

`BeginPlay` stores the starting world position so the reversal logic always has a clean reference point, regardless of where the actor is placed in the level.

---

## AObstacleAssaultPlayerController

The player controller was the more involved of the two classes and introduced me to parts of Unreal I hadn't touched before. A few things worth calling out:

**Enhanced Input System.** Input is handled through `UInputMappingContext` arrays — one set of contexts for standard play, a separate set excluded on mobile. Binding actions to functions uses `EIC->BindAction`, with `ETriggerEvent::Started` controlling when the callback fires.

```cpp
if (UEnhancedInputComponent* EIC = Cast<UEnhancedInputComponent>(InputComponent))
{
    EIC->BindAction(ResetAction, ETriggerEvent::Started, this, &AObstacleAssaultPlayerController::ResetPlayer);
}
```

**Respawn system.** This was my own addition, not part of the course material — added primarily as a debugging aid to quickly reset myself back to the start without restarting the whole session. For a Foddian game where you're constantly testing jumps and platform timings, being able to teleport back to the beginning on a button press saves a lot of time. Getting it working meant connecting several systems I hadn't used together before: `FTransform`, `GetAuthGameMode()`, `FindPlayerStart()`, and `SetActorTransform()`.

```cpp
void AObstacleAssaultPlayerController::ResetPlayer()
{
    if (APawn* MyPawn = GetPawn())
    {
        MyPawn->SetActorTransform(RespawnTransform);
    }
}
```

---

## Level Building

The level is built on top of the [Stylized Eastern Village](https://www.fab.com/listings/9841fee2-683f-4e68-adb8-bafec270a251) asset pack from the Fab marketplace, which provides the environment and atmosphere. The actual platforming — the obstacles, the moving platforms, the routes players climb — is built from props taken from [Construction Site VOL. 1](https://www.fab.com/listings/ba44a508-bfa5-444c-bbf4-69e8b5dee530) and arranged around the C++ moving platform actors. The character is the [Survival Character Free](https://www.fab.com/listings/11d20d01-b764-4936-8163-cb20d05c369e) pack.

Worth a special mention: Unreal's **geometry brush** system. Additive and subtractive CSG shapes that let you block out structural geometry directly in the editor without any meshes — stairs, ramps, platforms, walls, all buildable in minutes. It's a quick and satisfying way to prototype a level before committing to final assets. I was very impressed with it.

---

## What Changed From Sam Unreal

Sam Unreal was a useful orientation exercise but it didn't require me to think about engine architecture. This project did. Understanding why member variables live in header files, why you use `::` for class scope and `.` for instance scope, what `UCLASS` and `GENERATED_BODY()` are actually doing, when to use a macro versus a function — these are the things that separate "I can write Unreal code" from "I understand what it's doing."

Blueprint child classes still have a role: the visual components of the moving platforms are set up in Blueprint subclasses of the C++ parent, which keeps art assets out of code and lets designers tweak things without a recompile. That separation between logic in C++ and presentation in Blueprint is a pattern worth building habits around early.

The `eject` feature deserves a mention: pressing Eject mid-play breaks you out of the player controller and lets you fly around the scene freely while the game is still running. It is extremely useful for debugging why a platform is in the wrong place, and extremely tempting to just use to admire your level.

---

## Takeaway

Obstacle Assault completed the move from Unreal-as-a-visitor to Unreal-as-a-programmer. The foundations are in place: actor lifecycle, property system, input, basic math, mobile considerations, and the Blueprint/C++ split. The next project will be less about foundations and more about building something with real depth.

Up next: **Dungeon Escape** — a first-person 3D dungeon crawler with interactive puzzles. A genre I have a lot of personal history with and a good deal more ambition for.
