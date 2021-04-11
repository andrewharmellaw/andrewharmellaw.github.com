---
layout: page
title: Orgs
order: 3
---
{% include JB/setup %}

{% newthought "Thanks for browsing " %} my posts on organisations. 

I've been interested in orgs for some time. 

My interest was initially piqued by Bruce Eckel's [Reinventing Business](http://www.reinventing-business.com/), then subsequently via experiences running large consulting teams, and experimenting with trust organisation models. 

These days organisations and how they (dis)function comes up more and more frequently. 

As I learn, try and make sense of everything, and (hopefully) contribute to making things better, I'll post here.  I'm also keeping [my ideas/reading list/notes/puzzles on a separate page](organisation/orgs-notepad.html).

## Posts

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
