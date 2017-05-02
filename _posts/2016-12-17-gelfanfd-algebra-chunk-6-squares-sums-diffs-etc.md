---
layout: post
title: "Gelfand: Chunk 6 - Squares, Sums, Differences etc."
description: "Pretty Much the Short Multiplication Formulas."
category: 
tags: [gelfand, square-of-a-sum, square-of-a-difference, difference-of-squares, short-multiplcation-formulas, tricks]
---
{% include JB/setup %}

Now that we have a bunch of the fundamentals and some conventions and core tricks in place, things can start to get fun.  First up are the collection known as the "Short Multiplcation Formulas".

There are three of them, called:

 * The Square of a Sum
 * The Square of a Difference
 * The Difference of Squares

## 1. General Definition of Square of a Sum
We saw in the previous post that when you multiply two sums you multiply each term in the first by each term in the second, and then add up all the products.

$$(a + b)(m + n) = $$

$$ = am + an + bm + bn$$

The thing that is defined as the "Square of a Sum" is a special case of this - when the numbers in the parentheses are the same, like so

$$(a + b)(a + b) = $$

$$ = a^2 + ab + ba + b^2 = $$

$$ = a^2 + 2ab + b^2$$

Or as it is more formally stated (and more obviously a "square of a sum" - there is a sum of $a$ and $b$, and then you multiply that by itself, squaring it)

$$(a + b)^2 = $$

$$ = a^2 + ab + ba + b^2 = $$

$$ = a^2 + 2ab + b^2$$

Why is this a thing? Because it allows us to short-cut a form of multiplication which, it turns out, we'll seea lot from now on.

### Detour: The Sum of Two Squares
Be careful, _the Square of a Sum is not the same as a Sum of two Squares_.  The latter's not something "official", and I'm only bringing it out explicitly here for clarity. 

The sum of the squares would be (if it was a thing)

$$a^2 + b^2$$

You can see that the sum of a square is $2ab$ _less_ than the square of two sums.

So why is it not "a thing"?  It's because there's not much general call for it. The others on the other hand, pop up quite a lot.

## 2. General Definition of the Square of a Difference
Of course, sometimes you are dealing with negative rather then positive numbers (or one number _minus another_ it's the same thing).  When this happens, you are _taking things away_ rather than adding them. This is where the Square of a Difference comes in (the "difference" here is what's left after you subtract $b$ from $a$)

$$(a - b)^2 = a^2 - 2ab + b^2$$

Another way to state this is in words: 

 > "The Square of a Difference is the Sum of two Squares minus two times the product of the terms".

## 3. General Definition of the Difference of Squares
Finally we have the Difference of Squares.  This comes into play when you are subtracting one _square_ from another

$$a^2 - b^2 = (a + b)(a - b)$$

## All Together Now: "The Short Multiplcation Formulas"
Let's put all these next to each other.  Together, these two are know as the "Short Multiplcation Formulas".  It's easy to see why - they shorten (and simplify) multiplcation for you.  It's worth at this point laying them out next to each other to see their comparative sizes.  

The largest is the Square of a Sum and the next after that is the Square of a Difference, with the Difference of Squares bringing up the rear.

$$(a + b)^2 \geq (a - b)^2 \geq a^2 - b^2$$

Why $\geq$ and not $>$? Because one or both of the terms might be $0$.

## Tricks Arising

### Hard Squares can be Split out into Simpler Pieces
Again following on from some of the break-out tricks from [Post 2: Commutative, Associative and Distributive Laws](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws) you can split a square you can't calculate simply into two you can, apply the Square of the  Sum pattern, and add the results.

$$101^2 = $$

$$ = (100 + 1)^2 = $$

$$ = 100^2 + 2 \cdot 100 \cdot 1 + 1^2 = $$

$$ = 10000 + 200 + 1 = $$

$$ = 10201$$

