---
layout: home
title: Home/Schedule
nav_exclude: true
permalink: /:path/
seo:
  type: Course
  name: GEP 268
---

#  Topics and Methods in Global Environmental Policy I 

This two-course sequence is a topics and methods sequence focused on the determinants of human well-being over the short and long-run, with a focus on the interplay between environmental factors and human development. The skills relate to gaining facility with main methods that underlie quantitative research in the environmental social sciences, including econometric concepts related to causal inference, spatial data, machine learning, and data visualization. We expect students to enroll in both quarters of the sequence



{% assign instructors = site.staffers | where: 'role', 'Instructor' %}
{% for staffer in instructors %}
{{ staffer }}
{% endfor %}

{% assign teaching_assistants = site.staffers | where: 'role', 'Teaching Assistant' %}
{% assign num_teaching_assistants = teaching_assistants | size %}
{% if num_teaching_assistants != 0 %}

## Teaching Assistants

{% for staffer in teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %}

# Calendar

{% for module in site.modules %}
{{ module }}
{% endfor %}


