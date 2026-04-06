---
layout: page
title: Projects
permalink: /projects/
---

<style>
.engine-tabs {
  display: flex;
  gap: 0;
  margin-bottom: 30px;
  border-bottom: 2px solid #e0e0e0;
}

.engine-tab {
  padding: 10px 28px;
  cursor: pointer;
  border: none;
  background: none;
  font-size: 1em;
  font-weight: 600;
  color: #666;
  border-bottom: 3px solid transparent;
  margin-bottom: -2px;
  transition: color 0.2s ease, border-color 0.2s ease;
}

.engine-tab:hover {
  color: #333;
}

.engine-tab.active {
  color: #333;
  border-bottom-color: #333;
}

.engine-panel {
  display: none;
}

.engine-panel.active {
  display: block;
}

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

.empty-state {
  text-align: center;
  padding: 60px 20px;
  color: #999;
}

.empty-state img {
  width: 100%;
  max-width: 400px;
  height: 220px;
  object-fit: cover;
  border-radius: 8px;
  margin-bottom: 20px;
  display: block;
  margin-left: auto;
  margin-right: auto;
  filter: grayscale(40%) opacity(0.6);
}

.empty-state p {
  font-size: 1em;
  margin: 0;
}
</style>

<div class="engine-tabs">
  <button class="engine-tab active" onclick="switchTab(this, 'unity')">Unity</button>
  <button class="engine-tab" onclick="switchTab(this, 'unreal')">Unreal</button>
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
  <div class="empty-state">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Unreal_Engine_Logo.svg/400px-Unreal_Engine_Logo.svg.png" alt="Unreal Engine">
    <p>Unreal projects coming soon.</p>
  </div>
</div>

<script>
function switchTab(btn, engine) {
  document.querySelectorAll('.engine-tab').forEach(function(tab) {
    tab.classList.remove('active');
  });
  document.querySelectorAll('.engine-panel').forEach(function(panel) {
    panel.classList.remove('active');
  });
  btn.classList.add('active');
  document.getElementById('panel-' + engine).classList.add('active');
}
</script>
