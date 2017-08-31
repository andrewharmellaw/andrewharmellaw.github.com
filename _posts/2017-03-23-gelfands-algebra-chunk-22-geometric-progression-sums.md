---
layout: post
title: "Gelfand: Chunk 22 - Geometric Progression Sums"
tags: [gelfand, geometric-progressions]
---
{% include JB/setup %}

{% newthought "Just as [sums of arithmetic progressions](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-20-arithmetic-progressions-progress) were interesting," %} so are the sums of their geometric siblings.  Here follows some more commentary on what Gelfand brings us in Section 42.

## Problem 201
{% newthought "Let's launch into some problems" %} and see what that gives us.

First up, Problem 201.

{% math %}1 + \frac{1}{2} = 1\frac{1}{2} = \frac{3}{2}{% endmath %}

{% math %}1 + \frac{1}{2} + \frac{1}{4} = 1\frac{3}{4} = \frac{7}{4}{% endmath %}

{% math %}1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} = 1\frac{7}{8} = \frac{15}{8}{% endmath %}

{% math %}1 + ... + \frac{1}{2^n} = \frac{2^{n+1} - 1}{2^n}{% endmath %}

where {% m %}n{% em %} is the number of fractions after the {% m %}1{% em %}.

## Problem 202 - Two Routes to a Formula
{% newthought "This problem isn't particularly hard to grasp" %} from the solution Geland provides, but it is instructive to examine the two routes, especially their intuitive leaps that Gelfand employs to get to the answer.

Let's start with the first. We'll begin where Gelfand does, with the sum

{% math %}a + aq + aq^2 + ... + aq^{n - 1}{% endmath %}

I'm guessing that Gelfand is hoping by now that we're hungry to factor this into something more manageable.  The first step in this is an easy one too - just pull out the {% m %}a{% em %}.

{% math %}(a)(1 + q + q^2 + ... + q^{n - 1}){% endmath %}

Can we go further?  It seems sensible to try.  Have we seen something like any of this before?  Well, I personally couldn't recall anything, but Gelfand is telling us we should have, and so I went hunting.  

What I found was Problem 90{% sidenote 'sn-id-whatever' "Which I didn't write about specifically; a possible explanation for my amnesia" %} which goes like this:

{% math %}(1 - x)(1 + x + x^2 + x^3 + ... + x^{10}) = 1 - x^{11}{% endmath %}

It's not hard to see if you swap {% m %}x{% em %} for {% m %}q{% em %}, and then make it more generic and rearrange the sides, you have a _pretty_ close{% sidenote 'sn-id-whatever' "Though not exact." %} match for a bit of our current expression.

{% math %} \rightarrow (1 + q + q^2 + q^3 + ... + q^{n - 1}) = \frac{1 - q^{n}}{(1 - q)} {% endmath %}

Close, but not the same as what Gelfand is referring us to: 

{% math %}q^n - 1 = (q - 1)(q^{n - 1} + ... + q + 1){% endmath %}

Can we simply swap our {% m %}1{% em %}'s and {% m %}q{% em %}'s?  Yes we can{% sidenote 'sn-id-whatever' "And here's the working to prove it" %}:

{% math %}(x - 1)(1 + x + x^2 + x^3 + ... + x^{10}) = {% endmath %}

{% math %} = (x - 1)1 + (x - 1)x + (x - 1)x^2 + (x - 1)x^3 + ... + (x - 1)x^{10} = {% endmath %}

{% math %} = (x - 1) + (x^2 - x) + (x^3 - x^2) + (x^4 - x^3) + ... + (x^{11} - x^{10}) = {% endmath %}

{% math %} = (-1) + (x - x) + (x^2 - x^2) + (x^3 - x^3) + (x^4 - x^4) + ... + (x^{10} - x^{10}) + x^{11} = {% endmath %}

{% math %} = (-1) + x^{11} = {% endmath %}

{% math %} = x^{11} - 1 {% endmath %}

We can now pick up with Gelfand again.  Now we know we can swap our {% m %}1{% em %}'s and {% m %}q{% em %}'s we have this:

{% math %}\rightarrow (1 + q + q^2 + q^3 + ... + q^{n - 1}) = \frac{q^n - 1}{(q - 1)}{% endmath %} 

Now we can put this into our current expression and get the same answer Gelfand has

{% math %}a \frac{q^n - 1}{(q - 1)}{% endmath %}

Well done. Give yourself a slap on the back for following along.

The second path to this solution takes up the {% m %}S{% em %}-mechanism we'd seen before in Problem 200 (and prior to that too).  This takes more insight, but consequently relies less on brute-force factoring and pattern-memory.  

In this approach the first few steps seem obvious to me.{% sidenote 'sn-id-whatever' "And therefore I guess to you too." %}  It's when we get to {% m %}qS - S = aq^n - a{% em %} that I want to pick up.

How do we get from this to the next step?  We start where I just mentioned makes sense:

{% math %}qS - S = aq^n - a{% endmath %}

We're aiming to re-jig to isolate {% m %}S{% em %}.  First we factor the left hand side:

{% math %}(q - 1)S = aq^n - a{% endmath %}

Then we factor the right hand side:

{% math %}(q - 1)S = a(q^n - 1){% endmath %}

Finally to isolate the {% m %}S{% em %} we move the {% m %}(q - 1){% em %} across, getting what Gelfald showed us as the final step.{% sidenote 'sn-id-whatever' "Provided we remove the parentheses." %}

{% math %}S = a \frac{(q^n - 1)}{(q - 1)}{% endmath %}

## Problem 203 - A Reminder of Prior Tricks
{% newthought "Problem 203 is to find out the gap in the solution to 202." %}  The solution is pretty easy to spot given the inputs.

The lesson learned is very clear though.  This is another circumstance where our sums-of-geometric-progressions formula is not universally applicable.  We could state it now as:

{% math %}S = a \frac{q^n - 1}{(q - 1)}{% endmath %} 

when {% m %}q \ne 1{% em %}, and 

{% math %}S = na{% endmath %} 

when {% m %}q = 1{% em %}.{% sidenote 'sn-id-whatever' "This (and previous encounters with this kind of thing) sounds a little like a partial function which I know as a functional programming concept from Scala and Haskell.  The [Haskell Wiki defines it](https://wiki.haskell.org/Partial_functions) as \"a function that is not defined for all possible arguments of the specified type.\"  That _sounds_ like where we are, and if you look at the [examples on Wikipedia](https://en.wikipedia.org/wiki/Partial_function#Discussion_and_examples) for the same topic it _looks_ like where we are too." %}

## Where Next?
{% newthought "That's Gelfand done now" %} on the core rules of progressions.{% sidenote 'sn-id-whatever' "Both arithmetic and geometric" %}  What he's about to do is set up a bunch of problems for us to help embed and understand the subtleties of what we learned.

That's the [next chunk](https://andrewharmellaw.github.io/2017/03/24/gelfands-algebra-chunk-23-embedding-progressions). 
