---
layout: post
title: "Gelfand: Chunk 14 - Polynomial Division"
description: "All the Gory Details"
category: 
tags: [gelfand, tricks, division, polynomials, monomials, standard-form]
---
{% include JB/setup %}

## A Quick Note - Monomial Degrees
This concept actually is a very simple one (unlike some _seemingly_ simple concepts which in fact turn out to be nebulously nightmarish.)  

It is however, a _fundamental_ one, hence why I pulled it out.  Why fundamental? Because in order to bootstrap your mind into the next set of chunks, you need to be able to snap your fingers at any time and point to the degree of a given monoial.  Here's what it is, in textual form first (from Gelfand pp 61):

"If a polynomial contains only one variable, its standard form consists of its monomials written in order of decreasing degrees. The monomial having the highest degree is called the 'first monomial'. Its degree is called the 'degree of the polynomial."

Now lets break this into pieces and show it visually

1. "... a polynomial contains _only one variable_..." 

I.e. $x$.  That means this $2x^2 + 3x - 3$ meets this criteria, as does $b^{300}$ but $a^2 + 2ab - 3$ isn't

2. "_Standard_ Form"

We discussed this at length in [Chunk 8 - 'Nomials](https://andrewharmellaw.github.io/2017/01/10/gelfands-algebra-chun-8-nomials).  I added at the time that it was nice to order things decreasing by degree.  That'll be helpful in the next step

This means that while this $3x - 3 + 2x^2$ and this $2x^2 + 3x - 3$ are equivalent, only the latter is in Standard Form.

3. "The monomial having the highest degree is called the '_first_ monomial'"

See the reason for ordering?  It will literally be the first monomial in your polynomial if you've done this.

Therefore in $2x^2 + 3x - 3$ the first monomial is $2x^2$, and in $b^{300}$ the first monomial is $b^{300}$

4. "It's degree (the first monomial) is called the 'degree of the polynomial'"

That means that in $2x^2 + 3x - 3$ the degree is $2$, and in $b^{300}$ the degree is $300$

### Subtlety - Constants
What if there are no variables? (N.b. this is just equivalent to a polynomial where all variables have co-efficients of value $0$)  In these circumstances, your degree is $0$ too.

Remember

$3 = 3x^0 = 3 \times 1 = 3$

### Subtlety - Undefined Degrees
What about monomials with zero-co-efficients? (I.e. with a co-efficient of $0$).  These monomials are ignored, and their degrees (the monomials) are "undefined" (which means you may then fall back on the degree of a constant)

Extending the example we just saw

$0x^2 + 3 = 0x^2 + 3x^0 = 0 + 3x^0 = 3 \times 1 = 3$

## Degree Consequences 
With all this in place, things start to get useful (if also a bit meta).  Via the medium of problems (Problems 137 and 138), Gelfand gets us to realise:

* the degree of the _product_ of two polynomials (one with degree $a$ and the other with degree $b$) is $a + b$ (How? Remember [Chunk 5 - Powers](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers))
* the degree of the _sum_ of two polynomials with degrees $x$ and $y$, where $x >= y$, will be $x$
* the degree of the sum of two polynomials both having degrees $x$ will be $<= x$

## Tricks Arising
### You can Represent a whole Polynomial as a Single Variable
This powerful concept was snuck in by Gelfand in his further discussions of  Rational Expressions (Section 34, pp 56-57) but he didnt ask you to manipulate them in any way so I didnt bring them up until now.  However, in problem 137 you have to make this mental leap for yourself.

It looks a little scary, (not so much perhaps for programmers who are used to multiple levels of abstraction) but it's fine. Go on, nothing's stopping you.

This means that we can take $2x^2 + 3x - 3$ and replace it with $A$.  But remember, $A$ is variable too.  We've specified that $A$ is "any polynomial with degree $2$" so $A$ could just as easily represent $1000z^2 - 9z$ or even $-17b^2$.  It couldn't however represent $2x^{300} + 3x - 3$ or $2b^2 + 3ab - 3$ as these don't meet the criteria for being an $A$.  The _degree_ here is key for us as we've specified it in our $A$-rules.  (And for this they must be a polynomial in one variable - though I'm a little shaky on this, perhaps polynomials in multiple variables have multiple degrees, I'll come back here if I'm wrong and update this.)

See now why I said grokking degrees solidly was handy?

N.b. Durham does this _a lot_ in his later solutions, so it's worth getting comfortable with it before progressing

## Proper and Improper Fractions
Fractions again. Urgh.  And it turns out they get even more complicated with the concepts of "proper" and "improper" ones.  Luckily, this is super-easy to grokk (and not much harder to commit to memory).

TBC


## Polynomial Division
This sounded horrifing to me when I first thought if it, but compared to the actual physical pain that factoring can cause you this is actually a nice return to the world of mechanistically applying a set of steps to something to achive an end result.  Nice.

There is some definition-dancing-around first though which it's nice to get straight.

TBC...