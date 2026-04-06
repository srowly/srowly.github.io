---
layout: home
title: Sam Rowlands
---

<style>
.hero {
  padding: 48px 0 40px;
  border-bottom: 1px solid #e0e0e0;
  margin-bottom: 40px;
}

.hero h1 {
  font-size: 2em;
  margin: 0 0 8px;
}

.hero .hero-subtitle {
  font-size: 1.1em;
  color: #555;
  margin: 0 0 20px;
}

.hero p {
  max-width: 640px;
  color: #444;
  line-height: 1.7;
  margin: 0 0 24px;
}

.hero-links {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.hero-link {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 8px 16px;
  border-radius: 6px;
  text-decoration: none;
  font-size: 0.9em;
  font-weight: 600;
  border: 1px solid #ccc;
  color: #333;
  transition: border-color 0.2s, background 0.2s;
}

.hero-link:hover {
  border-color: #888;
  background: #f7f7f7;
}

.section-heading {
  font-size: 1.3em;
  font-weight: 700;
  margin: 0 0 24px;
}

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
  transition: background 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease, border-color 0.2s ease;
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
</style>

<div class="hero">
  <h1>Sam Rowlands</h1>
  <p class="hero-subtitle">Senior Programmer · Unity · Unreal Engine</p>
  <p>A decade of experience in multi-platform video game development, specialising in C# and Unity. Currently expanding into Unreal Engine and looking for new opportunities.</p>
  <div class="hero-links">
    <a class="hero-link" href="https://github.com/srowly" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.38.6.11.82-.26.82-.58v-2.03c-3.34.72-4.04-1.61-4.04-1.61-.54-1.38-1.33-1.75-1.33-1.75-1.09-.74.08-.73.08-.73 1.2.09 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.48 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02 0 2.04.13 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.22.7.83.58C20.57 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
      GitHub
    </a>
    <a class="hero-link" href="https://www.linkedin.com/in/srowlands1" target="_blank">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M20.45 20.45h-3.55v-5.57c0-1.33-.03-3.04-1.85-3.04-1.85 0-2.14 1.45-2.14 2.94v5.67H9.36V9h3.41v1.56h.05c.48-.9 1.64-1.85 3.37-1.85 3.6 0 4.27 2.37 4.27 5.45v6.29zM5.34 7.43a2.06 2.06 0 1 1 0-4.12 2.06 2.06 0 0 1 0 4.12zM7.12 20.45H3.56V9h3.56v11.45zM22.22 0H1.77C.79 0 0 .77 0 1.73v20.54C0 23.23.79 24 1.77 24h20.45c.98 0 1.78-.77 1.78-1.73V1.73C24 .77 23.2 0 22.22 0z"/></svg>
      LinkedIn
    </a>
    <a class="hero-link" href="/about/">About me</a>
  </div>
</div>

<p class="section-heading">Projects</p>

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
    {% for project in site.projects %}
      {% if project.engine == "unity" %}
      <li class="project-grid-item">
        <a href="{{ project.url | relative_url }}">
          <img src="{{ project.image_url | relative_url }}" alt="{{ project.title }}">
          <h3>{{ project.title }}</h3>
        </a>
      </li>
      {% endif %}
    {% endfor %}
  </ul>
</div>

<div id="panel-unreal" class="engine-panel">
  <ul class="project-grid">
    {% for project in site.projects %}
      {% if project.engine == "unreal" %}
      <li class="project-grid-item">
        <a href="{{ project.url | relative_url }}">
          <img src="{{ project.image_url | relative_url }}" alt="{{ project.title }}">
          <h3>{{ project.title }}</h3>
        </a>
      </li>
      {% endif %}
    {% endfor %}
  </ul>
</div>

<script>
function switchEngine(btn, engine) {
  document.querySelectorAll('.engine-card').forEach(function(c) { c.classList.remove('active'); });
  document.querySelectorAll('.engine-panel').forEach(function(p) { p.classList.remove('active'); });
  btn.classList.add('active');
  document.getElementById('panel-' + engine).classList.add('active');
}
</script>
