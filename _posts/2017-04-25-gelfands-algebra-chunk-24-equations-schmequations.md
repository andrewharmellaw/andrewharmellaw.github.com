---
layout: post
title: "Gelfand: Chunk 24 - Equations, Schmequations"
tags: [gelfand, equations, quadratic-equations, identities, roots, difference-of-squares, square-of-a-sum]
---
{% include JB/setup %}

{% newthought "After the \"Well Tempered Clavier\" interlude" %} we're about to have a little more ground prepared for us before we dive into the next core concept.  That means this should be an easy chunk for you.  Enjoy it. For roots are coming.

## Some Definitions
{% newthought "This section in Gelfand (46)" %} begins with some definitions. I found it useful to take these and re-state them in my own terms.{% sidenote 'sn-id' "It was useful to have to write it, and perhaps it will help you to have an alternative too." %}

 > An _Identity_ says "this expression is equal to that expression". If _proved_ (by applying standard algebraic transformations) then it holds for _all_ values of the variables.  That is also the standard mechanism by which an Identity is _refuted_ - by finding values for the variables where the expressions are _not equal_.

 > An _Equation_ says "these two expressions are equal".  It must be _solved_ (i.e. you must find _all_ the values of the variables for which the left hand side is equal to the right hand side).

Note: Mathematicians don't say an Equation is "unsolvable", because they deem it to be solved if they prove it can have no solutions.  To "solve" therefore means to find all, or prove that there are no, solutions.

## One More Key Definition
{% newthought "Gelfand then introduces" %} some more terms for us in a short glossary (Section 47).  It is worth highlighting an element in his definition of "solutions of an equation".

This brings in the term "root" once again.  You'll recall that we've seen it before [almost whenever we talked about Polynomials, and more](https://andrewharmellaw.github.io/tags.html#roots-ref).  To avoid confusion, this "root" is not the same as a "square" root. These are two entirely unrelated concepts.  This is why I wrote [my previous aside](https://andrewharmellaw.github.io/2017/04/24/gelfands-algebra-aside-3-roots-roots-and-more-roots) to help me get things super clear.  I you skipped it, you might want to go back to it now. It's short.{% sidenote 'sn-id' "I promise." %}

## Quadratic Equations
{% newthought "There then follows a nice set of questions" %} where you're asked to solve some _Quadratic Equations_, following on from Gelfand's lead in Problem 223.  I'm going to step through them here too.  It'll help set a nice pace prior to the next chunk.{% sidenote 'sn-id' "Am I building it up enough?" %} Some differ a little from the solution in [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) and so much the better.  Please read his solutions too as it all helps.

### Problem 224(a)
We start with 

{% math %}x^2 - 4 = 0{% endmath %}

If we do a little fiddling

{% math %}\rightarrow (x^2)-(2^2) = 0{% endmath %}

then we can see the _Difference of Squares_ which we can factor easily

{% math %} \rightarrow (x + 2)(x - 2) = 0{% endmath %}

Which means that

{% math %}x + 2 = 0 \rightarrow x = -2{% endmath %}

or

{% math %}x - 2 = 0 \rightarrow x = 2{% endmath %} 

Therefore the equation has two roots - {% m %}x = 2{% em %} and {% m %}x = - 2{% em %}

### Problem 224(b)
Now we begin with 

{% math %} x^2 + 2 = 0 {% endmath %}

Let's take a similar first step to (a)

{% math %} \rightarrow x^2 + \sqrt{2}^2 = 0 {% endmath %}

Hmmm, but this has a {% m %}+{% em %} rather than a {% m %}-{% em %} so we need to do some more shuffling before we have a _Difference of Squares_.  

{% math %} \rightarrow x^2 - (\sqrt{-1} \times \sqrt{2})^2 = 0{% endmath %}

Note in the step above the flip from {% m %}x^2 + ..{% em %}. to {% m %}x^2 - ...{% em %}

{% math %} \rightarrow (x - \sqrt{-1} \times \sqrt{2})(x + \sqrt{-1} \times \sqrt{2}) = 0{% endmath %}

Which means that 

{% math %} x = \sqrt{-1} \times \sqrt{2} {% endmath %}

or 

{% math %} x = -\sqrt{-1} \times \sqrt{2} {% endmath %}

Why did we put in that step which takes us from {% m %}x^2 + ...{% em %} to {% m %}x^2 - ...{% em %}?  

Because it makes it easier to factor as it allows us to use a [_Short Multiplication Formula_](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc). 

### Problem 224(c)
This time we have 

{% math %} x^2 - 2x + 1 = 0 {% endmath %}

This looks like a _Square of a Sum_, let's see

{% math %} \rightarrow x^2 - 2x \cdot 1 + 1^2 {% endmath %}

Yup, it is, which means we can factor

{% math %} \rightarrow (x - 1)(x - 1) = 0 {% endmath %}

{% math %} \rightarrow (x - 1)^2 = 0 {% endmath %}

Which means that 

{% math %} x = 1 {% endmath %}

### Problem 224(d)
This time we are presented with

{% math %} x^2 - 2x + 1 = 9 {% endmath %}

Applying the result from 224(c), we can state

{% math %} (x - 1)^2 = 9 {% endmath %}

And therefore

{% math %} x - 1 = ±3 {% endmath %}

Which means that 

{% math %} x = 3 + 1 = 4{% endmath %}

or 

{% math %} x = -3 + 1 = -2 {% endmath %}

### Problem 224(e)
This one looks familiar 

{% math %} x^2 - 2x - 8 = 0 {% endmath %}

Which is easy enough to rearrange (by adding {% m %}9{% em %} to each side)

{% math %} \rightarrow x^2 - 2x + 1 = 9 {% endmath %}

Which means the answers are the same as 224(d), {% m %}4{% em %} and {% m %}-2{% em %}.

### Problem 224(e)
Is this one as simple?

{% math %} x^2 - 2x - 3 = 0 {% endmath %}

Again we can rearrange

{% math %} x^2 - 2x + 1 = 4 {% endmath %}

Though we've not got a pre-canned answer for this one so we need to do some leg-work

{% math %} \rightarrow (x - 1)^2 = 4 {% endmath %}

And therefore

{% math %} \rightarrow x - 1 = ±2 {% endmath %}

Which means that 

{% math %} x = 2 + 1 = 3{% endmath %}

or 

{% math %} x = -2 + 1 = -1 {% endmath %}

### Problem 224(f)
And finally 

{% math %} x^2 - 5x + 6 = 0 {% endmath %}

We're not able to keep applying our same pattern here so we need to look elsewhere. The "split similar terms" trick from [Chunk 10 - Factoring](https://andrewharmellaw.github.io/2017/01/17/gelfands-algebra-chunk-10-factoring) seems like it might be handy.

{% math %} \rightarrow x^2 - 5x + 2 \times 3 = 0 {% endmath %}

{% math %} \rightarrow x^2 - 2x - 3x + 2 \times 3 = 0 {% endmath %}

Then we can change the signs of some of our elements so the final factoring is easy

{% math %} \rightarrow x^2 - 2x - 3x + -2 \times -3 = 0 {% endmath %}

And we can they collect it all together

{% math %} \rightarrow (x - 2)(x - 3) = 0{% endmath %}

Which means that 

{% math %} x = 2 {% endmath %}

or 

{% math %} x = 3 {% endmath %}

### Problem 224(f)
{% math %} x^2 - x - 2 = 0 {% endmath %}

Again we have to think for ourselves a little here, but just as in 224(e) we can use much the same trick

{% math %} \rightarrow x^2 - x - 1 \times 2 = 0{% endmath %}

{% math %} \rightarrow x^2 - (1 - 2)x + (1 \times -2) = 0{% endmath %}

{% math %} \rightarrow x^2 - (1 - 2)x + (1 \times -2) = 0{% endmath %}

And then collecting it all together

{% math %} \rightarrow (x + 1)(x - 2) = 0{% endmath %}

Which means that 

{% math %} x = -1 {% endmath %}

or 

{% math %} x = 2 {% endmath %}

## Tricks Arising

### Keeping Positive (or Negative) when Working with Square Roots
You will have probably noted the trick in 224(b) which turned (positive) {% m %}\sqrt{2}^2{% em %} into (negative) {% m %}-\sqrt{2}^2{% em %}. It's achieved by multiplying it by {% m %}\sqrt{-1}{% em %}.  Why not simply {% m %}-1{% em %}?  Because we need to square it again alongside the {% m %}\sqrt{2}{% em %} to get back to where we started.

I've got a feeling that this little thread is the thing that Gelfand is now going to tug on and end up pulling us up into a whole new level of Algebra-appreciation.

Onward!