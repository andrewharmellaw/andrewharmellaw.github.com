---
layout: post
title: "On Patterns in Software"
tags: [patterns, alexander, language, gof, software, architecture, design]
---
{% include JB/setup %}


## The First Patterns
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1437097809l/79766.jpg' 'Cover of “A Pattern Language” by Alexander, C. et al (1977).' %}

You may not have heard of “A Pattern Language” by Alexander et al. It’s pretty old, looks even older, is very thick, and concerns building and buildings.  But if you work in software development then you will definitely have felt its influence, because it’s offspring are everywhere.

Published in 1977, this book collated two hundred and fifty three “patterns”, each of which defined, discussed, and then resolved a recurring and fundamental problem seen in either towns, buildings, or construction. 

The authors tell us: 

{% epigraph 'Each solution [...] gives the essential field of relationships needed to solve the problem, but in a very general and abstract way—so you can solve the problem, in your way, by adapting it to your preferences, and the local conditions at the place you are making it.' 'Alexander, C. et al' '"A Pattern Language" (1977), pp. xiii' %}

Each individual pattern achieves this in the same structured way; using words, with supporting drawings, photographs and charts. It’s instructive to take a look at one of the patterns to get an idea of what they’re like. A great example is [pattern number 159: “Light on Two Sides of Every Room”](http://www.patternlanguage.com/apl/aplsample/apl159/apl159.htm). 

But in software we’re always being told “software architecture has nothing to do with physical architecture” aren't we? If we don’t have “real” architects, why should we care about this ancient book from an entirely unrelated field?

We should care because Alexander et al’s “patterns” concept became more popular in the world of software than anywhere else.  

## Elements of Reusable Object-Oriented Software
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1348027904l/85009.jpg' 'Cover of “Design Patterns” by Gamma, E. et al (1994).' %}

Software patterns started{% sidenote 'sn-id-whatever' '“Started” is actually a bit misleading. In the same way that Alexander et al collected, distilled and articulated their patterns from years of experience, so did Gamma and co. The community this latter quartet drew their inspiration from were comprised largely of “Smalltalkers” and C++ hackers'%} for the vast majority of us with Eric Gamma, Richard Helm, Ralph Johnson and John Vlissides (aka “the Gang of Four” or “GoF”) and their 1994 book, Design Patterns: Elements of Reusable Object-Oriented Software. They gave credit to Alexander et al’s “A Pattern Language” explicitly in their introduction:

{% epigraph 'Even though Alexander was talking about patterns in buildings and towns, what he says is true about object-oriented design patterns. Our solutions are expressed in terms of objects and interfaces instead of walls and doors, but at the core of both kinds of patterns is a solution to a problem in a context (italics are mine).' 'Gamma, E. et al' '"Design Patterns: Elements of Reusable Object-Oriented Software" (1994), pp. 2-3' %}

The subsequent influence of the GoF patterns in our software world is hard to underestimate.  Who hasn’t heard of the Singleton, Builder or Factory? Who hasn’t used an Iterator or a Facade?  While we might not be aware of where our idea of patterns comes from, we have definitely felt their impact.

## Pattern-Oriented Software Architecture
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1348907122l/85039.jpg' 'Cover of “Pattern-Oriented Software Architecture" (Volume 1) by Buschmann et al (1996).' %}

Gamma et al were very specific about the focus of their patterns:

{% epigraph 'The patterns in this book are descriptions of communicating objects and classes that are customized to solve a general design problem in a particular context (italics are the authors).' 'Gamma, E. et al' '"Design Patterns: Elements of Reusable Object-Oriented Software" (1994), pp. 3' %}

Despite the GoF’s being the most well-known pattern-book, it is not the source of all well known software patterns.  In fact, the ones that  they collected were springing from a burgeoning community.

The year after the publication of “Design Patterns” came volume one of Buschmann et al’s “Pattern-Oriented Software Architecture” (1996) series.  Less well known (at least today) but significantly more wide-ranging, it also collects and shares a significant number of patterns, as well as grouping them in terms of their scale: “Architectural Patterns” and the widest scope, “Design Patterns” came next, followed by the “Idioms”.

What kinds of patterns do they codify? Those which they define in their Architectural Patterns section provide _'overall structuring principle[s]'_{% sidenote 'sn-id-whatever' 'Buschmann, F. et al, _"Pattern-Oriented Software Architecture"_ (1996), section 1.3)' %} and contain the still-reigning “Model-View-Controller”, the once-ubiquitous “Layers”, as well as the well-known “Pipes and Filters”.

Their Design Patterns selection differs from the GoF definition by elevating a concept other than the class, instead describing _'subsystems of a software architecture, as well as the relationships between them'_{% sidenote 'sn-id-whatever' 'Buschmann, F. et al. ibid.' %} however, they maintain the link by referring explicitly to the GoF in “Publisher-Subscriber” (it correlates to Gamma et al’s “Observer”), before going on to riff off other GoF patterns such as “Proxy” and adding entirely new definitions such as “Whole-Part”. 

Their final group, Idioms, are programming-language specific, for example,  memory-management in C++. Here, Buschmann et al only add one fully documented idiom because '_[w]e cannot therefore draw a clear line between design patterns and idioms._'{% sidenote 'sn-id-whatever' 'Buschmann, F. et al, ibid.' %} It may be for this reason that idioms seem to have been dropped as a specific sub-type from the software patterns corpus.

The authors were well aware of the popularity of this movement, considering in their introduction why the concept of patterns was catching on, and why this branching-out in their scope might be taking place:

{% epigraph 'What is so exciting about patterns? It is probably the fact that they constitute a "grassroots" effort to build on the collective experience of skilled designers and software engineers. Such experts already have solutions to many recurring design problems. Patterns capture these proven solutions in an easily-available and, hopefully, well-written form' 'Buschmann, F. et al' 'ibid, section: "About this Book"' %}

## The Pioneers and the Community
There are other significant differences between the GoF and Buschmann et al which bear highlighting. Not only are the patterns community mentioned early on in Buschmann; they have a whole chapter (7) to themselves later in the book. 

There we are treated to a little history. Alexander is placed front-and-centre in a section entitled “The Roots” and Kent Beck and Ward Cunningham are credited with having taken his ideas and experimented with them in the Smalltalk community.{% sidenote 'sn-id-whatever' 'A community so great in its influence, someone really ought to make a documentary about it.' %}

We hear that the many players during these early times, including the GoF and Buschmann et al, worked on many similar and overlapping concepts; that there was a great deal of cross-fertilisation between them;{% sidenote 'sn-id-whatever' 'Indeed, this is evident in the acknowledgements of "Design Patterns"' %} and consequently there were a group of patterns conferences as well as a significant number of papers and books.  Sadly, none of which enjoy significant developer mindshare today.

## “Languages” and “Systems”
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1348093712l/106728.jpg' 'Cover of “The Timeless Way of Building” by Alexander, C. et al (1978).' %}

Before we step forward in time yet again, there is one more aspect from Buschmann et al we should give weight to. They were well aware that Alexander et al didn’t simply compile a pattern catalogue, they crafted a pattern language.  In fact Christopher Alexander wrote an entirely separate book about it; “The Timeless Way of Building” (1978).

Buschmann et al re-tool his “language” into a “system”, placing the term, as Alexander did, right there in the title of their book. 

They do this because, as they state “[p]atterns do not exist in isolation”.{% sidenote 'sn-id-whatever' 'Buschmann, F. et al, ibid, Chapter 5, section 1' %}

Continuing:

{% epigraph '[T]here are many interdependencies between them. A plain catalog-like list of all patterns, [...] does not reflect these manifold relationships. Instead, patterns should be interwoven in pattern systems.' 'Buschmann, F. et al' 'ibid, chapter 5, section 1' %}

And concluding:

{% epigraph 'The patterns make the vocabulary of the language, and the rules for their implementation and combination make up its grammar.' 'Buschmann, F. et al' 'ibid, chapter 5, section 1' %}

Why a system and not a language? Most likely because as computer scientists they were hedging their bets. I defer again to Buschmann et al:

{% epigraph 'We prefer the term ‘pattern system’ to ‘pattern language’. A pattern language implies that its constituent patterns cover every aspect of importance in a particular domain. A pattern language for software architecture must be computationally complete. [...T]here must be no gaps or blanks. [...] However, the patterns we describe only cover certain aspects of the construction of software architectures. Their entirety is not computationally complete, even when extended with all the other related patterns we know about. We however have more than just a catalog of patterns, since we describe how our patterns are tied together, but we have far less than a pattern language.' 'Buschmann, F. et al' 'ibid, chapter 5, section 1' %}

Both humble, and practical, this seems a sensible distinction to make. It is also a great place to pick up our historical tour again.

## Patterns Abound, but the System Fades
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1440294142l/70156._SX318_.jpg' 'Cover of “Patterns of Enterprise Application Architecture” by Fowler, M. (2002).' %}

As these theoretical foundations of patterns in software began to solidify, published works intended for wider audiences also began their way onto the market.  

This stage of their adoption and evolution is marked by the great dark tomes from luminaries Martin Fowler with his “Patterns of Enterprise Application Architecture” (2002), and Gregor Hohpe and Bobby Woolf with their “Enterprise Integration Patterns: Designing, Building and Deploying Messaging Solutions” (2003). Their primary aim was to make the lives of those building significantly-sized software systems simpler. They had learned lessons, and they wanted to share them. Patterns continued to be by far the best medium for this.

As before, matters build self-consciously upon what had come before. In “Patterns of Enterprise Architecture”, we see the “Layers” pattern come to primacy{% sidenote 'sn-id-whatever' "Now interestingly termed a \"narrative\" rather than a pattern, but this step back towards linguistic-terminology doesn't seem to be developed, or caught on beyond this volume." %}, but we also see “Design Patterns” such as “Domain Model” and the old favourite, “Model-View-Controller”. Idioms have faded into the background, remaining only as language-specific implementation examples.  

{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1347390905l/85012.jpg' 'Cover of “Enterprise Integration Patterns” by Hohpe, G. and Woolf, B. (2003).' %}

“Enterprise Integration Patterns” meanwhile, given its focus on joining things together, riffs extensively in the space of those other classics; “Broker” and “Pipes and Filters”. They too name-check Alexander and his language, but Buschmann et al’s “system“ is gone. Nor, unlike in Fowler, is their Architectural/Design “hierarchy” so explicit. Most likely because all the integration patterns are subservient to a single, “Messaging” god-pattern.

Patterns were catching on elsewhere too.  Notably Kent Beck included many in his classic “Test Driven Development: By Example” (2002) and, as befits his role as first-mover, took many liberties with both the form, and the focus.{% sidenote 'sn-id-whatever' "Who can forget the classics “Cheap Desk, Nice Chair” and “Break”?" %} Elsewhere, the concept of anti-patterns caught fire too, and soon we had many things to avoid, as well as aim for. 

## Domain-Driven Design
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1287493789l/179133.jpg' 'Cover of “Domain-Driven Design” by Evans, E. (2003).' %}

One more work which belongs to the “flowering” phase of patterns deserves detailed discussion: Eric Evans’ “Domain-Driven Design: Tackling Complexity in the Heart of Software” (2003) is at once one of the most referred-to, and most misunderstood books that we will consider here, perhaps second only to “A Pattern Language” in both regards. This in itself is interesting because, in my opinion, Evans’ work is above all, the one which cleaves most closely to the spirit of Alexander et al.

How so?  Firstly, and perhaps most simplistically, Evans embeds the concept of people (team) organisation and collaboration in DDD’s Strategic Design Patterns. Secondly, there are explicit people patterns such as “Ubiquitous Language” and “Hands on Modellers”, but thirdly, there are still concerns for the human in his purely technical patterns, both famous such as “Bounded Context”, and rarely-mentioned such as “Modules”.

But it doesn’t end there. Tucked away at the back in an Appendix I only recently read, Evans talks of Alexander and pattern “language”; of “beauty” and of buildings that “work well and feel good” (page 509).  Perhaps many reading this feel in their cole, engineer-steeled hearts that this kind of language doesn’t belong in a serious work. I disagree.

## DevOps and Human Beings
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1558167185l/36410104._SX318_.jpg' 'Cover of “Cloud Native Patterns” by Davis, C. (2019).' %}

Something as culturally universal as patterns weren’t to be the sole domain of software developers and architects for ever.  While many of us in the “development” world were asleep at the wheel, the DevOps movement came, re-purposed many of “our” tools and practices, and showed us what could really be done with them.

Patterns were one of the many things they breathed new life into. Michael Nygard brought out “Release It!” (2007), Bill Wilder came along with “Cloud Architecture Patterns” (2012), and Cornelia Davies{% sidenote 'sn-id-whatever' 'Finally, a woman!' %} with “Cloud Native Patterns: Designing Change-Tolerant Software” (2019). As is the patterns tradition, each distilled a great deal from the experiences of many, but something had changed in the process - these software patterns now had a focus on deploying and running systems, not just building them. 

If you recall, DevOps is about both technology and people. It is about communication and learning, as well as code.  You can discern a new kind of pattern emerging in the software industry - the people / organisation pattern.

## Team Topologies
{% marginfigure 'mf-id-whatever' 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1563409554l/44135420.jpg' 'Cover of “Team Topologies” by Skelton, M. and Pais, M. (2019).' %}

Some might argue that Matthew Skelton and Manuel Pais’ “Team Topologies: Organizing Business and Technology Teams for Fast Flow” (2019) isn’t a pattern book at all - it has no “patterns” in the classic, and well-defined form, and what it has, there are only four of.  

I would respectfully disagree. It speaks at length and in detail about various problems in software delivery attributable to team structures, and then describes how to remedy them. They also spring directly from the DevOps movement.

These remedies take the form of four named “team interaction patterns” or “topologies”: “Stream Aligned Team”, “Enabling Team”, “Platform Team” and “Complicated-subsystem team”. And through the course of the book, Skelton and Pais discuss and define how to apply, in context, every one.  Not only this, but they provide diagrams showing both good and bad applications, as well as transitions over time, and concluding each with discussion of consequences, implementation considerations, and detailed, case-study-style examples.  These are the attributes of good patterns, no matter which denomination of pattern style you subscribe to.

Will Team Topologies form the vanguard for the latest focus for patterns? Who is to say? What is more interesting is that perhaps by design, possibly by accident, or maybe a little of both, they and the rest of the DevOps movement are also bringing the concept of patterns back home.

## Back to Alexander (A Second Chance?)
Despite having no skills at all in builds, or architecture, it is an incredible experience to read “A Pattern Language”.  As a software developer, many things stuck me, but one aspect leaps out, again and again, and that is the number of patterns which are human- rather than building- or construction-centric

Consider for example “Mosaic of Subcultures”, or “Community of 7000”, or even “Dancing in the Street”. What do these have to do with physical buildings? Almost nothing. But they have everything to do with people and bringing them together.  

It is my strong belief that for too long in our software-pattern world we lost this important aspect. We failed to take up the baton from James Coplien’s “Organisation Patterns”; or we didn’t take advantage of them properly when Eric Evans gave it to us, passing them up for the greater excitement of Aggregates, Entities and Value Objects. 

Yet the tide is turning, and this is why I am confident that Skelton and Pais are the trend-setters of this because, after agile; microservices; cloud; devops; lean; etc.; etc. we are finally seeing the benefit of teams that can flow. 

And perhaps, with this re-invigoration through patterns, we can bring even more back from Alexander. Can resuscitate the “language”, as befits a tool used creatively both by and for other humans; and with it too bring back many other aspects which Alexander et al innovated. Perhaps we can even start to bring back a little more of what Alexander calls the “timeless quality”:

{% epigraph 'There is a certain quality which is the root criterion of life and spirit in a [wo]man, a town, a building or a wilderness. This quality is objective and precise, but it cannot be named.

The search which we make for this quality, in our own lives, is the central search of any person and the crux of any individual person’s story. It is the search for those moments and situations when we are most alive.' 'Alexander, C. et al' '"The Timeless Way of Building" (1977), pp.ix-x' %}

Perhaps you find this quote a little too esoteric for a professional discussion of software development. 

I would reply, why should we not aspire for the best software, and the best ways of organising teams which design, build, run and maintain it? We all know that when all these aspects are at their best this is indeed a moment when we feel most alive.  I for one feel it’s worth trying to see if we cannot get even a little closer to achieving this more frequently.

