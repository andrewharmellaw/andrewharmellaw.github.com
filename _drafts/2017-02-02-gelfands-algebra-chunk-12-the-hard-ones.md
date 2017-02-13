---
layout: post
title: "Gelfand: Chunk 12 - The Hard Ones"
description: "Still Factoring..."
category: 
tags: [gelfand, tricks, factoring, difference-of-squares]
---
{% include JB/setup %}

## Something Fails; Then Something New Comes Along
(And by "comes along" I mean Gelfand gifts us another trick-nugget.)

In Problem 119, Gelfand asks us to factor $a^4 + b^4$.  It looks simple enough.  But it's not.  Spot the '$+$'.  That, plus the pesky even-ness of the powers mean our seemingly all-conquering tricks have encountered a crack in their armour.  

But let's pretend for a minute that we didn't know this. What would we have tried to do (and failed?). Probably something like this

$$a^4 + b^4 = $$
 
$$ = a^4 + a^3b - a^3b + a^2b^2 - a^2b^2 + ab^3 - ab^3 - b^4 = $$

That first bit works; now the next step - pulling out the factor $(a + b)$.  We might start by copying the line straight from the $a^4 - b^4$ example we're following which gives us

$$ = a^3(a + b) + a^2b(a + b) + ab^2(a + b) + b^3(a + b)  = $$

We know this is wrong, because we lifted it from $a^4 - b^4$, but how do we make it right? We know we need to get our negatively-signed terms which we un-annihilated from somewhere.  When we were starting with powers of three, this was easy. We would have had the following, with the middle term negative

$$a^2(a + b) - ab(a + b) + b^2(a + b)$$

But here we have two terms - $a^2b(a + b)$ and $ab^2(a + b)$ - to deal with.  Do we make the first one negative and leave the other?  What happens then?

$$ = a^3(a + b) - a^2b(a + b) + ab^2(a + b) + b^3(a + b)  = $$

$$ = a^4 + a^3b - a^3b - a^2b^2 + a^2b^2 + ab^3 + ab^3 + b^4 = $$

Hmmm, that's _almost_ right, but we have two positive $ab^3$s.  That's bad.

So what happens if we make _both_ middle-terms negative? (Making the second middle term nagative while leaving the first positive gives us nothing new.)

$$ = a^3(a + b) - a^2b(a + b) - ab^2(a + b) + b^3(a + b)  = $$

$$ = a^4 + a^3b - a^3b - a^2b^2 - a^2b^2 - ab^3 + ab^3 + b^4 = $$

That solves our $ab^3$ problem, but now we have two negative $a^2b^2$s.  That sucks.  Both options failed us. It seems we're screwed. 

But before we get pulled into the Sough of Despond, lets see if we can pull any good form this.

It turns out that to use this trick - the one which until now had felt pretty generally-awesome - you need to be working with an _odd_ power, because that gives you an odd number of terms to work with at the key step.  If you're working with even powers, you're out of luck as you can't get the positives and negatives to match up.

But what about the other power-move Gelfand showed us: The one where $(a^4 - b^4) = (a - b)(a + b)(a^2 + b^2)$?

That's a nice option of a first step for us (albeit with the wrong sign as the starting point) but even if we solved that, we would still get left with $(a^2 + b^2)$ which feels like we should be able to factor it further.  And now we're jumping ahead because Gelfand is about to get round to this after giving us a hint to solve our problem - trying $2a^2b^2$.  Let's see what happens

$$a^4 + b^4 = $$

$$ = a^4 + 2a^2b^2 - 2a^2b^2 + b^4 = $$

Can we see a pattern from here?  We could take things back to the difference-of-sqaures is we can jiggle powers round a little

$$ = a^4 + 2a^2b^2 + b^4 - 2a^2b^2 = $$

$$ = (a^2 + b^2)^2 - (\sqrt{2}ab)^2 = $$

$$ = (a^2 + b^2 + \sqrt{2}ab)(a^2 + b^2 - \sqrt{2}ab) $$

That seems quite nice.

## Taking Stock
Gelfand now wants us to have a checkpoint.  A fuller one than we just had, and then use this to launch off again into something even more generic.  

He points out that when we have $a^n - b^b$ (something to a power _minus_ something else to the same power) for any positive integer $n$ then we can factor it - one of the factors will be $(a - b)$.  

He goes further, pointing out that when $n$ is _odd_ and we are working with _addition_ of powers, then we can just swap in $-b$ for $b$ in the above solution.

And what we just saw in Problem 119 was the gateway to the final element in our general situation: when $n$ is _even_ and we are working with _addition_ of one power from the other.  I.e. when it's $a^2 + b^2$, $a^4 + b^4$, $a^6 + b^6$, etc.

So can we derive a general rule for this?  Or even better, can we re-state things in our sibling-problems in a way which means we can use this trick again unchanged?  Yes, we can.  

When $n$ is _even_ and we're adding powers

$$a^{2n} + b^{2n} = $$

$$ = (a^n)^2 + (b^n)^2 = $$

$$ = (a^n)^2 + 2a^nb^n + (b^n)^2 - 2a^nb^n = $$

$$ = (a^{2n} + b^{2n})^2 - (\sqrt{2}(a^n)(b^n))^2 = $$

$$ = (a^{2n} + b^{2n} + \sqrt{2}(a^n)(b^n))(a^{2n} + b^{2n} - \sqrt{2}(a^n)(b^n))$$

And when $n$ is _odd_ and we're adding powers

$$a^{2n} + b^{2n} = $$

$$ = (a^n)^2 + (b^n)^2 = $$

$$ = (a^2 + b^2)((a^2)^{n-1} - (a^2)^{n-2}b^2 + (a^2)^{n-3}(b^2)^2) - ... - (a^2)(b^2)^{n-2} + (b^2)^{n-1})$$

Brilliant!

Now all we're left with is the slightly-trickier case of $a^2 + b^2$ - but that's not tricky if we just invent a new type of number (which $\sqrt{-1}$ requires in order to do this) which mathematicians called _complex numbers_ (but that's another post.

We'll just conclude this post with some commentary on the remaining "more difficult problems" with which Gelafnd signs off this section.



## Meta-Trick: There isn't Always a Single, Simple Trick
We've seen it a little before, but with this Chunk, we're now beginning to confront head on that the fact that the subtleties of numbers and things you can  (and can't do to them) most usually have a set of tricks rather than just one, and the applicability of those tricks depends upon things like odd vs even, and positive / addition vs negative / subtraction.  And don't forget zero - the o-so-special case.