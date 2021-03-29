---
layout: post
title: "The Experience of Development<BR/><BR/>Introduction Part 1: A Conjecture"
description: "Some description here."
category:
tags: [experience-of-development, conjecture, brooks, friston, mental-models, sky-castles]
---
{% include JB/setup %}

{% newthought "This is part one" %} of a two-part introduction. Taken together, my intention is to describe a means of looking at the experience of development.  It is my hope that they provide an explanation for how it feels to write code.

This part is more formal - scientific even - but I have no empirical proof, only personal experience and subjective anecdote.  Despite this I intend it to be taken seriously, and so have attempted to lay it out in an appropriate style.  The second part, in the following post, is on shakier ground, and so is written in a more conversational style.<BR/><BR/>

{% maincolumn 'assets/img/gifu_castle_in_sea_clouds.jpg' 'Image: Gifu City, CC BY 4.0, via Wikimedia Commons' %}

_{% newthought "It is my conjecture" %} that the experience of development, that is to say, how it feels to write code, arises entirely from our responses to convergences of, and differences between, two things: on the one hand our mental models of our code, and on the other, our perceptions arising from the code as it physically exists, outside our heads, on computers._

I believe that such a view of our individual and collective experiences with code is a fruitful one, and intend to share both personal insights, and those of others, derived from looking through this lens. However, before I move on to the wealth of perspectives and explanations made possible by this thesis, I want to share why I have come to this conclusion; I want to introduce the ideas from an area of neuroscience pioneered by [Karl Friston](https://en.wikipedia.org/wiki/Karl_J._Friston), and I want to travel there via one of the great writers on the task of programming, [Fred Brooks](https://en.wikipedia.org/wiki/Fred_Brooks):

> The programmer, like the poet, works only slightly removed from pure thought-stuff. [They] build castles in the air, from air, creating by exertion of the imagination.
<br/><cite>Fred Brooks, The Mythical Man-Month</cite>

The fact this decades-old quote still resonates today is because it feels so true to us the  practitioners. I also intend to take licence from it to talk about the experience of development. There is a problem however; the act of development is conceived by a great many of us practitioners as a highly rational act. Is it possible to look through a lens which allows us to cater for this coldly logical aspect without losing our goal? the goal of describing a way to also address the softer, more esoteric side? 

I am going to make such an attempt; an attempt which considers these imagination-castles (less prosaically admittedly) as elaborate, self-consciously-constructed mental models. Might it prove fruitful? Friston’s neuroscience here provides not only a useful perspective on _mental models_, but also brings in the other aspect under consideration, _their place in experience_.  

{% newthought "The first step" %} is to consider his take on mental models and their function as described by Hohwy in his book "The Predictive Mind":

> The brain is a sophisticated hypothesis-testing mechanism, which is constantly involved in minimizing the error of its predictions of the sensory input it receives from the world. […] The hypothesis [is] generated on the basis of our model of the world, and the sensory deliverances coming from the world.
<br/><cite>Jakob Hohwy, The Predictive Mind, pp. 1-2</cite> 

Let’s flip these statements round so they take us in the right direction.  Friston's theory posits that our mental models represent how we believe the world to be, and that we are constantly comparing the predictions these models make against the sense-data the world provides.  

{% newthought "With this in place" %} we can now bring in a second element from Friston (again summarised by Hohwy) that brings us another step closer to our conjecture. When our expectations fail to match up with the world-as-sensed we experience surprise, and when we are surprised we respond:

> [P]rior beliefs [are] harnessed in an internal model to generate predictions of the sensory input and then revise the model’s prediction (hypothesis), or change the input, to minimise the prediction error [...]. This [...] adds [an] all-important predictive element. [...] If all this is done in a reasonably optimal fashion, the resulting hypothesis must then be close to the real world’s state of affairs, at least as signalled in the sensory input: nothing is a surprise.
<br/><cite>Jakob Hohwy, The Predictive Mind, pp. 44</cite>

The concept of “surprise” (or “surprisal”) here is important.  Hohwy describes its function:

> Surprisal is a measure of how surprising it would be to observe the system in question in certain conditions, or having a certain sensory input. It is clear that this can only be assessed relative to its normal state, the state we are most likely to find it in.
<br/><cite>Jakob Hohwy, The Predictive Mind, pp. 84</cite>

Once again we can assemble this in terms as they relate to the conjecture.  Our internal mental models can be considered as our beliefs of what should be, and the comparison of these beliefs against sensory feedback from the as-perceived outside world lead to a psychological response - characterised as degrees of “surprise” depending upon how close the hypothesis is to the data.  

{% newthought "We’re almost there," %} but these descriptions still feel so cold. Despite what has been presented, a reader could still confidently argue that we have not presented enough evidence of a place for  recognisable _feelings_, for psychological _experiences_. Hohwy offers us a final step:

> The prediction-error minimization idea [...] (Friston 2010) has extreme explanatory scope. [...] Given this [...] it seems reasonable to anticipate, even if only briefly, what it will have to say about further, deeper aspects of mentality.
<br/><cite>Jakob Hohwy, The Predictive Mind, pp. 241</cite>

He elaborates:

> In some sense, emotion arises as a kind of perceptual inference on our own internal states. [...] Emotions then arise as interoceptive [the sense of the internal state of the body, both conscious and non-conscious] prediction error is explained away. [...] We should expect that sometimes it is our expectations for arousal or interoceptive precision that determine where we end up emotionally.
<br/><cite>Jakob Hohwy, The Predictive Mind, pp. 242-3</cite>

Let us bring this one last time into our sphere. Hohwy believes{% sidenote 'sn-id-whatever' 'I think with some justification'%} that the consideration of the human drive to minimise prediction-error in our mental models, as manifested by the surprise arising, can be taken broadly to explain many phenomena. One of these is the wholly-internal concept of feelings, of emotion, specifically as means to “explain away” this generic “surprise” which arises from experiencing prediction errors.<BR/><BR/>

{% maincolumn 'assets/img/clouds.jpg' 'Image: Gaius Cornelius, CC BY-SA 4.0, via Wikimedia Commons' %}

{% newthought "We now have enough" %} to summarise: if Brooks is right, when we develop software, we construct mental castles, or more matter-of-factly, elaborate mental models. In accepting this, we also acknowledge that these castles are expressed — conveyed somehow — to the outside world and into code; and that when the models arrive in the outside world, that realm outside our minds, they must compile, the tests must pass, the executables must run, and they must achieve the goals we’ve set for them, in as many circumstances as we can conceive. _They must, in short, meet our predictions; they must operate as we expect them to._ 

It is my conjecture therefore that the mental models we have created and subsequently mediated to the outside world in the form of code must match our reality because we expect them to; and when they don’t, we are surprised and it is our individual, nuanced, situation-dependent grappling with this surprise which gives rise to our equally individual experiences of development.

{% newthought "In my next post," %} "[The Experience of Development - Introduction Part 2: Models, All the Way Down]({% post_url 2021-03-09-the-experience-of-development-models-all-the-way-down %})" I introduce the other important element we need in place before we look through this lens: a deeper consideration of the nature of our mental models; of what they are composed, and how we manipulate these thought-units.
 
P.S. I’d love to know what you think. If you have any thoughts or any other kind of feedback please reach out to me on [Twitter](https:/twitter.com/al94781). Thanks!