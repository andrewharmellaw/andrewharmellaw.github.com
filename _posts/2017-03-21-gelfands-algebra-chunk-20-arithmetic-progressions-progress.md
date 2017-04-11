---
layout: post
title: "Gelfand: Chunk 20 - Arithmetic Progressions Progress"
description: "Being Part the Second, in a Series of Posts on Progression"
category: 
tags: [gelfand, tricks, arithmetic-progressions, odd, even]
---
{% include JB/setup %}

This is another pretty straight-forward section.  I'm going to leave Gelfand pretty much to his own devices, only providing a summary-gloss over the top.  You might find it useful to read this its entirety, then work through the section, before coming back to this again to check the chunk is embedded nicely.

## Racing Through the Sums

Section 39 of Gelfand ended with a question about calculating the number of terms in a given arithmetic progression. Section 40 opens by using that technique to calculate the sum of the values in a specified range of a given arithmetic progression.

As is his general style, Gelfand begins by asking us to solve a specific problmem in our current domain.  This comes in Problem 185.

Note: The solution to this probelm might remind you of the Gauss solution to Problem 33 which we saw back in ["Chunk 2 - Commutative, Associative and Distributive Laws"](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws).

The next Problem (186) asks us to figure out a general formula for sums of terms.  This is solved for us, and makes a lot of sense if we self-solved problem 185, and also if we looked back at chunk 2.  The general formula is just a symbolic representation of this pairing $(a + b)$ and subsequent multiplication of this by $\frac{n}{2}$.

Problem 187 then points out that we might have been tripped up had we had an odd number of terms.  

Dammit! 

Those dashed odd-numbers again!  Note that the forumla derived to calculate the answer is unchanged, but the mental model that you might be using to get there needs more detail.

Not content with explaining out with numerically, Gelfand then breaks into some of his glorious imagery to explain the latest solution to the current problem in hand.  Personally I found this really mentally-sticky, and it lodged in nice and solid with very little rehersal.

There is a reason Gelfand gave us a picture, and also a reason for his stressing of the _arithmetic_ in the name of the progression - because he was about to introduce the next level of complexity in Problem 188.

This problem is about to illustrate a key property of the geometric progression that is known as "the odd numbers" - that their sums are always perfect squares.

$$1 = 1^2$$

$$1 + 3 = 4 = 2^2$$

$$1 + 3 + 5 = 9 = 3^2$$

$$1 + 3 + 5 + 7 = 16= 4^2$$

etc.

This all very good, but how do we _prove_ this is always the case?  By dropping to the formulas thats how.

Remember, from Problem 186 the formula we need to calculate  is 

$$\frac{n(a + b)}{2}$$

And here $a = 1$ and $b = 2n - 1$ (the formula for calculating any $n$th odd number)

Putting the together we get

$$\frac{n(1 + 2n - 1)}{2}$$

And simplifying

$$ = \frac{n(2n)}{2} = $$

$$ = \frac{n(2n)}{2} = $$

$$ = n^2$$

Proven!  $n^2$ it is.
