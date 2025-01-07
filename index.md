---
layout: home
title: Home/Schedule
nav_exclude: true
description: A week-to-week description of the content covered in the course.
permalink: /:path/
last_modified_date: "Mon Jan  6 22:18:23 PST 2025"
seo:
  type: Course
  name: GEP 268
---

[Ed Stem](https://edstem.org/us/courses/70029/discussion){:target="_blank" .btn .btn-ed}
[Gradescope](https://www.gradescope.com/courses/929063){:target="_blank" .btn .btn-gradescope}
[Class calendar](https://outlook.office365.com/owa/calendar/cc55d818b33344ae9125c8fd612aec32@stanford.edu/6dc2de74798b418985749721445e976517622507776261428663/calendar.html){:target="_blank" .btn .btn-calendar}

#  Topics and Methods in Global Environmental Policy I
{: .mb-2 }
Stanford Doerr School of Sustainability, Winter 2025
{: .mb-0 .fs-6 .text-grey-dk-000 }

This two-course sequence is a topics and methods sequence focused on the
determinants of human well-being over the short and long-run, with a focus on
the interplay between environmental factors and human development. The skills
relate to gaining facility with main methods that underlie quantitative
research in the environmental social sciences, including econometric concepts
related to causal inference, spatial data, machine learning, and data
visualization. We expect students to enroll in both quarters of the sequence


<div>
{% assign instructors = site.staffers | where: 'role', 'Instructor' %}
 <div class="role">
 {% for staffer in instructors %}
 {{ staffer }}
 {% endfor %}
 </div>
</div>

## Teaching Assistant

{% assign teaching_assistants = site.staffers | where: 'role', 'Teaching Assistant' %}
{% assign num_teaching_assistants = teaching_assistants | size %}
{% if num_teaching_assistants != 0 %}


{% for staffer in teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %}

## Schedule

{% for module in site.modules %}
{{ module }}
{% endfor %}
