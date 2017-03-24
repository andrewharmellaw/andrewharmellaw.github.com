---
layout: post
title: "Gelfand: Chunk 21 - Geometric Progressions"
description: "Moving on to yet more Progressions"
category: 
tags: [gelfand, tricks, geometric-progressions, positive, negative]
---
{% include JB/setup %}

You might remember we had a sneak peek at these things back in [Chunk 15 - Polynomial Division Addendum](https://andrewharmellaw.github.io/2017/02/28/gelfands-algebra-chunk-15-polynomial-division-special-cases).  Now we get to really get our teeth into it.

## Definition - Geometric Progressions
As is our wont, lets start with a definition, taken straight out of Gelfand, section 41.

"A _geometric progression_ is a sequence of numbers where each term is a _product_ of the proceeding one and a fixed number. This fixed number is called the _common ratio_ (or ratio) of the geometric progression."

I added the second set of italics.  It highlights the key difference between these and arithmetic progressions - there we were adding, whereas now we're multiplying.

## The General Formula
In the solution to Problem 192 Gelfand shows us the general formula for the $n$th term in a geometric progression.

$$a \cdot q^{n - 1}$$

## The "Two Possibilities" Subtlety
In arithmetic progressions, we only had adding and subtracting and everything was easy.  But now we have multiplication, and that means there are subtleties.  Gelfand leads us to this with Problem 193.

He asks, given a progression with first term of $1$ and third term of $4$, what is the second term.

You can get all mathematical, but just looking at it it looks easy.  These are the powers of $2$ right? 

$$2^0 = 1$$

$$2^1 = 2$$

$$2^2 = 4$$

$$2^3 = 8$$

Etc.  And in one way we're right.  But there are two answers.  If we now look at the geometric progression formula, $a \cdot q^{n - 1}$, what is $a$ and $q$?.  If the second term is $2$, then $a = 1$, and $q = 2$.  But can $q$ be anything else and still give us $1$ for the first term and $4$ for the third?  Yes, it can be $(-2)$ (those parens are important).

$$1 \cdot (-2)^0 = 1$$

$$1 \cdot (-2)^1 = -2$$

$$1 \cdot (-2)^2 = 4$$

And continuing on

$$1 \cdot (-2)^3 = -8$$

$$1 \cdot (-2)^4 = 16$$

...

What we're getting strongly hinted at here is the fact that even powers of negative numbers are even, but odd powers of negative numbers are negative.  Odd and even powers of even numbers are always even.

## The "Is that Really a Geometric Progression?" Subtlety
If the common ratio ($q$ in our formula) is zero, then you end up with progressions which look similar to

$$1, 0, 0, 0, 0, 0, 0, ...$$

Where $a = 1$.  If $a$ equals anything else then that "anything else" will be the first value, and the remainder of the progression will be $0$s.

This is because

$$0^0 = 1$$

but 

$$0^1 = 0^2 = 0^3 = 0^4 = 0^5 = 0$$

Gelfand notes that in some circumstances these are verboten, specifiying that the ration is "non-zero".

## Flip it and Reverse It
So what happens when we take a progression and write it in reverse?  What happens to the ratio then?  You might have guessed (perhaps casting your mind back to [Chunk 5 - Powers: Positive and Negative](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers))

Yup, our ratio becomes $\frac{1}{q}$.

## Dropping Steps
Can we drop every second step and still be a geometric progression? Yup, because this will leave the ratio between each constant. Here the common ratio changes from $q$ to $q^2$.

Can we drop every third?  No, we can't.  Just as in arithmetic progressions the ratio of the gaps is no longer constant (being $q$ between some and $q^2$ between others) and so these progressions are not geometric.

## Back to Roots
The last part of this section (and of this post) is interesting for a few reasons.  Firstly, it gives us another (reverse) angle on the positive / negative aspect (via roots).  Secondly, we're back in the world of zeros not working for us.  Based on what we've seen before now, we know that these aspects are where it gets interesting.

I'm now going to give a little more detail on Gelfand's solution.  (As per, plesae ignore this if you've already got things nice and clear in your head.  For me it personally helps to see all the gory, multi-step, micro-step detail.)

First up, our first term: $a$
Next our second term: $x$
Then our third term: $b$.

To progress we need to know our common ratio, which I'm calling $z$ for a second  We can determine it using either $a$ or $b$.

First using $a$:

$$z = \frac{x}{a}$$ 

(because $a = z^0$ and $x = a \cdot z$)

Second using $b$:

$$z = \frac{b}{x}$$

(because $b = x \cdot z$) 

Then we can remove our $z$ altogether:

$$\frac{x}{a} = \frac{b}{x}$$

$$\rightarrow x^2 = ab$$

$$\rightarrow x = \sqrt{ab}$$

We can then draw our conclusions.

 * Conclusion 1: if $ab < 0$ then the problem has no solutions.  Why? Because you can't square root a negative number.
* Conclusion 2: if $ab = 0$ then x = 0.  That seems simple enough.
* Conclusion 3: if $ab > 0$ then there are _two_ possible values for $x$: $\sqrt{ab}$ and $-\sqrt{ab}$.

Notes: This works because we are looking for the _second term_, and it would also have worjed for the fourth, and sixth etc, but not the fifth, seventh, etc.  Remember, we saw before that even roots have this special "could be positive, could equally be negative" property.  There is a subtle alusion to this in problem 199. See if you can spot it.

## Tricks Arising
### Sometimes No Answers, Other Times More Than One Answer
Notwithstanding the aside about how $a^2 = b^2$ in [Chunk 11 - Factoring to Zero](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero), Problem 198 is the first time we've seen something where we need to think about different categories of input.  It's handy to have this in mind for the future (trust me, I've read ahead.)
