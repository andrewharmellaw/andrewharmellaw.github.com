---
layout: post
title: "Gelfand: Chunk 7 - Pascal's Triangle."
tags: [gelfand, powers, square-of-a-sum, difference-of-squares, pascals-triangle]
---
{% include JB/setup %}

## Pascal's Triangle
{% newthought "The introduciton to the Pascal's triangle" %} section of Gelfand has a _lot_ of explanation, combining and extending our previous topics of _Powers_, _Square-of-a-Sum_ and _Difference of Squares_ up to lofty heights of cubes and beyond.  He clearly wants you to mentally arrive at the triangle via the process of constructing it ourselves so you'd better brace yourself and get to it.  The pay-back? You can use Pascal's triangle to do some otherwise-difficult power-work by hand.

Let's crack into the first problem itself. Then we can start to discuss the ramifications.

### Problem 82 (a) Compute {% m %}11^3{% em %}

{% math %}11^3 = {% endmath %}

{% math %} = (10 + 1)^3 = {% endmath %}

{% math %} = 10^3 + 3 \times 10^2 \times 1 + 3 \times 10 \times 1^2 + 1^3 = {% endmath %}

{% math %} = 1000 + 300 + 30 + 1 = {% endmath %}

{% math %} = 1331 {% endmath %}

### Problem 82 (b) Compute {% m %}11^4{% em %}

{% math %} 11^4 = {% endmath %}

{% math %} = (10 + 1)^4 = {% endmath %}

{% math %} = 10^4 + 4 \times 10^3 \times 1 + 6 \times 10^2 \times 1^2 + 4 \times 10 \times 1^3 + 1^4 = {% endmath %}

{% math %} = 10000 + 4000 + 600 + 40 + 1 = {% endmath %}

{% math %} = 14641 {% endmath %}

This is all going swimmingly, and we can see a nice symmetrical result emerging, with the co-efficients of our result-elements echoing the numbers in our nice symmetrical triangle. 

In fact, if you look back at the triangle, not only go we get co-efficient benefits, but you can also see that the ultimate output we're getting in both cases is the same as the numbers in the row in question.  

I.e. the row for {% m %}(a + b)^4 = 14641{% em %} and our answer is {% m %}14641{% em %}.  

When you think about how all this is working, it all kind of makes sense that this would be the outcome too - as we work through, we're repeatedly raising {% m %}10{% em %} to a decreasing power, and then multiplying this by the co-efficient value.  So in that case it's little surprise that {% m %}10^2 \cdot 6{% em %} comes out as {% m %}600{% em %} in the fourth row working above. And it's doing the same thing in all positions, but with different position-relevant powers, and corresponding co-efficients.

Awesome. 

Also, it's about to break though as you might suspect. Let's look at {% m %}11^5{% em %}.

### Problem 83 (c) Compute {% m %}11^5{% em %}

{% math %} 11^5 = {% endmath %}

{% math %} = (10 + 1)^5 = {% endmath %}

{% math %} = 10^5 + 5 \times 10^4 \times 1 + 10 \times 10^3 \times 1^2 + 10 \times 10^2 \times 1^3  + 5 \times 10^1 \times 1^4 + 1^5 = {% endmath %}

{% math %} =  100000 + 50000 + 10000 +  1000 + 50 + 1 = {% endmath %}

{% math %} = 161051 {% endmath %}

Hey! What happened? Because the two co-efficients in the centre are greater than $9$ we're ending up with elements of our sum at the end that burst right out of their position in the decimal number system and get carried over to the next column.  No more pretty echo of Pascal's Triangle.  But it still makes sense, and there is a nice shortcut in [an online answer from Adrian Durham](http://documents.tips/documents/gelfand-algebra-solutions.html) which makes how we get our new answer clear again (I've altered this a tiny bit from Durham's, but the main aspects are all his):

{% math %} 11^5 = {% endmath %}

{% math %} = (10 + 1)^5 = {% endmath %}

{% math %} = 10^5 + 5 \times 10^4 \times 1 + 10 \times 10^3 \times 1^2 + 10 \times 10^2 \times 1^3  + 5 \times 10^1 \times 1^4 + 1^5 = {% endmath %}

{% math %} = 1 \times 10^5 + 5 \times 10^4 + 1 \times 10^4 + 1 \times 10^3 + 5 \times 10 + 1 = {% endmath %}

{% math %} = 1 \times 10^5 + (5 + 1) \times 10^4 + 1 \times 10^3 + 5 \times 10 + 1= {% endmath %}

{% math %} = 1 \times 10^5 + 6 \times 10^4 + 1 \times 10^3 + 0 \times 10 ^2 + 5 \times 10 + 1= {% endmath %}

{% math %} = 100000 + 50000 + 10000 +  1000 + 50 + 1 = {% endmath %}

{% math %} = 161051 {% endmath %}

It's now pretty clear how this still follows the general way of working of our earlier (and simpler) powers, but now with a little carrying thrown into the mix.

## What About _Difference_ of Squares and Beyond?
{% newthought "So" %} we just saw some beauty behind the _Square of a Sum_ and beyond ({% m %}(a + b)^n{% em %}), but what about _Difference of Squares_ (etc)?

There is a trick here too.  Think:

{% math %} a - b = a + (-b) {% endmath %}

Which means we can just take everything we just computed, and apply _Difference of Squares_ to it

{% math %} (a - b)^4 {% endmath %}

{% math %} 1 \times a^4(-b)^0 + 4 \times a^3(-b)^1 + 6 \times a^2(-b)^2 + 4 \times a^1(-b)^3 + 1 \times a^0(-b)^4 {% endmath %}

{% math %} a^4 - 4a^3b + 6a^2b^2 - 4ab^3 + b^4 {% endmath %}

Etc. etc.

Note: remember, when you raise a negative number to an _even power_, it changes to be positive, but when you raise it to an _odd power_, it stays as negative.  (You might realise at this point that this means _all_ even powers are positive, and you'd be right, but we're jumping ahead...)

## Summing the Rows in Pascal's Triangle
{% newthought "What happens" %} when you sum all the values in each row?

Row 1: {% m %}1 = 1{% em %}

Row 2: {% m %}1 + 1 = 2{% em %}

Row 3: {% m %}1 + 2 + 1 = 4{% em %}

Row 4: {% m %}1 + 3 + 3 + 1 = 8{% em %}

Row 5: {% m %}1 + 4 + 6 + 4 + 1 = 16{% em %}

Row 6: {% m %}1 + 5 + 10 + 10 + 5 + 1 = 32{% em %}

Row 7: {% m %}1 + 6 + 15 + 20 + 15 + 6 + 1 = 64{% em %}

Row 8: {% m %}1 + 7 + 21 + 35 + 35 + 21 + 7 + 1 = 128{% em %}

Etc.

The sums are all powers of {% m %}2{% em %}.  And the power is the same as the row number minus {% m %}1{% em %}. E.g. Row 3 {% m %}= 2^{(3-1)} = 2^2 = 4{% em %}.

So why is this?  That's precisely the next question Gelfand wants us to work on, and Durham has another nice solution upon which this example is based:

{% math %} 2^7 = {% endmath %}

{% math %} = (1 + 1)^7 = {% endmath %}

{% math %} =  1 \times 1^71^0 + 7 \times 1^61^1 + 21 \times 1^51^2 + 35 \times 1^41^3 + 35 \times 1^31^4 + 21 \times 1^21^5 + 7 \times 1^11^6 + 1 \times 1^01^7 = {% endmath %}

{% math %} = 1 + 7 + 21 + 35 + 35 + 21 + 7 + 1 = {% endmath %}

{% math %} 128 {% endmath %}

What's he done here?  What's the line of reasoning?  It's terribly simple really.  Remember how, at the start of this post we simplified {% m %}11^n{% em %} by breaking the {% m %}11{% em %} into {% m %}10 + 1{% em %} so we could use the square of sums expansion?  We'll we're doing the same here, but now we're splitting {% m %}2{% em %} into {% m %}1 + 1{% em %}.  

We also know that when we have {% m %}1{% em %} as one of the input into our expansaion that things get quite simple. With two {% m %}1{% em %}s it's simple too, but the position effect that the powers of {% m %}10{% em %} give us is gone.  Now we're just ending up adding our co-efficients.  

That's what you see here, and why we end up with a sum that looks a lot like (because its exactly the same as) the sum on the individual numbers in the relevant row of Pascal's triangle.

## So What Happens When {% m %}a = b{% em %}?
{% newthought "Let's do it first" %} with {% m %}a = b = 2{% em %} and {% m %}n = 7{% em %}

{% math %} (2 + 2)^7 = {% endmath %}

{% math %} =  1 \times 2^72^0 + 7 \times 2^62^1 + 21 \times 2^52^2 + 35 \times 2^42^3 + 35 \times 2^32^4 + 21 \times 2^22^5 + 7 \times 2^21^6 + 1 \times 2^02^7 = {% endmath %}

{% math %} = 1 \times 128 + 7 \times 128 + 21 \times 128 + 35 \times 128 + 35 \times 128 + 21 \times 128 + 7 \times 128 + 1 \times 128 = {% endmath %}

If we pause here it appears as if a pattern is emerging: 

{% math %} (1 + 7 + 21 + 35 + 35 + 21 + 7 + 1) \times 128 = {% endmath %}

{% math %} = 128 \times 128 = {% endmath %}

{% math %} = 128^2 = {% endmath %}

{% math %} = 16384{% endmath %}

Now let's do it with algebra

{% math %} (a + a)^7 = {% endmath %}

{% math %} =  1 \times a^7a^0 + 7 \times a^6a^1 + 21 \times a^5a^2 + 35 \times a^4a^3 + 35 \times a^3a^4 + 21 \times a^2a^5 + 7 \times a^2a^6 + 1 \times a^0a^7 = {% endmath %}

{% math %} = 1 \times a^7 + 7 \times a^7 + 21 \times a^7 + 35 \times a^7 + 35 \times a^7 + 21 \times a^7 + 7 \times a^7 + 1 \times a^7 = {% endmath %}

{% math %} = 128 \times a^7 {% endmath %}

And we already know that {% m %}128{% em %} is {% m %}2^7{% em %}, so our answer for everything is

{% math %} = 2^7 \times a^7 {% endmath %} 

And if we finally replace the {% m %}7{% em %} with {% m %}n{% em %} to complete the generalisation

{% math %} 2^na^n {% endmath %}

Where {% m %}n{% em %} is the row in pascals triangle and {% m %}a{% em %} is the input value.

And now to check, if we put in {% m %}n = 7{% em %} and {% m %}a = 2{% em %}

{% math %} 2^72^7 = {% endmath %}

{% math %} = 128 \times 128 {% endmath %}

{% math %} = 16384 {% endmath %}

Bingo!

And just to link back to the simpler examples we saw before, what about when {% m %}a = b = 1{% em %}?

{% math %} 2^71^7 = {% endmath %}

{% math %} = 128 \times 1 {% endmath %}

{% math %} = 128 {% endmath %}

BingoBingo!

## The Key Thing to Remember
{% newthought "There is always a takeaway" %} from every bit of Gelfand.  It seems (and [Durham](http://documents.tips/documents/gelfand-algebra-solutions.html) echos it) that the thing to remember here is about the sum of the co-efficients on a given row of Pascal's triangle. I.e. {% m %}1 = 1{% em %}, {% m %}1 + 1 = 2{% em %}, {% m %}1 + 2 + 1 = 4{% em %} etc. These are equal to {% m %}2^n{% em %}, where {% m %}n{% em %} is equal to the row number.

Let's say it again 

> "the sum of the co-efficients in Pascal's Triangle are always {% m %}2^n{% em %}, where {% m %}n{% em %} is the row number"

Nice. 

Done.
