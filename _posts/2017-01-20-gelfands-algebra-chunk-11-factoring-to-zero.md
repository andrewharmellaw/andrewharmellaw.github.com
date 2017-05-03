---
layout: post
title: "Gelfand: Chunk 11 - Factoring to Zero"
description: "The Second Coming - Resurrecting Terms from the Dead"
category: 
tags: [gelfand, factoring, difference-of-squares, square-of-a-sum, roots, powers, tricks]
---
{% include JB/setup %}

## Coping with Annihilated Terms
So after [Chunk 10](https://andrewharmellaw.github.io/2017/01/17/gelfands-algebra-chunk-10-factoring) you think this factoring lark is easy eh? Well, there's something we've not yet tackled. Sometimes as part of our terms-collection we ended up with terms where the co-efficient totalled zero and so we removed them alltogether.  This felt amazing, because we were getting rid of things and achieving increased simplicity as a result.  But now we're going backwards. How do we cope with that?  How can we see what's no longer there?

This is just one of the reasons that factoring is "hard".  (Interestingly as I've been writing this, I remember _doing_ factoring at school. I fail to recall any of the details however, most likely due to the terror which this "summoning from the ether" element.)

## Look for the Zero(s)
Gelfand feels our fear, but he encourages us to took into the abyss anyway.  He suggests we look at a factoring of the familiar difference-of-squares to salve our anxiety.  We know the steps because we've worked it the other direction [many a time](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc).

$$ a^2 - b^2 = $$

$$ = a^2 - ab + ab - b^2 = $$

$$ = a(a - b) + b(a - b) = $$

$$ = (a + b)(a - b)$$

That makes sense, but that's because we already knew the steps. He then steps us through one which we would not (at this point) be able to solve were we not to know the answer in advance.

$$ x^5 + x + 1 = $$

$$ = x^5 + x^4 + x^3 - x^4 - x^3 - x^2 + x^2 + x + 1 = $$

$$ = x^3(x^2 + x + 1) - x^2(x^2 + x + 1) + (x^2 + x + 1) = $$

$$ = (x^3 - x^2 + 1)(x^2 + x + 1)$$

Hmmm. Point made - in life we're not always going to be lucky with the expression we have to factor. So how then do we move forward?  It's time to start looking around for more tricks, and to get to our next one Gelfand asks us to cast our mind back to the difference-of-squares we just factored.  Here he highlights a truism which, if we can use it elsewhere, will give us another trick in our toolbox.  Here is the difference-of-squares again to stop you having to go off and get it.

$$ a^2 - b^2 = (a + b)(a - b)$$

The focus is on simple versions of our situation. The specific consideration here is the one that arises whenever $a = b$.  In these circumstances, the value of the right hand side ($(a + b)(a - b)$) _must_ be zero because one of the factors will be zero (the $(a - b)$ bit) which in turn means that the left hand side ($a^2 - b^2$) _must_ be zero too.  Furthermore, this means that $a^2 = b^2$ when $a = b$.  

Not only this, the other bit of our possible starting factor works in a similar way. If $a + b = 0$ (the other factor on the right hand side) then $a^2 = b^2$ (remember squaring a negative makes it positive - here $a = -b$.)

This is awesome.  We've found a tiny little side door (the when $a = b$ the result is zero one) that is open just a crack, and by forcing a little wedge into it (playing this $a = b$ across both sides of the difference-of-squares) we've found a truism; a first rung on a ladder to the solution as it where.

### Aside: Proving that if $a^2 = b^2$ then $a = b$ and $a = -b$.

$$a^2 = b^2$$

$$ \rightarrow a^2 - b^2 = 0 $$

$$ \rightarrow (a - b)(a + b) = 0 $$

$$ \rightarrow a - b = 0$$ OR $$a + b = 0 $$

$$ \rightarrow a = b $$ OR $$ a = -b $$

Asides aside, why is this relevant?  Well, Gelfand is drawing our attention to the fact that when factoring a polynomial, it helps to see when it has a zero value.  But why is that useful? Because as we've seen more than once before, if you have a single factor of zero, then the outcome of everything will be zero and this then gives us one of our factors.  Let's try it and see what happens.  But we'll pull out the tricks explicitly just before we move to that.

## Tricks Arising
### When Factoring, Find a Simple Case
We got here by trying to see the wood for the trees, and as in many other circumstances on our journey, finding a simple case of something frequently helps, just like it did above.
 
### When Factoring, Look for a Zero Result
The prime example of "a simple case" is when our result is zero.  If you can find this, you have one of your factors pre-rolled. (N.b. a "factor" can be an expression rather than a number, e.g. $(x - 1)$)

## Gelfand Problem 113
We start with this

$$ a^3 - b^3$$

Using our new trick, we then ask ourselves, when will this have a zero value?  And the answer is "when $a = b$", which therefore, by invoking the difference-of-squares, means it seems reasonable to expect a factor of (a - b).

Let's try. Starting from the beginning again

$$ a^3 - b^3 = $$

You quickly remember (especially if you sneak a peek at Gelfand's solution) that we can't easily jump to the line with $(a - b)$ in it.  It makes sense if you think of what we've done previously, and also our reason for doing this, to facilitate the restoration of annihilated terms.  Therefore

$$ = a^3 - a^2b + a^2b - ab^2 + ab^2 - b^3 = $$

$$ = a^2(a - b) + ab(a - b) + b^2(a - b) = $$

This bit took a bit of thinking.  I knew I was aiming for factors of $(a - b)$, and also knew I had annihilated terms to consider.  The last step above is not one Gelfand makes explicit, but I found it handy to bridge the gap to the final step below which is the solution.  

$$ = (a - b)(a^2 + ab + b^2) $$

### Gelfand Problem 114
We start with addition this time

$$ a^3 + b^3 = $$

Now we know our factor will be $(a + b)$, and it seems a good deal of the rest will stay the same as Problem 113; as indeed it does.  (Gelfand points out just this - we can get here from the previous example by substituting $-b$ for the previous $b$.)

$$ = a^3 + a^2b - a^2b + ab^2 - ab^2 + b^3 = $$

$$ = a^2(a + b) - ab(a + b) + b^2(a + b) = $$

$$ = (a + b)(a^2 - ab + b^2) $$

Again I've kept all the individual micro-steps evident, if only for my own clarity.

### Gelfand Problems 115 and 116 (a) and 116 (b)
We've now slid into Gelfand spot-the-pattern territory, and there is indeed a pattern.

First up we're back at a to the power of something minus $b$ to the power of the same thing.  Here we have a a worked example, which I'm going to do too.  Here Gelfand has acquiesced and already put in the extra step for our benefit.

$$a^4 - b^4 = $$

$$ = a^4 - a^3b + a^3b - a^2b^2 + a^2b^2 - ab^3 + ab^3 - b^4 = $$

$$ = a^3(a - b) + a^2b(a - b) + ab^2(a - b) + b^3(a - b) = $$

$$ = (a - b)(a^3 + a^2b + ab^2 + b^3)$$

Awesome. This is just the pattern we would expect, plus the descending-ascending powers pattern familiar to us from our Pascal's triangle encounter back in [Chunk 7](https://andrewharmellaw.github.io/2017/01/05/gelfand-algebra-chunk7-pascals-triangle) and Polynomial-wranging in [Chunk 8](https://andrewharmellaw.github.io/2017/01/10/gelfands-algebra-chun-8-nomials).

Does it work with problem 116(a)?

$$ a^5 - b^5 = $$

$$ = a^5 - a^4b + a^4b - a^3b^2 + a^3b^2 - a^2b^3 + a^2b^3 - ab^4 + ab^4 - b^5 = $$

$$ = a^4(a - b) + a^3b(a - b) + a^2b^2(a - b) + ab^3(a - b) b^4(a - b) = $$

$$ = (a - b)(a^4 + a^3b + a^2b^2 + ab^3 + b^4)$$

Yup.  Brill.

And Problem 116(b)?

$$ a^{10} - b^{10}$$

$$ = a^{10} - a^9b + a^9b - a^8b^2 + a^8b^2 - a^7b^3 + a^7b^3 - a^6b^4 + a^6b^4 - a^5b^5 + a^5b^5 - a^4b^6 + a^4b^6 - a^3b^7 + a^3b^7 - a^2b^8 + a^2b^8 - ab^9 + ab^9 - b^{10} = $$

$$ = a^9(a - b) + a^8b(a - b) + a^7b^2(a - b) + a^6b^3(a - b) + a^5b^4(a - b) + a^4b^5(a - b) + a^3b^6(a - b) + a^2b^7(a - b) + ab^8(a - b) + b^9(a - b) = $$

$$ = (a - b)(a^9 + a^8b + a^7b^2 + a^6b^3 + a^5b^4 + a^4b^5 + a^3b^6 + a^2b^7 + ab^8 + b^9)$$

Done. But that time it got pretty long-winded (as indicated by the overflowing lines in my working above). Don't you get the impression we're supposed to be looking back and spotting things we've done previously which we can go back to?  That's typically Gelfand's modus operandi. Can we do that here?  Perhaps (and [Durham certainly thinks so](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions)) but that's jumping ahead. If we've learned one thing it's to take things at a Gelfand-or-slower pace.  Let's keep going as we are for now.

### Gelfand Problem 116(c)
Suddenly the obvious pattern of the previous questions is broken.

$$a^7 - 1$$

What are we supposed to see here?  A tiny insight comes to me: $1$ is the same as $1^7$.  Does that help?  Maybe. But remember, if we're still applying the same trick (as no more have been introduced) then we're looking for the circumstances when the expression equals zero.  $1 - 1$ is zero, what must $a$ be to equal $1$?  We just said it: $1$!

Let's try that and see

$$1^7 - 1^7 = 0$$

Therefore, we know that $(a - 1)$ must be a factor.  So how do we take this and move to the complete factoring? Back to the thinking.

My next thought is, "have we accidentally come across another trick which we can use here?"  Well, there is the sum of progressively decreasing powers of $a$ that we've seen in our recent solutions (if you squint a bit and realise that in these circumstances $b = 1$ - always - and therefore any power of $b$ is also always $1$, so this just disappears, leaving the steadily decreasing powers $a$ - or $x$ in this case.)  Let's try that.

$$a^7 - 1 = $$

$$ = a^7 + (-a^6 + a^6) + (-a^5 + a^5) + (-a^4 + a^4) + (-a^3 + a^3) + (-a^2 + a^2) + (-a + a) - 1 = $$

And then doing nothing other than moving our parentheses gives us this

$$ = (a^7 + -a^6) + (a^6 + -a^5) + (a^5 + -a^4) + (a^4 + -a^3) + (a^3 + -a^2) + (a^2 + -a) + (a - 1) = $$

And then we can find our $(a - 1)$'s

$$ (a - 1)a^6 + (a - 1)a^5 + (a - 1)a^4 + (a - 1)a^3 + (a - 1)a^2 + (a - 1)a + (a - 1)1 = $$

$$ = (a - 1)(a^6 + a^5 + a^4 + a^3 + a^2 + a + 1)$$

This might have moved a little fast, so pause here if you didn't _entirely_ follow and go back up to the $a^{10} - b^{10}$ example to see how we used that to get here.

## Getting Cleverer with What We Know
Remember a minute ago I suggested that our solution to Problem 116(b) seemed a little long-winded?  Now we get to the point where Gelfand is going to agree with us, but he does it with $a^2 - b^2$ and $a^4 - b^4$.  

"Doesn't one look like a higher power of the other?" he whispers to us.  And he's right.  Let's not just copy him though, and instead apply the same method to our $a^5 - b^5$ and $a^{10} - b^{10}$ problem instead.

$$a^{10} - b^{10}$$

If we cast our mind back to ways to multiply powers (c.f. [Chunk 5](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers) if you need a refresher) we can use the reverse process to split them, and thereby get this

$$a^{10} - b^{10} = (a^5)^2 - (b^5)^2 = $$

And when we have this, it now looks like a difference-of-squares.  Which means we can do this

$$ = (a^5 - b^5)(a^5 + b^5) = $$

And now we can bring to bear our solution from Problem 116(a) above, giving

$$ = (a - b)(a^4 + a^3b + a^2b^2 + ab^3 + b^4)(a^5 + b^5) $$

We could even keep going if we invoked our learnings from Problem 114, but we'll stop here.

This is all working out very nicely. So where next?

## Cheating(ish) with Square Roots and beyond
That's almost it for this chunk, but before we close, there's one more thing to consider.  And this is the first time we're going to encounter roots of the square kind and beyond.  

Note: to help you avoid a future trip-hazard, it's worth pointing out that the term root is overloaded somewhat in Maths, and that at this point we simple mean the ones you're most likely aware of - the roots of numbers, which when multiplied by themselves a number of times give the number that was rooted.  

(If you want to look ahead to a little discussion of the whole troublesome area, jumpt ahead - just for a second to [Aside 2: Roots, Roots and More Roots](https://andrewharmellaw.github.io/2017/04/24/gelfands-algebra-aside-2-roots-roots-and-more-roots))

With this cleared up, let's tackle Problem 117 which is going to get our mind in gear for what is to come.  We start as follows

$$a^2 - 4b^2 = $$

And Gelfand points us at the fact that $4 = 2^2$, so therefore

$$ = a^2 - 2^2b^2 = $$

$$ = a^2 - (2b)^2 = $$

And now we're in familiar difference-of-squares territory, and so

$$ = (a - 2b)(a + 2b)$$

Done.  

Now that trick was pretty elegant, and it allowed us to get to something which we could then fit into one of our power-patterns and move on from there.  So what did we do on a meta level?  Well, we in effect took the square root of something ($4 \rightarrow 2$), and then squared it ($2 \rightarrow 2^2$).  We can use this more explicitly anywhere we like.  And this allows us to do some factoring where we might otherwise not think it possible.

### Problem 118(a)

$$a^2 - 2 = $$

$$ = a^2 - \sqrt{2}^2 = $$

$$ = (a - \sqrt{2})(a + \sqrt{2})$$

### Problem 118(b)

$$a^2 - 3b^2$$

Here we're learning how to use our funamental rules of powers knowledge (from [Chunk 5](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers)) to allow us to spot a way to massage things into our difference-of-squares again.

Here we need to convert $3b^2$ into a "perfect" square. (That's something which is squared to you and I, at this point anyway.)  It might sound a trifle complicated, but really it's a series of incredibly simple steps.  The aim is to square root everything, and then square it all again.  To do that you need to split things up a bit and remember that the square root of a value squared is simply the value itself. 

I'm going to go s-u-p-e-r s-l-o-w on this one just to check you're following.

$$ 3b^2 = $$

$$ = 3 \times b^2 = $$

$$ = (\sqrt{3} \times \sqrt{b^2})^2 = $$

$$ = (\sqrt{3} \times b)^2 = $$

$$ = (\sqrt{3}b)^2$$

This was a little unintuitive to me at first. Now having worked it through howveer it makes perfect sense. I advise you to write it out for yourself longhand as it'll help it stick for you too.

So where does that leave us?  Returning to the start of our problem again we have

$$a^2 - 3b^2 = $$

$$ = a^2 - (\sqrt{3}b)^2 = $$

And this is where we can now apply difference-of-squares

$$ = (a - \sqrt{3}b)(a + \sqrt{3}b)$$

Complet.

### Gelfand Problem 118(c)

$$a^2 + 2ab + b^2 - c^2 = $$

Spot the square-of-a-sum?  Great, lets use it.

$$(a + b)(a + b) - c^2 = $$

$$ = (a + b)^2 - c^2 = $$

At this point I felt super-satisfied with myself that I'd spotted the square-of-a-sum and stopped.  But I'd missed one more pattern - a difference-of-squares.  Let's apply that too.

$$ = (a + b - c)(a + b + c)$$

Awesome.

### Gelfand Problem 118(d)

$$ a^2 + 4ab + 3b^2 $$

Is this a square of a sum?  I couldn't get this to fit due to the $4$ and $3$ as they had no common factor in the co-efficients to extract there.  What were we missing?  If only we could make the $3b^2$ into a $4b^2$, that would be awesome.  So why not do it?  We just add another $b^2$ (Remember as we've added a $b^2$ we also need to subtract one - n.b. annihilated terms, balancing etc. etc.)

$$ a^2 + 4ab + 3b^2 + b^2 - b^2 = $$

$$ = a^2 + 4ab + 4b^2 - b^2$ = $$

Now we have something we can pull into a square-of-a-sum just like we did in 118(c)

$$ = (a + 2b)^2 - b^2 = $$

And from there we can apply difference-of-squares

$$ = ((a + 2b) - b)((a + 2b) + b)$$

That was simple, but it also feels a little bit like magic.  Maths-super-power magic. A feeling I personally nver felt in high school when I was chipping away (unsuccessfully) at all this.

## Tricks Arising

### Need a Square? Pull Apart Your Powers
Remember $a^{10} = (a^5)^2$ - voila! A square!

A word of warning however, this only works when your powers are _even_.  You need another trick for when they are odd.

### Need a Square? Add (and Remove) the Bit You Need
Don't have what you need?  remember, we're all about the annihilated terms here, so why not use this to your advantage (just like we did in problem 118(d)) and add and remove the things you need to give you the terms you need?

Go on, Gelfand (and Durham) have given you permission.

### Advanced Pattern Spotting - Plus, Minus 
Much of our new super-powers are based on our getting to the difference-of-squares or square-of-sums.  Which one?  Look at the signs of the operations ($+$ or $-$) between your terms.  These will give you a clue.

Also note, you might spot the pattern in _a part_ of your current expression.  If you do, its fine to work on that part, and forget about the other bit for a minute until you are ready to return to it. (But don't forget to return.)

### Need a Square? Root it then Square it
Take the square root of something (e.g. $4 \rightarrow 2$), and then square it (e.g. $2 \rightarrow 2^2$).  Then use that in place of your initial number.

This can get a bit more complicated in practice. See Problem 118(b) above for discussion on this.

### Split to Root Everything Individually
If your co-efficient is not 1, then rooting something can seem a little unclear.  But its not hard, there are just some additional intermediate steps which you can  take. 

These are the steps I outlined in trying to solve Problem 118(b).  I'll not repeat myself here.

### Don't Stop Until You Have To
This is more of a tip than a trick, but it also plays to what you'll see in Durham is you've been reading along with him too.  Remembering that there are almost always _many_ ways to factor something, with many intermediate steps and many possible results, how do you know when to stop?  When _you_ can go no further, that's when.  This might be because you're done, or you have no more tricks up your sleeve (remember we're not done with this topic yet - there is one more Chunk to come).  Always make sure you're not just stopping because you feel clever at the step you just took (see my write-up of Problem 118(c) above) and gave yourself a break while you patted yourself on the back.  That would be foolish.

## What's Left?
At this point in our factoring journey, it feels like we've come a long way.) Is there anything left?  Gelfand has one more chunk up his sleeve for us.  And that's the next post.
