---
layout: post
title: "Gelfand: Chunk 11 - Factoring to Zero"
description: "The Second Pass - "
category: 
tags: [gelfand, factoring, difference-of-squares, tricks]
---
{% include JB/setup %}

Factoring is something I remembe
## When am I Done Factoring?

There is an elephant in the room around all this factoring which I want to call out.  In a lot of the worked examples (and solutions) you'll come across you'll frequently see comments like "this could be factored further, but we're not going as it requires techniques that haven't yet been covered.  But when you're learning, how do you know when you've reached this point?

TBC....

## Coping with Annihilated Terms
So you think this Factoring lark is easy eh? Well, there's something we've not yet tackled. Sometimes as part of our terms-collection we ended up with terms where the co-efficient totalled zero and so we removed them all together.  This felt amazing, because we were getting rid of things and achieving increased simplicity as a result.  But now we're going backwards. How do we cope with that?  How can we see what's no longer there?

This is just one of the reasons that factoring is "hard".  (Interestingly, I remember _doing_ factoring at school, I fail to recall any of the details however, most likely due to the terror which this "summoning from the ether" element.)

Gelfand feels our fear, but he encourages us to took into the abyss and jump anyway.  He suggests we look at a factoring of the familiar difference-of-squares to salve our anxiety.  We know the steps because we've worked it the other direction [many a time](Chunk-6).

$$a^2 - b^2 = $$

$$ = a^2 - ab + ab - b^2 = $$

$$ = a(a - b) + b(a - b) = $$

$$ = (a + b)(a - b)$$

That makes sense, but thats because we already knew the steps. He then step sus thorough one which we would not be able to solve were we not to know the answer in advance.

$$x^5 + x + 1 = $$

$$ = x^5 + x^4 + x^3 - x^4 - x^3 - x^2 + x^2 + x + 1 = $$

$$ = x^3(x^2 + x + 1) - x^2(x^2 + x + 1) + (x^2 + x + 1) = $$

$$ = (x^3 - x^2 + 1)(x^2 + x + 1)$$

So how then do we move forward?  It's time to start looking around for more tricks, and to get to our next one Gelfand asks us to cast our mind back to the difference-of-squares we just factored.  Here he highlights a truism which, if we can use it elsewhere, will give us another trick in our toolbox.  Here is the difference-of-squares to stop you going off to get it.

$$ a^2 - b^2 = (a + b)(a - b)$$

The consideration is the one that arises whenever $a = b$.  In these circumstances, the value of the right hand side ($(a + b)(a - b)$) _must_ be zero because one of the factors will be zero (the $(a - b)$ bit) which in turn means that the left hand side ($a^2 - b^2$) _must_ be zero too.  Furthermore, this means that $a^2 = b^2$ when $a = b$.  

Not only this, the other bit of our possible starting factor works in a similar way. If $a + b = 0$ (the other factor on the right hand side) then $a^2 = b^2$ (remember squaring a negative makes it positive - here $a = -b$.)

Aside: Proving that if $a^2 = b^2$ then $a = b$ and $a = -b$.

$$a^2 = b^2$$

$$ \rightarrow a^2 - b^2 = 0 $$

$$ \rightarrow (a - b)(a + b) = 0 $$

$$ \rightarrow a - b = 0 OR a + b = 0 $$

$$ \rightarrow a = b OR a = -b $$

Asides aside, why is this relevant?  Well, Gelfand is drawing our attention to the fact that when factoring a polynomial, it helps to see when it has a zero value.  Why? Because as we've seen more than once before, if you have a single factor of zero, then the outcome of everything will be zero.  Lets try it and see what happens.

## Gelfand Problem 113
We start with this

$$ a^3 - b^3$$

Then we ask ourselves, when will this have a zero value?  And the answer is "when $a = b$", which therefore means it seems reasonable to expect a factor of (a - b).  Let's try.

$$ a^3 - b^3 = $$

You quickly remember (especially if you sneak a peek at Gelfand's solution) that we can't easily jump to the line with $(a - b)$ in it.  It makes sense if you think of what we've done previously, and also our reason for doing this, to facilitate the restoration of annihilated terms.  Therefore

$$ = a^3 - a^2b + a^2b - ab^2 + ab^2 - b^3 = $$

$$ = a^2(a - b) + ab(a - b) + b^2(a - b) = $$

This bit took a bit of thinking.  I knew I was aiming for factors of $(a - b)$, and also new I had annihilated terms to consider.  The last step above is not one Gelfand makes explicit, but I found it handy to bridge the gap to the step below which is the solution.  

$$ = (a - b)(a^2 + ab + b^2) $$

### Gelfand 114
We start with addition this time

$$ a^3 + b^3 = $$

Now we know our factor will be $(a + b)$, and it seems a good deal of the rest will stay the same, as indeed it does.

$$ = a^3 + a^2b - a^2b + ab^2 - ab^2 + b^3 = $$

$$ = a^2(a + b) - ab(a + b) + b^2(a + b) = $$

$$ = (a + b)(a^2 - ab + b^2) $$


