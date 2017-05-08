---
layout: post
title: "Gelfand: Chunk 17 - Polynomial (and Linear) Interpolation"
description: "More Tools for the Toolbox"
category: 
tags: [gelfand, polynomials, degrees, tricks, roots, interpolation]
---
{% include JB/setup %}

## Where Next? Points on a Line
The next section of [Gelfand](https://www.amazon.co.uk/Algebra-I-M-Gelfand/dp/0817636773) (number 38) launches straight in and it can take a while to figure out where things are going and what the point is.  

I've discovered as I've been trying to make full and proper sense of all this (to assist in my chunking as much as anything else) that Gelfand frequantly assumes you've got a dictionary to hand; sometimes the signal of where you're going is as slight as a word in a section title.  The key term here? "Interpolation".

So what is interpolation?  I'd suggest you take a break to glance at [the wikipedia page](https://en.wikipedia.org/wiki/Interpolation).  Just a glance though, as the stuff that's about to come from Gelfand will give you the tools to deeply grok the contents within.

For those who don't want to take a look, Interpolation is defined on the page above as 

 > "_a method of constructing new data points within the range of a discrete set of known data points_".

## An Excuse
With this in mind, you've now got a small sense of the point of the mass of problems that will be coming at you.  I'm going to jump on quite rapidly - though I suggest you don't.  Working through these helped me a great deal.  I'm just letting myself do so (with minimal commentary) so as not to confuse matters.

## Here Be Patterns; Patterns _within_ Polynomials
The first few problems (155 - 158) are just leading you by the hand to the realisation that there are some more patterns hidden inside polynomials, and that those patterns depend upon the polynomial's degree.  (Glance back at [Chunk 14 - Polynomial Division](https://andrewharmellaw.github.io/2017/02/23/gelfands-algebra-chunk-14-polynomial-division-all-the-gory-details) if you want a quick reminder.)

Once we've done this (and had an encounter with [Euler](https://en.wikipedia.org/wiki/Leonhard_Euler)) Gelfand poses the question upon which he spends the rest of the section, and I'll spend the rest of this chunk exploring.  "What can be said about a polynomial if we have some information about it's values?"

This is the interpolation we mentioned above.

But before we get to the values and the interpolation Gelfand gives us another thought tool (not really a trick so I'm not flagging it as such) which helps our _abstract_ understanding of polynomials.  I'm going to try and re-explain it in my own words.  (Primarily because writing these things ensures they are concretely embedded in my mind before proceeding.  You might find Gelfand's explanation better. It's incredibly likely.)

The first point he is making is that given the information on the degree of a polynomial that is in one degree (that's important) we can then make a lot of statements which are _guaranteed_ to be true.  The second point is that if we know some of these key facts, and also the vaules we get out when we put in known values, then we can do a lot of detective work to deduce the polynomial itself, even if we don't know it.

## Patterns in Degrees
This is currently all very abstract; so let's look at a few examples.  First up is degrees.  Remember that the degree of a polynomial is related to it's "first degree".  So if a polynomial has a degree of $1$ it will be in the general form: 

$$ax + b$$

This means that it will _definitely_ have an element in the form $ax^1$ and _may_ have an element in the form $bx^0$.  That's it. But we can simplify.  Remember from [Chunk 14](https://andrewharmellaw.github.io/2017/02/23/gelfands-algebra-chunk-14-polynomial-division-all-the-gory-details) that $bx^0 = b \cdot 1 = b$.

But I said "_may_" for the $b$-element.  How so?  Technically it will always be there, but if $b=0$ then it'll be irrelevant.  Why does this not happen for $a$-elements?  Because if the above had $a = b = 0$ then (as Gelfand states) we'd end up instead with the zero-polynomial which has an undefined value.

Let's step up our game one more notch.  What about a second-degree polynomial?  You guessed it, it _must_ have an element in the form $ax^2$ and _may_ have elements in the form $bx^1$ and $cx^0$.  The _may_ bit is again down to whether $b$ and $c$ are equal to zero or not. 

We can keep this pattern going ad-infinitum.  But rather than that, let's bring it back to Gelfand so we're all happy we linked back up after diverging explanations.  Let's re-state it one more time; we can write all our second-degree polynomials in as follows:

$$ax^2 + bx^1 + cx^0$$

Which can be simplified to the general form as follows

$$ax^2 + bx + c$$

Which is where we find Gelfand, waiting patiently for us.

## Deplying Our New-Found Powers (and Point Two)
I mentioned a few paragraphs above that there were _two_ points.  We're about to see the second.  Gelfand now gives us some problems, assumes we're going to use the pattern we just learned, and some other basic skills he's taught us, and is hoping we easily arrive at the answer.

### Problem 160
First thing we need to see with this problem is that when Gelfand states 

 > "$P(x)$ is a polynomial of degree not exceeding $1$" 
 
we need to immediately think 

 > "that means it has the general form $ax + b$".

With this in mind, he then gives us a pair of inputs and outputs - the latter being the "values" he mentioned and which we are calling "point two".  We can lay these out as follows:

$$P(1) = 7$$

$$P(2) = 5$$

He then asks us to find $P(x)$ which really means "find the values of $a$ and $b$ and state in the form of a first-degree polynomial."

Let's plug our inputs in and see what we can glean:

$$P(1) = a \cdot 1 + b = 7$$

$$P(2) = a \cdot 2 + b = 5$$

The difference between these two is one $a$, or $5 - 7$ which is $-2$.  If we plug in this, then we can find $b$ easily.

$$-2 \cdot 1 + b = 7$$

$$ \rightarrow -2 + b = 7 $$

$$ \rightarrow b = 7 + 2 $$

$$ \rightarrow b = 9 $$

We can check this (as I'm making us go _painfully slow to make sure this is 100% clear_) by putting our $b$-value into the second formula to check all is good.

$$P(2) = -2 \cdot 2 + 9 = -4 + 9 = 5$$

W00t!

So to bring it all to a close, we can state $P(x)$ as follows

$$P(x) = -2x + 9$$

Bringing his worked example to a close, Gelfand points out what he's hoped we'd notice - that you can use this trick for any polynomial of degree not exceeding one, given two values of $x$.

## It's Just Lines!
There has been a dearth of lines in Gelfand for a good while.  We're suddenly about to bring them back.  Gelfand next makes sure we've well and truly cottoned-on to the significance of what we just found.  He gives us the formula for the graph of a straight line, $y = ax + b$, and then prods us to realise that this is _exactly the same as our first-degree polynomial formula_.  No wonder we can reverse-engineer things for this polynomial-class with two values.  That's how many you need to figure out all the values on a _straight_ line - something which takes in two points.

Now we begin to see why Gelfand used the "regression" word in the title of this section...

## A Simple But Subtle Point - Too Many Zeros
Next up is Problem 161. I'd missed the significance of this at the first pass.  We're staying with at-most-first-degree polynomials for now. Gelfand has given us two inputs ($1$ and $2$) to an undisclosed polynomial $P(x)$, both of which give a result of $0$. He has also informed us that the polynomial is in at most the first degree.  That means it is in the general form $ax + b$.

The problem is to prove that the result is $P(x) = 0$ _for any $x$_.  You can perhaps guess how this miht be the case without putting in the graft of working out $a$ and $b$, but's let's show it for clarity.

$P(1)$ first

$$ 1a + b = 0 $$

$$ a = -b $$

Then $P(2)$

$$ 2a + b = 0 $$

$$ 2a = -b $$

Therefore, putting them together

$$ 2a = -b = a $$

$$ 2a = a $$

$$ a = 0 $$

Which means that 

$$ a = 0 = -b $$

$$ -b = 0 $$

$$ b = 0 $$

Therefore

$$ P(x) = 0x + 0 $$

And from this it is clear to see that no matter what $x$ is, the result will always be $0$.  To bring it back to lines, $P(x)$ represents a straight horizontal one.

## A Further Subtle Point - How Many is "Too Many"?
For a not-greater-than-first-degree polynomial, two zero results was "too many".  But is this the case for a not-greater-than-second-degree polynomial.  It is in Problem 162 that we're asked to tackle this.

As in Problem 161 Gelfand gives us two zero results: $P(1) = 0 $ and $P(2) = 0$.  He then asks if $P(x) = 0$ (i.e. are all forms of this polynomial zero).  His solution is a nice one.  Given that we already have two zeros, he first shows us how it is two thirds of the way to being factored:

$$P(x) = (x - 1)(x - 2)Q(x)$$

The first two factors are simply derived from $P(1) = 0 $ and $P(2) = 0$.  But what is $Q(x)$? It's the last factor.  Factors are polynomials, and because we know that $P(x)$ has a maximum degree of 2, that must come from $(x - 1)(x - 2)$ (spot the $x^2$?) which means $Q(x)$ must be a zero-degree polynomial, aka a number.  And this means that while this number _could_ be zero, (meaning all results of $P(x)$ would be zero, it could just as easily be any number, which means we _cannot_ say given when we know from our stated facts ($P(1) = 0 $ and $P(2) = 0$) that $P(x)$ is _always_ going to be zero.

Problem 163 then takes just this scenario and gets us to work things through, where $Q(x)$ has become $a$ in $P(x) = a(x - 1)(x - 2)$.

The second solution to this problem is incredibly useful.  As is frequently the case in Gelfand, you need to not just look at what he does, but also _how he does it_.

So what does he do? He gets meta. He knows what the polynomials are as pure symbols, and also as the detailed internals.  He then simply does maths on them, as if they were any other number or expression.  I found his wording a little dense, so yet again I'm going to write out the last steps symbolically to make it super-clear

$$ 3a + b = 0 $$

$$ 5a + b = 4 $$

$$ 5a + b - 4 = 0 $$

$$ \rightarrow 3a + b = 5a + b - 4 $$

$$ \rightarrow b + 4 = 2a + b $$

$$ \rightarrow 4 = 2a $$

$$ \rightarrow 2 = a $$

Once you know what $a$ is, you can calculate $b$

$$ 3a + b = 0 $$

$$ \rightarrow 3 \times 2 + b = 0 $$

$$ \rightarrow 6 + b = 0 $$

$$ \rightarrow b = -6 $$

And then, finally, $c$

$$ 4 = 2 \ times 3^2 - 6 \times 3 + c $$

$$ \rightarrow 4 = 0 + c $$

$$ \rightarrow c = 4 $$

## Not all Lines are Straight Lines
Again, with little pause for breath, Gelfand marches us onward.  

Are we approaching a universal axiom? Do we only need $n + 1$ input-output value pairs to be able to reverse-engineer a polynomial of degree-not-exceeding $n$?  If first-degree polynomials are represented by straight lines, what do other polynomials look like in line form? 

Gelfand gets on to all this lines-stuff later (which I'll get to in another chunk) but for now be satisfied that yes, polynomials do represent lines, and that these can get pretty complicated unless they are always equal to zero (as we discovered above) in which case they are just horizontal at $y = 0$.

In Problem 164 Gelfand breaks out the meta again, asking us to "prove that a polynomial of degree not exceeding $2$ is defined uniquely by three of its values."  He gives us a bit of a starter, but I'm going to take my usual tack of working through Gelfand's solution in far-far finer-grained detail.  

First up are the simple parts; grokking exactly what he's asking - when he says "uniquely defined by three of its values" he means that if two polynomials are defined by the same three values, then they too are the same.  He then takes this, and writes it with symbols rather than words; a trick we're slowy getting used to.

$P(x)$ and $Q(x)$ represent our two polynmomials.  Gelfand represents their having the same output values given the same inputs by saying $P(x_{1}) = Q(x_{1})$, $P(x_{2}) = Q(x_{2})$ and $P(x_{3}) = Q(x_{3})$.  To be clear, he lets on that $x_{1}$, $x_{2}$ and $x_{3}$ are three different values of $x$.  And that if these three circumstances hold true, then $P(x) = Q(x)$, which is to say, they are equal.

With all this in mind Gelfand then breaks out another proof-trick we've not seen before (at least I don't think so).  He introduces a third polynomial $R(x)$.  Why?  Let's rewind a step.

Gelfand is taking advantage of a property of polynomial roots which I'd forgotten about - this property is that a polynomial of a degree not exceeding 2 can have at most two roots, _unless it is equal to zero_ (which is what we saw in Problem 161 above).  It's the bit in _italics_ that is being used here because he's going to use it to show that all other polynomials which support these input-output pairs are equal to zero.  Let's see how.

Gelfand next brings in something else fundamental, but this time also blindingly obvious: that if two things are the same, then one minus the other gives you zero.  I.e. $P(x) - Q(x) = 0$.

When he combines the two, we get our proof. We need to have a symbol to represent the outcome of subtracting one polynomial from another and that is $R(x)$.  The following should now make more sense

$$P(x) - Q(x) = R(x)$$

and 

$$P(x) - Q(x) = 0$$

because extrapolating what we had previously

$$P(x_{1}) - Q(x_{1}) = 0$$

$$P(x_{2}) - Q(x_{2}) = 0$$

$$P(x_{3}) - Q(x_{3}) = 0$$

therefore

$$R(x_{1}) = R(x_{2}) = R(x_{3}) = 0$$

Which means that $P(x) = Q(x)$ so they are the same, so therefore "a polynomial of degree not exceeding $2$ is defined uniquely by three of it's values."

### A Confession
I'll admit that I would have never got here on my own.  I'm sure that's why its a problem with a solution.  We're supposed to realise that the tricks just performed before our eyes are permissable.  That means there are some new tricks to be gleaned.

## Tricks Arising
### Flip It
Gelfand didn't attack this proof head on. He came round the back.  He didn't try and prove there was only on polynomial for the given values, and instead took another route of treating himself to two, and then proving that they were in fact the same, single thing.  

### Go Back to the Fundamentals
The proving they were in fact the same thing but just with two different symbols attached used a very primitive method (and I mean that in the pureset sense, in that $a - a = 0$ is something you know at age five or earlier).  I hadn't grokked the fact that we can use this at a meta-level.  

It makes you wonder what else we can go-meta with...

## So is This a General Rule?
It seems like we're on the brink of discovering a general rule about polynomials, roots and interpolation.  Getting our specifics to something more wide-ranging is the point of Problem 166. It's also going to be the last part of this post.

### Problem 166 - Uniquely Defining n-degree Polynomials
Gelfand gives us a massive tip here - we need to take the solution to Problem 164 (the one we worked through slowly above) and generalise it.  Let's move step by step and see if we can. 

Note, I've ended up following [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) _incredibly closely_ here.  His explanation is as clear as I could make it so there seems like no point avoiding the fact.

First let's have our two polynomials $P(x)$ and $Q(x)$, but let's say they are degree $n$, not degree $2$ as we had previously.

Then let's have a bunch of values of $x$ ($n$ of them in fact)

$$x_{1}, x_{2}, x_{3} \hbox{...} x_{n-1}, x_{n}, x_{n+1}$$ 

And subsequently let's state that in all cases, $P(x) = Q(x)$

$$P(x_{1}) = Q(x_{1})$$

$$P(x_{2}) = Q(x_{2})$$

$$P(x_{3}) = Q(x_{3})$$

...

$$P(x_{n-1}) = Q(x_{n-1})$$

$$P(x_{n}) = Q(x_{n})$$

$$P(x_{n+1}) = Q(x_{n+1})$$

Then again let $R(x) = P(x) - Q(x)$

Which means

$$R(x_{1}) = R(x_{2}) = R(x_{3}) = \hbox{...} = R(x_{n-1}) = R(x_{n}) = R(x_{n+1}) = 0$$

So that means $x_{1}, x_{2}, x_{3} \hbox{...} x_{n-1}, x_{n}, x_{n+1}$ are roots of $R$.

But $R$ can have at most $n$ roots, or it is identically equal to zero for all $x$ therefore 

$$0 = R(x) = P(x) - Q(x)$$ 

Or stated another way, $P(x) = Q(x)$ for all $x$.

In other words, as Durham crisply concludes, "whenever two $n$ degree polynomials are equal on $n+1$  or more points, they are the same polynomial."

## Break-Time
There is a lot more gold buried in the various Problems and Solutions (or lack thereof) that comprise the remainder of this section.  I'm going to tackle them in a separate post however.  This one has run on long enough.
