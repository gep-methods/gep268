---
layout: home
title: Just the Class
nav_exclude: true
permalink: /:path/
seo:
  type: Course
  name: Just the Class
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



- [announcements](announcements.md),
- a [course calendar](calendar.md),
- a [staff](staff.md) page,
- and a weekly [schedule](schedule.md).
