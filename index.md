---
layout: page
title: Hello & Welcome
tagline: What on Earth is Going on Here?
---
{% include JB/setup %}

## Welcome
Hi. Welcome to my latest blog.  What am I doing here? Learning mathematics, that's what.  (What are you doing here? I'll leave that up to you.)

![Purity from XKCD](https://imgs.xkcd.com/comics/purity.png){:class="img-responsive"}

But why this topic? It's something I am _OK_ at (I have a Science degree so it came up every now and then in stats class) but it's also something which I never felt I truly, deeply understood.  Yet, maths is fundamental to what I do for a profession (I'm a Software Engineer - and aspire to read [Knuth's Concrete Mathematics](https://www.goodreads.com/book/show/112243.Concrete_Mathematics)) and essential if I am to be 100% productive in functional langauges such as [Scala](https://www.scala-lang.org/) and [Haskell](https://www.haskell.org/). I feel like I'm missing out on the full picture without it.

(Oh, and it's also something my kids are soon going to start asking me about very soon.  Dad-panic.)

But it's not just the math itself which is important; there's also the fact that to grokk maths you need to take a different kind of approach to learning than you might apply to almost any other topic.  As a Psych-graduate, that's very interesting to me.  Learning maths for me is a great way to get meta, and observe and examine myself as I learn this incredibly (for me) challenging topic.

So why then am I blogging this? It's primarily for my own benefit - to explain something means you really have to understand it - but if occasionally I produce something which others find useful then that's an awesome side-effect.  That means I'd like to hear what you think, and especially if I got something wrong, or missed something, then please leave a comment.

So what will you find here?  Well, the first job on my journey was to find my bottom; i.e. the place where I could start to build my firm foundations.  That, it turns out, was with [Gelfand's "Algebra"](https://www.goodreads.com/book/show/20328259-algebra).  The next job was to give myself an insight into a possible approach to this learning task.  I found my starter for that in [Oakley's "A Mind for Numbers"](https://www.goodreads.com/book/show/18693655-a-mind-for-numbers) and the concept of chunks.  As I write this I've completed my first in-depth read of Gelfand, and have also read Oakley.  The next step is to work back through Gelfand, applying the techniques from Oakley, and checking on the chunks I need to have formed as I go.  This process will consequently feed most of the written output.

The posts which follow will be focussed on one or more of the following areas: 

* posts on chunks themselves, 
* meta-posts on the experience of chunking
* review-posts looking back across a series to further consilidate things as appropriate.
* posts on the learning path I take (it was hard to find a place to start, and I want to share my thoughts on this, and also my path)

Finally, and as this is a blog mainly used to drive my learning, I'll not hesitate to come back to previous posts and update / correct / enhance them as necessarily. I'll flag this clearly when I do so however.
    
## Posts to Date
Here's a list of the posts so far:
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>