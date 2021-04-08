---
layout: page
title: XP  of Dev
---
{% include JB/setup %}

{% newthought "Hello and welcome " %} to my posts on the experience of development.  

<ul>
  {% assign sorted = site.posts | sort: 'date' %}
  {% for post in sorted %}
    {% if post.category == "xp-of-dev" %}
      <li>
        {{ post.date | date: "%B %d, %Y" }} » <a href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>
