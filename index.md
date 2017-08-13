---
layout: page
title: Hi, Welcome
---
{% include JB/setup %}

Hi. Welcome to my Math{% sidenote 'sn-id-whatever' "Despite my better judgement, I'm going to refer to the topic as 'Math' rather than 'Maths'. Despite being from the UK, it just sounds better that way.  (Sorry.)" %} blog.  This is where I'm recording my journey to learn just enough mathematics to enrich my life.  Why would I want to do such a thing?  Let's start with a picture...

![Purity from XKCD](https://imgs.xkcd.com/comics/purity.png){:class="img-responsive"}

That [XKCD cartoon](https://imgs.xkcd.com/comics/purity.png) pretty much sums up my original motivation. Math is something I am _OK_ at (I have a Science degree, and it came up every now and then in Stats class, etc. etc.) but it's also something which I never felt I truly, deeply understood.  Yet, Math is fundamental to what I do for a profession (I'm a Software Engineer - and aspire to both understand what is happening in the rapidly-rising and interconnected fields of A.I., Machine Learning and Deep Learning, and also to read [Knuth's Concrete Mathematics](https://www.goodreads.com/book/show/112243.Concrete_Mathematics)) and essential if I am to be 100% productive in functional langauges such as [Scala](https://www.scala-lang.org/) and [Haskell](https://www.haskell.org/). I feel like I'm missing out on the full picture without it.{% sidenote 'sn-id-whatever' "Oh, and it's also something my kids are going to start asking me about very soon.  Dad-panic." %}


But it's not just the subject area itself which is important; there's also the fact that to grokk Math you need to take a different kind of approach to learning.  As a Psych-graduate{% sidenote 'sn-id-whatever' "Sorry, still channelling the wrong side of the pond..."%}, that's very interesting to me.  Learning Math for me is a great way to get meta, and observe and examine myself as I learn this incredibly (for me) challenging topic.  That's cool.

So why then am I blogging this? It's primarily for my own benefit - to explain something means you really have to understand it - but if occasionally I produce something which others find useful then that's an awesome side-effect.  That means I'd like to hear what you think, and especially if I got something wrong, or missed something, then please leave a comment.

So what will you find here?  Well, the first job on my journey was to find my bottom; i.e. the place where I could start to build my firm foundations.  That, it turns out, was with [Gelfand's "Algebra"](https://www.goodreads.com/book/show/20328259-algebra). A good check as to my progress with this was the Stewart's Calculus [Review of Algebra](http://www.stewartcalculus.com/data/ESSENTIAL%20CALCULUS%20Early%20Transcendentals/upfiles/ess-reviewofalgebra.pdf).  

The next job was to give myself an insight into a possible approach to this learning task.  I found my starter for that in [Oakley's "A Mind for Numbers"](https://www.goodreads.com/book/show/18693655-a-mind-for-numbers) and the concept of chunks.  As I write this I've completed my first in-depth read of Gelfand, and have also read Oakley.  My next task is to work back through Gelfand, applying the techniques from Oakley, confirming my coverage with Stewart's Review, and checking on the chunks I need to have formed as I go.  This process will consequently feed most of the written output.

The posts which follow will be focussed on one or more of the following four areas: 

The chunks themselves{% sidenote 'sn-id-whatever' "This is the majority of the content." %};

Meta-posts on the experience of chunking{% sidenote 'sn-id-whatever' "Typically I've slotted this into the content posts as it made most sense in context." %};

Review-posts looking back across a series to further consilidate things as appropriate;

Posts on the learning path I take (it was hard to find a place to start, and I want to share my thoughts on this, and also my path).

One more thing to point out. As this is a blog mainly used to drive my learning, I'll not hesitate to come back to previous posts and update / correct / enhance them as necessarily.
    
## Posts to Date
Here's a list of the posts so far:
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
