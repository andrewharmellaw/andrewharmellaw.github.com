---
layout: post
title: "Gelfand: Chunk 17 - Polynomial (and Linear) Interpolation"
tags: [gelfand, polynomials, degrees, tricks, roots, interpolation]
comments: true
---
{% include JB/setup %}

## Where Next? Points on a Line
{% newthought "The next section of [Gelfand](https://www.amazon.co.uk/Algebra-I-M-Gelfand/dp/0817636773)" %}{% sidenote 'sn-id-whatever' "Section 38" %} launches straight in, and it can take a while to figure out where things are going and what the point is.  

I've discovered as I've been trying to make full and proper sense of all this{% sidenote 'sn-id-whatever' "To assist in my chunking as much as anything else." %} that Gelfand frequantly assumes you've got a dictionary to hand; sometimes the signal of where you're going is as slight as a word in a section title.  The key term here? "Interpolation".

So what is interpolation?  I'd suggest you take a break to glance at [the wikipedia page](https://en.wikipedia.org/wiki/Interpolation).  Just a glance though, as the stuff that's about to come from Gelfand will give you the tools to deeply grok the contents within.

For those who don't want to take a look, Interpolation is defined on the page above as 

> "a method of constructing new data points within the range of a discrete set of known data points".

## An Excuse
{% newthought "With this in mind," %} you've now got a small sense of the point of the mass of problems that will be coming at you.  I'm going to jump on quite rapidly{% sidenote 'sn-id-whatever' "Though I suggest you don't." %}  Working through these helped me a great deal.  I'm just letting myself do so{% sidenote 'sn-id-whatever' "With minimal commentary" %} so as not to confuse matters.

## Here Be Patterns; Patterns _within_ Polynomials
{% newthought "The first few problems" %}{% sidenote 'sn-id-whatever' "Problems 155 - 158" %} are just leading you by the hand to the realisation that there are some more patterns hidden inside polynomials, and that those patterns depend upon the polynomial's degree.{% sidenote 'sn-id-whatever' "Glance back at [Chunk 14 - Polynomial Division](https://andrewharmellaw.github.io/2017/02/23/gelfands-algebra-chunk-14-polynomial-division-all-the-gory-details) if you want a quick reminder." %}

Once we've done this (and had an encounter with [Euler](https://en.wikipedia.org/wiki/Leonhard_Euler)) Gelfand poses the question upon which he spends the rest of the section, and I'll spend the rest of this chunk exploring.  

> What can be said about a polynomial if we have some information about it's values?

This is the interpolation we mentioned above.

But before we get to the values and the interpolation Gelfand gives us another thought tool{% sidenote 'sn-id-whatever' "Not really a trick so I'm not flagging it as such" %} which helps our _abstract_ understanding of polynomials.  I'm going to try and re-explain it in my own words.{% sidenote 'sn-id-whatever' "Primarily because writing these things ensures they are concretely embedded in my mind before proceeding.  You might find Gelfand's explanation better. It's incredibly likely." %}

The first point he is making is that given the information on the degree of a polynomial that is in one degree (that's important) we can then make a lot of statements which are _guaranteed_ to be true.  The second point is that if we know some of these key facts, and also the vaules we get out when we put in known values, then we can do a lot of detective work to deduce the polynomial itself, even if we don't know it.

## Patterns in Degrees
{% newthought "This is currently all very abstract;" %} so let's look at a few examples.  First up is degrees.  Remember that the degree of a polynomial is related to it's "first degree".  So if a polynomial has a degree of {% m %}1{% em %} it will be in the general form: 

{% math %}ax + b{% endmath %}

This means that it will _definitely_ have an element in the form {% m %}ax^1{% em %} and _may_ have an element in the form {% m %}bx^0{% em %}.  That's it. But we can simplify.  Remember from [Chunk 14](https://andrewharmellaw.github.io/2017/02/23/gelfands-algebra-chunk-14-polynomial-division-all-the-gory-details) that {% m %}bx^0 = b \cdot 1 = b{% em %}.

But I said "_may_" for the {% m %}b{% em %}-element.  How so?  Technically it will always be there, but if {% m %}b=0{% em %} then it'll be irrelevant.  Why does this not happen for {% m %}a{% em %}-elements?  Because if the above had {% m %}a = b = 0{% em %} then (as Gelfand states) we'd end up instead with the zero-polynomial which has an undefined value.

Let's step up our game one more notch.  What about a second-degree polynomial?  You guessed it, it _must_ have an element in the form {% m %}ax^2{% em %} and _may_ have elements in the form {% m %}bx^1{% em %} and {% m %}cx^0{% em %}.  The _may_ bit is again down to whether {% m %}b{% em %} and {% m %}c{% em %} are equal to zero or not. 

We can keep this pattern going ad-infinitum.  But rather than that, let's bring it back to Gelfand so we're all happy we linked back up after diverging explanations.  Let's re-state it one more time; we can write all our second-degree polynomials in as follows:

{% math %}ax^2 + bx^1 + cx^0{% endmath %}

Which can be simplified to the general form as follows

{% math %}ax^2 + bx + c{% endmath %}

Which is where we find Gelfand, waiting patiently for us.

## Deplying Our New-Found Powers (and Point Two)
{% newthought "I mentioned a few paragraphs above" %} that there were _two_ points.  We're about to see the second.  Gelfand now gives us some problems, assumes we're going to use the pattern we just learned, and some other basic skills he's taught us, and is hoping we easily arrive at the answer.

### Problem 160
First thing we need to see with this problem is that when Gelfand states 

> "{% m %}P(x){% em %} is a polynomial of degree not exceeding {% m %}1{% em %}" 
 
we need to immediately think 

> "that means it has the general form {% m %}ax + b{% em %}".

With this in mind, he then gives us a pair of inputs and outputs - the latter being the "values" he mentioned and which we are calling "point two".  We can lay these out as follows:

{% math %}P(1) = 7{% endmath %}

{% math %}P(2) = 5{% endmath %}

He then asks us to find {% m %}P(x){% em %} which really means "find the values of {% m %}a{% em %} and {% m %}b{% em %} and state in the form of a first-degree polynomial."

Let's plug our inputs in and see what we can glean:

{% math %}P(1) = a \cdot 1 + b = 7{% endmath %}

{% math %}P(2) = a \cdot 2 + b = 5{% endmath %}

The difference between these two is one {% m %}a{% em %}, or {% m %}5 - 7{% em %} which is {% m %}-2{% em %}.  If we plug in this, then we can find {% m %}b{% em %} easily.

{% math %}-2 \cdot 1 + b = 7{% endmath %}

{% math %} \rightarrow -2 + b = 7 {% endmath %}

{% math %} \rightarrow b = 7 + 2 {% endmath %}

{% math %} \rightarrow b = 9 {% endmath %}

We can check this{% sidenote 'sn-id-whatever' "As I'm making us go _painfully slow to make sure this is 100% clear_" %} by putting our {% m %}b{% em %}-value into the second formula to check all is good.

{% math %}P(2) = -2 \cdot 2 + 9 = -4 + 9 = 5{% endmath %}

W00t!

So to bring it all to a close, we can state {% m %}P(x){% em %} as follows

{% math %}P(x) = -2x + 9{% endmath %}

Bringing his worked example to a close, Gelfand points out what he's hoped we'd notice - that you can use this trick for any polynomial of degree not exceeding one, given two values of {% m %}x{% em %}.

## It's Just Lines!
{% newthought "There has been a dearth of good 'ole simple lines in Gelfand for a good while." %}  We're suddenly about to bring them back.  Gelfand next makes sure we've well and truly cottoned-on to the significance of what we just found.  He gives us the formula for the graph of a straight line, {% m %}y = ax + b{% em %}, and then prods us to realise that this is _exactly the same as our first-degree polynomial formula_.  No wonder we can reverse-engineer things for this polynomial-class with two values.  That's how many you need to figure out all the values on a _straight_ line - something which takes in two points.

Now we begin to see why Gelfand used the "regression" word in the title of this section...

## A Simple But Subtle Point - Too Many Zeros
{% newthought "Next up is Problem 161." %} I'd missed the significance of this at the first pass.  We're staying with at-most-first-degree polynomials for now. Gelfand has given us two inputs ({% m %}1{% em %} and {% m %}2{% em %}) to an undisclosed polynomial {% m %}P(x){% em %}, both of which give a result of {% m %}0{% em %}. He has also informed us that the polynomial is in at most the first degree.  That means it is in the general form {% m %}ax + b{% em %}.

The problem is to prove that the result is {% m %}P(x) = 0{% em %} _for any_ {% m %}x{% em %}.  You can perhaps guess how this miht be the case without putting in the graft of working out {% m %}a{% em %} and {% m %}b{% em %}, but's let's show it for clarity.

{% m %}P(1){% em %} first

{% math %} 1a + b = 0 {% endmath %}

{% math %} a = -b {% endmath %}

Then {% m %}P(2){% em %}

{% math %} 2a + b = 0 {% endmath %}

{% math %} 2a = -b {% endmath %}

Therefore, putting them together

{% math %} 2a = -b = a {% endmath %}

{% math %} 2a = a {% endmath %}

{% math %} a = 0 {% endmath %}

Which means that 

{% math %} a = 0 = -b {% endmath %}

{% math %} -b = 0 {% endmath %}

{% math %} b = 0 {% endmath %}

Therefore

{% math %} P(x) = 0x + 0 {% endmath %}

And from this it is clear to see that no matter what {% m %}x{% em %} is, the result will always be {% m %}0{% em %}.  To bring it back to lines, {% m %}P(x){% em %} represents a straight horizontal one.

## A Further Subtle Point - How Many is "Too Many"?
{% newthought "For a not-greater-than-first-degree polynomial," %} two zero results was "too many".  But is this the case for a not-greater-than-second-degree polynomial.  It is in Problem 162 that we're asked to tackle this.

As in Problem 161 Gelfand gives us two zero results: {% m %}P(1) = 0 {% em %} and {% m %}P(2) = 0{% em %}.  He then asks if {% m %}P(x) = 0{% em %} (i.e. are all forms of this polynomial zero).  His solution is a nice one.  Given that we already have two zeros, he first shows us how it is two thirds of the way to being factored:

{% math %}P(x) = (x - 1)(x - 2)Q(x){% endmath %}

The first two factors are simply derived from {% m %}P(1) = 0 {% em %} and {% m %}P(2) = 0{% em %}.  But what is {% m %}Q(x){% em %}? It's the last factor.  Factors are polynomials, and because we know that {% m %}P(x){% em %} has a maximum degree of 2, that must come from {% m %}(x - 1)(x - 2){% em %} (spot the {% m %}x^2{% em %}?) which means {% m %}Q(x){% em %} must be a zero-degree polynomial, aka a number.  And this means that while this number _could_ be zero, (meaning all results of {% m %}P(x){% em %} would be zero, it could just as easily be any number, which means we _cannot_ say given when we know from our stated facts ({% m %}P(1) = 0 {% em %} and {% m %}P(2) = 0{% em %}) that {% m %}P(x){% em %} is _always_ going to be zero.

Problem 163 then takes just this scenario and gets us to work things through, where {% m %}Q(x){% em %} has become {% m %}a{% em %} in {% m %}P(x) = a(x - 1)(x - 2){% em %}.

The second solution to this problem is incredibly useful.  As is frequently the case in Gelfand, you need to not just look at what he does, but also _how he does it_.

So what does he do? He gets meta. He knows what the polynomials are as pure symbols, and also as the detailed internals.  He then simply does maths on them, as if they were any other number or expression.  I found his wording a little dense, so yet again I'm going to write out the last steps symbolically to make it super-clear

{% math %} 3a + b = 0 {% endmath %}

{% math %} 5a + b = 4 {% endmath %}

{% math %} 5a + b - 4 = 0 {% endmath %}

{% math %} \rightarrow 3a + b = 5a + b - 4 {% endmath %}

{% math %} \rightarrow b + 4 = 2a + b {% endmath %}

{% math %} \rightarrow 4 = 2a {% endmath %}

{% math %} \rightarrow 2 = a {% endmath %}

Once you know what {% m %}a{% em %} is, you can calculate {% m %}b{% em %}

{% math %} 3a + b = 0 {% endmath %}

{% math %} \rightarrow 3 \times 2 + b = 0 {% endmath %}

{% math %} \rightarrow 6 + b = 0 {% endmath %}

{% math %} \rightarrow b = -6 {% endmath %}

And then, finally, {% m %}c{% em %}

{% math %} 4 = 2 \times 3^2 - 6 \times 3 + c {% endmath %}

{% math %} \rightarrow 4 = 0 + c {% endmath %}

{% math %} \rightarrow c = 4 {% endmath %}

## Not all Lines are Straight Lines
{% newthought "Again, with little pause for breath," %} Gelfand marches us onward.  

Are we approaching a universal axiom? Do we only need {% m %}n + 1{% em %} input-output value pairs to be able to reverse-engineer a polynomial of degree-not-exceeding {% m %}n{% em %}?  If first-degree polynomials are represented by straight lines, what do other polynomials look like in line form? 

Gelfand gets on to all this lines-stuff later{% sidenote 'sn-id-whatever' "Which I'll get to in another chunk." %} but for now be satisfied that yes, polynomials do represent lines, and that these can get pretty complicated unless they are always equal to zero{% sidenote 'sn-id-whatever' "As we discovered above." %} in which case they are just horizontal at {% m %}y = 0{% em %}.

In Problem 164 Gelfand breaks out the meta again, asking us to

> prove that a polynomial of degree not exceeding {% m %}2{% em %} is defined uniquely by three of its values.  

He gives us a bit of a starter, but I'm going to take my usual tack of working through Gelfand's solution in far-far finer-grained detail.  

First up are the simple parts; grokking exactly what he's asking - when he says "uniquely defined by three of its values" he means that if two polynomials are defined by the same three values, then they too are the same.  He then takes this, and writes it with symbols rather than words; a trick we're slowy getting used to.

{% m %}P(x){% em %} and {% m %}Q(x){% em %} represent our two polynmomials.  Gelfand represents their having the same output values given the same inputs by saying {% m %}P(x_{1}) = Q(x_{1}){% em %}, {% m %}P(x_{2}) = Q(x_{2}){% em %} and {% m %}P(x_{3}) = Q(x_{3}){% em %}.  To be clear, he lets on that {% m %}x_{1}{% em %}, {% m %}x_{2}{% em %} and {% m %}x_{3}{% em %} are three different values of {% m %}x{% em %}.  And that if these three circumstances hold true, then {% m %}P(x) = Q(x){% em %}, which is to say, they are equal.

With all this in mind Gelfand then breaks out another proof-trick we've not seen before{% sidenote 'sn-id-whatever' "At least I don't think so." %}  He introduces a third polynomial {% m %}R(x){% em %}.  Why?  Let's rewind a step.

Gelfand is taking advantage of a property of polynomial roots which I'd forgotten about - this property is that a polynomial of a degree not exceeding 2 can have at most two roots, _unless it is equal to zero_{% sidenote 'sn-id-whatever' "Which is what we saw in Problem 161 above." %}  It's the bit in _italics_ that is being used here because he's going to use it to show that all other polynomials which support these input-output pairs are equal to zero.  Let's see how.

Gelfand next brings in something else fundamental, but this time also blindingly obvious: that if two things are the same, then one minus the other gives you zero.  I.e. {% m %}P(x) - Q(x) = 0{% em %}.

When he combines the two, we get our proof. We need to have a symbol to represent the outcome of subtracting one polynomial from another and that is {% m %}R(x){% em %}.  The following should now make more sense

{% math %}P(x) - Q(x) = R(x){% endmath %}

and 

{% math %}P(x) - Q(x) = 0{% endmath %}

because extrapolating what we had previously

{% math %}P(x_{1}) - Q(x_{1}) = 0{% endmath %}

{% math %}P(x_{2}) - Q(x_{2}) = 0{% endmath %}

{% math %}P(x_{3}) - Q(x_{3}) = 0{% endmath %}

therefore

{% math %}R(x_{1}) = R(x_{2}) = R(x_{3}) = 0{% endmath %}

Which means that {% m %}P(x) = Q(x){% em %} so they are the same, so therefore "a polynomial of degree not exceeding {% m %}2{% em %} is defined uniquely by three of it's values."

### A Confession
{% newthought "I'll admit" %} I would have never got here on my own.  I'm sure that's why its a problem with a solution.  We're supposed to realise that the tricks just performed before our eyes are permissable.  That means there are some new tricks to be gleaned.

## Tricks Arising

### Flip It
Gelfand didn't attack this proof head on. He came round the back.  He didn't try and prove there was only on polynomial for the given values, and instead took another route of treating himself to two, and then proving that they were in fact the same, single thing.  

### Go Back to the Fundamentals
The proving they were in fact the same thing but just with two different symbols attached used a very primitive method (and I mean that in the pureset sense, in that {% m %}a - a = 0{% em %} is something you know at age five or earlier).  I hadn't grokked the fact that we can use this at a meta-level.  

It makes you wonder what else we can go-meta with...

## So is This a General Rule?
{% newthought "It seems like we're on the brink of discovering a general rule about polynomials, roots and interpolation." %}  Getting our specifics to something more wide-ranging is the point of Problem 166. It's also going to be the last part of this post.

### Problem 166 - Uniquely Defining n-degree Polynomials
Gelfand gives us a massive tip here - we need to take the solution to Problem 164{% sidenote 'sn-id-whatever' "The one we worked through slowly above." %} and generalise it.  Let's move step by step and see if we can. 

Note, I've ended up following [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) _incredibly closely_ here.  His explanation is as clear as I could make it so there seems like no point avoiding the fact.

First let's have our two polynomials {% m %}P(x){% em %} and {% m %}Q(x){% em %}, but let's say they are degree {% m %}n{% em %}, not degree {% m %}2{% em %} as we had previously.

Then let's have a bunch of values of {% m %}x{% em %} ({% m %}n{% em %} of them in fact)

{% math %}x_{1}, x_{2}, x_{3} \hbox{...} x_{n-1}, x_{n}, x_{n+1}{% endmath %} 

And subsequently let's state that in all cases, {% m %}P(x) = Q(x){% em %}

{% math %}P(x_{1}) = Q(x_{1}){% endmath %}

{% math %}P(x_{2}) = Q(x_{2}){% endmath %}

{% math %}P(x_{3}) = Q(x_{3}){% endmath %}

{% math %}...{% endmath %}

{% math %}P(x_{n-1}) = Q(x_{n-1}){% endmath %}

{% math %}P(x_{n}) = Q(x_{n}){% endmath %}

{% math %}P(x_{n+1}) = Q(x_{n+1}){% endmath %}

Then again let {% m %}R(x) = P(x) - Q(x){% em %}

Which means

{% math %}R(x_{1}) = R(x_{2}) = R(x_{3}) = \hbox{...} = R(x_{n-1}) = R(x_{n}) = R(x_{n+1}) = 0{% endmath %}

So that means {% m %}x_{1}, x_{2}, x_{3} \hbox{...} x_{n-1}, x_{n}, x_{n+1}{% em %} are roots of {% m %}R{% em %}.

But {% m %}R{% em %} can have at most {% m %}n{% em %} roots, or it is identically equal to zero for all {% m %}x{% em %} therefore 

{% math %}0 = R(x) = P(x) - Q(x){% endmath %} 

Or stated another way, {% m %}P(x) = Q(x){% em %} for all {% m %}x{% em %}.

In other words, as Durham crisply concludes,

> whenever two {% m %}n{% em %} degree polynomials are equal on {% m %}n+1{% em %}  or more points, they are the same polynomial.

## Break-Time
{% newthought "There is a lot more gold buried in the various Problems and Solutions" %} {% sidenote 'sn-id-whatever' "Or lack thereof" %} that comprise the remainder of this section.  I'm going to tackle them in a separate post however.  

This one has run on long enough.
