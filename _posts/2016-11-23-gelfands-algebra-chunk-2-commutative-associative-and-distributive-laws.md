---
layout: post
title: "Gelfand's Algebra - Chunk 2"
description: "The Commutative, Associative and Distributive Laws"
category: 
tags: [commutative-law, associative-law, distributive-law]
---
{% include JB/setup %}

## The Assocative and Commutative Laws
These laws allow you ti jiggle around the numbers in your sums and multiplications, to make it easier to do in your head.

There are Associative Laws for addition:

$$(a + b) + c = a + (b + c)$$
    
and multiplication:

$$(ab)c = a(bc)$$

The Associative Laws are all about the order in which you do the individual sums / multiplications in a bigger expression.

There are Commutative Laws for addition:

$$a + b = b + a$$

and multiplication:

$$ab = ba$$

The Commutative Laws are about the fact you can move numbers around in a bigger expression.

## The Distributive Law
The Distributive Law is a rule for removing parentheses:  

$$c(a + b) = ca + cb$$

From Gelfand (pp. 15) : "To multiply two sums you need to multiply each term of the first sum by each term in the second one and then add them all together."

## Tricks Arising

### Simplifying Addition with the Associative Law

Example 1: when the pieces are already in place to simplify: 

$$1 + 357 + 17999 = 357 + (1 + 17999) = 357 + 18000 = 18357$$

Example 2: when you need to do some splitting in order to get the simple parts: 

$$357 + 17999 = (356 + 1) + 17999 = 356 + (1 + 17999) = 356 + 18000 = 18356$$

Remember, we saw in the [previous post]() how we can use the Associative Law to make application of the Standard Multiplcation Algorithm simpler, and to spot patterns 

In all these cases we're looking to arrange things so we can (re-)state our problem in terms of groups of numbers which are simpler to add / multiply. This "simpler" form is usually one where there are lots of $0$'s which ultimately results in lots of simple column arithmetic, and therefore no carries, and therefore less to wrangle with in your working memory. (And less chance of errors.)

### Simplifying Multiplication with the Commutative Law

Example 3: when pieces are already in place to simplify: 

$$37 x 25 x 4 = 37 x 100 = 3700$$

Example 4: when you need to do some splitting in order to get to the simple parts: 

$$125 x 37 x 8 = 5 x 25 x 8 x 37 = 5 x 200 x 37 = 1000 x 37 = 37000$$

Again we're looking to arrange things so we can (re-)state our problem in terms of groups of numbers which are simpler to add  / multiply.

But can we take this trick of "re-arrangement" further and add even more to our kit bag?  The answer is "yes", and it's also our first encounter with Karl Gauss - to many the mathematicians mathematician.

To see this, take a look at Problem 35 (pp. 14) in Gelfand.

### Remove Parentheses with the Distributive Law

Example 5: the Distributive Law can be applied to remove parentheses in increasingly complex scenarios simply by: 

$$(m+n)(a+b) = ma + mb + na + nb$$

## Additional Notes

### Why U No Laws for Division?
TBC - (refer back to the [previous post]() where we had to introduce "Not Defined" and Real and Rational Numbers...)
