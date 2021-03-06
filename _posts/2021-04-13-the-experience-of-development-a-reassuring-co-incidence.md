---
layout: post
title: "Chapter 3: A Reassuring Co-Incidence"
description: "Some description here."
category: xp-of-dev
tags: [experience-of-development, mental-models, personal-experience, physics]
comments: true
---
{% include JB/setup %}

{% maincolumn 'assets/img/wave-3488466_1920.jpg' 'Image: Wave Particles Physics by Gerd Altmann, Pixbay licence (free to use) on <a href="https://pixabay.com/illustrations/wave-particles-physics-abstract-3488466//">PixBay.com</a>' %}

_NOTE: This post is part of my extended series on the "Experience of Development". If you've not read the two-part introduction yet, it's perhaps a good idea to hop over and check out [part 1]({% post_url 2021-03-08-the-experience-of-development-a-conjecture %}) and [part 2]({% post_url 2021-03-09-the-experience-of-development-models-all-the-way-down %}) before continuing._

{% newthought "I wasn't sure" %} if my ideas regarding the experience of development would make sense to anyone else.  But then I saw a post on twitter from [Sergey Bykov](https://twitter.com/sergeybykov/status/1367696464969797633?s=12) and I realised there were at least two of us thinking along similar lines.  His tweet was something he said in [a 2015 Microsoft article](https://www.microsoft.com/en-us/research/blog/orleans-simplifies-development-scalable-apps-cloud/) (the _italics_ are mine):

> "People tend to equate computer science with mathematics, but I think of programming as more similar to physics," he explains. "[...] I learned that when you have a problem in physics, first you must understand what pieces are involved, how they connect and how they influence each  other. You build a _mental model_ and only then would you try and solve the problem _and eventually apply math_.
> 
> "_When you program systems, it's the same. You identify the pieces involved, how they interact, build a model, and then you apply mathematics and programming. In reality you spend a very small percentage of time writing code and more time figuring out why things don't work as intended._"

W.o.w.  

It was all there, in microcosm, but still all there.  The problem-solution mental model which is constructed using substrate models. Even the conveying of those models to the outside world in the form of code, and the subsequent wrestling with the difference between what you thought would be the result, and what the result turned out to be.

In the article he was quoted in Sergey went on to use this realisation as a jumping off point to argue for simpler cloud programming models.  My goal is to take this in a different direction. I want to interrogate further these elements which Sergey and I have both identified and see what more we can learn from them about the act of development and our experience of it.  Perhaps this will also lead to improved programming models and languages, libraries and frameworks, but I really want to give we developers a better understanding of what happens to us when we code.

{% newthought "It was thinking" %} about this specifically human, and consequently personal, aspect which made me pay closer attention to what Sergey described.  While all the elements of my conjecture, as well as the supporting concepts, were there, was it all completely relatable?

Well no. And the differences between us are, I think, worth examining. I know this because of the interviews which I did with various friends from the Winter Tech Forum and their personal insights which they shared with me. I learned then that what you might think we would all do in the same way, is in fact a source of great variety.

{% newthought "The first thing" %} which jumps out from Sergey's quote is the suggestion (although I could be interpreting it a little literally) of a good deal of up-front mental-model manipulation - what he describes as the selection, connection, and interaction - all prior to his writing any code.  I don't doubt that this is how he does it.  People I have interviewed have articulated similar approaches.  If I were to describe this way of approaching things I might use verbs such as "construct", "invent", "shape" and "create".  It is as if Sergey and his ilk have an intimate knowledge and grasp of their substrate mental models, and from those, carefully combine these consciously and methodically to get to the result they need.

I however go about things in a different way.  When I code I always feel as if I am working somewhat in the dark. Verbs I might use for a significant part of my process are "discover", "find", "explore", and "recognise". My approach to things has more in common with starting with a large lump of clay and then slowly but surely paring pieces away, sub-dividing, cleaving, differentiating, until the detail I need reveals itself.

Now it should be made clear that neither of these is better than the other.  Nor am I suggesting that these are the only two types of experience of this aspect, nor that they even comprise the vast majority of the experience of developing code.  But I do believe it is very interesting to think about why these differences might arise.  Does it spring from how we are most comfortable thinking creatively to make things or solve problems?  Does it highlight a more structured versus free-form ways of approaching matters? Might we argue one is more scientific and compositional while the other more sketchy and reducing?  Could it indicate a predeliction for verbal or visual thinking?  Or linear compared to non-linear thinking?  It's interesting to consider all these possibilities, but not yet, there are other posts for that, and we have another personal difference between myself and Sergey to consider.

{% newthought "This second difference" %} is in the getting of the mental models into the outside world.  Sergey seems to indicate he first thinks in terms that seem completely mental, and then, in a distinctly separate step expresses this by "applying mathematics and programming". It sounds here as if (and again I could be way off base) the constructed problem-solution model is, for Sergey, truly an abstract one. That is to say, he's not thinking in the constructs of the language or framework which he is going to use to encode his models outside of his mind.  The conveying seems to be both a distinct step, and an act of translation into a specific syntax.

I however, am not so pure, nor so distinct.  I still think largely in the constructs of the language which best represents the programming model I am targetting. For example, if I'm writing object-oriented, memory-managed code, there will be a lot of Java constructs and Java libraries swilling around in my mind.

So what do I mean by "not so distinct?"  I mean, frequently I will use the act of drafting the code, of working with the syntax itself, on the screen in front of me, to help push along my mental-model manipulations.  Sometimes this will be simply to get the fast feedback of the red squiggly lines telling me my conception won't compile; but other times there is something about seeing the constructs out there on the screen in front of me, with their names and their syntax-highlighted, which gives me a clarity I need to lock something down and move to the next element.

In the first difference I shared what I knew from interviews: many folks think far more like Sergey in that regard and far less like me. Is it the same with this second difference?  Of course. And just as before, I am in no way arguing for one way being superior to another, nor for these two approaches being the only ways it is done. 

So again, what might these external manifestations of difference lead us to uncover?  I believe that my reliance on the syntax more directly, and consequently on much, much tighter loops out of my head and into the IDE, are due to a far fuzzier way of thinking.{% sidenote 'sn-id-whatever' "It could also be because I'm just not as good a developer as many others I've worked with and spoken to." %} One thing I do know is that as I code, my mind frequently transitions rapidly from small-scale to large-scale then back again, and this means if I don't flush my buffers to the outside world regularly I am in danger of losing things - of losing pieces of mental model.  

You can see this very clearly when I code.  I'm always impressed when people write their functions starting at the top and working their way down to the bottom.  I meanwhile jump around, between classes, between functions, between lines in a function.  I drop TODOs everywhere when ideas come to me, and consequently the act of tidying my code is frequently an explicitly separate and significant step.{% sidenote 'sn-id-whatever' "Pairing with me can be quite a labor of love." %} Does it work for me?  Yes, it seems to. Does it work for everyone?  Definitely not.{% sidenote 'sn-id-whatever' "I've had feedback on just this specific point." %}

{% newthought "Having looked a little" %} at the two differences, what is _most_ striking however is the similarity between Sergey's "figuring out why things don't work as intended" and [my conjecture]({% post_url 2021-03-08-the-experience-of-development-a-conjecture %}) that the _experience_ of this surprise is where much (though not all) of the emotion experienced in development comes from.  How so?  It doesn't seem very significant when expressed how Sergey puts it does it.

Well, what is exciting to me, is that despite the _significant_ differences in thinking and coding styles which I believe exist between Sergey and I (and backed up by experiences I've had with others) Sergey still thinks this mismatch aspect worthy to be called out.  In fact, it's so important that it justifies his proposal for a new approach to cloud-computing models.  If someone who relies on syntax and code and the external loop as little as Sergey thinks the mis-match is important, then thats good enough for me.

That's it for this post. I'm going to keep sharing these musings, and hopefully also begin to bring in some specific case-studies of how development is experienced by specific individuals. In the meantime I’d love to know what you think. If you have any thoughts or any other kind of feedback please leave a comment below, or reach out to me on [Twitter](https://twitter.com/al94781). Thanks!