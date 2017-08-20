---
layout: post
title: "Gelfand: Chunk 4 - Fractions (Urgh)"
tags: [gelfand, stewart-algebra-review, fractions, division, distributive-law, tricks]
---
{% include JB/setup %}

{% newthought "Yet another" %} of my mental stumbling-blocks today: fractions.{% sidenote 'sn-id-whatever' "Urgh." %}

It amused me slightly to read on Google's "define" page that they are termed "vulgar fractions".  I couldn't agree more.

But they're important (isn't everything?) and so I'm forcing myself to work through this slowly to build yet another chunk.  If you're concerned you might be patronised reading this, please pass it by - you probably will be.  It's more an excercise to hammer the full detail home to myself and avoid another skim-read.  Why? I'm enthused already by the power, durability and utility of the first chunks I built up in prior posts, and want to get more.

## The Constituent Parts
From Google "define":

> Numerator: The part above the line, showing how many parts of the denominator are taken.

> Denominator: The part below the line, showing the divisor (how many parts a single thing is divided onto.)

## Basic Fraction Manipulations
(From Gelfand, Section 34: Converting a Rational Expression into the Quotient of Two Polynomials.)

### Addition
To add, if you don't have one to begin with, start by finding a common denominator for {% m %}\frac{P}{Q}{% em %} and {% m %}\frac{R}{S}{% em %}. (If we have no better idea , just multiply {% m %}P{% em %} and {% m %}Q{% em %} by {% m %}S{% em %} and multiply {% m %}R{% em %} and {% m %}S{% em %} by {% m %}Q{% em %}).  Then just add the numerators.

{% math %} \frac{P}{Q} + \frac{R}{S}  = {% endmath %}

{% math %} = \frac{PS}{QS} + \frac{QR}{QS} = {% endmath %}

{% math %} = \frac{PS + QR}{QS} {% endmath %}

In fact, as you see in the Stewarts Calculus [Review of Algebra](http://www.stewartcalculus.com/data/ESSENTIAL%20CALCULUS%20Early%20Transcendentals/upfiles/ess-reviewofalgebra.pdf), when you add two fractions with the same denominator, you are using the _Distributive Law_.

{% math %} \frac{a}{b} + \frac{c}{b} = \frac{1}{b} \cdot a + \frac{1}{b} \cdot c = \frac{1}{b}(a + c) = \frac{a + c}{b} {% endmath %}

And given this, it is therefore true that

{% math %} \frac{a + c}{b} = \frac{a}{b} + \frac{c}{b} {% endmath %}

but remember to avoid the commonly associated pitfall

{% math %} \frac{a}{b + c} \neq \frac{a}{b} + \frac{a}{c} {% endmath %}

### Subtraction
Subtraction is similar to addition. Again start by finding a common denominator for {% m %}\frac{P}{Q}{% em %} and {% m %}\frac{R}{S}{% em %}. (If we have no better idea , just multiply {% m %}P{% em %} and {% m %}Q{% em %} by {% m %}S{%  em %} and {% m %}S{% em %} by {% m %}Q{% em %}).  Then just subtract the numerators:

{% math %} \frac{P}{Q} - \frac{R}{S} = {% endmath %}

{% math %} = \frac{PS}{QS} - \frac{QR}{QS} = {% endmath %}

{% math %} = \frac{PS - QR}{QS} {% endmath %}

### Multiplication
This is the simplest of the lot. Simply multiply one numerator by the other, and one denominator by the other:

{% math %} \frac{P}{Q} \times \frac{R}{S} = {% endmath %}

{% math %} = \frac{PR}{QS} {% endmath %}

Additionally, from Stewart's Calculus [Review of Algebra](http://www.stewartcalculus.com/data/ESSENTIAL%20CALCULUS%20Early%20Transcendentals/upfiles/ess-reviewofalgebra.pdf), it is true that

{% math %} \frac{-a}{b} = - \frac{a}{b} = \frac{a}{-b} {% endmath %}

### Division

To divide, invert (the denominator fraction) and mulitply

{% math %} \frac{P/Q}{R/S} = {% endmath %}

{% math %} = \frac{P}{Q} \times \frac{S}{R} = {% endmath %}

{% math %} = \frac{PS}{QR} {% endmath %}

### Simplification
Sometimes during the transformation we are able to simplify the expression, eliminating a common factor in the numberator and the denominator:

{% math %} \frac{PX}{QX} = \frac{P}{Q} {% endmath %}

## Tricks for Comparing Fractions
{% newthought "Gelfand loves" %} to get his readers to compare fractions.  Luckily he gives us a few tricks along the way.

### Finding the Common Denominator
This is the one I recall from school.

Which is bigger, {% m %}\frac{1}{3}{% em %} or {% m %}\frac{2}{7}{% em %}?

{% math %} \frac{1}{3} = \frac{7}{21} {% endmath %}

{% math %} \frac{2}{7} = \frac{6}{21} {% endmath %}

Therefore the first fraction is the bigger (there are more 21ths): {% m %}\frac{7}{21} \gt \frac{6}{21}{% em %}

### Finding the Common Numerator
Gelfand next introduces another method, one I'd never seen before, finding a common numerator:

Which is bigger, {% m %}\frac{1}{3}{% em %} or {% m %}\frac{2}{7}{% em %}?

{% math %} \frac{1}{3} = \frac{2}{6} > \frac{2}{7} {% endmath %}

What would indicate to you which was worth using?  I presume that if you can see an easy mathematical route to make the denominators the same use the first method, but if you can see an easier route to make the numerators the same, then use that instead.

### The Difference Between Two Fractions, Both of Which are Less Than One

First up is the approach from Gelfand's Problem 40. Which is bigger?:

{% m %}\frac{10001}{10002}{% em %} or {% m %}\frac{100001}{100002}{% em %}?

Gelfand gives us a tip - find the difference between each of these and {% m %}\frac{1}{1}{% em %}, the one which gives the smaller fraction, is the larger.

The first fraction first:

{% math %} \frac{10002}{10002} - \frac{10001}{10002} = {% endmath %}

{% math %} = \frac{(10002 - 10001)}{10002} = {% endmath %}

{% math %} = \frac{1}{10002} {% endmath %}

Then the second fraction:

{% math %} \frac{100002}{100002} - \frac{100001}{100002} = {% endmath %}

{% math %} = \frac{(100002 - 100001)}{100002} = {% endmath %}

{% math %} = \frac{1}{100002} {% endmath %}

This has given us a common denominator, so comparing them: 

{% math %} \frac{1}{10002} > \frac{1}{100002} {% endmath %}

So therefore:

{% math %} \frac{10001}{10002} < \frac{100001}{100002} {% endmath %}

Then Gelfand's problem 41. Which is bigger?:

{% m %} \frac{12345}{54321} {% em %} or {% m %}\frac{12346}{54322} {% em %}?

In problem 40, where the fractions were also both less than one, we subtracted {% m %}\frac{1}{1}{% em %} from each and saw which was smaller.

Let's try that again. The first fraction first:

{% math %} \frac{54321}{54321} - \frac{12345}{54321} = {% endmath %}

{% math %} = \frac{(54321 - 12345)}{54321} = {% endmath %}

{% math %} = \frac{41976}{54321} {% endmath %}

Then the second fraction:

{% math %} \frac{54322}{54322} - \frac{12346}{54322} = {% endmath %}

{% math %} = \frac{(54322 - 12346)}{54322} = {% endmath %}

{% math %} = \frac{41976}{54322} {% endmath %}

This has given us a common numerator ({% m %}41976{% em %}), so comparing them:

{% math %} \frac{41976}{54321} > \frac{41976}{54322} {% endmath %}

Therefore:

{% math %} \frac{12345}{54321} < \frac{12346}{54322} {% endmath %}

### How to know which approch to try? 
All this prompts some mental images{% sidenote 'sn-id-whatever' "Blindingly obvious ones, but nice to call out all the same." %} to have in the fraction-wrangling kitbag.  When you are comparing things by denominator, you are saying "the sizes of the pieces of my whole are the same, so how many do I have?" whereas when you are comparing by numerator, you are saying "i have the same number of pieces, but which pieces are bigger / smaller?"

From this therefore drops out the prompt to choose from these two options the state which is easier to get into.  We saw tricks like "subtracting from one" and the standard "common-denominator" approach.  As before, for me I'll be selecting these once I've laid things out mentally to see which makes most sense.

## "Adding" Fractions to find "something in between"
{% newthought "Now something a little different." %} Finding values in between two fractions.

We remembered above that to add fractions, you need to find a common denominator. If you don't, and just add them, then you end up instead with something in between the two fractions:

{% math %} \frac{2}{3} + \frac{5}{7} \Rightarrow \frac{2 + 5}{3 + 7} = \frac{7}{10} {% endmath %}

### Dividing a Stick
So if this is an error, why is Gelfand bothering to point this out?  Well, in two problem's time, he produces the stick problem which involves you having this in mind to make it solvable without drawing anything out.

Problem 43 is a problem of comparing various fractions on top of each other.  A length (let's call it "1") is divided in three ways:

{% math %} \frac{7}{7} {% endmath %}

{% math %} \frac{13}{13} {% endmath %}

{% math %} \frac{20}{20} {% endmath %}

We then make the actual cuts at the 20ths.  

This could be a _very_ visual problem.  One which should therefore be ideal for my approach.  Gelfand gets off to a helpful start in his solution by hinting that we can ignore the first and last 20th, as they will have no red or green marks on them.  This makes sense; {% m %}\frac{1}{20}{% em %} is less than (i.e. smaller than in stick-bit terms) {% m %}\frac{1}{7}{% em %} and {% m %}\frac{1}{13}{% em %}.

He then gives us another tip - after deducting these end-bits, we have 18 pieces left, and 18 marks ({% m %}(7-1) + (13-1){% em %}).  This is all good, but there is then a leap which I'm not sure I'm comfortable to make - he states that 18 pieces and 18 marks means no piece will be left without a mark, but what if one piece has two marks? That means one will have none.  Its still not clear to me how this claim can be made.  But lets get to the next step.

Gelfand writes 

> "Red marks correspond to numbers in the form {% m %}\frac{k}{7}{% em %}, green marks correspond to numbers in the form {% m %}\frac{l}{13}{% em %}"  

We're meant to have realised at this point that {% m %}7 + 13 = 20{% em %}.  Not too much to ask for I suppose.  They we're supposed to realise that we just saw this kind of pattern when we mis-calculated our fraction addition.  So what does that let us then conclude?

In the failed adding, we accidentally unearthed a way of finding "something in between two fractions". What would happen then if we just laid out all these sums of {% m %}\frac{k}{7}{% em %} plus {% m %}\frac{l}{13}{% em %} which we might need to get to our remaining {% m %}\frac{something}{20}{% em %} 

{% math %} \frac{1 + 1}{7 + 13} \Rightarrow \frac{2}{20} {% endmath %}

{% math %} \frac{1 + 2}{7 + 13} \Rightarrow \frac{3}{20} {% endmath %}

{% math %} \frac{1 + 3}{7 + 13} \Rightarrow \frac{4}{20} {% endmath %}

{% math %} \frac{2 + 3}{7 + 13} \Rightarrow \frac{5}{20} {% endmath %}

{% math %} \frac{2 + 4}{7 + 13} \Rightarrow \frac{6}{20} {% endmath %}

{% math %} \frac{2 + 5}{7 + 13} \Rightarrow \frac{7}{20} {% endmath %}

{% math %} \frac{3 + 5}{7 + 13} \Rightarrow \frac{8}{20} {% endmath %}

{% math %} \frac{3 + 6}{7 + 13} \Rightarrow \frac{9}{20} {% endmath %}

{% math %} \frac{3 + 7}{7 + 13} \Rightarrow \frac{10}{20} {% endmath %}

{% math %} \frac{4 + 7}{7 + 13} \Rightarrow \frac{11}{20} {% endmath %}

{% math %} \frac{4 + 8}{7 + 13} \Rightarrow \frac{12}{20} {% endmath %}

{% math %} \frac{4 + 9}{7 + 13} \Rightarrow \frac{13}{20} {% endmath %}

{% math %} \frac{5 + 9}{7 + 13} \Rightarrow \frac{14}{20} {% endmath %}

{% math %} \frac{5 + 10}{7 + 13} \Rightarrow \frac{15}{20} {% endmath %}

{% math %} \frac{5 + 11}{7 + 13} \Rightarrow \frac{16}{20} {% endmath %}

{% math %} \frac{6 + 11}{7 + 13} \Rightarrow \frac{17}{20} {% endmath %}

{% math %} \frac{6 + 12}{7 + 13} \Rightarrow \frac{18}{20} {% endmath %}

NOTE: this working-out doesn't cover all possibilities for {% m %}k+l{% em %} because not all these fractions will be next to each other (i.e. you can get to {% m %}\frac{13}{20}{% em %} by {% m %}\frac{1 + 12}{7 + 13}{% em %} but these marks are not next door on our stick.)  This allowed me to arrive at this progression without having to draw a stick.  That's handly - but it still allowed me to have a spatial representation of tinngs in my mind.

So what has this given us? Each of our 20ths is a point between two larger fractions (that is they are at a "cut-point").  This means in our "real world" of the imaginary stick there are _almost always_ cut points directly after a green 13th (seen in the progression above where {% m %}l{% em %} stays the same and {% m %}k{% em %} increases) and _sometimes_ cut-points after a 7th (seen in the progression above where {% m %}l{% em %} increases but {% m %}k{% em %} stays the same).  

As a result we can conclude:

Firstly, there are _never_ points where a {% m %}k{% em %} and an {% m %}l{% em %} fall so close that a cut-point is not between them ({% m %}7 + 13 = 20{% em %} _always_).

And secondly, the cut-points never fall directly _on_ a red or green line, because as we can see, all cut-points are _between_ reds and greens (again, {% m %}7 + 13 = 20{% em %} _always_)

We've travelled a slightly more scenic route to the conclusion that Gelfand reaches much more rapidly.  But I think it's informative to point this out clearly.

## Problem 45 - Fractions of Fractions
{% newthought "My solution to this problem" %} was slightly different from the one given in the book (which I don't personally think makes sense without a but of mental stretching) but it gave me a little extra trick to add to our kit bag.  Here we're working with a starting length which is not {% m %}1{% em %}.  We have instead {% m %}\frac{2}{3}m{% em %}, but need to find out the difference between this and {% m %}\frac{1}{2}m{% em %}, an we need this difference in terms of a fraction of {% m %}\frac{2}{3}m{% em %}.

We could go the route of making the denominators common:

{% math %} \frac{2}{3}m = \frac{4}{6}m {% endmath %}

{% math %} \frac{1}{2}m = \frac{3}{6}m{% endmath %}

And then, by comparing them we can see that the difference is {% m %}\frac{1}{6}m{% em %}. 

But we don't need our answer in terms of fractions of a meter, we need it in terms of fractions of {% m %}\frac{2}{3}m{% em %}.  This is actually very easy to obtain.  We have our fractions expressed with common denominators, so now just need to compare the relative sizes of numerators.  In this case we have {% m %}4{% em %} of something, and we need {% m %}3{% em %}, which means we need to cut off {% m %}\frac{1}{4}{% em %} of the string.

This is a pretty long-winded route however.  You could also do the following:

First we ask {% m %}\frac{1}{2}{% em %} is how much of {% m %}\frac{2}{3}{% em %}? To find the answer we divide the former by the latter (just as we would if we were, for example, asking {% m %}50{% em %} is how much of {% m %}100{% em %}?).

{% math %} \frac{1/2}{2/3} = \frac{1 \cdot 3}{2 \cdot 2} = \frac{3}{4}{% endmath %}

So therefore we need to take away {% m %}\frac{1}{4}{% em %} of the existing string.  Nice and simple.

## Neighbour Fractions
(From Gelfand, Problem 42)

{% newthought "We jumped ahead a little" %} in the book, missing out Problem 41.

> "Fractions {% m %}\frac{a}{b}{% em %} and {% m %}\frac{c}{d}{% em %} are called "_Neighbour Fractions"_ if their difference {% m %}\frac{ad-bc}{bd}{% em %} has numberator {% m %}±1{% em %}, that is {% m %}ad - bc = ±1{% em %}."

Coming back to them now, I can begin to pick up on why Gelfand might have introduced them.  They made little sense to me however when I came across them chronologically in the book.  This time, bearing in mind some of the other techniques from [Oakley](https://www.goodreads.com/book/show/18693655-a-mind-for-numbers){% sidenote 'sn-id-whatever' 'Namely "read ahead", and "do some additional research"' %} I read around these on wikipedia and came across the [Farey Sequence](https://en.wikipedia.org/wiki/Farey_sequence).  It turns out they are super-interesting, and also have some beautiful physical manifestations {% sidenote 'sn-id-whatever' "Which was very satisfying to me." %}  

With this in mind, can we start to tackle the three questions Gelfand has around this?  I'm not so sure, because one [solutions-text available freely on the interwebs](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) states that these three are the hardest in the whole book, and that the author of that text, Adrian Durham thought there was no way a student could get to the proofs requested based on what they can reliably know at this point in their journey.

Consequently, I'll satisfy myself for now with making-super-evident the ready-made formulation to calculate differences between fractions which Gelfand slips in: 

{% math %} \frac{ad-bc}{bd} {% endmath %}

Is there a way to get to this form what we already know?:

A difference is one fraction minus another.  So let's enact these steps formally  with {% m %}\frac{a}{b}{% em %} and {% m %}\frac{c}{d}{% em %}:

{% math %} \frac{a}{b} - \frac{c}{d} = {% endmath %}

{% math %} = \frac{ad}{bd} - \frac{cb}{db} = {% endmath %}

{% math %} = \frac{ad - bc}{bd} {% endmath %}

Just what we'd expect.  Nice.

I'll be back to this super-interesting topic in the future.

Meanwhile, have a crack at them yourself if you like.
