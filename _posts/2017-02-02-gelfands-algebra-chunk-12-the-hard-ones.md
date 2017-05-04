---
layout: post
title: "Gelfand: Chunk 12 - The Hard Ones"
description: "Still Factoring..."
category: 
tags: [gelfand, tricks, factoring, powers, difference-of-squares]
---
{% include JB/setup %}

## Something Fails. Then Something New Comes Along
(And by "comes along" I mean Gelfand gifts us another trick-nugget.)

In Problem 119, Gelfand asks us to factor $a^4 + b^4$.  It looks simple enough.  But it's not.  Spot the '$+$'.  That, plus the pesky even-ness of the powers mean our seemingly all-conquering tricks have encountered a crack in their armour.  

But let's pretend for a minute that we didn't know this. What would we have tried to do (and failed?). Probably something like the following which takes inspiration from our workings in the [previous chunk - Factoring to Zero](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero).

$$a^4 + b^4 = $$
 
$$ = a^4 + a^3b - a^3b + a^2b^2 - a^2b^2 + ab^3 - ab^3 - b^4 = $$

That first bit works; now the next step - pulling out the factor $(a + b)$.  We might start by copying the line straight from the $a^4 - b^4$ example we're following which gives us

$$ = a^3(a + b) + a^2b(a + b) + ab^2(a + b) + b^3(a + b)  = $$

We know this is wrong, because we lifted it from $a^4 - b^4$, but how do we make it right? We know we need to get our negatively-signed terms which we un-annihilated from somewhere.  When we were starting with powers of three, this was easy. We would have had the following, with the middle term negative

$$a^2(a + b) - ab(a + b) + b^2(a + b)$$

But here we have two terms, $a^2b(a + b)$ and $ab^2(a + b)$ to deal with.  Do we make the first one negative and leave the other?  What happens then?

$$ = a^3(a + b) - a^2b(a + b) + ab^2(a + b) + b^3(a + b)  = $$

$$ = a^4 + a^3b - a^3b - a^2b^2 + a^2b^2 + ab^3 + ab^3 + b^4 = $$

Hmmm, that's _almost_ right, but we have two positive $ab^3$s.  That's bad.

So what happens if we make _both_ middle-terms negative? (Making the second middle term negative while leaving the first positive gives us nothing new.)

$$ = a^3(a + b) - a^2b(a + b) - ab^2(a + b) + b^3(a + b)  = $$

$$ = a^4 + a^3b - a^3b - a^2b^2 - a^2b^2 - ab^3 + ab^3 + b^4 = $$

That solves our $ab^3$ problem, but now we have two negative $a^2b^2$s.  That sucks.  Both options failed us. It seems we're screwed. 

But before we get pulled into the Sough of Despond, let's see if we can pull any good from this.

## Trick Clarifications Arising
### When Factoring with _Odd Powers_ Ask "What Gives a Zero Result?"
It turns out that to use the "Ask 'What Gives a Zero Result'" trick - the one which until now had felt pretty generally-awesome - you need to be working with an _odd_ power, because that gives you an odd number of terms to work with at the key step.  If you're working with even powers, you're out of luck as you can't get the positives and negatives to match up.

But what about the other power-move Gelfand showed us in Problem 115: The one where $(a^4 - b^4) = (a - b)(a + b)(a^2 + b^2)$?

That's a nice option of a first step for us (albeit with the wrong sign as the starting point) but even if we solved that, we would still get left with $(a^2 + b^2)$ which feels like we should be able to factor it further.  Hmmm.

But wait, we're jumping ahead because Gelfand is about to get round to this after giving us a hint to solve our problem - trying $2a^2b^2$.  Let's see what happens

$$a^4 + b^4 = $$

$$ = a^4 + 2a^2b^2 - 2a^2b^2 + b^4 = $$

Can we see a pattern from here?  We could take things back to the difference-of-squares is we can jiggle powers round a little

$$ = a^4 + 2a^2b^2 + b^4 - 2a^2b^2 = $$

$$ = (a^2 + b^2)^2 - (\sqrt{2}ab)^2 = $$

$$ = (a^2 + b^2 + \sqrt{2}ab)(a^2 + b^2 - \sqrt{2}ab) $$

That seems quite nice.

## More Tricks Arising (Taking Stock)
Gelfand now wants us to have a checkpoint.  A fuller one than we just had, and then use this to launch off again into something even more generic.  

Let's do this the only way we know how; by pulling out the Tricks.

### If You Have "Something-to-a-Power _Minus_ Something-Else-to-the-Same-Power One Factor Will Be $(a - b)$
He points out that when we have $a^n - b^b$ (something to a power _minus_ something else to the same power) for any positive integer $n$ then we can factor it - one of the factors will be $(a - b)$.  

### If You Have "Something-to-a-Power _Plus_ Something-Else-to-the-Same-Power, _and your Power is Odd_, One Factor Will Be $(a - (-b))$
He goes further, pointing out that when $n$ is _odd_ and we are working with _addition_ of powers, then we can just swap in $-b$ for $b$ in the above solution.

### If You Have "Something-to-a-Power _Plus_ Something-Else-to-the-Same-Power, _and your Power is Even_, Find Your Squares and Mix in $2a^nb^n$
And what we just saw in Problem 119 was the gateway to the final element in our general situation: when $n$ is _even_ and we are working with _addition_ of one power from the other.  I.e. when it's $a^2 + b^2$, $a^4 + b^4$, $a^6 + b^6$, etc.

## A Decision-Tree for All Your Power-Plus-Power Factoring Needs
So we can't derive a general rule for this. But we can we re-state things in our sibling-problems in a way which means we can use this trick again unchanged?  Yup. 

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

Now all we're left with is the slightly-trickier case of $a^2 + b^2$ - but that's not tricky if we just invent a new type of number (which $\sqrt{-1}$ requires in order to do this) which mathematicians called _complex numbers_ (but that's another post).

We'll just conclude this post with some commentary on the remaining "more difficult problems" with which Gelfand signs off this section.

## The "More Difficult Problems"
### Problem 122(a)

Use the previous solution from Problem 119, making $a = x$ and $b = 1$. (Remember, $1 = 1^4 = 1^n$.)

$$x^4 + 1 = $$

$$ = x^4 + 1^4 = $$

$$ = x^4 + 2a^21^2 + 1^4 - 2a^21^2 = $$

$$ = (x^2 + 1^2)^2 - (\sqrt{2}x \times 1)^2 = $$

$$ = (x^2 + 1 + \sqrt{2}x)(x^2 + 1 - \sqrt{2}x)$$

### Problem 122(b)

First we expand everything so see where we're at

$$x(y^2 - z^2) + y(z^2 - x^2) + z(x^2 - y^2) = $$

$$ = xy^2 - xz^2 + yz^2 - yx^2 + zx^2 - zy^2 = $$

Then we group around one of our variables, $x$ seems like as good an option as any

$$ = (z - y)x^2 + (y^2 - z^2)x + yz^2 - zy^2 = $$

Now spot the difference of squares in the middle ($(y^2 - z^2)$) which we can factor out

$$ = (z - y)x^2 + (y + z)(y - z)x + yz^2 - zy^2 = $$

And then pull out a simple factor from the last two terms

$$ = (z - y)x^2 + (y + z)(y - z)x + yz(z - y) = $$

Now we pause. Can we go further?  A common factor of $(z - y)$ is _almost_ emerging, it's just that tricksy difference-of-squares which is making life hard.  Can we re-jig things?  We can

$$ = (z - y)x^2 - (y + z)(z - y)x + yz(z - y) = $$

Now we can pull out this factor

$$ = (z - y)(x^2 - (y + z)x + yz) = $$

Great. Can we go further?  What about the $(x^2 - (y + z)x + yz)$ itself?

We can take this piece on it's own for a second and see where we can get.  First up we expand the middle term

$$ x^2 - (y + z)x + yz = $$

$$ = x^2 - xy - xz + yz = $$

That then looks like a nice and simple factoring around these three variables

$$ = (x - y)(x - z)$$

So we can then put it all back together to get our final answer

$$(z - y)(x - y)(x - z)$$

Beautiful.

### Problem 122(c)

Use the same approach as we saw working in Problem 111.

### Problem 122(d)
[Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) thinks this is tough. I agree.  I couldnt find another way to factor it.

### Problem 122(e)
Start off by multiplying out $(a + b + c)^3$.  Then looking back to the solution from Problem 122(b) gave some hints as to a possible factor.

### Problem 122(f)
Two options here which Durham expands on:

* use Pascal's triangle to multiply out all cubes, then go from there,
* use the solution to Problem 114 to start you off.

## Meta-Trick: There isn't Always a Single, Simple Trick
We've seen it a little before, but with this Chunk, we're now beginning to confront head on that the fact that the subtleties of numbers and things you can  (and can't do to them) most usually have a set of tricks applied to their solving rather than just one. What is more, the applicability of those tricks depends upon things like whteher a given key number is odd or even, and / or there is positive / addition vs negative / subtraction.  And don't forget zero - the o-so-special case.

This all means you frequently need to have a second level of awareness in your pattern-spotter and trick-matcher which allows you take this into account.

## Terminology
 * [Complex Numbers](https://www.mathsisfun.com/numbers/complex-numbers.html) (from MathsIsFun.com)
