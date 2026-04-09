---
layout: project
title: "Pyramid Caveman Battle Arena"
image_url: "/assets/images/pcba-header.jpg"
engine: unity
order: 5
type: personal
hide_header_image: true
---

<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 0 0 28px;">
  <source src="/assets/video/pcba.mp4" type="video/mp4">
</video>

*"Don't forget your mission Ug", the words kept echoing in his head as the time machine powered up. "We didn't unfreeze you from that squirrel infested snowball for nothing, we need you to recover the Sceptre of Khufu. Don't ask why."*

*The time portal opened, it was time for Ug to step through. "Due to the nature of the time portal, we'll only be able to supply you with technology of the era, so be careful. Competing agents are likely to be there."*

*Ug sighed, shook his head, then turned to the camera. Looking straight into it he said: "I'm getting too* ancient *for this." Exit through time portal.*

---

## The Game

Pyramid Caveman Battle Arena is a multiplayer first-person arena shooter. Cavemen battle for control of a pyramid using rocks, spears, and — naturally — a VCR launcher that fires VHS tapes. The jam theme was ancient technology, and we leaned into it.

The game runs on a host/client setup and was built by a team of five: two artists and three programmers. This was a deliberate step up in ambition from our previous jam: we wanted to try something genuinely difficult and go multiplayer.

---

## The Netcode

I worked primarily on the networking alongside one of the other programmers. We used Unity's networking layer, which at the time was the standard choice for Unity multiplayer but was widely known to be demanding to work with. It had real quirks, the documentation only got you so far, and the gap between "it compiles" and "it actually works across two machines" was wider than any of us expected.

We got it working. Players could host and join sessions, move around the pyramid, and hit each other with ancient projectiles. For a jam game built by programmers still finding their feet with networked systems, that felt like a genuine achievement. It was my first real introduction to the problems of networked game state, and the experience of fighting through it under a deadline taught me more about multiplayer programming than any tutorial would have.

---

## The Highlight

A YouTuber ended up playing the game with a friend and posted the session. Watching it with the team was one of those moments you don't forget — seeing someone outside your circle pick up something you built and have fun with it. She spoke about it favourably, which meant a lot.

<a href="https://youtu.be/ZHYBCFbdIKA?t=47" target="_blank" rel="noopener" style="display:inline-block; margin: 8px 0 24px; padding: 10px 20px; background: #ff0000; color: #fff; border-radius: 6px; text-decoration: none; font-weight: 700; font-size: 0.9em;">Watch on YouTube</a>

---

## Comments from the Jam

> *"Really good! GG for this game, all your team!"* — adrenalineChallenger

> *"Nice, a multiplayer FPS. That's quite rare."* — Strike

> *"Bonus points for the VCR launcher."* — Strike

> *"Simple graphics and interface but a nice game overall."* — TeamEagle

> *"Cool game guys!"* — jonask

The most honest feedback came from the players who couldn't find an opponent to join — the nature of a multiplayer game submitted to a jam where most people are playing solo. The server dependency was a real limitation in that context. The physics quirks (yes, you could climb to the top of the pyramid) were unintended, but it turned out people enjoyed them.
