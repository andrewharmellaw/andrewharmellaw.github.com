---
layout: post
title: "Gelfand: Chunk 25 - Ramifications of Reduced Quadratics"
description: "(Plus: Gelfand does Square Roots)"
category: 
tags: [gelfand, quadratic-equations, positive, negative, roots, difference-of-squares]
---
{% include JB/setup %}

{% newthought "There are times when you're learning something new" %} and you just have to take a leap of faith and follow your teacher despite the fact you might not know where you're going.  This, for me anyway, is one such situation.

## Considering Quadratics in Certain Situations

{% newthought "Let's go back" %} to our quadratic standard form, and just trust Gelfand is going to take us somewhere interesting (and useful).  The whole of this section is handily conceived as a set of views of quadratics under certain situations.  

Here is our starting point, the standard quadratic form:

{% math %}ax^2 + bx + c = 0{% endmath %}

And then we play with it a little.  First up, we consider the situation if the co-efficient {% m %}a{% em %} was zero. 

{% math %}0x^2 + bx + c = 0{% endmath %}

That gives us the following

{% math %}\rightarrow bx + c = 0{% endmath %}

Which we can solve for {% m %}x{% em %} as follows

{% math %}bx + c = 0{% endmath %}

{% math %}\rightarrow bx = -c{% endmath %}

{% math %}\rightarrow x = -\frac{c}{b}{% endmath %}

But here comes a bump in the road. Gelfand points out that this won't always work. What if {% m %}b{% em %} is zero he asks?  Dividing anything by zero gives an undefined result as we saw previously in the [first chunk - Fundamentals](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals/).  

Dang.

He then leaves us here, with just the stated Problem 225.  How can we solve it?

Let's go back a step and put {% m %}b = 0{% em %} into a previous step in our working.

{% math %}bx = -c{% endmath %}

{% math %}\rightarrow 0 \times x = -c{% endmath %}

{% math %}\rightarrow 0 = -c{% endmath %}

{% math %}\rightarrow c = 0{% endmath %}

This is more like it.  We can then bubble this back up to the standard quadratic form and make a statement:

 > If {% m %}a = b = 0{% em %} then {% m %}c = 0{% em %}, and if this is the case, then _any_ {% m %}x{% em %} will satisfy the equation.
 
Continuing in the standard form, Gelfand now introduces us to another common way of phrasing the exact same thing:

{% math %}ax^2 + bx + c = 0{% endmath %}

Here he shows us, if {% m %}x \ne 0{% em %}, then we can shuffle things as so

{% math %}\rightarrow x^2 + \frac{b}{a}x + \frac{c}{a} = 0{% endmath %}

This is known as the _"reduced" quadratic equation_.

Why do we do this? It's all so that we can have different ways of looking at quadratics, so then our tricks can be applied (pattern matched effectively) in a greater number of circumstances.  In this case, Gelfand tells us, if we can solve the reduced quadratic, we can solve any quadratic.  That sounds handy.

There is one final point from Gelfand before we start mucking about with these reduced quadratics - there is another convention about writing these, and that is to use the following form, which I personally like as it hides those horrid fractions.

{% math %}x^2 + px + q = 0{% endmath %} 

## Fiddling with the Reduced Quadratic - when {% m %}p = 0{% em %}
{% newthought "Having learned from the previous section," %} we should be wary of just considering this from only a single angle, and of assuming things stay the same no matter how the constituents vary.  If you are, then that's good, because it's how Gelfand wants to approach it too.  He has three angles on the reduced quadratic when {% m %}p = 0{% em %}. Let's get ourselves to the starting blocks first so we're assured of clarity.

{% math %}x^2 + px + q = 0{% endmath %} 

Then we set {% m %}p = 0{% em %}

{% math %}\rightarrow x^2 + 0 \times x + q = 0{% endmath %} 

{% math %}\rightarrow x^2 + q = 0{% endmath %} 

Given this, let's now look at the possible values for {% m %}q{% em %} one at a time turn.

 1. {% m %}q = 0{% em %}, which means {% m %}x{% em %} has only one possible value: {% m %}0{% em %}
 1. {% m %}q \gt 0{% em %}, which is impossible because {% m %}x^2{% em %} is _always_ positive and added to positive {% m %}q{% em %} is _always_ more than zero
 1. {% m %}q \lt 0{% em %}, which is where it gets interesting.  So interesting in fact that we should break out of this list and examine things in more detail.

We're starting here

{% math %}x^2 + q = 0{% endmath %}

And if {% m %}q \lt 0{% em %} (which means it's negative) we can re-write

{% math %}x^2 + -q = 0{% endmath %}

{% math %}\rightarrow x^2 = - (-q){% endmath %}

Now it's important here to point out that this is slightly different from how Gelfand presents it.  While his and mine are mathematically equivalent, I've made the fact that {% m %}q{% em %} is negative explicit symbolically. {% sidenote 'sn-id-whatever' 'Gelfand achieves the same by saying "is a (positive) number -q"' %}

We're now left with the fact that on one side we have the square of {% m %}x{% em %} which is equivalent to {% m %}q{% em %}.  Clearly to get to {% m %}x{% em %} on it's own, we need to square root {% m %}q{% em %}.  This is why we suddenly launch into "Fact" territory; with a definition of roots.

 > For any positive number {% m %}q{% em %} there is a positive number whose square is {% m %}q{% em %}. It is called the square root of {% m %}q{% em %}; its notation is {% m %}\sqrt{q}{% em %}

This is the first time Gelfand has really _properly_ defined roots of numbers for us.{% sidenote 'sn-id-whatever' "He does admit we'd glimpsed it when we were factoring, but now, as we embark on some more general principles, it's time to dive into the details.  The fact I went away earlier and [did it off my own bat]() was to help disambiguate and prevent prior knowledge getting in the way of things." %}  Now he has deemed that we are ready to know the full picture. 

Let's follow along. {% sidenote 'sn-id-whatever' "I'm not sure why Gelfand makes a jump here with his symbol-usage, dropping the q we had a minute ago  and using c instead.  Suffice to say, the two are equivalent.  I'll keep going with q as I think it's every so slightly easier on the mental muscles." %}

{% math %}\rightarrow x^2 = - (-q){% endmath %}

First we simplify, negative times negative is positive

{% math %}\rightarrow x^2 = q{% endmath %}

Then rearrange as per Gelfand

{% math %}\rightarrow x^2 - q = 0{% endmath %}

Then make {% m %}q{% em%} a square, which requires us to root it first

{% math %}\rightarrow x^2 - (\sqrt{q})^2 = 0{% endmath %}

And now we can factor using Difference of Squares

{% math %}\rightarrow (x - \sqrt{q})(x + \sqrt{q}) = 0{% endmath %}

This means that there are two solutions, {% m %}m = \sqrt{q} {% em %} and {% m %}m = -\sqrt{q} {% em %}.

At this point, Gelfand finally confronts the question which had, to me anyway, been in my mind since the start of this chunk: "why are we considering this?"

The answer is a good one.  The reason is we have proven that {% m %}x^2 = q{% em %} but we have also proven that _there is no other solution_. That is to say, there is no other way we could factor this if we want a zero result.  

But why is this exciting?  We're now going on a bit of a history lesson and are about to find out that something which we now take for granted is in fact something which puzzled the Greeks for ages.  Gelfand's explanation refers to "several pages of a good calculus textbook" which means we're thinking about lines here.  What he wants us to get to is the fact that if we imagine a plotted line where the x-axis is equal to {% m %}x{% em %} and the y-axis is equal to {% m %}x^2{% em %}. On this line there is a point somewhere in that space which represents our {% m %}q{% em %}.  To get there we travel along the line.  

We start with {% m %}x = 0{% em %}.  In this state the following is also true {% m %}x^2 = 0{% em %}.  But what happens as we increase {% m %}x{% em %}?  Well, as it increases, so does {% m %}x^2{% em %}.  To begin with, while {% m %}x \lt 1{% em %} we can see that {% m %}x^2 \lt x{% em %}.  {% sidenote 'sn-id-whatever' "Go ahead try it with x = 0.5 and see for yourself." %}.  If you then jump forward a bit, to a _really big {% m %}x{% em %}_, we can see that now {% m %}x^2 \gt x{% em %}. {% sidenote 'sn-id-whatever' "Again, try it, this time with x = 100." %} 

It doesn't take a lot of imagination to realise that if you pick a value of {% m %}x{% em %} _in between_ {% m %}0.5{% em %} and {% m %}100{% em %}, you will get a value of {% m %}x^2{% em %} _in between_ {% m %}0.25{% em %} and {% m %}10000{% em %}.  You could keep going _ad infinitum_ and end up with something approaching a line.  The point Gelfand wants us to grok is, somewhere on this line we will find {% m %}x^2 = q%{% em %}, and therefore we have proven that {% m %}q{% em %} exists, even if we can't calculate it exactly.

The last parts of this section in Gelfand (and of the next chunk) are concerned with stepping you through proving that, while numbers like {% m %}\sqrt{2}{% em %} and {% m %}\sqrt{3}{% em %} _exist_, we can't represent them via [a rational number]().  This is where the Greeks became unstuck as they only had integers and rational numbers based on integers. Luckily, we now have other types of number, the irrational numbers which we introduced in [chunk x - xxxxxx](), and also encountered in [chunk y - yyyyyy](). 

However, seeing as we've covered a lot in this chunk, we'll stop for now after the next small section.

## Tricks Arising - Squares and Square Root Outcomes
Just as a summary, here are some of the standard outcomes of performing squares and square root operations.

If you have a value {% m %}x{% em %}, and you then square it, and then you square root the result, then you will be left with either {% m %}x{% em %} _or_ {% m %}-x{% em %} (This applies for _all_ values of {% m %}x{% em %})

However, if you perform the same pair of operations, but in the opposite order (i,e. start with {% m %}x{% em %}, then you square root it, then you square it) then you only get {% m %}x{% em %}. (NOTE: this only works for positive values of {% m %}x{% em %})

The {% m %}\sqrt{2}{% em %} is an _irrational_ number, so you can't represent it as a quotient of two integers.

