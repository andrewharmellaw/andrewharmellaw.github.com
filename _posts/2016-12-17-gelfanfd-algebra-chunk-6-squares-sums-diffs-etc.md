---
layout: post
title: "Gelfand: Chunk 6 - Squares, Sums, Differences etc."
tags: [gelfand, square-of-a-sum, square-of-a-difference, difference-of-squares, short-multiplcation-formulas, tricks]
comments: true
---
{% include JB/setup %}

{% newthought "Now that we have a bunch" %} of the fundamentals and some conventions and core tricks in place, things can start to get fun.  First up are the collection known as the _"Short Multiplication Formulas"_.

There are three of them;

 * _The Square of a Sum_
 * _The Square of a Difference_
 * _The Difference of Squares_

I'd advise you pay close attention to what follows.  These things are going to pop up _a lot_ in your mathematical journey.

## 1. General Definition of Square of a Sum
{% newthought "We saw in the previous post" %} that when you multiply two sums you multiply each term in the first by each term in the second, and then add up all the products.

{% math %}(a + b)(m + n) = {% endmath %}

{% math %} = am + an + bm + bn {% endmath %}

The thing that is defined as the _"Square of a Sum"_ is a special case of this - when the numbers in the parentheses are the same, like so

{% math %} (a + b)(a + b) = {% endmath %}

{% math %} = a^2 + ab + ba + b^2 = {% endmath %}

{% math %} = a^2 + 2ab + b^2 {% endmath %}

Or as it is more formally stated (and more obviously a _"Square of a Sum"_ - there is a sum of {% m %}a{% em %} and {% m %}b{% em %}, and then you multiply that by itself, thereby squaring it)

{% math %}(a + b)^2 = {% endmath %}

{% math %} = a^2 + ab + ba + b^2 = {% endmath %}

{% math %} = a^2 + 2ab + b^2 {% endmath %}

Why is this a thing? Because it allows us to short-cut a form of multiplication which, it turns out, we'll see a lot from now on.

### Detour: The Sum of Two Squares
Be careful, _the Square of a Sum is not the same as a Sum of two Squares_.  The latter's not something "official", and I'm only bringing it out explicitly here for clarity. 

The sum of the squares would be (if it was a thing)

{% math %} a^2 + b^2 {% endmath %}

You can see that the sum of a square is {% m %}2ab{% em %} _less_ than the square of two sums.

So why is it not "a thing"?  It's because there's not much general call for it. The others on the other hand, pop up quite a lot.

## 2. General Definition of the Square of a Difference
{% newthought "Of course," %} sometimes you are dealing with negative rather then positive numbers (or one number _minus another_ it's the same thing).  When this happens, you are _taking things away_ rather than adding them. This is where the _Square of a Difference_ comes in (the "difference" here is what's left after you subtract {% m %}b{% em %} from {% m %}a{% em %})

{% math %} (a - b)^2 = a^2 - 2ab + b^2 {% endmath %}

Another way to state this is in words: 

> "The _Square of a Difference_ is the Sum of two Squares minus two times the product of the terms".

## 3. General Definition of the Difference of Squares
{% newthought "Finally we have" %} the _Difference of Squares_.  This comes into play when you are subtracting one _square_ from another

{% math %} a^2 - b^2 = (a + b)(a - b) {% endmath %}

## All Together Now: "The Short Multiplcation Formulas"
{% newthought "Let's put all these next to each other." %}  Together, these two are know as the _"Short Multiplication Formulas"_.  It's easy to see why - they shorten (and simplify) multiplcation for you.  It's worth at this point laying them out next to each other to see their comparative sizes.  

The largest is the _Square of a Sum_ and the next after that is the _Square of a Difference_, with the _Difference of Squares_ bringing up the rear.

{% math %} (a + b)^2 \geq (a - b)^2 \geq a^2 - b^2 {% endmath %}

Why {% m %}\geq{% em %} and not {% m %}\gt{% em %}? Because one or both of the terms might be {% m %}0{% em %}.

## Tricks Arising

### Hard Squares can be Split out into Simpler Pieces
Again following on from some of the break-out tricks from [post 2 (Commutative, Associative and Distributive Laws)](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws) you can split a square you can't calculate simply into two you can, apply the _Square of a  Sum_ pattern, and add the results.

{% math %} 101^2 = {% endmath %}

{% math %} = (100 + 1)^2 = {% endmath %}

{% math %} = 100^2 + 2 \cdot 100 \cdot 1 + 1^2 = {% endmath %}

{% math %} = 10000 + 200 + 1 = {% endmath %}

{% math %} = 10201 {% endmath %}

