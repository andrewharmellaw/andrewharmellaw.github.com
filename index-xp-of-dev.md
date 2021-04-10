---
layout: page
title: XP  of Dev
---
{% include JB/setup %}

{% newthought "Hi there," %} you've found my posts on the experience of development.

The idea is that these _might_ one day turn into a pamphlet or a book. Hence the structure evident in the titles below.

Why am I doing this? I think we developers don't think enough about what it feel like to write code.  I believe that if we were exposed to this kind of information, it would change how we approach the act of development, how we learn, how we produce and consume code, how we think about our tool chains, and how we collaborate with others.

A quick note on reading. You can skip the Preface if you don't care how this came about. It will help to read both parts of the introduction to understand how everything which follows is framed.  After that, all the chapters ought to be largely standalone, or cross-linked as appropriate.

Please leave any feedback you might have, either in the Disqus comments below each page, or hit me up on [Twitter](https://twitter.com/al94781).  

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
