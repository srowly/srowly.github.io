---
layout: page
title: Projects
permalink: /projects/
---

<style>
.project-grid {
  display: grid;
  /* This creates 2 columns on medium screens and 1 column on small screens */
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
  height: 200px; /* Fixed height for a uniform grid */
  object-fit: cover; /* This crops the image to fit without stretching */
  display: block;
  background-color: #f0f0f0; /* Placeholder color */
}

.project-grid-item h3 {
  text-align: center;
  padding: 15px 10px;
  margin: 0;
  font-size: 1.1em;
}
</style>

<ul class="project-grid">
  {% for project in site.projects %}
  <li class="project-grid-item">
    <a href="{{ project.url | relative_url }}">
      <img src="{{ project.image_url | relative_url }}" alt="{{ project.title }}">
      <h3>{{ project.title }}</h3>
    </a>
  </li>
  {% endfor %}
</ul>