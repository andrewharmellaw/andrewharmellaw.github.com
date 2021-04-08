---
layout: page
title: Orgs
---
{% include JB/setup %}

{% newthought "Hello and welcome " %} to my posts on organisations.  

<ul>
  {% assign sorted = site.posts | sort: 'date' %}
  {% for post in sorted %}
    {% if post.category == "organisation" %}
      <li>
        {{ post.date | date: "%B %d, %Y" }} » <a href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>
