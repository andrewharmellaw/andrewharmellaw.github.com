---
layout: post
title: "The Experience of Development<BR/><BR/>Chapter 1: The Fine Balance"
description: "Some description here."
category:
tags: [experience-of-development, mental-models, personal-experience]
---
{% include JB/setup %}

> “My phrases have to be crammed with information. They have to be crammed with content.  Not that a compromise is necessary. I think that so much of what I do with language is instinctive. You see I don’t really think of myself as creating the language, because language pre-exists; I just have to go where it is. I have to find it and it has to find me; and it’s as much about listening as it is about being active. You have an inner voice where the perfect novel is kept; the perfect sentence is kept; and your task is to mediate that to the world outside; and that’s the writer’s daily business. 
> 
> But of course you don’t think of it like that, you just type fast. And because you’re accustomed, because you’ve been doing this for years and years it’s like starting a song. The rhythm won’t falter. The internal logic of the prose won’t let you down. In the same way I think that with a long book you sometimes have to forget about structure and trust that it’s doing itself; and it is. 
> 
> But there’s such a fine balance between exerting absolute control, and letting go, so that the thing can happen.”<BR/><BR/>
Hilary Mantel interviewed by Michael Rosen for “Word of Mouth”, BBC Radio 4.

{% newthought "Each of us approaches software development" %} in our own individual way, based on both our understanding of the-thing-we-are-trying-to-create-slash-the-problem-we-are-trying-to-solve, and on our grasp of the tools with which we are working.

In doing so, three things--the mental models that we construct, the pre-existing mental models which we call upon, _and_ the means by which we mediate them to the outside world--are potentially called into question every time the code itself, that external manifestation of these mental models and bearers of our expectations, tells us what it can and can’t do.  It is at this nexus that our internal conception of the-thing-we-are-trying-to-create-slash-the-problem-we-are-trying-to-solve is confronted with an alternate reality; the reality of syntax and compilers and CPU registers and electrons. 

(For more detail on this loop, see part one of the introduction to this series: "[A Conjecture]({% post_url 2021-03-08-the-experience-of-development-a-conjecture %})". For detail on the nature of the models and some clarifying terminology, see the second part: "[Models, All the Way Down]({% post_url 2021-03-09-the-experience-of-development-models-all-the-way-down %})".)

<BR/>

{% maincolumn 'assets/img/lee-krasner-gaea.jpg' 'Image: Gaea (1966) by Lee Krasner, CC BY-SA 2.0, via G. Starke on <a href="https://www.flickr.com/photos/157267975@N08/41443933070">Flickr.com</a>' %}

{% newthought "The state of this alternate reality" %} is made manifest to us through our senses, and there then arises an overlaying of this input with our mental models and their predictions. The two are compared, and there are a variety of outcomes which can result. 

If what our models predict matches up with what we have sensed then the reward of having crafted a cloud castle that we have successfully mediated into the world outside hits. We _feel_ good. This is an experience of development. One of the primary ones which keeps us coming back for more.

But when the match fails, signaling that our mental-model hypothesis has been falsified--an all-too frequent occurrence in my experience--we react to this disparity, this “surprise”, in one of several ways. This too is the root of experiences of development. 

{% newthought "The type of reaction which arises" %} depends upon our confidence in which of the two should carry more weight. Do we trust what we expect? Or do we trust what we sense? Most importantly for our purposes here, how do we explain the discrepancies away? Let us enumerate the coping strategies here, for I propose that it is within these responses, conscious or unconscious, that many of the varieties of development experience lie.{% sidenote 'sn-id-whatever' 'I have tried to arrange these in order of magnitude, but clearly such an effort is very subjective.' %}

Firstly{% sidenote 'sn-id-whatever' 'And most mundanely.' %}, we can doubt that we effectively mediated our mental models to the outside world, to the code. Did we make a typo? Did we forget a setting? Did we press the wrong button?

Secondly we can _maintain_ our belief in the creation-solution mental-model we mentally constructed, but doubt that it is either a) a valid fit for the-thing-we-are-trying-to-create-slash-the-problem-we-are-trying-to-solve, or b) encodeable in our chosen language.  Is our mental-model valid, but unsuitable for this situation?

Thirdly we can doubt{% sidenote 'sn-id-whatever' '“Doubt” could just as easily be replaced with the word “question”, or with "become confused about". The only differences are in how conscious we are of this feeling. "Doubt" will do for now.' %} the integrity of the thing we constructed in our heads: the creation-solution mental-model{% sidenote 'sn-id-whatever' "See my previous post, 'Models, all the way down', for the classifications and definitions of 'creation-solution' and 'substrate' mental models." %}, assembled in our quest to make / solve. Did we make an error in our mental model construction as it pertains to our situation?

Fourthly we can doubt our substrate mental models - the ones representing our languages, libraries/frameworks and tool chain.{% sidenote 'sn-id-whatever' "Again, see my previous post 'Models, all the way down' for discussion of this." %} Here we likely go back to the documentation, and update one or more of these substrate mental models as a consequence. Do we misunderstand the tools we are working with?

Finally we can doubt what we are experiencing, and act as if it's not happening. This can directly lead to us being blind to things, not seeing them when they are there, because to “see” is to understand, even in a most basic way.

{% newthought "How frequently this mis-match occurs" %} is clearly important. But what strikes me as more worthy of investigation is how different people, at different times, and in different contexts experience, and consequently (re)act / respond, both intellectually and emotionally to all these outcomes, both predicted, and surprising.  It also seems significant to look into instances when the distinction between one possible coping strategy and another is unclear, or when it is _too clear_. 

I intend to go into this in future posts, but for now I will stop here and leave you to ponder your experiences in this area.  Does my formulation make sense?  Is it gibberish?  I know for one that it represents at most one half of the experience of development.  The other half? That is the subject of the next post, the experience itself of mentally constructing our cloud-castles.

P.S. I’d love to know what you think. If you have any thoughts or any other kind of feedback please reach out to me on [Twitter](https://twitter.com/al94781).  Thanks!