---
layout: post
title: "Gelfand: Chunk 24 - Equations, Schmequations"
description: ""
category: 
tags: [gelfand, equations, identities, roots]
---
{% include JB/setup %}

## Some Definitions
Perhaps the following re-statement of definitions will be useful. (It was useful to have to write it.)

An _Identity_ says "this expression is equal to that expression". If _proved_ (by applying standard algebraic transformations) then it holds for _all_ values of the variables.  That is also the standard mechanism by which an Identity is _refuted_ - by finding values for the variables where the expressions are _not equal_.

An _Equation_ says "these two expressions are equal".  It must be _solved_ (i.e. you must find _all_ the values of the variables for which the left hand side is equal to the right hand side).

Note: Mathematicians don't say an Equation is unsolvable, because they deem it to be solved if they prove it can have no solutions.  To "solve" therefore means to find all, or prove that there are no solutions.

## One More Key Definition
Gelfand introduces some more terms for us in a short glossary.  It is worth highlighting and element in the definition of "solutions of an equation".

This brings in the term "root" once again.  you'll recall that we've seen it before [when we talked about Polynomials](https://andrewharmellaw.github.io/tags.html#roots-ref).  To avoid confusion, this "root" is not the same as a "square" root. These are two entirely unrelated concepts.

## Quadratic Equations
### Problem 224 
(a)

$$x^2 - 4 = 0$$

$$\rightarrow (x^2)-(2^2) = 0$$

$$ \rightarrow (x + 2)(x - 2) = 0$$

Which means that

$$x + 2 = 0 \rightarrow x = -2$$

or

$$x - 2 = 0 \rightarrow x = 2$$ 

Therefore the equation has two roots - $x = 2$ and $x = - 2$

(b)
$$x^2 + 2 = 0 = $$

$$ = x^2 + \sqrt{2}^2 = $$

$$ = x^2 - (\sqrt{-1} \times \sqrt{2})^2 = $$

Note in the step above the flip from $x^2 + ..$. to $x^2 - ...$

$$ = (x - \sqrt{-1} \times \sqrt{2})(x + \sqrt{-1} \times \sqrt{2}) = 0$$

Which means that 

$$ x = \sqrt{-1} \times \sqrt{2} $$

or 

$$ x = -\sqrt{-1} \times \sqrt{2} $$

Why do we put in that step which takes us from $x^2 + ...$ to $x^2 - ...$?  

Because it makes it easier to factor is why. 

### Tricks Arising - Working with Square Roots
I seem to have a semi mental-block about roots.  I'm not sure why but they still don't sit comfortably with me. Not as comfortably as some other mathematical concepts.  

Consequently, I'm hoping writing out some of the standard operations you can perform with and on square roots will help me, just in the way that a similar approach with fractions worked wonders.

* x -> square it -> root it -> x
* x -> root it -> square it -> x ???? always true???
* square root of 2 = irrational number
* root everything then square everything

### Tricks Arising - 
Also note the trick to turn (positive) $\sqrt{2}^2$ into (negative) $-\sqrt{2}^2$. It's achieved by multiplying it by $\sqrt{-1}$.