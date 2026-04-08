---
layout: project
title: "Sam Unreal"
image_url: "/assets/images/sam-unreal.png"
engine: unreal
order: 1
hide_header_image: true
---

<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 0 0 24px;">
  <source src="/assets/video/sam-unreal.mp4" type="video/mp4">
</video>

Our studio ran four consecutive Friday afternoons as a friendly internal competition: every programmer picks up Unreal Engine and builds something from scratch, blueprints only, no C++. At the end, the team votes for their favourite. This was my first time touching Unreal Engine, coming from about a decade of Unity work.

The whole company voted: programmers, designers, artists. The result? I won. The game was called **Sam Unreal**. By deadline I had run out of both time to develop the game and to think of a name.

---

## The Game

Sam Unreal is a 2.5D platformer: a pixel character, let's call him Sam, dropped into a stylised 3D environment, collecting coins whilst completing various platforming challenges.

I had originally intended to create a Paper Mario-style RPG or a top-down Pokémon inspired game. Then the 4 afternoon timeframe reality set in and I made a coin collector.

**Assets used:**

- Environment: [Stylized Provencal](https://www.fab.com/listings/ced19ea1-31ed-437f-ae64-2b6b1561fede) free asset from the Unreal Marketplace, modified to build out the platforming sections
- Player character: free pixel sprite from [itch.io](https://axulart.itch.io/small-8-direction-characters)
- Coin: free asset from [OpenGameArt.org](https://opengameart.org/content/coins-pixel-art-silver-gold-crystal-and-more)
- 2D animation: [PaperZD](https://www.fab.com/listings/6664e3b5-e376-47aa-a0dd-f7bbbd5b93c0) plugin from the Unreal Marketplace

---

## What I Actually Learned

### Blueprints are more capable than I expected

Coming from Unity, I assumed visual scripting would feel limiting pretty quickly. It didn't. Everything in this project was handled entirely in Blueprints: the coin pickup logic (overlap detection, sound management, disabling the actor, updating the HUD), the character controller (Enhanced Input System, Spring Arm camera with mouse-driven rotation and scroll-wheel zoom), and even small environment details like the windmill. The node breakdown inside each Blueprint is well structured: each component has its own scope, events are clear entry points, and variables stay readable even as graphs grow. Below are the three main Blueprints from the project.

<style>
.bp-slideshow {
  position: relative;
  background: #1a1a1a;
  border-radius: 10px;
  overflow: hidden;
  margin: 24px 0 32px;
  user-select: none;
}
.bp-slide { display: none; }
.bp-slide.active { display: block; }
.bp-slide img {
  width: 100%;
  max-height: 380px;
  object-fit: contain;
  display: block;
  background: #111;
}
.bp-controls {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 14px 12px;
  gap: 12px;
}
.bp-caption {
  flex: 1;
  font-size: 0.8em;
  color: #aaa;
  margin: 0;
  text-align: center;
  line-height: 1.4;
}
.bp-arrow {
  background: none;
  border: 1px solid #444;
  color: #aaa;
  border-radius: 6px;
  width: 28px;
  height: 28px;
  font-size: 1.1em;
  cursor: pointer;
  flex-shrink: 0;
  line-height: 1;
  transition: border-color 0.15s, color 0.15s;
}
.bp-arrow:hover { border-color: #888; color: #fff; }
.bp-pips {
  display: flex;
  gap: 6px;
  align-items: center;
  flex-shrink: 0;
}
.bp-pip {
  width: 7px;
  height: 7px;
  border-radius: 50%;
  background: #444;
  cursor: pointer;
  transition: background 0.2s;
}
.bp-pip.active { background: #aaa; }
</style>

<div class="bp-slideshow">
  <div class="bp-slide active">
    <img src="/assets/images/bp_coin.png" alt="Coin Blueprint">
  </div>
  <div class="bp-slide">
    <img src="/assets/images/bp_topdown_char_blueprint.png" alt="Character Blueprint">
  </div>
  <div class="bp-slide">
    <img src="/assets/images/bp_windmill.png" alt="Windmill Blueprint">
  </div>
  <div class="bp-controls">
    <button class="bp-arrow" onclick="bpNav(-1)">&#8249;</button>
    <p class="bp-caption" id="bpCaption">Coin — overlap detection, sound management, HUD communication, and actor self-disable on collection</p>
    <div class="bp-pips">
      <span class="bp-pip active" onclick="bpGoTo(0)"></span>
      <span class="bp-pip" onclick="bpGoTo(1)"></span>
      <span class="bp-pip" onclick="bpGoTo(2)"></span>
    </div>
    <button class="bp-arrow" onclick="bpNav(1)">&#8250;</button>
  </div>
</div>

<script>
(function() {
  var captions = [
    "Coin — overlap detection, sound management, HUD communication, and actor self-disable on collection",
    "Character — Enhanced Input System, Spring Arm camera with mouse-driven rotation and scroll-wheel zoom",
    "Windmill — Event Tick driven rotation with an exposed Speed variable"
  ];
  var current = 0;
  function update() {
    var slides = document.querySelectorAll('.bp-slide');
    var pips = document.querySelectorAll('.bp-pip');
    slides.forEach(function(s, i) { s.classList.toggle('active', i === current); });
    pips.forEach(function(p, i) { p.classList.toggle('active', i === current); });
    document.getElementById('bpCaption').textContent = captions[current];
  }
  window.bpNav = function(dir) { current = (current + dir + captions.length) % captions.length; update(); };
  window.bpGoTo = function(i) { current = i; update(); };
})();
</script>

### Unreal gives you more out of the box

One of the biggest differences I noticed was how much Unreal handles for you by default. When I set up the player character, the base controller was essentially already working; I just needed to layer things on top of it like enabling jump. In Unity, you're much more accustomed to building that kind of thing yourself from scratch. Neither approach is wrong, but the Unreal baseline is high, which matters a lot when you're moving fast.

Sounds were also notably easy to add and trigger. No fiddling with AudioSource components and hoping they're attached to the right object.

### The content browser is a pleasure to use

Small thing, but the tabs and filter system in the Unreal content browser is genuinely nice. Finding assets, filtering by type, switching between content folders. It's faster and more intuitive than I expected.

### Some things were harder

**Disabling objects** was one early friction point. In Unity you toggle a GameObject off with one call. In Unreal I ended up needing three separate things to achieve the same result. It's not insurmountable, but it's the kind of difference that catches you off-guard.

**Camera setup with a 2D character in a 3D world** took longer than it should have. Getting the camera to track a Paper2D sprite correctly, at the right distance and angle, in a 3D scene involved more fiddling than I anticipated. By the time it felt right I'd spent more time on it than on some of the actual gameplay mechanics.

**Knowing which Blueprint class to reach for** wasn't always obvious. The distinction between a Pawn, a Character, and an Actor isn't immediately self-evident when you're used to Unity's flat GameObject model, and finding specific objects or components within the scene took some adjustment. I treated it the same way I'd approach an unfamiliar codebase: documentation first, then community resources, then experiment. It works, but the mental model takes time to build.

### PaperZD is excellent

For anyone doing 2D animation in Unreal: [PaperZD](https://www.fab.com/listings/6664e3b5-e376-47aa-a0dd-f7bbbd5b93c0) is worth using. The editor is clean, the workflow is intuitive, and setting up animation state machines felt faster than I expected. I followed a video tutorial to get the initial setup done, but after that it was easy to build on top of. Easily the best 2D animation tooling I've used in any engine.

---

## Takeaway

Four afternoons, one Blueprint-only project, and a win. I came away with genuine respect for what Unreal offers, particularly how much is handled for you and how well the visual scripting system scales. The rough edges (camera, finding the right Blueprint class, the occasional "why does disabling an actor need three steps") are real, but they're learnable.

I'm continuing to build in Unreal. Next I want to move beyond Blueprints into C++, get comfortable with Unreal's Gameplay Framework at a deeper level, and build something with more scope than a coin collector. More on that as it develops.
