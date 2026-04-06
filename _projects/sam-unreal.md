---
layout: project
title: "SAM UNREAL - Blueprint Fridays"
image_url: "/assets/images/sam-unreal.png"
engine: unreal
---

<!-- GIF PLACEHOLDER: Replace the line below with an actual GIF showing the game in action (collecting coins, jumping, camera following, etc.) -->
![SAM UNREAL gameplay GIF — PLACEHOLDER: replace with actual GIF](/assets/images/sam-unreal-gameplay.gif)

---

## Blueprint Fridays

Our studio ran four consecutive Friday afternoons as a friendly internal competition: every programmer picks up Unreal Engine and builds something from scratch, blueprints only, no C++. At the end, the team votes for their favourite. This was my first time touching Unreal Engine, coming from about a decade of Unity work.

The result? I won. The game was called **SAM UNREAL** — not the most inspired name, but apparently that didn't matter.

![SAM UNREAL screenshot](/assets/images/sam-unreal.png)

---

## The Game

SAM UNREAL is a 2.5D platformer: a pixel character dropped into a stylised 3D environment, collecting coins, jumping around, and generally not falling into water. Simple premise, which was entirely intentional once I saw how much time I actually had.

I originally had ideas about a Paper Mario-style RPG or a top-down Pokémon-ish thing. Then reality set in and I made a coin collector. No regrets.

**Assets used:**

- Environment — [Stylized Provencal](<!-- PLACEHOLDER: add UE Marketplace link -->) free asset from the Unreal Marketplace, modified to build out the platforming sections
- Player character — free pixel sprite from [itch.io](<!-- PLACEHOLDER: add specific itch.io link if you have it -->)
- Coin — free asset from [OpenGameArt.org](https://opengameart.org)
- 2D animation — [PaperZD](<!-- PLACEHOLDER: add UE Marketplace link -->) plugin from the Unreal Marketplace

---

## What I Actually Learned

### Blueprints are more capable than I expected

Coming from Unity, I assumed visual scripting would feel limiting pretty quickly. It didn't. Everything in this project — collisions, UI, controls, camera logic, sounds — was done entirely in Blueprints. The node breakdown inside each Blueprint is genuinely well designed: you open it up, see each component clearly, add events, create variables scoped to specific components. It's structured in a way that keeps things readable even when complexity starts to creep in.

### Unreal gives you more out of the box

One of the biggest differences I noticed was how much Unreal handles for you by default. When I set up the player character, the base controller was essentially already working — I just needed to layer things on top of it like enabling jump. In Unity, you're much more accustomed to building that kind of thing yourself from scratch. Neither approach is wrong, but the Unreal baseline is high, which matters a lot when you're moving fast.

Sounds were also notably easy to add and trigger. No fiddling with AudioSource components and hoping they're attached to the right object.

### The content browser is a pleasure to use

Small thing, but the tabs and filter system in the Unreal content browser is genuinely nice. Finding assets, filtering by type, switching between content folders — it's faster and more intuitive than I expected.

### Some things were harder

**Disabling objects** was one early friction point. In Unity you toggle a GameObject off with one call. In Unreal I ended up needing three separate things to achieve the same result. It's not insurmountable, but it's the kind of difference that catches you off-guard.

**Camera setup with a 2D character in a 3D world** took longer than it should have. Getting the camera to track a Paper2D sprite correctly, at the right distance and angle, in a 3D scene involved more fiddling than I anticipated. By the time it felt right I'd spent more time on it than on some of the actual gameplay mechanics.

**Knowing which Blueprint class to reach for** wasn't always obvious. Blueprint names don't always tell you what they're for, and finding specific objects or components within the scene took some adjustment. A fair amount of my time was spent watching YouTube videos and pulling individual nodes from tutorials. That's normal for any first project in a new engine, but it's worth noting if you're used to Unity's documentation and how it maps to code.

### PaperZD is excellent

For anyone doing 2D animation in Unreal: [PaperZD](<!-- PLACEHOLDER: add UE Marketplace link -->) is worth using. The editor is clean, the workflow is intuitive, and setting up animation state machines felt faster than I expected. I followed a video tutorial to get the initial setup done, but after that it was easy to build on top of. Easily the best 2D animation tooling I've used in any engine.

---

## Takeaway

Four afternoons, one Blueprint-only project, and a win. I came away with genuine respect for what Unreal offers — particularly how much is handled for you, and how well the visual scripting system scales. The rough edges (camera, finding the right Blueprint class, the occasional "why does disabling an actor need three steps") are real, but they're learnable.

I'm continuing to build in Unreal. More on that as it develops.

<!-- PLACEHOLDER: Add any links to video, itch.io page, or additional screenshots here -->
