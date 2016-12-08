---
layout: post
title: "Gelfand: Chunk 4 - Fractions (Urgh)"
description: ""
category: 
tags: [gelfand, fractions, tricks]
---
{% include JB/setup %}

## Fractions Y U No...
Yet another of my mental stumbling-blocks today - fractions. 

Urgh.

It amused me slightly to read on Google's "define" page that they are termed "vulgar fractions".  I couldn't agree more.

But they're important. (Isn't everything?) So I'm forcing myself to work through this slowly to build yet another chunk.  If you're concerned you might be patronised reading this, please pass it by - you probably will be.  It's more an excercise to hammer the full detail home to myself and avoid another skim-read.  Why? I'm enthused already by the power, durability and utility of the first chunks I built up in prior posts, and want to get more.

## The Constituent Parts
From Google "define":

* Numerator: The part above the line, showing how many parts of the denominator are taken
* Denominator: The part below the line, showing the divisor (how many parts a single thing is divided onto.)

## Basic Fraction Manipulations
(from Gelfand, Chapter 34: Converting a Rational Expression into the Quotient of Two Polynomials)

### Addition
To add, start by finding a common denominator for $P/Q$ and $R/S$ (if we have no better idea , just multiply $P$ and $Q$ by $S$ and multiply $R$ and $S$ by $Q$).  Then just add the numerators.

$$ P/Q + R/S  = $$
$$ = PS/QS + QR/QS = $$
$$ = (PS + QR) / QS $$

### Subtration
Subtraction is similar to addition:

$$ P/Q - R/S = $4
$$ = PS/QS - QR/QS = $$
$$ = (PS - QR) / QS $$

### Multiplication

$$ (P/Q).(R/S) = $$
$$ = PR/QS $$

### Division

$$ (P/Q)/(R/S) = $
$$ = PS/QR $$

### Simplification
Sometimes during the transformation we are able to simplify the expression, eliminating a common factor in the numberator and the denominator:

$$ PX/QX = P/Q $$

## Tricks for Comparing Fractions
Gelfand loves to get his readers to compare fractions.  Luckily he gives us a few tricks along the way.

### Finding the Common Denominator
This is the one I recall from school.

Which is bigger, $1/3$ or $2/7$?

$$ 1/3 = 7/21, 2/7 = 6/21 $$

Therefore the first fraction is the bigger (there are more 21ths): $7/21 > 6/21$

### Finding the Common Numerator
Gelfand next introduces another method, one I'd never seen before, finding a common numerator:

Which is bigger, $1/3$ or $2/7$?

$$ 1/3 = 2/6 > 2/7 $$

WHat would indicate to you which was worth using?  I presume that if you can see an easy mathematical route to make the denominators the same use the first method, but if you can see an easier route to make the numerators the same, then use that instead.

### The Difference Between Two Fractions, Both of Which are Less Than One

#### Gelfand's Problem 40. 

Which is bigger?:

$\frac{10001}{10002}$ and $\frac{100001}{100002}$

Gelfand gives us a tip - find the difference between each of these and $1/1$, the one which gives the smaller fraction, is the larger.

The first fraction first:

$$\frac{10002}{10002} - \frac{10001}{10002} = $$

$$ = \frac{(10002 - 10001)}{10002} = $$

$$ = \frac{1}{10002}$$

Then the second fraction:

$$\frac{100002}{100002} - \frac{100001}{100002} = $$

$$ = \frac{(100002 - 100001)}{100002} = $$

$$ = \frac{1}{100002}$$

This has given us a common denominator, so comparing them: 

$$ \frac{1}{10002} > \frac{1}{100002} $$

So therefore:

$$ \frac{10001}{10002} < \frac{100001}{100002} $$

#### Gelfand's Problem 41

Which is bigger?:

$$\frac{12345}{54321}$$ or $$\frac{12346}{54322} = $$

In problem 40, where the fractions were also both less than one, we subtracted $1/1$ from each and saw which was smaller.

Lets try that again. The first fraction first:

$$\frac{54321}{54321} - \frac{12345}{54321} = $$

$$ = \frac{(54321 - 12345)}{54321} = $$

$$ = \frac{41976}{54321}$$

Then the second fraction:

$$\frac{54322}{54322} - \frac{12346}{54322} = $$

$$ = \frac{(54322 - 12346)}{54322} = $$

$$ = \frac{41976}{54322}$$

This has given us a common numerator ($41976$), so comparing them:

$$ \frac{41976}{54321} > \frac{41976}{54322} $$

Therefore:

$$\frac{12345}{54321} < \frac{12346}{54322} $$

### How to know when to try what approch? 
All this prompts some (blindingly obvious, but nice to call out all the same) mental images to have in the fraction-wrangling kitbag.  When you are comparing things by denominator, you are saying "the sizes of the pieces of my whole are the same, so how many do I have?" whereas when you are comparing by numerator, you are saying "i have the same number of pieces, but which pieces are bigger / smaller?"

From this therefore drops out the prompt to choose from these two options the state which is easier to get into.  We saw tricks like "subtracting from one" and the standard "common-denominator" approach.  As before, for me I'll be selecting these once I've laid things out mentally to see which makes most sense.

## "Adding" Fractions to find "something inbetween"
Now something a little different. Finding calues in between two fractions.

We remembered above that to add fractions, you need to find a common denominator. If you don't, and just add them, then you end up instead with something in between the two fractions:

$$\frac{2}{3} + \frac{5}{7} \Rightarrow \frac{2 + 5}{3 + 7} = \frac{7}{10} $$

### Dividing a Stick
So if this is an error, why is Gelfand bothering to point this out?  Well, in two problem's time, he produces the stick problem which involves you having this in mind to make it solvable without drawing anything out.

Problem 43 is a problem of comparing various fractions on top of each other.  A length (let's call it "1") is divided in three ways:

$$7/7$$
$$13/13$$
$$20/20$$

We then make the actual cuts at the 20ths.  

This could be a _very_ visual problem.  One which should therefore be ideal for my approach.  Gelfand gets off to a helpful start in his solution by hinting that we can ignore the first and last 20th, as they will have no red or green marks on them.  This makes sense; $1/20$ is less than (i.e. smaller than in stick-bit terms) $1/7$ and $1/13$.

He then gives us another tip - after deducting these end-bits, we have 18 pieces left, and 18 marks ($(7-1) + (13-1)$).  This is all good, but there is then a leap which I'm not sure I'm comfortable to make - he states that 18 pieces and 18 marks means no piece will be left without a mark, but what if one piece has two marks? That means one will have none.  Its still not clear to me how this claim can be made.  But lets get to the next step.

Gelfand writes "Red marks correspond to numbers in the form $\frac{k}{7}$, green marks correspond to numbers in the form $\frac{l}{13}$"  We're meant to have realised at this point that 7 + 13 = 20.  Not too much to ask for I suppose.  They we're supposed to realise that we just saw this kind of pattern when we mis-calculated our fraction addition.  So what does that let us then conclude?

In the failed adding, we accidentally unearthed a way of finding "something in between two fractions". What would happen then if we just laid out all these sums of $\frac{k}{7}$ plus $\frac{l}{13}$ which we might need to get to our remaining  $\frac{something}{20}$ 

$$ \frac{1 + 1}{7 + 13} \Rightarrow \frac{2}{20}$$
$$ \frac{1 + 2}{7 + 13} \Rightarrow \frac{3}{20}$$
$$ \frac{1 + 3}{7 + 13} \Rightarrow \frac{4}{20}$$
$$ \frac{2 + 3}{7 + 13} \Rightarrow \frac{5}{20}$$
$$ \frac{2 + 4}{7 + 13} \Rightarrow \frac{6}{20}$$
$$ \frac{2 + 5}{7 + 13} \Rightarrow \frac{7}{20}$$
$$ \frac{3 + 5}{7 + 13} \Rightarrow \frac{8}{20}$$
$$ \frac{3 + 6}{7 + 13} \Rightarrow \frac{9}{20}$$
$$ \frac{3 + 7}{7 + 13} \Rightarrow \frac{10}{20}$$
$$ \frac{4 + 7}{7 + 13} \Rightarrow \frac{11}{20}$$
$$ \frac{4 + 8}{7 + 13} \Rightarrow \frac{12}{20}$$
$$ \frac{4 + 9}{7 + 13} \Rightarrow \frac{13}{20}$$
$$ \frac{5 + 9}{7 + 13} \Rightarrow \frac{14}{20}$$
$$ \frac{5 + 10}{7 + 13} \Rightarrow \frac{15}{20}$$
$$ \frac{5 + 11}{7 + 13} \Rightarrow \frac{16}{20}$$
$$ \frac{6 + 11}{7 + 13} \Rightarrow \frac{17}{20}$$
$$ \frac{6 + 12}{7 + 13} \Rightarrow \frac{18}{20}$$

NOTE: this working-out doesn't cover all possibilities for $k+l$ because not all these fractions will be next to each other (i.e. you can get to $\frac{13}{20}$ by $ \frac{1 + 12}{7 + 13}$ but these marks are not next door on our stick.)  This allowed me to arrive at this progression without having to draw a stick.  That's handly - but it still allowed me to have a spatial representation of tinngs in my mind.

So what has this given us? Each of our 20ths is a point between two larger fractions (that is they are at a "cut-point").  This means in our "real world" of the imaginary stick there are _almost always_ cut points directly after a green 13th (seen in the progression above where $l$ stays the same and $k$ increases) and _sometimes_ cut-points after a 7th (seen in the progression above where $l$ increases but $k$ stays the same).  

As a result we can conclude:

 * There are _never_ points where a $k$ and an $l$ fall so close that a cut-point is not between them ($7 + 13 = 20$ _always_)
 * the cut-points never fall directly _on_ a red or green line, because as we can see, all cut-points are _between_ reds and greens (again, $7 + 13 = 20$ _always_)

We've travelled a slightly more scenic route to the conclusion that Gelfand reaches much more rapidly.  But I think it is informative to point this out clearly.

## Neighbour Fractions
(From Gelfand, Problem 42)

We jumped ahead a little in the book here, missing out Problem 41.

"Fractions $\frac{a}{b}$ and $\frac{c}{d}$ are called neighbour fractions if their difference $\frac{ad-bc}{bd}$ has numberator $±1$, that is $ad - bc = ±1$."

Coming back to them now, I can begin to pick up on why Gelfand might have introduced them.  They made little sense to me however when I came across them chronologically in the book.  This time, bearing in mind some of the other techniques from [Oakley](https://www.goodreads.com/book/show/18693655-a-mind-for-numbers) (namely "read ahead", and "do some additional research") I read around these on wikipedia and came across the [Farey Sequence](https://en.wikipedia.org/wiki/Farey_sequence).  It turns out they are super-interesting, and also have some beautiful physical manifestations (which is very satisfying to me).  

With this in mind, can we start to tackle the three questions Gelfand has around this?  I'm not so sure, because one [solutions-text available freely on the interwebs](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) states that these three are the hardest in the whole book, and that the author of that text, Adrian Durham thought there was no way a student could get to the proofs requested based on what they can reliably know at this point in their journey.

Consequently, I'll satisfy myself for now with making-super-evident the ready-made formulation to calculate differences between fractions which Gelfand slips in: 

$$\frac{ad-bc}{bd}$$

Is there a way to get to this form what we already know?:

A difference is one fraction minus another.  So let's enact these steps formally  with $\frac{a}{b}$ and $\frac{c}{d}$:

$$ \frac{a}{b} - \frac{c}{d} = $$

$$ = \frac{ad}{bd} - \frac{cb}{db} = $$

$$ = \frac{ad - bc}{bd}$$

Just what we'd expect.  Nice.

I'll be back to this super-interesting topic in the future.  Meanwhile, have a crack at them yourself if you like.