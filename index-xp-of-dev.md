---
layout: page
title: XP  of Dev
order: 2
---
{% include JB/setup %}

{% newthought "Hi there," %} you've found my posts on the experience of development.

The idea is that these _might_ one day turn into a pamphlet or a book. Hence the structure evident in the titles below.

Why am I doing this? _We developers don't think enough about what it feels like to write code._  I believe if we were exposed to this topic more it would change how we approach the act of development, it would change how we learn, it would change how we produce and consume code, it would change how we think about our tool chains, and it would change how we collaborate with others.

_It would, in short, change how we went about development._

A quick note on reading-order. You can skip the Preface if you don't care how this came about. It will however help to read both parts of the Introduction to understand how everything which follows is framed.  After that, all the chapters ought to be largely standalone, or cross-linked as appropriate.

## Posts

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

## Before I go...
Please leave any feedback you might have, either in the Disqus comments below each page, or hit me up on [Twitter](https://twitter.com/al94781). 

I'm also keeping [my ideas/reading list/notes/puzzles on a separate page](xp-of-dev/xp-of-dev-notepad.html) if you want to see what might be in the pipes... 

