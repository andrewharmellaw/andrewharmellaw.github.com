---
layout: post
title: "Gelfand: Chunk 18 - Polynomial Interpolation - Subtleties"
description: "More Gold in these Hills"
category: 
tags: [gelfand, durham, polynomials, degrees, tricks, roots]
comments: true
---
{% include JB/setup %}

{% newthought "Let's move through the rest of section 38," %} one problem at a time, pulling out those problems which have a trick to teach us.

## Problem 165
{% newthought "In this problem we have three points" %} of a second-degree polynomial, {% m %}P(x) = ax^2 + bx + c{% em %}.  How so?  Notice

{% math %}16 = 4^2{% endmath %}

{% math %}49 = 7^2{% endmath %}

{% math %}100 = 10^2{% endmath %}

We also have three roots, and this is only possible for a second-degree polynomial if {% m %}P(x) = 0{% em %} because otherwise we would have too many roots.{% sidenote 'sn-id-whatever' "It would need to be a third-degree polynomial for three roots to be permitted." %}

For {% m %}P(x) = 0{% em %} we would have to have {% m %}a = b = c = 0{% em %}.

## Trick Arising - Spot the Polynomial, Spot the Degree, Note the Rules
{% newthought "The whole trick is in the title to be honest." %}  But note how the polymonial was hiding in Problem 165.  Spot that, and then you can bring your knowledge to bear.

## Problem 167
{% newthought "Part (a) was already solved by/for us in Problem 163." %}  Problem 162 and it's solution is also worth re-visiting.

There Gelfand states 

> Any polynomial {% m %}P(x){% em %} such that {% m %}P(1) = P(2) = 0{% em %} has the form {% m %}P(x) = (x - 1)(x - 2)Q(x){% em %} where {% m %}Q(x){% em %} is some polynomial.

He goes on 

> If we also know that {% m %}P(x){% em %} has a degree not exceding {% m %}2{% em %} then {% m %}Q(x){% em %} must be a number (otherwise the degree of {% m %}P{% em %} will be too big.

In light of this, let's state our answer to (a)

{% math %}2(x - 1)(x - 2){% endmath %}

Now we move to (b). Can we solve it in a similar way?  Yup.

We know that here {% m %}P(x) = (x - 1)(x - 3)Q(x){% em %}

So substituting in {% m %}2{% em %}

{% math %} P(2) = {% endmath %}

{% math %} = (2 - 1)(2 - 3)a = {% endmath %}

{% math %} = (1)(-1)a = {% endmath %}

{% math %} = -1 \times a = {% endmath %}

{% math %} = 2{% endmath %}

{% math %}\rightarrow a = -2{% endmath %}

So our answer to (b) is 

{% math %}-2(x - 1)(x - 3){% endmath %}

Next is (c). Can we do the same? Yes.

We know that here {% m %}P(x) = (x - 2)(x - 3)Q(x){% em %}, so therefore

{% math %} P(1) = {% endmath %}

{% math %} = (1 - 2)(1 - 3)a = {% endmath %}

{% math %} = (-1)(-2)a = {% endmath %}

{% math %} = 2 \times a = {% endmath %}

{% math %} = 6{% endmath %}

{% math %}\rightarrow a = 3{% endmath %}

So our answer to (c) is 

{% math %}3(x - 2)(x - 3){% endmath %}

Now we must pause.  We can't use the same trick for (d).  But{% sidenote 'sn-id-whatever' "As always." %} there is a reason why this is a worked example;  we're about to get schooled in another technique.  Can we see how it works?

Let's take stock first. We have three polynomials, each of the second degree.  Now let's look and see if anything about (d) looks familiar... 

It does! It looks like a mash-up of the non-zero-result bits of (a)-(c).  Can we use this to our advantage? We can.  

We saw in [the previous chunk](https://andrewharmellaw.github.io/2017/03/09/gelfands-algebra-chunk-17-polynomial-and-linear-interpolation) that we could subtract one polynomial form itself, giving us a third polynomial for which {% m %}R(x) = 0{% em %}.  That felt a lot like basic maths.{% sidenote 'sn-id-whatever' "As we noted." %}  Here it seems as if we're going to do the reverse. We're going to add together three polynomials, each in the same single variable {% m %}x{% em %},{% sidenote 'sn-id-whatever' "A key point and worth highlighting" %} and in each case, the areas where they equal {% m %}0{% em %} have no effect.  

With this in mind, let's add the results of (a) - (c) together to see how it feels

{% math %}2(x - 1)(x - 2) - 2(x - 1)(x - 3) + 3(x - 2)(x - 3) = {% endmath %}

{% math %}2x^2 - 6x + 4 - 2x^2 + 8x - 6 + 3x^2 - 15x + 18 = {% endmath %}

{% math %} = 2x^2 - 2x^2 + 3x^2 - 6x + 8x - 15x + 4 - 6 + 18 = {% endmath %}

{% math %} = 3x^2 - 13x + 16{% endmath %}

Just like Gelfand.  That feels very clever, but also simple, and repeatable.

## Tricks Arising

### Check You Didn't Already Solve It
Gelfand gives the game away on this one, and you see it happening all the time when you read [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) too.  Sometimes  you've been given an explicit leg-up earlier on by being made to solve a sub-set of the problem, or a simpler version.  

That means, if something looks (or feels) familiar, then perhaps it is.  Feel free to flick back.

Note, this is also another reason why skipping ahead, even over simple things, is generally a bad idea and will cause you to come unstuck later on.  That's not to say you shouldn't _read ahead_.  That's different, and will help build a general knowledge framework ahead of time.

### Addition and Subtraction is for Everyone
It turns out you can keep addition and subtraction in your kit-bag for more than just the simplest of situations.  I'll bet there are circumstances when you need to be careful, but it seems very powerful.

### Find Complex Polynomials by Splitting Into Simpler Ones and Then Adding Them Up
Problem 168 simply wants you to follow the steps we took above from Problem 167, but with you making up your own (a), (b) and (c){% sidenote 'sn-id-whatever' "You're supposed to have noticed there is a more general trick in there." %}

If you want to see it, [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) has the workings for the solution.

## Problem 170
{% newthought "This problem," %} while it doesnt add anything new specifically to our arsenal, is worth stepping through slowly as it requires we use what tools we have gathered so far in a slightly different way.  We're again going to follow [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) closely, but going even more slowly as usual.

First up, we need to have twigged we're talking about polynomials again{% sidenote 'sn-id-whatever' "This is just like the Problem 165 starting point remember?" %} and again in this case a second-degree one.  That means we need to load the {% m %}ax^2 + bx + c{% em %} pattern into our level-one brain-pattern-matching cache.

With that done, we can bring in a statement that we know to be true:

 * three values are enough to uniquely determine a polynomial of degree two

That could be what we have here.  However, we must also be careful because

 * we don't know if three values cannot over-determine it, because it may be that for some sets of values there are no polynomials that attain them.

This bullet is key, and its something I'm not sure has been highlighted before now. _There may not be a polynomial which can get you the answers you need._

What we _can_ guarantee however is that we can have three separate second-degree polynomials, just like we had in problem 167, such that each one of them can attain one of the values, and the other two values are zero.  E.g.

{% math %}R(10) = 18.37, R(6) = 0, R(2) = 0{% endmath %}

{% math %}S(10) = 0, S(6) = 0.05, S(2) = 0{% endmath %}

{% math %}T(10) = 0, T(6) = 0, T(2) = -3{% endmath %}

Now we have these, we can see that they need no more than two roots each, and so have degrees no greater than two.  And taking it that they do not, then we can combine them back to make our required polynomial, as shown

{% math %}P(x) = R(x) + S(x) + T(x){% endmath %}

This polynomial {% m %}P(x){% em %} will therefore also be of a degree no greater than two (because we are _adding_ the various {% m %}ax^2, bx{% em %} and {% m %}c{% em %} pieces of {% m %}R(x), S(x){% em %} and {% m %}T(x){% em %} - look back at the solution to Problem 167 if you want reassurance) and will be able to produce {% m %}P(10) = 18.37, P(6) = 0.05, P(2) = -3{% em %}.

Finally we can conclude that numbers {% m %}a, b{% em %} and {% m %}c{% em %} do exist such that the required results can be satisfied.  We can state this because they will be the co-efficients of {% m %}P(x){% em %}.  

{% math %}P(x) = (18.37)x^2 + (0.5)x + (-3){% endmath %}

We'll stop here - in fact Gelfand has told us not to go further in our workings.  It all feels a little magical again, and I'd not discourage you if you wanted to fill in the final blanks of this to get to the actual solution to check.{% sidenote 'sn-id-whatever' "I might work it out in secret later myself." %}

## Problem 171
{% newthought "Gelfand's terse solution wasn't enough for me (yet again)." %}  I needed to work this out a in a slightly more step-wise fashion.

First we know that there are 10 roots - which means the minimal degree of our polynomial is 10.

We also know that the highest co-efficient of {% m %}P(x){% em %} is 1.  This caught me off-guard a little. This is the first explicit mention of a co-efficient in all this  from Gelfand.{% sidenote 'sn-id-whatever' "We brought them in in the solution above, but that was courtesy of Durham." %}

I'll be honest, I had to Google things at this point.  Some not-very-successful reading later, I realised that "highest" also meant "not greater than" which also meant "might disappear if written out simply".  That, plus looking back to Problems 162 and 163, meant me realise I could factor things like this

{% math %}P(x) = (x - 1)(x - 2)(x - 3)(x - 4)(x - 5)(x - 6)(x - 7)(x - 8)(x - 9)(x - 10){% endmath %}

So therefore

{% math %}P(11) = 10 \times 9 \times 8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1 = 3628800{% endmath %}

Which is the answer we need.

## Conclusion - Please Check Your Understanding
{% newthought "I've another confession to make." %}  The first time round I thought I had all this chunked and nicely embedded. I hadn't.  Then there was a second time, and that still helped. My conclusion? Factoring and the myriad inter-linked concepts are _hard_. These concepts, all tightly related and mutually-reinforcing need to be solidly understood if you are to make good progress beyond this point.

To that end, I'd recommend you go quickly back over this and the previous [two](https://andrewharmellaw.github.io/2017/03/09/gelfands-algebra-chunk-17-polynomial-and-linear-interpolation) [posts](https://andrewharmellaw.github.io/2017/03/07/gelfands-algebra-chunk-16-polynomial-division-remainders).{% sidenote 'sn-id-whatever' "And perhaps even do some other problems." %}  Maybe even blog about it.

When you're done I'll see you in the next post.{% sidenote 'sn-id-whatever' "Perhaps I'll go back and re-read these myself first." %} 
