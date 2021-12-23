---
layout: post
title: "Gelfand: Chunk 3 - Converting Problems to Algebraic Expressions"
description: "Building on top of the previous laws"
tags: [gelfand, algebraic-problem-solving, proof, tricks]
comments: true
---
{% include JB/setup %}

## Proving Multiplication of Negative Numbers - Despair

{% newthought "Pages 19 and 20 of [Gelfand](https://www.goodreads.com/book/show/20328259-algebra)" %} are our first encounter with a _proof_.  As it's conceptually such a simple bit of arithmetic, it's useful to call out the approach explicitly too.

The reason I think there's value in detailing the approach explicitly is because the first time I read through it (and worked through it) everything made sense logically, but what didn't click was how I might have arrived at this proof myself.  Reading it in the order presented made me despair.  How would I have known to start where Gelfand started? How would I have known to then rebalance the expression so that the {% m %}0{% em %} was alone on the right-hand side? I would never have figured that out.{% sidenote 'sn-id-whatever' "Immediately followed by a fall into a pit of woe." %}

### A Different Perspective - Proof Part One

Once I climbed back out of my gloom, I focussed on what I did recognise, and there _were_ things to grasp; the fact the problem split in two became very explicit to me, as did the application of the [_Distributive Law_](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws).{% sidenote 'sn-id-whatever' "Neither of these are hidden, but I've included it here as is just goes to highlight how easy it is to read things and have them "make sense", but still miss key things." %}  That was great, but I still couldn't grasp what must have been the intuitive leap which gave the jumping-off point.  Then I realised...

To prove multiplication of a negative and a positive number, I needed to change this from an expression where this happened into another expression where I wasn't multiplying the negative and positive numbers together, and instead I was doing something else with them, hopefully getting rid of them altogether.

So what else could I do with them? I could _add_ them...

But how could I change multiplication into addition? Or more specifically, how could I re-order my multiplication and addition?  With the aim of turning the multiplicaiton into something I knew how to do - multiply by zero. This is where the [Distributive Law](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws) came in.

With all this in mind (and it didn't come all at once, writing this post helped clarify and solidify it all too) we can then possibly see a place to start, and then try and work our way back out to Gelfand's "starting position".  

Let's try it:

Realisation; 

{% math %} 3 \cdot (-5 + 5) = 3 \cdot 0 = 0 {% endmath %}

So, 

{% math %} 0 = 3 \cdot 0 = 3 \cdot (-5 + 5) = 3 \cdot (-5) + 3 \cdot 5 = 3 \cdot (-5) + 15 = 0 {% endmath %} 

With all this in play, we're left with the inevitable conclusion that {% m %}3 \cdot (-5) = -15{% em %} which is what we wanted.  It also feels to me like a mental journey you could take yourself to get to this proof. 

Winning.

## Tricks Arising

{% newthought "We've used some tricks" %} in arriving at this. Let's call them out specifically.

### Something multiplied by Zero is Zero 

E.g. 

{% math %} 3 \cdot 0 = 0 {% endmath %}

Blindingly obvious, but worth pointing out all the same.

### You can spot many patterns visually
(We saw this before, in post ["Chunk 1"](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals)) - I got to the fact that there were two halves to this problem, that the core of both was the _Distributive Law_, and that one half applied it in one direction and the other in the other direction by drawing all this out clearly and "looking".

### The Distributive Law turns multiplication followed by addition, into addition followed by by multiplication (and vice versa)
And this switching of orders can allow you to get some tricky things out of the way (such as multiplying a positive number by a negative number).

### Split a number into two numbers which sum / multiply to the same result if it's useful
We saw this before too, in post ["Chunk 2"](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws)) - e.g. 

{% math %} 0 = -5 + 5 {% endmath %}

## Aside - Can we do this in Algebra?
{% newthought "One more thing," %} this isn't really a proof in the standard, general sense - it's _very_ specific.  Can we go off-piste a little and make it more general, replacing numbers with letters? 

Pretty much:

{% math %} 0 = {% endmath %}

{% math %} = x \times 0 = {% endmath %}

{% math %} = x(-y + y) = {% endmath %}

{% math %} = x(-y) + xy = {% endmath %}

{% math %} = 0 {% endmath %}

We can't quite get as far as the previous proof, but it still has the key element: that {% m %}x(-y){% em %} _must_ be the opposite of {% m %}xy{% em %} if the result of adding them is to equal {% m %}0{% em %}.

## Different Again - Proof Part Two

{% newthought "Now let's now head over" %} to the second half of the proof; proving a negative number multiplyed by another negative number gives a positive number.  Conceptually that's a harder leap, so is this aspect of the proof harder too?

Again, Gelfand seems to start at a semi-arbitrary point (or so it felt to me).  Can we look again at the point he enacts the [Distributive Law](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws) for another clue?:

{% math %} ((-3) + 3) \times (-5) = 0 {% endmath %}

Hmmm.  Nothing jumped out at me, but setting this book-proof side-by-side with the first half did indicate something.  In the first half, Gelfand applies the [Distributive Law](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws) to collapse something down. Here, he applies it in reverse, with the next step being the one to expand things:

{% math %} ((-3) + 3) \times 5 = {% endmath %}

{% math %} = ((-3) \times -5) + (3 \times (-5)) = {% endmath %}

{% math %} = 0 {% endmath %}

This feels a little like we're getting somewhere. He then pulls off another new trick and uses the output from the first half of the proof ({% m %}3 \cdot (-5) = -15{% em %}) to simplify this second half:

{% math %} ((-3) + 3) \times 5 = {% endmath %}

{% math %} = ((-3) \times (-5)) + (3 \times (-5)) = {% endmath %}

{% math %} = ((-3) \times (-5)) + (-15) = {% endmath %}

{% math %} = 0 {% endmath %}

This is now incredibly close to what we need, yet we've avoided having to actually "do" the negative times negative part of the expression, and we don't have to either - we can now just rearrange things by moving the {% m %}-15{% em %} over to the right hand side, and voilà, the second half of our proof:

{% math %} (-3) \times (-5) = 15 {% endmath %}

I actually jumped a little - it all made sense. We haven't started where Gelfand started - and the known starting position is key in this kind of proof.  With all this together, the {% m %}(-3) + 3 = 0{% em %} jumping off point now makes sense - it's something super-obvious, and from where we can multiply both sides by {% m %}-5{% em %} to get to an entry-point into the [Distributive Law](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws). 

## More Tricks Arising

Before we conclude, we again alluded to some more tricks in this section. Let's highlight them:

### You can apply the Distributive Law _in either direction_

To add or remove parentheses. (The same applies to the _Associative and Commutative Laws_ too.){% sidenote 'sn-id-whatever' "See [the previous post](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws) for the gory details on all three." %}

### You can bring in other proofs to simplify your current proof

E.g. {% m %}3 \times (-5) = -15{% em %} in this case.

## Conclusions
{% newthought "I think I mentioned before" %}, I'm a very visual thinker, and by that I mean I grokk things when I can lay them out as an image and _see_ them.  One thing which got in my way{% sidenote 'sn-id-whaterever' "And also hits me with "noisy" code - I shoud definitely stay away from [Lisp](https://en.wikipedia.org/wiki/Lisp_(programming_language)) and [Clojure](https://en.wikipedia.org/wiki/Clojure) it seems..." %} was the proliferation of parentheses.  I couldn't get rid of them - they were serving a purpose, but just as with getting comfortable with a new language-syntax{% sidenote 'sn-id-whaterever' "[Scala](https://en.wikipedia.org/wiki/Scala_(programming_language)), I'm thinking of you here especially." %} there's nothing quite like just looking at it over and over again, casting your eyes over the cadence of the shapes, and getting comfortable with the flow, repetitions, and echos in them.  It sounds a bit esoteric, but it helped me. 

The other point I wanted to draw out begins with a question. Given all this for something so stupidly simple, it seems fair to ask "why is it not presented like this by Gelfand? Why is it instead presented in a way which makes sense as you follow it, but not in a way which you can imagine arriving at yourself?" The (I'm sure) would be "for pedagogic purposes".  Why do I think this? Well (a) as I pointed out, it's hard to grokk from the perspective I was coming at it from, but also (b) this section of the book isn't a problem (not even one with a solution which, as Gelfand points out on page one, are the ones to really grasp if you are to follow the chunk-constructing path of the book.)  His aim here is therefore not to lead you to something in the way the problems-with-solutions do, rather he is just telling you something.
