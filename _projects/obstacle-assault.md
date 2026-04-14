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

After proving I could work in Unreal with Blueprints, the obvious next step was C++. Sam Unreal showed me the engine. Obstacle Assault was where I learned to actually program in it.

The game is a **Foddian** title — a genre named after Bennett Foddy, developer of *Getting Over It*. Games where you climb high, make one bad jump, and watch yourself tumble back to somewhere embarrassingly far below where you started. The genre is designed to be frustrating by nature. I can report that it succeeds. I may have tested the game more than was strictly necessary in the name of QA.

---

## From Blueprints to C++

Coming off Sam Unreal — which was Blueprints-only — the jump to C++ was the point of this project. Not just writing C++ that compiles, but understanding how Unreal's C++ layer actually works: how classes relate to Actors, how the engine calls into your code, and how to expose the right things to the editor without hardcoding values you'll need to change.

The two main classes I wrote were `AMovingPlatform` and `AObstacleAssaultPlayerController`, and between them they covered most of what a first proper C++ Unreal project should touch.

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

The player controller was where I spent more time and encountered more of Unreal's modern API surface. A few things stood out:

**Enhanced Input System.** Rather than using Unreal's legacy input (which is effectively deprecated at this point), the controller uses the Enhanced Input System with `UInputMappingContext` arrays — one set of contexts for standard play, a separate set excluded on mobile. This is the current recommended approach and it's more flexible than the old axis/action binding system once you understand how contexts layer.

**Mobile support.** The controller detects touch interfaces via `SVirtualJoystick::ShouldDisplayTouchInterface()` and conditionally spawns a mobile controls widget. Using `TSubclassOf<UUserWidget>` for the widget class reference keeps it type-safe and designer-configurable in the editor rather than hardcoded.

**Respawn system.** This was my own addition, not part of the course material — added primarily as a debugging aid to quickly reset myself back to the start without restarting the whole session. For a Foddian game where you're constantly testing jumps and platform timings, being able to teleport back to the beginning on a button press saves a lot of time. Getting it working meant connecting several systems I hadn't used together before: `FTransform`, `GetAuthGameMode()`, `FindPlayerStart()`, and `SetActorTransform()`. Small in scope but genuinely self-directed, and a good early lesson in navigating Unreal's framework without a guide.

**TObjectPtr.** The widget pointer uses `TObjectPtr<UUserWidget>` rather than a raw pointer. This is Unreal's modern smart pointer wrapper for UObject references, introduced as a best practice to enable better garbage collection tracking. It's a small choice that signals familiarity with where the engine is heading.

---

## Level Building

Levels were built with Unreal's geometry brush system — additive and subtractive CSG shapes that let you block out a space quickly without importing any meshes. Stairs, ramps, platforms: all buildable in minutes. Coming from Unity where level blocking typically means dropping primitive GameObjects around, the geometry brush workflow felt significantly faster for structural shapes.

Assets came from the Fab marketplace: [Construction Site VOL. 1](https://www.fab.com/listings/ba44a508-bfa5-444c-bbf4-69e8b5dee530), [Survival Character Free](https://www.fab.com/listings/11d20d01-b764-4936-8163-cb20d05c369e), and [Stylized Eastern Village](https://www.fab.com/listings/9841fee2-683f-4e68-adb8-bafec270a251).

---

## What Changed From Sam Unreal

Sam Unreal was a useful orientation exercise but it didn't require me to think about engine architecture. This project did. Understanding why member variables live in header files, why you use `::` for class scope and `.` for instance scope, what `UCLASS` and `GENERATED_BODY()` are actually doing, when to use a macro versus a function — these are the things that separate "I can write Unreal code" from "I understand what it's doing."

Blueprint child classes still have a role: the visual components of the moving platforms are set up in Blueprint subclasses of the C++ parent, which keeps art assets out of code and lets designers tweak things without a recompile. That separation between logic in C++ and presentation in Blueprint is a pattern worth building habits around early.

The `eject` feature deserves a mention: pressing Eject mid-play breaks you out of the player controller and lets you fly around the scene freely while the game is still running. It is extremely useful for debugging why a platform is in the wrong place, and extremely tempting to just use to admire your level.

---

## Takeaway

Obstacle Assault completed the move from Unreal-as-a-visitor to Unreal-as-a-programmer. The foundations are in place: actor lifecycle, property system, input, basic math, mobile considerations, and the Blueprint/C++ split. The next project will be less about foundations and more about building something with real depth.

Up next: **Dungeon Escape** — a first-person 3D dungeon crawler with interactive puzzles. A genre I have a lot of personal history with and a good deal more ambition for.
