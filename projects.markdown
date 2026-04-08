---
layout: page
title: Projects
permalink: /projects/
---

<style>
/* ── Engine selector cards ────────────────────────────────── */
.engine-selector {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 14px;
  margin-bottom: 40px;
}

.engine-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 14px;
  padding: 32px 20px 28px;
  border-radius: 12px;
  border: 2px solid transparent;
  background: #111;
  color: #fff;
  cursor: pointer;
  font-family: inherit;
  transition: background 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease, border-color 0.2s ease, opacity 0.2s ease;
}

.engine-card.inactive {
  opacity: 0.6;
}

.engine-card:hover {
  background: #1e1e1e;
  transform: translateY(-3px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.18);
}

.engine-card img {
  width: 56px;
  height: 56px;
  display: block;
}

.engine-card-name {
  font-size: 0.85em;
  font-weight: 700;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: #ccc;
  transition: color 0.2s ease;
}

/* Per-engine active accent colours */
.engine-card[data-engine="unity"].active {
  border-color: #157efb;
  background: #0d1b2e;
  box-shadow: 0 8px 28px rgba(21, 126, 251, 0.2);
}

.engine-card[data-engine="unity"].active .engine-card-name {
  color: #5aaeff;
}

.engine-card[data-engine="unreal"].active {
  border-color: #b00;
  background: #1e0a0a;
  box-shadow: 0 8px 28px rgba(180, 0, 0, 0.2);
}

.engine-card[data-engine="unreal"].active .engine-card-name {
  color: #ff6b6b;
}

@media (max-width: 480px) {
  .engine-selector {
    grid-template-columns: 1fr;
  }
}

/* ── Panels ───────────────────────────────────────────────── */
.engine-panel {
  display: none;
}

.engine-panel.active {
  display: block;
}

/* ── Project grid ─────────────────────────────────────────── */
.project-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 20px;
  padding: 0;
  margin: 0;
  list-style: none;
}

.project-grid-item a {
  display: block;
  text-decoration: none;
  color: inherit;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.project-grid-item a:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.project-grid-item img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  display: block;
  background-color: #f0f0f0;
}

.project-grid-item h3 {
  text-align: center;
  padding: 15px 10px;
  margin: 0;
  font-size: 1.1em;
}

/* ── Latest badge ─────────────────────────────────────────── */
.project-thumb-wrap {
  position: relative;
}

.badge-latest {
  position: absolute;
  top: 10px;
  right: 10px;
  background: #22c55e;
  color: #fff;
  font-size: 0.65em;
  font-weight: 700;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  padding: 3px 8px;
  border-radius: 4px;
  line-height: 1.4;
  pointer-events: none;
}
</style>

<div class="engine-selector">
  <button class="engine-card active" data-engine="unity" onclick="switchEngine(this, 'unity')">
    <img src="https://cdn.simpleicons.org/unity/ffffff" alt="Unity logo">
    <span class="engine-card-name">Unity</span>
  </button>
  <button class="engine-card" data-engine="unreal" onclick="switchEngine(this, 'unreal')">
    <img src="https://cdn.simpleicons.org/unrealengine/ffffff" alt="Unreal Engine logo">
    <span class="engine-card-name">Unreal Engine</span>
  </button>
</div>

<div id="panel-unity" class="engine-panel active">
  <ul class="project-grid">
    {% assign unity_projects = site.projects | where: "engine", "unity" | sort: "order" %}
    {% for project in unity_projects %}
      <li class="project-grid-item">
        <a href="{{ project.url | relative_url }}">
          <div class="project-thumb-wrap">
            <img src="{{ project.image_url | relative_url }}" alt="{{ project.title }}">
            {% if forloop.first %}<span class="badge-latest">Latest</span>{% endif %}
          </div>
          <h3>{{ project.title }}</h3>
        </a>
      </li>
    {% endfor %}
  </ul>
</div>

<div id="panel-unreal" class="engine-panel">
  <ul class="project-grid">
    {% assign unreal_projects = site.projects | where: "engine", "unreal" | sort: "order" %}
    {% for project in unreal_projects %}
      <li class="project-grid-item">
        <a href="{{ project.url | relative_url }}">
          <div class="project-thumb-wrap">
            <img src="{{ project.image_url | relative_url }}" alt="{{ project.title }}">
            {% if forloop.first %}<span class="badge-latest">Latest</span>{% endif %}
          </div>
          <h3>{{ project.title }}</h3>
        </a>
      </li>
    {% endfor %}
  </ul>
</div>

<script>
function switchEngine(btn, engine) {
  document.querySelectorAll('.engine-card').forEach(function(c) {
    c.classList.remove('active');
    c.classList.add('inactive');
  });
  document.querySelectorAll('.engine-panel').forEach(function(p) { p.classList.remove('active'); });
  btn.classList.add('active');
  btn.classList.remove('inactive');
  document.getElementById('panel-' + engine).classList.add('active');
}

document.querySelectorAll('.engine-card:not(.active)').forEach(function(c) {
  c.classList.add('inactive');
});
</script>
