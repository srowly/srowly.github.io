---
layout: project
title: "Comet"
image_url: "/assets/images/comet-2.png"
engine: unity
order: 1
type: personal
---

Comet is a post-apocalyptic survival and base-building game in development. A passion project built by a small team of three: myself (Sam) and Alex on programming, with Ian on art.

The game combines the genres we love: survival, homestead building, and a story-driven world that feels dangerous out there but cozy and safe once you're home. We're drawing on a shared interest in survival, prepping, and camping to build something that has real stakes and real warmth at the same time.

**Entries:** [#2 - Second Entry](#devlog-2) · [#1 - The Beginning](#devlog-1)

---

<a name="devlog-2"></a>
## Devlog #2 - Second Entry

*[Your second devlog entry goes here.]*

<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 16px 0;">
  <source src="/assets/video/comet-2.mp4" type="video/mp4">
</video>

---

<a name="devlog-1"></a>
## Devlog #1 - The Beginning

![Comet - early development](/assets/images/comet-1.png)

Comet started with a shared love of survival games and a clear vision: something that feels dangerous out in the world but cozy and safe once you're home. The three of us (Sam and Alex on programming, Ian on art) wanted to build the kind of game we actually want to play. Early on we settled on an isometric perspective, partly because we all love the genre. Games like **Final Fantasy Tactics**, **Baldur's Gate** and **Project Zomboid** were big reference points for us. Isometric gives the world a painterly quality that fits the tone we're going for, and it's a strong visual differentiator from the flood of straight top-down survival games out there.

We're also using Comet as an opportunity to work with as many modern Unity features as possible rather than falling back on older patterns. So far the project is using **Addressables** for asset management, **Scriptable Objects** for data, the **Unity Tilemap system** for the ground, and **URP** for rendering. Next up we plan to bring in **UI Toolkit** for all interface work, **Shader Graph** for custom visuals, and **Cinemachine** for camera control. The goal is to come away from this project with hands-on experience across the current Unity ecosystem, not just a finished game.

In terms of what's actually in and working: we have a save and load system built on JSON, farmable tiles and crops, trees that can be felled with an axe, an inventory system, a dialogue system, and a day/night cycle that shifts the light source and takes the world dark. It's a solid foundation and it already feels like a place worth being in.

Next up: Sam is moving onto the UI using Unity's new UI Toolkit, and Alex is working on shadows and a house interior to better sell the day/night cycle. Ian meanwhile has no shortage of work ahead of him: in-game visuals, all UI artwork, and the full suite of character and world animations are all on his plate. More soon.
