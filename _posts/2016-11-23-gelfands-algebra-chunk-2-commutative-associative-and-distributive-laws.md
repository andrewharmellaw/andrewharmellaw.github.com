---
layout: post
title: "Gelfand's Algebra - Chunk 2"
description: "The Commutative, Associative and Distributive Laws"
category: 
tags: [commutative-law, associative-law, distributive-law]
---
{% include JB/setup %}

## The Assocative and Commutative Laws
There are Associative Laws for addition and multiplication:

$$(a + b) + c = a + (b + c)$$
    
and 

$$(ab)c = a(bc)$$

There are additionally Commutative Laws for addition and multiplication:

$$a + b = b + a$$

and

$$ab = ba$$

## The Distributive Law
This law is a rule for removing parentheses:  

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

$$37.25.4 = 37.100 = 3700$$

Example 4: when you need to do some splitting in order to get to the simple parts: 

$$125.37.8 = 5.25.8.37 = 5.200.37 = 1000.37 = 37000$$

Again we're looking to arrange things so we can (re-)state our problem in terms of groups of numbers which are simpler to add  / multiply.

But can we take this trick of "re-arrangement" further and add even more to our kit bag?  The answer is "yes", and it's also our first encounter with Karl Gauss - to many the mathematicians mathematician.

To see this, take a look at Problem 35 (pp. 14) in Gelfand.

### Remove Parentheses with the Distributive Law

Example 5: the Distributive Law can be applied to remove parentheses in increasingly complex scenarios simply by: 

$$(m+n)(a+b) = ma + mb + na + nb$$

## Additional Notes

### Why U No Law Division?
TBC - (refer back to the [previous post]() where we had to introduce "Not Defined" and Real and Rational Numbers...)