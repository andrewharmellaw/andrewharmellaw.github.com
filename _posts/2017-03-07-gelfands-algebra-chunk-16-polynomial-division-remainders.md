---
layout: post
title: "Gelfand: Chunk 16 - Polynomial Division - Remainders, Bezout and Roots"
description: "More Factoring Tricks FTW!"
category: 
tags: [gelfand, bezout, division, polynomials, remainder-theorem, tricks, factoring, roots]
---
{% include JB/setup %}

## There Must be an Easier Way...
All this polynomial division is very exciting and all, but it's also very long-winded.  Surely there's an easier way? (At least in certain circumstances?)

Reassuringly there is, at least for remainders, and factoring, and this is all up next, courtesy of [Bezout](https://en.wikipedia.org/wiki/%C3%89tienne_B%C3%A9zout) and his Remainder Theorem.  

I'll let you go to Gelfand (section 37) for the simple reason why this works, but in general, if $P$ is an arbitrary polynomial (i.e. any polynomial in a single variable, $x$ in what follows) which we want to divide by $x - a$ then we can use the following equality to give us a jump on things:

$$P(x) = (\hbox{quotient})(x - a) + (\hbox{remainder})$$

This simple formula gives us a bunch of cool stuff and these cool things are the subject of the rest of this post.

## Tricks Arising

### Find the Remainder Quickly and Simply - Bezout's Remainder Theorem
We can use Bezout's theorem in a sneaky way. To find the remainder when $P$ is divided by $x - a$, simply substitute $a$ for $x$. We don't need to calculate the quotient to be able to do this either.

E.g. we have a polynomial P which is $x^4$, and we want to know what the remainder is when we divide it by $x - 2$.  In this scenario, $a = 2$, and we can put this along with $x = 2$ into our equality.

$$2^4 = (\hbox{quotient})(2 - 2) + (\hbox{remainder})$$

$$16 = (\hbox{quotient})\cdot 0 + 16$$

This is called the Remainder Theorem, and it was discovered by Etienne Bezout.  

Note, this is only a method to find the remainder. If you need the quotient, you still have to take the long way round as we described in the previous post.

### Find out if $P$ is Divisible by $x - a$, aka "Roots" to Factoring Joy
The previous trick was nice, but not too magical.  Up next is a consequence of Bezout's theorem, and it's going to give us another weapon in our fight against factoring.  

Now _that's_ magical.

First we need to take a step back.  Two in fact. Forget about polynomials, and forget about division.  We're going to introduce properly the concept of _roots_.

Polynomials have things called _roots_. If I tell you they are also called a "zero" you might think back to the last time we heard the "zero" word with regards to factoring, in [Chunk 11 - Factoring to Zero](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero).  In that post we found great solace for our annihilated-terms woes by "looking for the zero result".

Gelfand is now going to take the finding-the-remainder element of this approach, and bring us up to speed with roots in general (without explicitly calling out the link I've just made - I found it by [reading around the topic](http://www.sosmath.com/algebra/factor/fac02/fac02.html)).

The definition of a root $x = a$ of a function $f(x)$ from the above linked page is as follows:

$$f(a) = 0$$

I.e. the number represented by $a$ is a root of the function represented by $f(x)$ because when you make $a = x$ the result is $0$.

Pause a while for that to sink in.  It's very simple, but powerful.  It means if we find an $a$ (and there could be more than one, then we have a root of $f(x)$.

Now consider the fact that $f(x)$ is just another way of representing our polynomial, $P$.  We have seen that $a$ is the root of this polynomial. When this is the case,  $x - a$ will be a factor (because $x - a = 0$, we're just rearranging our expression using standard laws).  

That last bit might have been a bit fast, so lets step up on it slowly, and we'll do it from the Bezout angle this time.

Remember this from Bezout?

$$P(x) = (\hbox{quotient})(x - a) + (\hbox{remainder})$$

If we state Bezout in a _different_ way we then can see why this is a consequence.  

"To find whether polynomial $P$ is divisible by $x - a$ (without remainder), test whether it becomes zero after substitution of $a$ for $x$."

That means (and it's not too much of a brain stretch to see it) that when you put a value into your polynomial $P$, and the result does become zero, then it is divisible by $x - a$, then that means $a$ is a _root_ of $P$.  (We have _rooted_ our polynomial $P$.)  That also means $x - a$ is a _factor_ of $P$.

One last point (perhaps self evident, but I dislike loose ends). How does this relate to division (polynomial or otherwise)?  Remember, a two or more factors are the result of _dividing_ a polynomial.  To get back to the original polynomial, you simply take their product (which is just a fancy maths word for _multiply_ them).  Bezout's formula is simply one which make evident both sides of the situation - a polynomial in entirety, and the same, but broken into pieces by division and about to be multiplied and added up again.
 
## Too Magical? Lets Check With Some Problems
Does that seem a little too magical?  Are you feeling that adding strings to factoring bows should be harder-fought?  lets tackle some of the followiung problems to check.

### Problem 146(a)

$$x^4 + 5x - 6$$

Lets start trying values for $x$ to see if we get a zero result.  $0$ first.

$$0^4 + 5 \cdot 0 - 6 = $$

$$ = 0 + 0 - 6 = $$

$$ = -6$$

Nope. Not the answer we were looking for.  How about $1$?

$$1^4 + 5 \cdot 1 - 6 = $$

$$ = 1 + 5 - 6 = $$

$$ = 0$$

Super!  That means $1$ is a root of $x^4 + 5x - 6$, which in turn means that $x - 1$ must be a factor of the same polynomial.

To factor from here we need to use the good-ole polynomial division to see what's left once we factor out $x - a$

$$
\require{enclose}
\begin{array}{rll}
   x^3  + x^2 \phantom{0} + x + 6 \phantom{00000} && \hbox{} \\[-3pt]
   x - 1 \enclose{longdiv}{x^4 \phantom{000000000} + 5x - 6}\kern-.2ex \\[-3pt]
      \underline{x^4 - x^3 \phantom{0000000000000}} && \hbox{} \\[-3pt]
      x^3 \phantom{00000} +5x -6 && \hbox{} \\[-3pt]
      \underline{x^3 \phantom{0} - x^2\phantom{00000000}} && \hbox{} \\[-3pt]
      x^2 + 5x - 6  && \hbox{} \\[-3pt]
      \underline{x^2 \phantom{0} - x \phantom{0000}} && \hbox{} \\[-3pt]
      6x - 6  && \hbox{} \\[-3pt]
      \underline{6x - 6} && \hbox{} \\[-3pt]
      0  && \hbox{} \\[-3pt]
  \end{array}
$$

Awesome.  That means our factoring is as follows:

$$x^4 + 5x - 6 = (x - 1)(x^3 + x^2 + x - 6)$$

We could go farther, and factor $x^3 + x^2 + x - 6$, but you get the gist.

We'll do one more before moving on, because it introduces another little clue for us to pick up on

### Problem 146(b)

$$x^4 + 3x^2 + 5x + 1$$

First up, let's try with $0$

$$0^4 + 3\cdot0^2 + 5 \cdot 0 + 1 = $$

$$ = 0 + 0 + 0 + 1 = $$

$$ = 1$$

Thats no good.  How about $1$?

$$1^4 + 3\cdot1^2 + 5 \cdot 1 + 1 = $$

$$ = 1 + 3 + 5 + 1 = $$

$$ = 10$$

Thats no good either.  And we're actually _moving away_ from a zero result too.  How about $-1$?

$$-1^4 + 3\cdot-1^2 + 5 \cdot -1 + 1 = $$

$$ = 1 + 3 - 5 + 1 = $$

$$ = 0$$

That's our root!

We can then take this into our division to get the quotient for our factoring.

$$
\require{enclose}
\begin{array}{rll}
   x^3  + x^2 + 4x \phantom{0} + 1 \phantom{00000} && \hbox{} \\[-3pt]
   x + 1 \enclose{longdiv}{x^4 \phantom{00000} + 3x^2 + 5x + 1}\kern-.2ex \\[-3pt]
      \underline{x^4 + x^3 \phantom{00000000000000}} && \hbox{} \\[-3pt]
      -x^3 + 3x^2 + 5x + 1 && \hbox{} \\[-3pt]
      \underline{-x^3 \phantom{0} - x^2\phantom{00000000}} && \hbox{} \\[-3pt]
      4x^2 + 5x + 1  && \hbox{} \\[-3pt]
      \underline{4x^2 + 4x \phantom{0000}} && \hbox{} \\[-3pt]
      x + 1  && \hbox{} \\[-3pt]
      \underline{x + 1} && \hbox{} \\[-3pt]
      0  && \hbox{} \\[-3pt]
  \end{array}
$$

Which means our factoring is as follows:

$$x^4 + 3x^2 + 5x + 1 = (x + 1)(x^3  + x^2 + 4x + 1)$$

## Tricks Arising
### Nothing subtracted? Try a negative $a$
If when you look at your polynomial you see that nothing is subtracted (as in Problem 146(b) above) you know that your root will have to be a negative number (so that your sum will add to zero when you mix in the $x$).

### How Many Roots?
The gory details of how to get to this fact are in Gelfand, but its a truism that a polynomial of degree $x$ will have at most $x$ different roots.  The "different" is important - remember a polynomial can have two roots which are the same (n.b. $(x - 1)(x - 1) = (x - 1)^2$ which translates as two roots which are the same).  Mathematicians say this has "two equal roots".
