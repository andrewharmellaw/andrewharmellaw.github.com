---
layout: post
title: "Gelfand: Chunk 7 - Pascal's Triangle."
description: "It's a Thing of Beauty."
category: 
tags: [gelfand, powers, square-of-a-sum, difference-of-squares, pascals-triangle]
---
{% include JB/setup %}

## Pascal's Triangle
The introduciton to Pascal's triangle section of Gelfand has a _lot_ of explanation, combining and extending Powers, Squares-of-the-Sum and Differences-of_Squares up to lofty heights of cubes and beyond.  He clearly wants you to mentally arrive at the triangle via the process of constructing it ourselves so you'd better brace yourself and get to it.  The pay-back? You can use Pascal's triangle to do some otherwise-difficult power-work by hand.

### Problem 82 (a) Compute $11^3$

$$11^3 = $$

$$ = (10 + 1)^3 = $$

$$ = 10^3 + 3 \times 10^2 \times 1 + 3 \times 10 \times 1^2 + 1^3 = $$

$$ = 1000 + 300 + 30 + 1 $$

$$ = 1331 $$

### Problem 82 (b) Compute $11^4$

$$11^4 = $$

$$ = (10 + 1)^4 = $$

$$ = 10^4 + 4 \times 10^3 \times 1 + 6 \times 10^2 \times 1^2 + 4 \times 10 \times 1^3 + 1^4 = $$

$$ = 10000 + 4000 + 600 + 40 + 1 = $$

$$ = 14641$$

This is all going swimmingly, and we can see a nice symmetrical result emerging, with the co-efficients of our result-elements echoing the numbers in our nice symmetrical triangle. 

In fact, if you look back at the triangle, not only go we get co-efficient beneits, but you can also see that the ultimate output we're getting in both cases is the same as the numbers in the row in question.  

I.e. the row for $(a + b)^4 = 14641$ and our answer is $14641$.  

When you think about how all this is working, it all kind of makes sense that this would be the outcome too - as we work through, we're repeatedly raising $10$ to a decreasing power, and then multiplying this by the co-efficient value.  So in that case its little surprise that $10^2 \cdot 6$ comes out as $600$ in the fourth row working above. And it's doing the same thing in all positions, but with different position-relevant powers, and corresponding co-efficients.

Awesome. It's about to break though as you might suspect. Let's look at $11^5$

### Problem 83 (c) Compute $11^5$

$$11^5 = $$

$$ = (10 + 1)^5 $$

$$ = 10^5 + 5 \times 10^4 \times 1 + 10 \times 10^3 \times 1^2 + 10 \times 10^2 \times 1^3  + 5 \times 10^1 \times 1^4 + 1^5 = $$

$$ =  100000 + 50000 + 10000 +  1000 + 50 + 1 = $$

$$ = 161051$$

Hey! What happened? Because the two co-efficients in the centre are greater than $9$ we're ending up with elements of our sum at the end that burst right out of their position in the decimal number system and get carried over to the next column.  No more pretty echo of Pascal's Triangle.  But it still makes sense, and there is a nice shortcut in [an online answer from Adrian Durham](http://documents.tips/documents/gelfand-algebra-solutions.html) which makes how we get our new answer clear again (I've altered this a tiny bit from Adrian's, but the main aspects are all his):

$$ 11^5 = $$ 

$$ = (10 + 1)^5 = $$

$$ = 10^5 + 5 \times 10^4 \times 1 + 10 \times 10^3 \times 1^2 + 10 \times 10^2 \times 1^3  + 5 \times 10^1 \times 1^4 + 1^5 = $$

$$ = 1 \times 10^5 + 5 \times 10^4 + 1 \times 10^4 + 1 \times 10^3 + 5 \times 10 + 1 = $$

$$ = 1 \times 10^5 + (5 + 1) \times 10^4 + 1 \times 10^3 + 5 \times 10 + 1= $$

$$ = 1 \times 10^5 + 6 \times 10^4 + 1 \times 10^3 + 0 \times 10 ^2 + 5 \times 10 + 1= $$

$$ = 100000 + 50000 + 10000 +  1000 + 50 + 1 = $$

$$ = 161051$$

It's now pretty clear how this still follows the general way of working of our earlier (and simpler) powers, but now with a little carrying thrown into the mix.

## What About _Difference_ of Squares and Beyond?
So we just saw some beauty behind the square-of-a-sumsand beyond ($(a + b)^n$), but what about differences-of-squares (etc)?

There is a trick here too.  Think:

$$a - b = a + (-b)$$

Which means we can just take everything we just computed, and apply differences-of-squares to it

$$(a - b)^4$$

$$1 \times a^4(-b)^0 + 4 \times a^3(-b)^1 + 6 \times a^2(-b)^2 + 4 \times a^1(-b)^3 + 1 \times a^0(-b)^4$$

$$a^4 - 4a^3b + 6a^2b^2 - 4ab^3 + b^4$$

etc. etc.

Note: remember, when you raise a negative number to an _even power_, it changes to be positive, but when you raise it to an _odd power_, it stays as negative.  (You might realise at this point that this means _all_ even powers are positive, and you'd be right, but we're jumping ahead...)

## Summing the Rows in Pascal's Triangle
What happens when you sum all the values in each row?

Row 1: $1 = 1$

Row 2: $1 + 1 = 2$

Row 3: $1 + 2 + 1 = 4$

Row 4: $1 + 3 + 3 + 1 = 8$

Row 5: $1 + 4 + 6 + 4 + 1 = 16$

Row 6: $1 + 5 + 10 + 10 + 5 + 1 = 32$

Row 7: $1 + 6 + 15 + 20 + 15 + 6 + 1 = 64$

Row 8: $1 + 7 + 21 + 35 + 35 + 21 + 7 + 1 = 128$

Etc.

The sums are all powers of 2.  And the power is the same as the row number - 1. E.g. Row 3 $= 2^{(3-1)} = 2^2 = 4$.

So why is this?  That's precisely the next question Gelfand wants us to work on, and Durham has another nice solution upon which this example is based:

$$2^7 = $$

$$= (1 + 1)^7 =$$

$$=  1 \times 1^71^0 + 7 \times 1^61^1 + 21 \times 1^51^2 + 35 \times 1^41^3 + 35 \times 1^31^4 + 21 \times 1^21^5 + 7 \times 1^11^6 + 1 \times 1^01^7 = $$

$$ = 1 + 7 + 21 + 35 + 35 + 21 + 7 + 1 = $$

$$128$$

What's he done here?  What's the line of reasoning?  It's terribly simple really.  Remember how, at the start of this post we simplified $11^n$ by breaking the $11$ into $10 + 1$ so we could use the square of sums expansion?  We'll we're doing the same here, but now we're splitting $2$ into $1 + 1$.  

We also know that when we have $1$ as one of the input into our expansaion that things get quite simple. With two $1$s it's simple too, but the position effect that the powers of $10$ give us is gone.  now we're just ending up adding our co-efficients.  

That's what you see here, and why we end up with a sum that looks a lot like (because its exactly the same as) the sum on the individual numbers in the relevant row of Pascal's triangle.

## So What Happens When a = b?
Let's do it first with $a = b = 2$ and $n = 7$

$$(2 + 2)^7 =$$

$$=  1 \times 2^72^0 + 7 \times 2^62^1 + 21 \times 2^52^2 + 35 \times 2^42^3 + 35 \times 2^32^4 + 21 \times 2^22^5 + 7 \times 2^21^6 + 1 \times 2^02^7 = $$

$$ = 1 \times 128 + 7 \times 128 + 21 \times 128 + 35 \times 128 + 35 \times 128 + 21 \times 128 + 7 \times 128 + 1 \times 128 = $$

If we pause here it appears as if a pattern is emerging: 

$$ (1 + 7 + 21 + 35 + 35 + 21 + 7 + 1) \times 128 = $$

$$ = 128 \times 128 = $$

$$ = 128^2 = $$

$$ = 16384 $$

Now let's do it with algebra

$$ (a + a)^7 =$$

$$ =  1 \times a^7a^0 + 7 \times a^6a^1 + 21 \times a^5a^2 + 35 \times a^4a^3 + 35 \times a^3a^4 + 21 \times a^2a^5 + 7 \times a^2a^6 + 1 \times a^0a^7 = $$

$$ = 1 \times a^7 + 7 \times a^7 + 21 \times a^7 + 35 \times a^7 + 35 \times a^7 + 21 \times a^7 + 7 \times a^7 + 1 \times a^7 = $$

$$= 128 \times a^7$$

And we already know that 128 is $2^7$, so our answer for everything is

$$= 2^7 \times a^7$$

And if we finally replace the $7$ with $n$ to complete the generalisation

$$2^na^n$$

Where $n$ is the row in pascals triangle and $a$ is the input value.

And now to check, if we put in $n = 7$ and $a = 2$

$$2^72^7 =$$

$$= 128 \times 128$$

$$= 16384$$

Bingo!

And just to link back to the simpler examples we saw before, what about when $a = b = 1$?

$$2^71^7 =$$

$$= 128 \times 1$$

$$= 128$$

BingoBingo!

## The Thing to Remember
There is always a takeaway point from every bit of Gelfand.  It seems (and [Durham](http://documents.tips/documents/gelfand-algebra-solutions.html) echos it) that the thing to remember here is about the sum of the co-efficients on a given row of Pascal's triangle. I.e. $1 = 1$, $1 + 1 = 2$, $1 + 2 + 1 = 4$ etc. These are equal to $2^n$, where $n$ is equal to the row number.

Let's say it again 

> "the sum of the co-efficients in Pascal's Triangle are always $2^n$, where $n$ is the row number"

Nice. Done.
