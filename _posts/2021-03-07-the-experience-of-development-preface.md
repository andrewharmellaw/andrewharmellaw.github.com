---
layout: post
title: "The Experience of Development<BR/><BR/>Preface"
description: "Some description here."
category:
tags: [experience-of-development, friston, mental-models]
comments: true
---
{% include JB/setup %}

{% maincolumn 'assets/img/mt-crested-butte.jpg' 'This post, and those which follow it, are dedicated to Carl Quinn, and the rest of the Java Posse. Without you none of this would ever have happened.  You inspired me.  For that I am eternally grateful. 

Thank you. 🙏 <BR/><BR/>Image: Mt Crested Butte, Colorado, USA, taken by the author' %}

{% newthought "I first thought" %} about the experience of development in February 2014, shortly after watching [Joe Sondow](https://twitter.com/joesondow) lead an afternoon hackathon session at the then-[Java Posse Roundup](http://javaposse.com/) Open Spaces in Crested Butte, Colorado. 

Joe was taking us through the [Twitter Bootstrap](https://getbootstrap.com/) framework. When we all started, Joe with his MacBook plugged into [Bruce Eckel’s](https://twitter.com/BruceEckel) flat-screen, the rest of us watching from the various sofas and easy-chairs dotted around the room, none of us knew much about it. 

As he went about his process of deciphering how Bootstrap was constructed and how it worked, Joe narrated his thought process. Some of us pitched in now and then with suggestions, offering tips when he’d missed something, but largely we were sitting there, inside Joe's head, seeing his IDE as if through his eyes. I was transfixed. _There were so many differences from how I approached the act of development; so many differences from how I experienced it_. 

The conscious realisation of this only struck me later. While it had been unfolding in front of my eyes I had simply wondered at how Joe reasoned about code; how he had a command of the substrate parts - raw JavaScript and CSS, as well as his tools and what he could rely on them for; how he expressed his mental state as code in his IDE (and equally how he commented things out to see if the extent of what he thought he’d turned off was met by reality).

It was probably a day later (most likely prompted by yet another session which made me realise how massively different my mental conception of things were from others) that questions began to arise. Questions such as “is there a right way to think about the act of development?”, “how many ways do people think about development?” and the one which stuck with me far more than any other: **“what is it like when people experience the act of development?”**

Over the years that followed this question never went away. I tried to grasp it myself at first, and kept an Evernote notebook full of glipses of people using emotive language with reference to code. I then found Kent Beck’s awe-inspiring preafce to his classic “[Test Driven Development: By Example](https://www.goodreads.com/book/show/387190.Test_Driven_Development)”{% sidenote 'sn-id-whatever' 'Someone needs to draw attention to the great prefaces and afterwords of Software books. There are a lot out there, and we miss out when we skip past them to get to the "real book"'%} and I could relate to it completely. He talked about discomfort, unease, fear, pleasure, and joy. But he was largely alone. Year on year I kept wondering if this was really something to investigate further, but I could never figure out how. I couldn’t even figure out how to make sense of my own feelings on the subject. 

But slowly things began to come together. Once again the fecund minds of the attendees at the Java Posse Roundup (now re-styled the “[Winter Tech Forum](https://www.wintertechforum.com/)”) was the source of virtually all my inspiration. Week after week came the externalised thought processes of people thinking out loud on the ```#code``` slack channel (shout outs to [Jack](https://twitter.com/jackgene), [Chris](https://twitter.com/CJPhelps), [Joey](https://twitter.com/joeygibson), [Harrison](https://twitter.com/harrison_briner), Jeremy, [DJ](https://twitter.com/dhagberg), [Wesley](https://github.com/wfhartford/), Gordon, [Justin](https://twitter.com/quidryan), Tom, [Marshall](https://twitter.com/runswithbricks), [Drew](https://twitter.com/dinomite), J, [Chris](https://twitter.com/topher1120) and [Matt](https://twitter.com/mattgrommes)). Then there was [Bruce](https://twitter.com/BruceEckel) and [James](https://twitter.com/_JamesWard)' in-depth discussions on the act of language design and writing for those of “beginners mind” on the “[Happy Path Programming](https://twitter.com/HappyPathProg)” podcast. 

But best of all was the interviews that various attendees ([Chris](https://twitter.com/CJPhelps), [Wesley](https://github.com/wfhartford/), [DJ](https://twitter.com/dhagberg), [Dmitry](https://twitter.com/dkarlinsky), [Harrison](https://twitter.com/harrison_briner) and [Megan](https://github.com/swampdragons)) allowed me to stumble through, asking them about their experiences of writing code. I learned so much yet again. I had raw data points all over the place, and data points that were crisp and clear too - I am blessed that everyone I've met out at that self-organised conference in a church hall deep in the Colorado Rockies is so eloquent and self-aware. <BR/><BR/>

{% maincolumn 'assets/img/crested-butte-view.jpg' 'Image: Crested Butte, Colorado, USA, taken by the author' %}

{% newthought "However" %}, there was still something missing. I didn’t feel that confidence which I thought I'd feel before I took this to the world. To conquer my doubt it needed something to bring it together. I needed a lens to look through. I needed a hypothesis to test. I needed a something like a theory which to interrogate, to prove or invalidate. 

Then one day, it all suddenly came together. I was catching up on the ```#code``` channel where Jack was describing a problem in [Go](https://golang.org/), or [Rust](https://www.rust-lang.org/), or something like that.  That wasn't in itself unusual; it's what the ```#code``` channel is for; but how he described his experience resonated like a bell. What he articulated was his sense of _surprise_ when how he’d _expected_ something to work had been very different from how it _actually_ worked. In that instant all the elements which had up to then been sloshing around my mind suddenly tessellated. 

The unifying element, the structure around which all this formed, had been explained to me years before in Denver Airport by [Julie “yakticus” Amundsen](https://twitter.com/yakticus), was [Karl Friston’s](https://en.wikipedia.org/wiki/Karl_J._Friston) idea of our mental models serving to predict the world, our experience of “surprise” when these model's predictions fail, and the various ways we respond to reduce the impact of this experience.  Yet again, I’d had the concept in front of me for years, and yet again it had come from conversations with a Roundup attendee. 

The posts which follow this one are the result of this realisation. My hope is that not only will they be coherent, but also useful, and perhaps even enjoyable. The next two posts form the introduction: the first of these ([Introduction Part 1: A Conjecture]({% post_url 2021-03-08-the-experience-of-development-a-conjecture %})) goes into my idea in far more detail. The second ([Introduction Part 2: Models, All the Way Down]({% post_url 2021-03-09-the-experience-of-development-models-all-the-way-down %})) adds some related thoughts I've had, which, though less formal, still form an important background for the investigations, hypothesis testings, and resulting musings which follow, the [first of which]({% post_url 2021-03-15-the-experience-of-development-the-fine-balance %}) takes the concepts from the introduction and attempts to form with them a broad categorisation of the types of development experience, both based on personal, and non-personal reports and observations.

P.S. I’d love to know what you think. If you have any thoughts or any other kind of feedback please reach out to me on [Twitter](https://twitter.com/al94781).  Thanks!
