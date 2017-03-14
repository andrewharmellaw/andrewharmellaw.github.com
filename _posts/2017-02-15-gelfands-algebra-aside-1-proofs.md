---
layout: post
title: "Gelfand: Aside 1 - Proofs!?!?!"
description: "Subtle Differences"
category: 
tags: [gelfand, proofs, factoring, tricks]
---
{% include JB/setup %}

The last few problems in the Factorials section in Gelfand asks you to "prove" things.  I wasn't sure how to approach this.  Up until now I've just been "solving".  This post catalogs the process of my working this out.

(Note: I'm certain that the philosophy of proofs is far more complex than I am about to cover here. In fact I have another book to read at some point in the future which links Haskell, Mathematics, and the construction and use of Proofs.  It all means I'll probably post again at some point in the future on this topic.)

## A First Stab at a Proof
Let's dive straight into the first problem - Problem 123.

Prove that if $a, b > 1$ then $a + b < 1 + ab$.

Now on it's own, I initially had no idea how to approach this. But we get a clue.  Gelfand suggests we "factor $(1 + ab) - (a + b)$".  You can see in here that the component parts have clearly come from the original formula which we need to prove.

Let's factor using our new-found skills.

$$(1 + ab) - (a + b) = $$

Hmmm, not like anything we've seen before really. And not much to do. Perhaps if we simply remove the brackets

$$ = 1 + ab - a - b = $$

and re-arrange

$$ = ab - a - b + 1 = $$

Does that look a little like a kind-of-polynomial? (I.e. like $x^2 - 2x + 1$ - I was happy to have go to this point without reference to [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions)).  Let's try it and see.  If it was, then we could do some nice factorisation on it, but with $a$ as our first $x$ and $b$ as our second.  That gives us this

$$ = (a - 1)(b - 1) $$

Is that right?  Sometimes I doubt myself. Let's quickly multiply it back out to check.

$$ ab - a - b - 1$$

Awesome!

Now what do we need to do?  Well, the problem requires that we prove that when $a$ and $b$ are both greater than one, then $a + b < 1 + ab$.  If we look at our factorisation, we can easily see that when $a$ and $b$ are greater than one we get a positive result.  If either or both are $<=$ one then we get a zero or negative result.  That's the point of the factorisation I deduce.

So now it _kind of_ feels like we've proved this, but the issue here is still the leap made at the start - how were we to know that doing such a factorisation would lead us to this factorisation and therefore to the proof?  Let's look back at the problem and the thing to factor.

$$ a + b < 1 + ab $$

The first step of the transformation from this statement into the expression we want to factor is the simple addition of brackets:

$$ = (a + b) < (1 + ab) = $$

And subsequent to this there is the effective moving of the right hand side across to the left hand side (with corresponding change in sign from positive to negative.)

$$ \rightarrow (a + b) - (1 + ab) $$

Now I pondered this next bit for a while.  (In fact I stopped writing this, went off and did other things, and have now come back 24 hours later.)  (Note, I dropped the "$ > 0$" bit as it no longer served any purpose for us. Nigglingly, when we bring it back later in this section, the direction of the symbol changes, but I have looked at both versions every which way and both seem valid and correct in the circumstances they are being used.  To reconcile this in my head I had to remember there will be times when $(a + b) - (1 + ab)$ would be equalt to zero, times when it would be less than zero, and times when it would be greater than zero - in each case based entirely on the input values for $a$ and $b$.)

Moving on from this very difference, there are two significant elements in our question which we need to acknowledge. 

1. we have a $<$ in our starting point rather than an $=$
2. we have a statement: "if $a, b > 1$ then ..." that our starting formula has applied to it

Unlike in everything we've done previously, we're now looking at a problem of the type "when something is the case, then something else is also the case."  Can we do anything with that?

In our situation, if one thing is to be greater than another, then to be true, when you subtract the bigger thing from the smaller thing (i.e. move the bigger thing from it's side of the equation to the same side as the smaller thing) then the result will be less than zero.  

Or to put it more clearly in a symbolic fashion

$$ a < b $$

$$ a - b < 0 $$

And you then test it by putting in values for a and b which meet the criteria $a < b$.

$$ 3 < 4 $$

$$ 3 - 4 = -1 $$

Which is correct as $-1$ is indeed less than $0$.

So how do we take this back to our problem?  We know, because we followed mathematical rules when we factored, that $(a - 1)(b - 1)$ and $(a + b) - (1 + ab)$ are equivalent.  We are now in the position to put back in our less-than statement and test our conjecture.

$(a - 1)(b - 1) > 0$ when $a, b > 1$

Now we can see why our factoring helped.  It's obvious from the new-found clarity, that if either $a$ or $b$ (or both) are less than $0$ then the result will be less than zero.  But that if both $a$ and $b$ are greater than zero then the product will be greater than zero too.  That clarity is why it's a _proof_ - the finding is undeniable.

## Next Stab - Problem 124
This one looks a bit easier - no "greater than" or "less than" symbols.

Let's write out our starting point first

$$a^2 + ab + b^2 = 0$$

And then bring in the factoring of $a^3 - b^3$ to look at side-by-side as suggested by Gelfand.

$$ a^3 - b^3 = $$

$$ = a^3 - a^2b + a^2b - ab^2 + ab^2 - b^3 = $$

$$ = a^2(a - b) - ab(a - b) + b^2(a - b) = $$

$$ = (a^2 + ab + b^2)(a - b)$$

Hmmm, there is a direct match in there - the first part of the factored output is the same as our proof starting point.

But what does this mean?  I'll admit I had to cheat and read Durham here.  He then combines the two, so I'll do the same (remember that in our case $a^2 + ab + b^2 = 0$)

$$ a^3 - b^3 = (0)(a - b) $$

$$\rightarrow a^3 - b^3 = 0 $$

$$\rightarrow a^3 = b^3 $$

That rules-wise makes sense, but what am I doing here? (What is anyone doing here?)  

 1. We're aiming to find out the circumstances when $a^2 + ab + b^2 = 0$.  OK.  
 2. We've now seen that this forms a part of a factoring of $a^3 - b^3$.  OK.  

What I missed was looking at the $a^3 - b^3$.  Now when is _this_ zero?  This is zero whenever $a = b$.  Nice.  And it's even distilled for us in the remainder of the factored result - $(a - b)$ - which is zero again whenever $a = b$.

Combined, _that's_ the echo of a future solution-reason calling me, and enough to move forward.

So do we have our proof with this alone?  Again (and I might come back to this in an update to this post sometime) _I_ think you could stop at this point, given where we are in the Gelfand-journey.  [Durham]() however goes further. He then analyses $a^2 + ab + b^2 = 0$ directly.  I encourage you to take a look and see what you can glean.

## Problem 125
Prove that if $a + b + c = 0$ then $a^3 + b^3 + c^3 = 3abc$

First step is again to see have we seen any of this (or parts of this) before?  

We have.  Problem 122(d) had this:

$$a^3 + b^3 + c^3 - 3abc$$

How did we factor that?  Well, I looked back and I didn't - I just fell back on [Durham]() (even he thought it was hard.)  So what does his factoring give us?  There we saw that $a^3 + b^3 + c^3 - 3abc = (a + b + c) \times ...$.

We can work with that, so, when $(a + b + c ) = 0$

$$ a^3 + b^3 + c^3 - 3abc = (a + b + c)(...)$$

$$ \rightarrow a^3 + b^3 + c^3 - 3abc = 0 \times (...)$$

$$ \rightarrow a^3 + b^3 + c^3 - 3abc = 0 $$

$$ \rightarrow a^3 + b^3 + c^3 = 3abc $$

Proved.

## Tricks Arising
### Look for the Same Pattern in Things You Know (Beyond the Standard Short-Cut Formualas)
_Many_ of the solutions to the proof-problems in this post have involved looking back to what we have seen worked previously.  It makes the clear (but possibly not self-evident) point that _anything_ can be a pattern to match on.  The Short-cut formulas are key ones because they pop up _a lot_, but others work in just the same way, by giving you a sudden jump into a well-worn path to differently formed expressions and perhaps further leaps.

## Some Kind of a Conclusion
I'm going to be honest and state that I'm still not 100% certain as to the difference between a solution and a proof.  It'll get clearer I'm sure and I'll come back here and update this when I get something more pithy.

Suffice to say, I'm currently under the impression that for something to be a "proof", you need to be able to get from your starting point, using only allowable mathematical manipulations, to something which allows you to state unequivocally that the proposition you need to make is true (and is the only thing that can be true).  

Having written it out, that actually seems quite correct.  I'm guessing there is also the ideal which I shoudl be aiming for which is something which is "simple" , and in that aspect I would guess that "simple" is an end result where things are plain as day, or where the steps taken to get there are few and direct.

I might come back to this too. 

But now on to the next topic - Rational Expressions.
