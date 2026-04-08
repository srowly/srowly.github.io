---
layout: project
title: "vTime XR"
image_url: "/assets/images/vtime-header.png"
engine: unity
order: 3
---

vTime XR was my first job as a programmer out of university, and looking back it was a remarkable place to start. vTime was one of the original social VR applications: a shared virtual space where people could meet, talk, and hang out in VR. This was before Meta had a social platform, before VRChat or Rec Room had taken off. We were building something genuinely new.

I was there for about three years, working across the full breadth of the application.

<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 24px 0;">
  <source src="/assets/video/vtimexr.mp4" type="video/mp4">
</video>

---

## The Platform

vTime XR let users create a personal avatar and join virtual spaces with friends and strangers from anywhere in the world. You could sit around a campfire in the Arctic, on a beach, on the moon. The experience was built around presence and conversation: the simple but surprisingly powerful idea that being in a shared virtual space with someone, even at low fidelity, feels meaningfully different from a phone call.

The platform launched on Samsung Gear VR and grew from there. By the time I left, it was running on eight platforms simultaneously.

---

## Cross-Platform Porting

My initial responsibility was porting the application from Samsung Gear VR to every other relevant VR and mobile platform at the time. That meant:

- Samsung Gear VR (existing)
- Windows Mixed Reality
- Google Cardboard
- Google Daydream
- iOS
- Oculus Rift
- Oculus Go
- PSVR

Each platform had its own controller model, rendering constraints, input abstraction, store certification requirements, and quirks. Porting was not just recompiling: it meant building or adapting the input layer to work with each device's specific interaction model, hitting the performance targets for each hardware profile, and shepherding every build through its respective certification pipeline.

**PSVR was the hardest.** Sony's certification process is thorough and unforgiving by design, and the PSVR hardware had specific requirements around rendering, comfort, and performance that took real effort to meet consistently. Getting a social VR application through PlayStation certification was a different kind of challenge from the mobile platforms, and it taught me a lot about what "production-ready" actually means when a first-party platform is checking your work.

---

## Broader Development

After the initial porting work, I moved into general feature development across the whole application. vTime XR was a live product with a growing user base, which meant the work was varied and the bar for stability was real.

Areas I worked across included:

**Avatars.** The avatar system was central to the social experience. Users needed to feel represented and recognisable across all platforms and rendering conditions. I worked on avatar systems covering customisation, rendering, and the feel of seeing your own and other people's avatars in the shared space.

**User interaction.** The social layer of the app: how users found each other, joined sessions, interacted within them. Getting social interaction right in VR involves solving problems that don't exist in flat applications, from gaze-based attention to proxemic comfort in virtual spaces.

**Communication.** Voice and chat systems that worked reliably across a distributed multi-platform user base. Low latency and stability mattered more here than in most applications.

**Media viewing.** In-world video and image viewing so users could share content inside the virtual space. Getting video to perform acceptably across the range of hardware targets we supported, from a standalone mobile headset to a PC-connected VR system, required careful attention to decoding and streaming behaviour per platform.

Working across all of these areas in a live product, early in my career, gave me a breadth of experience that would have taken much longer to accumulate in a more narrowly-scoped role.

---

## What I Took Away

vTime XR taught me multi-platform development the hard way: not as a theoretical exercise but as a production requirement with real certification stakes and real users on every target. It also introduced me to the specific challenges of networked, social real-time applications, where state consistency, latency, and user experience are inseparable problems.

Starting my career on a platform that was genuinely ahead of its time, building technology that the larger industry is still catching up to, was a formative experience. The problems we were solving in that small team are problems that are now discussed at the scale of major platforms. I am glad I got to work on them early.
