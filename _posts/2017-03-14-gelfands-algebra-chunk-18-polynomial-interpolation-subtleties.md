---
layout: post
title: "Gelfand: Chunk 19 - Arithmetic Progressions"
description: ""
category: 
tags: [gelfand, tricks, arithmetic-progressions]
---
{% include JB/setup %}

Lets move through the rest of section 38, one problem at a time, pulling out those problems which have a trick to teach us.

## Problem 165
In this problem we have three points of a second-degree polynomial, $P(x) = ax^2 + bx + c$.  How so?  Notice

$$16 = 4^2$$

$$49 = 7^2$$

$$100 = 10^2$$

We also have three roots, and this is only possible for a second-degree polynomial if $P(x) = 0$ because otherwise we would have too many roots (it would need to be a third-degree polynomial for three roots to be permitted.

For $P(x) = 0$ we would have to have $a = b = c = 0$.

## Trick Arising - Spot the Polynomial, Spot the Degree, Note the Rules
The whole trick is in the title to be honest.  But note how the polymonial was hiding in Problem 165.  Spot that, and then you can bring your knowledge to bear.

## Problem 167
Part (a) was already solved by/for us in Problem 163.  Problem 162 and its solution is also worth re-visiting.

There Gelfand states "any polynomial $P(x)$ such that $P(1) = P(2) = 0$ has the form $P(x) = (x - 1)(x - 2)Q(x)$ where $Q(x)$ is some polynomial."

He goes on "If we also know that $P(x)$ has a degree not exceding $2$ then $Q(x)$ must be a number (otherwise the degree of $P$ will be too big".

In light of this, let's state our answer to (a)

$$2(x - 1)(x - 2)$$

Now we move to (b). Can we solve it in a similar way?  Yup.

We know that here $P(x) = (x - 1)(x - 3)Q(x)$

Substitute in $2$ aiming to get $2$

$$P(2) = (2 - 1)(2 - 3)a = (1)(-1)a = -1 \times a = 2$$

$$\rightarrow a = -2$$

So our answer to (b) is 

$$-2(x - 1)(x - 3)$$

Next is (c). Can we do the same? Yes.

We know that here $P(x) = (x - 2)(x - 3)Q(x)$, so therefore

$$P(1) = (1 - 2)(1 - 3)a = (-1)(-2)a = 2 \times a = 6$$

$$\rightarrow a = 3$$

So our answer to (c) is 

$$3(x - 2)(x - 3)$$

Now we must pause.  We can't use the same trick for (d).  But there is a reason why this is a worked example. We're about to get schooled in another technique.  Can we see how it works?

Lets take stock first. We have three polynomials, each of the second degree.  Now lets look and see if anything about (d) looks familiar... It does! It looks like a mash-up of the non-zero-result bits of (a)-(c).  Can we use this to our advantage?

Yes we can.  We saw in [the previous chunk](https://andrewharmellaw.github.io/2017/03/09/gelfands-algebra-chunk-17-polynomial-and-linear-interpolation) that we could subtract one polynomial form itself, giving us a third polynomial for which $R(x) = 0$.  That felt _a lot like basic maths_ (as we noted).  Here it _seems_ as if we're going to do the reverse. We're going to add together three polynomials, each in the same single variable $x$ (a key point and worth highlighting), and in each case, the areas where they equal $0$ have no effect.  

With this in mind, lets add the results of (a) - (c) together to see how it feels

$$2(x - 1)(x - 2) - 2(x - 1)(x - 3) + 3(x - 2)(x - 3) = $$

$$2x^2 - 6x + 4 - 2x^2 + 8x - 6 + 3x^2 - 15x + 18 = $$

$$ = 2x^2 - 2x^2 + 3x^2 - 6x + 8x - 15x + 4 - 6 + 18 = $$

$$ = 3x^2 - 13x + 16$$

Just like Gelfand.  That feels very clever, but also simple, and repeatable.

## Tricks Arising
### Check You Didn't Already Solve It
Gelfand gives the game away on this one, and you see it happening all the time when you read [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) too.  Sometimes  you've been given an explicit leg-up earlier on by being made to solve a sub-set of the problem, or a simpler version.  

That means, _if something looks (or feels) familiar, then perhaps it is.  Feel free to flick back._

Note, this is also another reason why skipping ahead, even over simple things, is generally a bad idea and will cause you to come unstuck later on.

### Addition and Subtraction is for Everyone
It turns out you can keep addition and subtraction in your kit-bag for more than just the simplest of situations.  I'll bet there are circumstances when you need to be careful, but it seems very powerful.

### Find Complex Polynomials by Splitting Into Simpler Ones and Then Adding Them Up
Problem 168 simply wants you to follow the steps we took above from Problem 167, but with you making up your own (a), (b) and (c) - you're supposed to have noticed there is a more general trick in there.

If you want to see it, [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) has the workings for the solution.

## Problem 170
This problem, while it doesnt add anything new specifically to our arsenal, it is worth stepping through slowly as it requires we use what tools we have gathered so far in a slightly different way.  We're going to follow [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) closely but a little more slowly as usual.

First up, we need to have twigged we're talking about polynomials again (this is just like the Problem 165 starting point remember?) and again in this case a second-degree one.  That means we need to load the $ax^2 + bx + c$ pattern into our level-one matching cache.

With that done, we can bring in a statement that we know to be true:

 * three values are enough to uniquely determine a polynomial of degree two

That could be what we have here.  However, we must also be careful because

 * we don't know if three values cannot over-determine it, because it may be that for some sets of values there are no polynomials that attain them.

This bullet is key, and its something I'm not sure has been highlighted before now. _There may not be a polynomial which can get you the answers you need._

What we _can_ guarantee however is that we can have three separate second-degree polynomials, just like we had in problem 167, such that each one of them can attain one of the values, and the other two values are zero.  E.g.

$$R(10) = 18.37, R(6) = 0, R(2) = 0$$

$$S(10) = 0, S(6) = 0.05, S(2) = 0$$

$$T(10) = 0, T(6) = 0, T(2) = -3$$

Now we have these, we can see that they need no more than two roots each, and so have degrees no greater than two.  And taking it that they do not, then we can combine them back to make our required polynomial, as shown

$$P(x) = R(x) + S(x) + T(x)$$

This polynomial $P(x)$ will therefore also be of a degree no greater than two (because we are _adding_ the various $ax^2, bx$ and $c$ pieces of $R(x), S(x)$ and $T(x)$ - look back at the solution to Problem 167 if you want reassurance) and will be able to produce $P(10) = 18.37, P(6) = 0.05, P(2) = -3$.

Finally we can conclude that numbers $a, b$ and $c$ do exist such that the required results can be satisfied.  We can state this because they will be the co-efficients of $P(x)$.  

$$P(x) = (18.37)x^2 + (0.5)x + (-3)$$

We'll stop here - in fact Gelfand has told us not to go further in our workings.  It all feels a little magical again, and I'd not discourage you if you wanted to fill in the final blanks of this to get to the actual solution to check.  (I might work it out in secret later myself.)

## Problem 171
Gelfand's terse solution wasnt enough for me (yet again).  I needed to work this out a in a slightly more step-wise fashion.

First we know that there are 10 roots - which means the minimal degree of our polynomial is 10.

We also know that the highest co-efficient of $P(x)$ is 1.  This caught me off-guard a little. This is the first explicit mention of a co-efficient in all this  from Gelfand (we brought them in in the solution above, but that was courtesy of Durham.  

I'll be honest, I had to google things at this point.  Some not-very-successful reading later, I realised that "highest" also meant "not greater than" which also meant "might disappear if written out simply".  That, plus looking back to Problems 162 and 163, meant me realise I could factor things like this

$$P(x) = (x - 1)(x - 2)(x - 3)(x - 4)(x - 5)(x - 6)(x - 7)(x - 8)(x - 9)(x - 10)$$

So therefore

$$P(11) = 10 \times 9 \times 8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1 = 3628800$$

Which is the answer we need.

## Conclusion - Please Check Your Understanding
I've a confession to make.  The first time round I thought I had all this chunked and nicely embedded. I hadn't.  These concepts, all tightly related and mutually-reinforcing need to be solidly understood if you are to make good progress beyond this point.

To that end, I'd recommend you go quickly back over this and the previous [two](https://andrewharmellaw.github.io/2017/03/09/gelfands-algebra-chunk-17-polynomial-and-linear-interpolation) [posts](https://andrewharmellaw.github.io/2017/03/07/gelfands-algebra-chunk-16-polynomial-division-remainders) (and perhaps even do some other problems).  Maybe even blog about it (it helps).

When you're done I'll see you in the next post.

(Perhaps I'll go back and re-read these myself first.) 
