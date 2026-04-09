---
layout: project
title: "Soul Link"
image_url: "/assets/images/soul-linked-header.png"
engine: unity
order: 4
hide_header_image: true
---

<video autoplay loop muted playsinline style="width:100%; border-radius:8px; margin: 0 0 28px;">
  <source src="/assets/video/soul-link.mp4" type="video/mp4">
</video>

*Possessed by a mysterious power, the sasquatch must traverse the labyrinth to win his freedom. Harness the awesome power of the soul link, make your enemies' strength your own! Left click to link your soul to an enemy, let him share your pain!*

---

## The Game

Soul Link was built in 48 hours for a game jam, by a team of four: two programmers, two artists. The jam theme was "unconventional weapon," and after a brainstorming session we landed on the idea of the player's weapon being their own suffering: a soul link that bound an enemy to the player, causing anything that happened to the player to happen to them instead.

The mechanic opened up a surprisingly rich set of puzzle possibilities. In the game you can link to the boulder blocking your path and take fall damage to shatter it. Link to a frozen enemy and take fire damage to thaw it. Link to an enemy standing in fire and walk through it unharmed, the damage passing through the link instead. The weapon is not a sword or a gun — it is consequence, redirected.

Programming the enemy types was one of the most enjoyable parts of the project. Each enemy had to be designed around a specific damage type and vulnerability, so the puzzle design and the code were tightly coupled from the start. Getting that to feel coherent in 48 hours, across a split team working in parallel, was a genuine challenge and a genuinely good time.

This was also one of my first experiences collaborating on a project as a group: coordinating through source control, dividing up gameplay features, and integrating art and code under a hard deadline. It was a formative experience in how to actually ship something with other people.

---

## Jam Results

Out of **2,821 entries**, Soul Link placed:

<style>
.jam-results {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 10px;
  margin: 20px 0 32px;
}
.jam-result {
  background: #111;
  border: 1px solid #2a2a2a;
  border-radius: 8px;
  padding: 12px 16px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.jam-result .category {
  font-size: 0.78em;
  color: #888;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}
.jam-result .rank {
  font-size: 1em;
  font-weight: 700;
  color: #fff;
}
.jam-result .score {
  font-size: 0.78em;
  color: #22c55e;
  font-weight: 600;
}
</style>

<div class="jam-results">
  <div class="jam-result">
    <div>
      <div class="category">Theme</div>
      <div class="score">4.00</div>
    </div>
    <div class="rank">#84</div>
  </div>
  <div class="jam-result">
    <div>
      <div class="category">Innovation</div>
      <div class="score">3.72</div>
    </div>
    <div class="rank">#138</div>
  </div>
  <div class="jam-result">
    <div>
      <div class="category">Fun</div>
      <div class="score">3.39</div>
    </div>
    <div class="rank">#264</div>
  </div>
  <div class="jam-result">
    <div>
      <div class="category">Overall</div>
      <div class="score">3.50</div>
    </div>
    <div class="rank">#279</div>
  </div>
  <div class="jam-result">
    <div>
      <div class="category">Audio</div>
      <div class="score">3.24</div>
    </div>
    <div class="rank">#301</div>
  </div>
  <div class="jam-result">
    <div>
      <div class="category">Graphics</div>
      <div class="score">3.67</div>
    </div>
    <div class="rank">#331</div>
  </div>
  <div class="jam-result">
    <div>
      <div class="category">Mood</div>
      <div class="score">3.19</div>
    </div>
    <div class="rank">#431</div>
  </div>
</div>

Strong placements in Theme and Innovation reflected what the mechanic was doing: the soul link was a direct and legible answer to the jam brief, and reviewers responded to that. The Graphics score was a credit to the art team working under the same deadline.

---

## Comments from the Jam

> *"Nice entry with some graphics which are great and a fantastic mood."* — Geckoo1337

> *"The graphics were wonderful. Nice job!"* — Figglewatts

> *"Nice game, cool graphics and very good puzzles, congrats!"* — Hyoga-3D

> *"Love the art style in this game, and a very interesting game mechanic!"* — DeadFragment

> *"Really original gameplay. Nice entry."* — elpaulo

> *"I definitely like the graphics and the strange world you've created. The mechanic may have some interesting aspects to it if you develop it some more."* — Chaoseed

Several players mentioned struggling to figure out the mechanic at first, which was fair: with 48 hours on the clock, we didn't get a chance to create a proper tutorial. If we were to take the project further, improving the intro and easing players into the soul link would be the obvious first step.
