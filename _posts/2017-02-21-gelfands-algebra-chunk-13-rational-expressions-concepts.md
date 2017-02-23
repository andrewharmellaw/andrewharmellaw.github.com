---
layout: post
title: "Gelfand: Chunk 13 - Rational Expressions"
description: "Deceptively Simple (as befits a Thirteenth Chunk)"
category: 
tags: [gelfand, tricks, commutative-law, rational-expression, divition, polynomials]
---
{% include JB/setup %}

Section 33 of [Gelfand's Algebra](https://www.amazon.co.uk/Algebra-I-M-Gelfand/dp/0817636773) introduces the _incredibly_ simple concept of Rational Expressions.  These are in effect a super-set of polynomials, created by _slightly_ relaxing the rules of what makes a polynomial a polynomial and allowing in division.

Did I say "incredibly simple"? How could I possibly be mistaken? Lets take a step back for a second to bring something sublte to mind.

## The Subtleties of Division
In coming back to all this algebra after my last two posts, a few fundamental misconceptions from my early maths history have been challenged.  Amongst these is the mistaken belief that multiplication and division were two sides of the same coin in the same way that addition and subtraction actually are.  What I'd failed to grasp was that whereas in the latter, a movement in position of terms _was_ always possible in my simple world-view (it's the [Commutative Law](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws), in it's addition-form) 

$$ a + b = b + a $$

$$ a - b = -b + a $$

but the same could not be said for the former (the Commutative Law applies to multiplication but _not_ division remember).

$$ 2 * 3 = 3 * 2 $$

but

$$ 2 \div 3 \ne 3 \div 2$$

In fact, if you write this in another way, using fractions, then the inequality becomes patently evident

$$ 2 / 3 \ne 3 / 2$$

(I'll possibly come back to all this as it seems an area rich in potential discoveries.)

It's nice to note that explicitly - division isn't a flip side of multiplication.  So keep it in a difference place in your head.

But we can keep going.  When we do add division, as we have by expanding things to take in rational expressions, there's also the problem of zero.

$$ 0 / 3 = 0 $$

$$ 3/0 = ...$$

A divide by zero basically blows up on us. Boom! (Or it does until we get on to the concept of infinity which is another post, perhaps when I get back to [Turing](http://www.turingarchive.org/browse.php/b/12) and [Petzold](https://www.amazon.co.uk/Annotated-Turing-Through-Historic-Computability/dp/0470229055)).

With these in mind, we can get back to the concept in hand; Rational Expressions.

## Rational Expressions - Zero-Denominator-Disallowed

In the intro to these, Gelfand basically points out the latter of the two realisations above - you can't have a denominator in a rational expression which is zero, or is _identically equal to zero_ ($x - x$ is his example).  Given the above notes, it's clear why this is the case.

## Some Form of Concluding Aside
There's not much else to put in this post I don;t think.  So to give things some kind of conclusion, I wanted to share a bit of knowledge I extrapolated from [Petzold](https://www.amazon.co.uk/Annotated-Turing-Through-Historic-Computability/dp/0470229055) which I'm currently reading in parallel to writing this.  Here it comes:

Rational expressions are so called, because they are ratios of something else, i.e. fractions of polynomials.  

I'm guessing here, but based on the fact that the "_rational_ numbers" are ones which can be expressed as _ratios_ of two integers (e.g. $\frac{2}{3}$) I think this isn;t too much of a leap.