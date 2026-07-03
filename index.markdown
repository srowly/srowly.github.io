---
layout: page
title: ""
permalink: /
---

<style>
/* ── Bio ──────────────────────────────────────────────────── */
.bio {
  font-size: 1.05em;
  line-height: 1.7;
  margin-bottom: 40px;
  text-align: justify;
}

/* ── Filter bar ───────────────────────────────────────────── */
.filter-bar {
  display: flex;
  align-items: center;
  gap: 4px;
  margin-bottom: 32px;
  background: #f0f0f0;
  border-radius: 10px;
  padding: 4px;
  width: fit-content;
}

.filter-tab {
  display: inline-flex;
  align-items: center;
  gap: 7px;
  padding: 7px 16px;
  border-radius: 7px;
  border: none;
  background: transparent;
  color: #777;
  cursor: pointer;
  font-family: inherit;
  font-size: 0.85em;
  font-weight: 600;
  letter-spacing: 0.04em;
  transition: background 0.2s ease, color 0.2s ease, box-shadow 0.15s ease;
  white-space: nowrap;
}

.filter-tab img {
  width: 14px;
  height: 14px;
  opacity: 0.5;
  transition: opacity 0.2s ease;
}

.filter-tab.active {
  background: #fff;
  color: #111;
  box-shadow: 0 1px 4px rgba(0,0,0,0.12);
}

.filter-tab.active img {
  opacity: 1;
}

.filter-tab:hover:not(.active) {
  color: #333;
}

/* ── Project grid ─────────────────────────────────────────── */
.project-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 20px;
  padding: 0;
  margin: 0;
  list-style: none;
}

.project-grid-item {
  transition: opacity 0.2s ease;
}

.project-grid-item.hidden {
  display: none;
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

.project-grid-item[data-engine="unity"] a {
  border-top: 3px solid #157efb;
}

.project-grid-item[data-engine="unreal"] a {
  border-top: 3px solid #c0392b;
}

.project-grid-item a:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.project-grid-item .project-thumb-wrap img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  display: block;
  background-color: #f0f0f0;
}

.project-title-bar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 12px 14px;
  gap: 8px;
}

.project-title-bar h3 {
  margin: 0;
  font-size: 1.05em;
  font-weight: 600;
}

.engine-pill {
  font-size: 0.65em;
  font-weight: 700;
  letter-spacing: 0.07em;
  text-transform: uppercase;
  padding: 3px 8px;
  border-radius: 4px;
  white-space: nowrap;
  flex-shrink: 0;
}

.engine-pill.unity {
  background: #e8f1ff;
  color: #157efb;
}

.engine-pill.unreal {
  background: #fce8e8;
  color: #c0392b;
}

.type-pill {
  font-size: 0.65em;
  font-weight: 700;
  letter-spacing: 0.07em;
  text-transform: uppercase;
  padding: 3px 8px;
  border-radius: 4px;
  white-space: nowrap;
  flex-shrink: 0;
}

.type-pill.professional {
  background: #f0fdf4;
  color: #16a34a;
}

.type-pill.personal {
  background: #faf5ff;
  color: #7c3aed;
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

<p class="bio">I'm a Senior Programmer with a decade of experience in multi-platform game development. My primary expertise is <strong>Unity</strong> and <strong>C#</strong>, with growing experience in <strong>Unreal Engine</strong> and <strong>C++</strong> through ongoing personal projects. Most recently, I worked at vTime Games on an unannounced title in partnership with a major UK Publisher, before that on <strong>Border Bots VR</strong>, co-published with Team17 and released across Steam, PSVR2, and Meta Quest to strong reviews on all three platforms. I hold an <strong>MSc in Computer Science with Distinction</strong> from the University of Liverpool.</p>

<p class="bio">I'm currently <strong>open to new opportunities</strong>. If you're looking for an experienced programmer, I'd love to hear from you — feel free to get in touch!</a>.</p>

<div class="filter-bar">
  <button class="filter-tab active" data-filter="all" onclick="filterProjects(this, 'all')">All Projects</button>
  <button class="filter-tab" data-filter="unity" onclick="filterProjects(this, 'unity')">
    <img src="https://cdn.simpleicons.org/unity/111111" alt="">Unity
  </button>
  <button class="filter-tab" data-filter="unreal" onclick="filterProjects(this, 'unreal')">
    <img src="https://cdn.simpleicons.org/unrealengine/111111" alt="">Unreal Engine
  </button>
</div>

<ul class="project-grid">
  {% assign all_projects = site.projects | sort: "order" %}
  {% for project in all_projects %}
  <li class="project-grid-item" data-engine="{{ project.engine }}">
    <a href="{{ project.url | relative_url }}">
      <div class="project-thumb-wrap">
        <img src="{{ project.image_url | relative_url }}" alt="{{ project.title }}">
      </div>
      <div class="project-title-bar">
        <h3>{{ project.title }}</h3>
        <div style="display:flex; gap:5px; flex-shrink:0;">
          <span class="engine-pill {{ project.engine }}">{{ project.engine | capitalize }}</span>
          <span class="type-pill {{ project.type }}">{{ project.type | capitalize }}</span>
        </div>
      </div>
    </a>
  </li>
  {% endfor %}
</ul>

<script>
function updateLatestBadges(filter) {
  document.querySelectorAll('.badge-latest').forEach(function(b) { b.remove(); });
  var engines = filter === 'all' ? ['unity', 'unreal'] : [filter];
  engines.forEach(function(engine) {
    var first = document.querySelector('.project-grid-item[data-engine="' + engine + '"]:not(.hidden)');
    if (first) {
      var badge = document.createElement('span');
      badge.className = 'badge-latest';
      badge.textContent = 'Latest';
      first.querySelector('.project-thumb-wrap').appendChild(badge);
    }
  });
}

function filterProjects(btn, filter) {
  document.querySelectorAll('.filter-tab').forEach(function(t) { t.classList.remove('active'); });
  btn.classList.add('active');
  document.querySelectorAll('.project-grid-item').forEach(function(item) {
    if (filter === 'all' || item.dataset.engine === filter) {
      item.classList.remove('hidden');
    } else {
      item.classList.add('hidden');
    }
  });
  updateLatestBadges(filter);
}

updateLatestBadges('all');
</script>
