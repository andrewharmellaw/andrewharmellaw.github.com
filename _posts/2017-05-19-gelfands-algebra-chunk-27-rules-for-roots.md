---
layout: post
title: "Gelfand: Chunk 27 - Proving Some Rules for Roots"
tags: [gelfand, roots, proofs, positive, negative, undefined, absolute-value, notation, difference-of-squares, commutative-law]
comments: true
---
{% include JB/setup %}

{% newthought "Given the last chunk was proof-rich" %} it's no surprise to find that this Section sees Gelfand asking us (with less help now) to do some more proving.  Let's see what we can learn, both facts-wise, and skills wise too.

## Proof: (For {% m %}a, b \ge 0{% em %}) {% m %}\sqrt{ab} = \sqrt{a}\sqrt{b}{% em %} 
This one looks interesting.  First we note that this isnt for all values of {% m %}a{% em %} and {% m %}b{% em %}.  Negatives are excluded.  Does that help us to our solution? Probably not, but it means we have less to worry about.

We need to both sides of our equality the same.  Let's start{% sidenote 'sn-id' "As is usual." %} by getting rid of the roots

{% math %} (\sqrt{ab})^2 = (\sqrt{a} \cdot \sqrt{b})^2 {% endmath %}

{% math %} a \cdot b = (\sqrt{a} \cdot \sqrt{b})^2{% endmath %}

Then we expand the right-hand side.{% sidenote 'sn-id-whatever' "Note, this isn't a sum-of-squares or square-of-a-difference situation. We're simpliy multiplying inside our parentheses, which makes expansion _far easier_." %}

{% math %} a \cdot b = \sqrt{a}^2 \cdot \sqrt{b}^2{% endmath %}

and finally cancel out our right-hand side roots and squares and we're there

{% math %} a \cdot b = a \cdot b{% endmath %}

Awesome.

Before we move on, why not {% m %}a, b \lt 0{% em %}?  Because you can't root a negative number that's why.

## Tricks Arising

### Lose the Roots
When confronted by any expression with roots in it, it seems like a good idea to get rid of them as quickly as possible.  It's not failed me yet as an approach.

### {% m %}\sqrt{ab} = \sqrt{a}\sqrt{b}{% em %} is a Handy Pattern
It's worth pointing out that {% m %}\sqrt{ab} = \sqrt{a}\sqrt{b}{% em %} is a handy pattern and expansion for you to have in your trick-box.  While remembering that it's _only for non-negative {% m %}a{% em %} and {% m %}b{% em %}, btore it deep in  your chunk-bank, all cosy yet sprung, ready for quick deployment at a moment's notice.

## Proof: (For {% m %}a \ge 0, b \gt 0{% em %}) {% m %}\sqrt{\frac{a}{b}} = \frac{\sqrt{a}}{\sqrt{b}}{% em %} 
Another interesting one.  Again we note that this isn't for all values of {% m %}a{% em %} and {% m %}b{% em %}.  Again negative {% m %}a{% em %}s are out.  That's obviously for the same reason as the last proof.  But why can't {% m %}b{% em %} be zero?  Because it's the denominator in a fraction is why, and as you'll no doubt recall from [Chunk 1 - Fundamentals](https://andrewharmellaw.github.io/2016/11/16/gelfands-algebra-chunk-1-fundamentals/) that if you have a zero denominator, then the fraction is _undefined_.

With that out of the way, we can attack our proof.  It seems sensible to do the same as usual and get rid of our roots first.

{% math %} \left(\sqrt{\frac{a}{b}}\right)^2 = \left(\frac{\sqrt{a}}{\sqrt{b}}\right)^2{% endmath %}

{% math %} \left(\sqrt{\frac{a}{b}}\right)^2 = \frac{(\sqrt{a})^2}{(\sqrt{b})^2}{% endmath %}

which after we tidy up gives us

{% math %} \frac{a}{b} = \frac{a}{b}{% endmath %}

Proved.

### {% m %}\sqrt{\frac{a}{b}} = frac{\sqrt{a}}{\sqrt{b}}{% em %} is Another Handy Pattern
As long as we keep in mind the restrictions on applicability, {% m %}\sqrt{ab} = \sqrt{a}\sqrt{b}{% em %} is also a handy pattern and expansion.  Wrap it up in your brainbox alongside it's close cousin, where they can keep each other company.

## Proof: {% m %}\sqrt{a}^2 \ne a{% em %} for all {% m %}a{% em %}
I could hear [Admiral Akbar](https://en.wikipedia.org/wiki/Admiral_Ackbar) in the back of my head here.  The clear implication from Gelfand is that it's not true for all {% m %}a{% em %}.  Let's try our go-to zero and negatives and see what we get.

Zero first.

{% math %} \sqrt{0}^2 = a,{% endmath %}

The first question we get to is, do we square it or root it first?  Let's square it

{% math %} \sqrt{0} = a^2,{% endmath %}

now root it

{% math %} 0 = a.{% endmath %}

That works, and our {% m %}\sqrt{a}^2 = a{% em %} holds too.

And if we root then square?

{% math %} 0^2 = \sqrt{a},{% endmath %}

{% math %} 0 = a.{% endmath %}

That works too.  So we're OK on the zero-front.  

Now for negatives. Let's try {% m %}a = -1{% em %}.  But we know we need to tread carefully; there is a trap. Where could it be?

The "trap" here is one of convention and notation, the one we highlighted in [Chunk 25 - Ramifications of Reduced Quadratics](http://localhost:4000/2017/05/09/gelfands-algebra-chunk-25-reduced-quadratic-equations/).  If Gelfand had wanted to be explicit about the negative-nature of {% m %}a{% em %} then he would have represented it as {% m %}(-a){% em %} which you would say as "negative a". The parentheses are important here.  What we have here is slightly different, and is equivalent to {% m %}(-1) \cdot a{% em %}.  Given that, let's work it through and see what we get.

Dropping in negative {% m %}a{% em %} in the form of {% m %}(-1) \cdot a{% em %}

{% math %} (-1) \cdot \sqrt{1}^2 = a,{% endmath %}

therefore

{% math %} (-1) \cdot 1 = a,{% endmath %}

which means

{% math %} -1 = a,{% endmath %}

or to returm to Gelfand

> when {% m %}a{% em %} is negative, {% m %}\sqrt{a}^2{% em %} is equal to {% m %}-a{% em %}.

## Some Lovely New Notation - Absolute Value
One the side-reasons I'm writing this is to learn some [LaTeX](https://www.latex-project.org/about/).  Consequently, it's always nice to get some new notation as I have to go off and find out how to script it.  Up next, the "absolute value of {% m %}a{% em %}".

But first the concept. The "absolute value" of something is how far it is from zero.  I.e. the absolute value of {% m %}10{% em %} is {% m %}10{% em %}, and the absolute value of {% m %}-10{% em %} is also {% m %}10{% em %}.

This is shown, as Gelfand has just used, using two vertical lines, one on either side of the symbol.  Therefore, rather than writing "the absolute value of {% m %}a{% em %}" we can instead write:

{% math %}|a|{% endmath %}

So what is Gelfand doing with this new notation?  Well it turns out there is actually a more formal way of using absolute values.  When a number (or symbol) is positive or zero, we leave it alone.  But when it's negative we change it to be positive and write the following:

{% math %} \sqrt{2}^2 = |a| \lbrace a, \text{if } a \ge 0. -a, \text{if } a \lt 0 {% endmath %}

## Problem 231(a)
Gelfand asks us to prove the following

{% math %}\frac{1}{2 + \sqrt{3}} = 2 - \sqrt{3}{% endmath %}

We can kick off by losing the fraction through multiplying both sides by {% m %}2 + \sqrt{3}{% em %} 

{% math %}1 = (2 - \sqrt{3})(2 + \sqrt{3}),{% endmath %}

then we can spot and apply the difference of squares pattern

{% math %}1= (2^2 - (\sqrt{3})^2),{% endmath %}

and then calculate out the result

{% math %}1 = 4 - 3.{% endmath %}

## Problem 231(b)
Gelfand asks us to prove the following

{% math %}\frac{1}{\sqrt{7} - \sqrt{5}} = \frac{\sqrt{5} + \sqrt{7}}{2}{% endmath %}

We can start by losing the fractions on both sides using our standard pattern

{% math %}2 = (\sqrt{7} - \sqrt{5})(\sqrt{5} + \sqrt{7}),{% endmath %}

which then leaves us with another nice pattern which we can spot as a difference of squares if we shuffle the {% m %}\sqrt{5} + \sqrt{7}{% em %} which is perfectly valid.{%sidenote 'sn-id-whatever' "Which we will remember as the _Commutative Law_." %}

{% math %}2 = \sqrt{7}^2 - \sqrt{5}^2,{% endmath %}

leaving a very simple sum to verify our result

{% math %}2 = 7 - 5.{% endmath %}

## Problem 232