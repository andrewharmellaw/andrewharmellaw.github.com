---
layout: post
title: "Gelfand: Chunk 22 - Geometric Progression Sums"
description: "I can't take all this progress!"
category: 
tags: [gelfand, geometric-progressions]
---
{% include JB/setup %}

Just as sums of arithmetic progressions were interesting, so are the sums of their geometric siblings.  Here follows some more commentary on what Gelfand brings us in Section 42.

Lets launch into some problems and see what that gives us

## Problem 201

$$1 + \frac{1}{2} = 1\frac{1}{2} = \frac{3}{2}$$

$$1 + \frac{1}{2} + \frac{1}{4} = 1\frac{3}{4} = \frac{7}{4}$$

$$1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} = 1\frac{7}{8} = \frac{15}{8}$$

$$1 + ... + \frac{1}{2^n} = \frac{2^{n+1} - 1}{2^n}$$

where $n$ is the number of fractions after the $1$.

## Problem 202 - Two Routes to a Formula
This problem isn't particularly hard to grasp from the solution Geland provides, but it is instructive to examine the two routes, especially the intuitive leaps, that Gelfand shows us to get to the answer.

Lets start with the first. We'll start where he starts, with the sum

$$a + aq + aq^2 + ... + aq^{n - 1}$$

I'm guessing that Gelfand is hoping by now that we're hungry to factor this into something more manageable.  The first step in this is an easy one too - just pull out the $a$.

$$(a)(1 + q + q^2 + ... + q^{n - 1})$$

Can we go further?  It seems sensible to try.  Have we seen something like any of this before?  Well, I personally couldn't recall anything, but Gelfand is telling us we should have, and so I went huntung.  

What I found was Problem 90 (which I didn't blog about specifically; a possible explanation for my amnesia) which goes like this:

$$(1 - x)(1 + x + x^2 + x^3 + ... + x^{10}) = 1 - x^{11}$$

It's not hard to see if you swap $x$ for $q$, and then make it more generic and rearrange the sides, you have a _pretty_ close (but not exact) match for a bit of our current expression.

$$ \rightarrow (1 + q + q^2 + q^3 + ... + q^{n - 1}) = \frac{1 - q^{n}}{(1 - q)} $$

Close, but not the same as what Gelfand is referring us to: 

$$q^n - 1 = (q - 1)(q^{n - 1} + ... + q + 1)$$

Can we simply swap our $1$s and $q$s?  Yes we can. (And here's the working to prove it.):

$$(x - 1)(1 + x + x^2 + x^3 + ... + x^{10}) = $$

$$ = (x - 1)1 + (x - 1)x + (x - 1)x^2 + (x - 1)x^3 + ... + (x - 1)x^{10} = $$

$$ = (x - 1) + (x^2 - x) + (x^3 - x^2) + (x^4 - x^3) + ... + (x^{11} - x^{10}) = $$

$$ = (-1) + (x - x) + (x^2 - x^2) + (x^3 - x^3) + (x^4 - x^4) + ... + (x^{10} - x^{10}) + x^{11} = $$

$$ = (-1) + x^{11} = $$

$$ = x^{11} - 1 $$

We can now pick up with Gelfand again.  Now we know we can swap our $1$a and $q$s we have this:

$$\rightarrow (1 + q + q^2 + q^3 + ... + q^{n - 1}) = \frac{q^n - 1}{(q - 1)}$$ 

Now we can put this into our current expression and get the same answer Gelfand has

$$a \frac{q^n - 1}{(q - 1)}$$

Well done. Give yourself a slap on the back for following along.

The second path to this solution takes up the $S$-mechanism we'd seen before in Problem 200 (and prior to that too).  This takes more insight, but consequently relies less on brute-force factoring and pattern-memory.  

In this approach the first few steps seem obvious to me (and therefore I guess to you too).  It is when we get to $qS - S = aq^n - a$ that I want to pick up.

How do we get from this to the next step?  We start where I just mentioned makes sense:

$$qS - S = aq^n - a$$

We're aiming to re-jig to isolate $S$.  First we factor the left hand side:

$$(q - 1)S = aq^n - a$$

Then we factor the right hand side:

$$(q - 1)S = a(q^n - 1)$$

Finally to isolate the $S$ we move the (q - 1) across, getting what Gelfald showed us as the final step (if we remove the parentheses.

$$S = a \frac{(q^n - 1)}{(q - 1)}$$

## Problem 203 - A Reminder of Prior Tricks
Problem 203 is to find out the gap in the solution to 202.  The solution is pretty easy to spot given the inputs.

The lesson learned is very clear though.  This is another circumstance where our sums-of-geometric-progressions formula is not universally applicable.  We could state it now as:

$$S = a \frac{q^n - 1}{(q - 1)}$$ 

when $q \ne 1$, and 

$$S = na$$ 

when $q = 1$.

Aside: This (and previous encounters with this kind of thing) sounds a little like a partial function which I know as a functional programming concept from Scala and Haskell.  The [Haskell Wiki defines it](https://wiki.haskell.org/Partial_functions) as "a function that is not defined for all possible arguments of the specified type."  That sounds like where we are, and if you look at the [examples on wikipedia](https://en.wikipedia.org/wiki/Partial_function#Discussion_and_examples) for the same topic it looks like where we are.

## Where Next?
That's Gelfand done now on the core rules of progressions (arithmetic and geometric).  What he's about to do is set up a bunch of problems for us to help embed and understand the subtleties of what we learned.

That's the next post. 
