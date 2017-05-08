---
layout: post
title: "Gelfand: Chunk 24 - Equations, Schmequations"
description: ""
category: 
tags: [gelfand, equations, identities, roots, difference-of-squares]
---
{% include JB/setup %}

## Some Definitions
This section in Gelfand (46) begins with some definitions. I found it useful to take these and re-state them in my own terms. (It was useful to have to write it, and perhaps it will help you to have an alternative too.)

An _Identity_ says "this expression is equal to that expression". If _proved_ (by applying standard algebraic transformations) then it holds for _all_ values of the variables.  That is also the standard mechanism by which an Identity is _refuted_ - by finding values for the variables where the expressions are _not equal_.

An _Equation_ says "these two expressions are equal".  It must be _solved_ (i.e. you must find _all_ the values of the variables for which the left hand side is equal to the right hand side).

Note: Mathematicians don't say an Equation is "unsolvable", because they deem it to be solved if they prove it can have no solutions.  To "solve" therefore means to find all, or prove that there are no solutions.

## One More Key Definition
Gelfand then introduces some more terms for us in a short glossary (Section 47).  It is worth highlighting and element in the definition of "solutions of an equation".

This brings in the term "root" once again.  You'll recall that we've seen it before [almost whenever we talked about Polynomials, and more](https://andrewharmellaw.github.io/tags.html#roots-ref).  To avoid confusion, this "root" is not the same as a "square" root. These are two entirely unrelated concepts.  This is why I wrote [my previous aside](https://andrewharmellaw.github.io/2017/04/24/gelfands-algebra-aside-2-roots-roots-and-more-roots) to help me get things super clear.  I you skipped it, you might want to go back to it now. It's short (promise).

## Quadratic Equations
Following on from Gelfand's lead in Problem 223, let's solve some quadratics.

### Problem 224(a)

$$x^2 - 4 = 0$$

If we do a little fiddling

$$\rightarrow (x^2)-(2^2) = 0$$

then we can see the Difference-of-Sqaures which we can factor easily

$$ \rightarrow (x + 2)(x - 2) = 0$$

Which means that

$$x + 2 = 0 \rightarrow x = -2$$

or

$$x - 2 = 0 \rightarrow x = 2$$ 

Therefore the equation has two roots - $x = 2$ and $x = - 2$

### Problem 224(b)
$$ x^2 + 2 = 0 $$

Let's take a similar first step to (a)

$$ \rightarrow x^2 + \sqrt{2}^2 = 0 $$

Hmmm, but this has a $+$ rather than a $-$ so we need to do some more shuffling before we have a Difference-of-Squares.  

$$ \rightarrow x^2 - (\sqrt{-1} \times \sqrt{2})^2 = 0$$

Note in the step above the flip from $x^2 + ..$. to $x^2 - ...$

$$ \rightarrow (x - \sqrt{-1} \times \sqrt{2})(x + \sqrt{-1} \times \sqrt{2}) = 0$$

Which means that 

$$ x = \sqrt{-1} \times \sqrt{2} $$

or 

$$ x = -\sqrt{-1} \times \sqrt{2} $$

Why did we put in that step which takes us from $x^2 + ...$ to $x^2 - ...$?  

Because it makes it easier to factor as it allows us to use a [short multiplication formula](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc). 

### Problem 224(c)
$$ x^2 - 2x + 1 = 0 $$

This looks like a Square-of-a-Sum, let's see

$$ \rightarrow x^2 - 2x \cdot 1 + 1^2 $$

Yup, it is, which means we can factor

$$ \rightarrow (x - 1)(x - 1) = 0 $$

$$ \rightarrow (x - 1)^2 = 0 $$

Which means that 

$$ x = 1 $$

### Problem 224(d)
$$ x^2 - 2x + 1 = 9 $$

Applying the result from 224(c), we can state

$$ (x - 1)^2 = 9 $$

And therefore

$$ x - 1 = ±3 $$

Which means that 

$$ x = 3 + 1 = 4$$

or 

$$ x = -3 + 1 = -2 $$

### Problem 224(e)
$$ x^2 - 2x - 8 = 0 $$

Which is easy enough to rearrange (by adding $9$ to each side)

$$ \rightarrow x^2 - 2x + 1 = 9 $$

Which means the answers are the same as 224(d), $4$ and $-2$.

### Problem 224(e)
$$ x^2 - 2x - 3 = 0 $$

Again we can rearrange

$$ x^2 - 2x + 1 = 4 $$

Though we've not got a pre-canned answer for this one so we need to do some leg-work

$$ \rightarrow (x - 1)^2 = 4 $$

And therefore

$$ \rightarrow x - 1 = ±2 $$

Which means that 

$$ x = 2 + 1 = 3$$

or 

$$ x = -2 + 1 = -1 $$

### Problem 224(f)
$$ x^2 - 5x + 6 = 0 $$

We're not able to keep applying our same pattern here so we need to look elsewhere. The "split similar terms" trick from [Chunk 10 - Factoring](https://andrewharmellaw.github.io/2017/01/17/gelfands-algebra-chunk-10-factoring) seems like it might be handy.

$$ \rightarrow x^2 - 5x + 2 \times 3 = 0 $$

$$ \rightarrow x^2 - 2x - 3x + 2 \times 3 = 0 $$

Then we can change the signs of some of our elements so the final factoring is easy

$$ \rightarrow x^2 - 2x - 3x + -2 \times -3 = 0 $$

And we can they collect it all together

$$ \rightarrow (x - 2)(x - 3) = 0$$

Which means that 

$$ x = 2 $$

or 

$$ x = 3 $$

### Problem 224(f)
$$ x^2 - x - 2 = 0 $$

Again we have to think for ourselves a little here, but just as in 224(e) we can use much the same trick

$$ \rightarrow x^2 - x - 1 \times 2 = 0$$

$$ \rightarrow x^2 - (1 - 2)x + (1 \times -2) = 0$$

$$ \rightarrow x^2 - (1 - 2)x + (1 \times -2) = 0$$

And then collecting it all together

$$ \rightarrow (x + 1)(x - 2) = 0$$

Which means that 

$$ x = -1 $$

or 

$$ x = 2 $$


### Tricks Arising - Working with Square Roots
I seem to have a semi mental-block about roots.  I'm not sure why but they still don't sit comfortably with me. Not as comfortably as some other mathematical concepts.  

Consequently, I'm hoping writing out some of the standard operations you can perform with and on square roots will help me, just in the way that a similar approach with fractions worked wonders.

* x -> square it -> root it -> x
* x -> root it -> square it -> x ???? always true???
* square root of 2 = irrational number
* root everything then square everything

### Tricks Arising - 
Also note the trick to turn (positive) $\sqrt{2}^2$ into (negative) $-\sqrt{2}^2$. It's achieved by multiplying it by $\sqrt{-1}$.
