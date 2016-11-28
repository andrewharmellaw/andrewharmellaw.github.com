---
layout: post
title: "Gelfand: Chunk 3 - Converting Problems to Algebraic Expressions"
description: "Building on top of the previous laws"
category: 
tags: [gelfand, algebraic-problem-solving, proof]
---
{% include JB/setup %}
## Proving Multiplication of Negative Numbers
Pages 19 and 20 of Gelfand are our first encounter with a _proof_.  As it's conceptually such a simple bits of algebra, it's useful to call out the approach.

The first time I read through it (and worked through it) everything made sense logically, but what didnt click was how I might have arrived at this proof myself.  Reading it in the order presented made me despair.  How would I have known to start where he started? How would I have known to then rebalance the equation so that the $0$ was on the right-hand side? I would never have figured that out.  (Proceed to fall into pit of despair.)

Once I climbed back out of my gloom, I focussed on what I did recognise, and there were things to recognise.  The fact the problem split in two became very explicit to me, as did the applicaiton of the Distributative Law.  That was great, but I still couldnt grasp what must have been the intuitive leap which gave jumping-off point.  Then I realised...

* To prove multiplication of a negative and a positive number, I needed to change this expression into something where I wasn't multiplying the negative and positive numbers, and instead I was doing something else with them
* What else could I do? I could _add_ them
* How could I change multiplication into addition? well, I get something like this from the Distributive Law

This then allows us to start from this point, and then try and work our way out to the "starting position".  Let's try it:

Realisation: 

$$ 0 = 3.0 = 3.(-5 + 5) = 3.(-5) + 3.5 = 3.(-5) + 15 = 0 $$ 

With all this in play, we're left with the inevitable conclusion that $3.(-5) = -15$ which is what we wanted.  It also feels to me like a mental journey you could take yourself to get to this proof.

Note: We've used some basic tricks in arriving at this:

* Something multiplied by zero is zero, e.g. $3.0 = 0$
* You can split a number into two numbers if it's useful, e.g. $0 = -5 + 5$

One more thing, this isn't really a proof in the standard sense - its _very_ specific.  Can we go off-piste a little and make it more general, replacing numbers with letters? Yup.

$$ 0 = x.0 = x.(-y + y) = x.(-y) + x.y = 0 $$

We can't quite get as far as the previous proof, but it still has the key element, that not $x.(-y)$ _must_ be the opposite of $x.y$ if the result of adding them is to equal $0$.

With this in mind, is the second half ... _TBC_





So why is it not presented like this by Gelfand? Why is it instead presented in a way which makes sense as you follow it, but not in a way which you can imagine arriving at yourself? The (I'm sure ) would be "for pedagogic purposes".  Why do I think this? Well a) as I pointed out, it's hard to grokk from the perspective I was coming at it from, but also b) this section isn't a problem (not even one with a solution which, as Gelfand points out on page one, are the ones to really grasp if you are to follow the chunk-consructing path of the book.)  His aim here is therefore not to lead you to something in the way the problems-with-solutions do, rather he is just telling you something.   


## Tricks Arising
From before: 

* _Many patterns you can spot visually_ (from post ["Chunk 1"]()) - I got to the fact that there were two halves to this problem, that the core of both was the Distributive Law, and that one half applied it in one direction and the other in the other direction by drawing all this out clearly and "looking"
* _Split a number into two numbers which sum / multiply to the same result if it's useful_ (from post ["Chunk 2"]()) - e.g. $0 = -5 + 5$

from this post:

* _Something Multiplied by Zero is Zero_ - e.g. $3.0 = 0$

## Additional Notes
TBC
