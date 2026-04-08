---
layout: project
title: "Border Bots VR"
image_url: "/assets/images/border-bots-header.png"
engine: unity
---

Border Bots VR is a multi-platform virtual reality game released on SteamVR, PSVR2, and Meta Quest, co-published with Team17. I served as lead gameplay developer across the full production cycle, from early prototyping through to certification and launch on all three platforms.


<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 24px 0;">
  <source src="/assets/video/border-bots-vr.mp4" type="video/mp4">
</video>

---

## The Game

Border Bots VR puts players in the role of a border control officer at a near-future checkpoint. Travellers arrive, present documents and luggage, and it's your job to decide who gets through. Contraband has to be identified, cross-referenced against zone restrictions, and flagged. Every decision feeds into a score that determines how your shift is assessed.

The game launched to strong reviews: **Very Positive on Steam**, **4.51 out of 5 on PlayStation**, and **4.3 out of 5 on Meta Quest**. For a VR title in a fairly niche subgenre, that reception meant a lot.

---

## My Role

I was the lead gameplay developer on Border Bots VR. That meant owning the core interaction systems end to end: designing them, building them, iterating on them with the team, and making sure they held together across three very different platforms with different controllers, tracking models, and performance budgets.

The work ranged from high-level system architecture down to the kind of per-platform feel tuning that you only discover by putting the headset on and testing it yourself.

---

## SamOS

The headline feature of my work on Border Bots VR is **SamOS**: the in-world UI system that drives almost everything in the game. The name came from the team. It stuck.

The premise was that every piece of UI the player interacts with should exist inside the world itself rather than floating in screen space. No traditional menus. No HUDs. Instead, the player's workstation is equipped with an in-world computer terminal and a handheld tablet. Both are fully interactive VR objects. Every system the player needs to do their job runs through one of those two surfaces.

### What SamOS does

The computer terminal and tablet together handle the full gameplay loop:

- **Zone and contraband cross-referencing.** Travellers may be carrying items that are legal in some zones but prohibited in others. The player looks up the current zone rules on the terminal, checks the traveller's declared goods, and makes a call. SamOS is the tool that makes that cross-referencing possible within the fiction of the world: you're not opening a menu, you're looking something up on your work computer.

- **News and recordings.** The terminal also plays in-world news broadcasts and recorded messages that deliver story context. Lore, world-building, hints about what's going on beyond the checkpoint: all of it comes through SamOS as content the player can choose to engage with at their own pace.

- **Tool guidance.** When players need to use inspection tools (scanners, stamp dispensers, and similar equipment at the booth), SamOS surfaces the relevant guidance contextually. Rather than an external tutorial overlay, the game uses the terminal as the natural place to reference how things work, which keeps players inside the fiction.

Building SamOS meant solving a specific VR UI problem: flat interfaces designed for screens don't translate cleanly into three-dimensional space, especially across platforms with different controller schemes. Everything had to be readable in a headset at varying angles, responsive to natural VR hand positioning, and performant enough not to introduce hitching on the more constrained hardware. Getting that right across Quest, PSVR2, and SteamVR was one of the more demanding parts of the project.

The result was a system the team cared enough about to name after me, which I'll take.

---

## Booth Tools and Inspection Systems

Beyond SamOS, I built the suite of physical interaction tools at the player's booth. The checkpoint workflow involves picking up and using a range of objects: scanners, stamps, document holders. Each of these needed to feel physically convincing in VR, which is a higher bar than it sounds.

VR players notice immediately when an object doesn't behave the way their hands expect. Weight, snap points, the moment a tool activates: all of it contributes to whether the interaction feels real or breaks immersion. I iterated extensively on the feel of each tool, adjusting grab offsets, interaction distances, and haptic feedback per platform until each one felt right in context.

The stamp and document handling system in particular went through a lot of revision. Stamping a document is a simple action on paper, but making it feel satisfying and deliberate in VR, at the right moment in the player's decision flow, took genuine work to get right.

---

## News Reporter System

I also built the news reporter system that appears on SamOS. The in-world broadcasts needed to feel like real television: anchor delivery, pacing, the feel of a news segment. The system was designed to be authored easily by the team, so writers and designers could add or modify segments without needing to touch code.

In practice this meant building a lightweight sequencing layer on top of the video playback that handled segment transitions, on-screen graphics, and timing. It's a small system in the context of the whole game, but it did a lot of work for the narrative.

---

## Shipping on Three Platforms

Releasing on SteamVR, PSVR2, and Meta Quest simultaneously is a meaningful technical undertaking. Each platform has its own controller API, performance profile, certification requirements, and quirks. A system that works cleanly on PC VR may need substantial revision to run acceptably on a standalone headset, and Sony's certification process has specific requirements that can surface late if you're not tracking them from early in development.

I worked across all three platform targets throughout the project, not just at the end. That meant building with platform differences in mind from the start rather than porting after the fact: conditional controller bindings, scalable render settings, and interaction systems that accounted for the physical differences in how each headset's controllers are held and used.

Co-publishing with **Team17** added a layer of external scrutiny to the process that I found valuable. Meeting their standards for certification readiness and quality bar across platforms is not trivial, and shipping through that pipeline on a title that reviewed this well is something I'm proud of.

---

## Reception

- **Steam:** Very Positive (65 reviews)
- **PlayStation Store:** 4.51 / 5 (150 ratings)
- **Meta Quest Store:** 4.3 / 5 (174 reviews)

Consistent positive reception across all three storefronts, across very different player communities with different expectations of VR, is the kind of validation that matters. The systems I built are the ones players spend the most time with: the UI, the tools, the inspection loop. That those systems held up is something I'm genuinely pleased about.
