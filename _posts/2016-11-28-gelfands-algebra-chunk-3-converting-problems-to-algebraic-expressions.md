---
layout: post
title: "Gelfand: Chunk 3 - Converting Problems to Algebraic Expressions"
description: "Building on top of the previous laws"
category: 
tags: [gelfand, algebraic-problem-solving, proof]
---
{% include JB/setup %}
## Proving Multiplication of Negative Numbers
Pages 19 and 20 of Gelfand are our first encounter with a _proof_.  As it's conceptually such a simple bit of arithmetic, it's useful to call out the approach explicitly too.

The reason I think there's value in detailing the approach explicitly is because the first time I read through it (and worked through it) everything made sense logically, but what didn't click was how I might have arrived at this proof myself.  Reading it in the order presented made me despair.  How would I have known to start where Gelfand started? How would I have known to then rebalance the expression so that the $0$ was alone on the right-hand side? I would never have figured that out.  (Immediately followed by a fall into a pit of despair.)

Once I climbed back out of my gloom, I focussed on what I did recognise, and there were things to grasp; the fact the problem split in two became very explicit to me, as did the application of the Distributative Law.  (Neither of these are hidden, but just highlights how easy it is to read things and have them "make sense", but still miss key things.)  That was great, but I still couldnt grasp what must have been the intuitive leap which gave jumping-off point.  Then I realised...

* To prove multiplication of a negative and a positive number, I needed to change this an expression where this happened into something where I wasn't multiplying the negative and positive numbers together, and instead I was doing something else with them
* What else could I do which I knew how to do? I could _add_ them
* How could I change multiplication into addition? Or more specifically, how could I re-order my multiplication and addition?  With the aim of turning the multiplicaiton into something I knew how to do - multiply by zero. This is where the Distributive Law comes in

With all this in mind (and it didnt come all at once, writing this post helped clarify and solidify it all too) we can then possibly see a place to start, and then try and work our way back out to Gelfand's "starting position".  Let's try it:

Realisation; 

$$ 3.(-5 + 5) = 3.0 = 0 $$

So, 

$$ 0 = 3.0 = 3.(-5 + 5) = 3.(-5) + 3.5 = 3.(-5) + 15 = 0 $$ 

With all this in play, we're left with the inevitable conclusion that $3.(-5) = -15$ which is what we wanted.  It also feels to me like a mental journey you could take yourself to get to this proof.

Note: We've used some basic tricks in arriving at this:

* Something multiplied by zero is zero, e.g. $3.0 = 0$
* You can split a number into two numbers if it's useful, e.g. $0 = -5 + 5$
* The Distributive Law turns multiplication followed by addition, into addition followed by by multiplication (and vice versa)

One more thing, this isn't really a proof in the standard, general sense - it's _very_ specific.  Can we go off-piste a little and make it more general, replacing numbers with letters? Yup;

$$ 0 = x.0 = x.(-y + y) = x.(-y) + x.y = 0 $$

We can't quite get as far as the previous proof, but it still has the key element, that not $x.(-y)$ _must_ be the opposite of $x.y$ if the result of adding them is to equal $0$.

With this in mind, lets head over to the second half of the proof; proving a negative number multiplyed by another negative number, gives a positive number.

Again, Gelfand seems to start at a semi-arbitrary point (or so it felt to me).  Can we look at the second time he enacts the Distributive Law for another clue?:

$$ ((-3) + 3) . (-5) = 0 $$

Hmmm.  Nothing jumped out at me, but setting this book-proof side-by-side with the firsthalf did indicate something.  In the first half, Gelfand applies the Distributive Law to collapse something down. Here, he applies it in reverse, with the next step being the one to expand things:

$$ ((-3) + 3) . 5 = ((-3) . -5) + (3 . (-5) = 0 $$

This feels a little like we're getting somewhere, and then he pulls off another new trick and uses the output from the first half of the proof ($3 . (-5) = -15$) to simplify this second half:

$$ ((-3) + 3) . 5 = ((-3) . (-5)) + (3 . (-5)) = ((-3) . (-5)) + (-15) = 0 $$

This is now incredibly close to what we need, yet we've avoided having to actually "do" the negative times negative part of the expression, and we don;t haev to either - we can now just rearrange things by moving the $-15$ over to the right hand side, and voilà, the second half of our proof:

$$ (-3) . (-5) = 15 $$

I actually jumped a little. We havent started where Gelfand started - and the known starting position is key in htis kind of proof.  With all this together, the $(-3) + 3 = 0$ makes sense, and the subsequent multiplication of both sides by $0$ to get to step two. 

A side-note: I think I mentioned before I'm a very visual thinker.  One thing which got in my way (and also hits me with "noisy" code - I shoudl definitely stay away from Lisp and Clojure it seems...) was the proliferation of parentheses in this.  ...




So now we have all this sorted out, it seems fair to ask "why is it not presented like this by Gelfand? Why is it instead presented in a way which makes sense as you follow it, but not in a way which you can imagine arriving at yourself?" The (I'm sure) would be "for pedagogic purposes".  Why do I think this? Well (a) as I pointed out, it's hard to grokk from the perspective I was coming at it from, but also (b) this section of the book isn't a problem (not even one with a solution which, as Gelfand points out on page one, are the ones to really grasp if you are to follow the chunk-constructing path of the book.)  His aim here is therefore not to lead you to something in the way the problems-with-solutions do, rather he is just telling you something.   


## Tricks Arising
From before: 

* _Many patterns you can spot visually_ (from post ["Chunk 1"]()) - I got to the fact that there were two halves to this problem, that the core of both was the Distributive Law, and that one half applied it in one direction and the other in the other direction by drawing all this out clearly and "looking"
* _The Distributive Law turns multiplication followed by addition, into addition followed by by multiplication (and vice versa)_ - and this switching of orders can allow you to get some tricky things out of the way (such as multiplying a positive number by a negative number)
* _Split a number into two numbers which sum / multiply to the same result if it's useful_ (from post ["Chunk 2"]()) - e.g. $0 = -5 + 5$

from this post:

* _Something Multiplied by Zero is Zero_ - e.g. $3.0 = 0$

## Additional Notes
TBC
