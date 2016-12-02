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

But they're important. (Isn't everything?) So I'm forcing myself to work through this slowly to build yet another chunk.  If you're concerned you might be patronised reading this, please pass it by - you probably will be.  It's more an excercise to hammer the full detial home to myself and avoid another skim-read.

## The Constituent Parts
From Google "define":

* Numerator: The part above the line, showing how many parts of the denominator are taken
* Denominator: The part below the line, showing the divisor (how many parts a single thing is divided onto.)

## Basic Fraction Manipulations
(from Gelfand, Chapter 34: Converting a Rational Expression into the Quotient of Two Polynomials)

### Addition
To add, start by finding a common denominator for $P/Q$ and $R/S$ (if we have no better idea , just multiply $P$ and $Q$ by $S$ and multiply $R$ and $S$ by $Q$).  Then just add the numerators.

$$ P/Q + R/S  = PS/QS + QR/QS = (PS + QR) / QS $$

### Subtration
Subtraction is similar to addition:

$$ P/Q - R/S  = PS/QS - QR/QS = (PS - QR) / QS $$

### Multiplication

$$ (P/Q).(R/S) = PR/QS $$

### Division

$$ (P/Q)/(R/S) = PS/QR $$

### Simplification
Sometimes during the transformation we are able to simplify the expression, eliminating a common factor in the numberator and the denominator:

$$ PX/QX = P/Q $$

## Tricks for Comparing Fractions
It seems like Gelfand loves to get his readers to compare fractions.  Luckily he gives us a few tricks along the way.

### Finding the Common Denominator
This is the one I recalled from school.

Which is bigger, $1/3$ or $2/7$?

$$ 1/3 = 7/21, 2/7 = 6/21 $$

Therefore the first fraction is the bigger: $7/21 > 6/21$

### Finding the Common Numerator
Gelfand introduces another method, finding a common numerator:

Which is bigger, $1/3$ or $2/7$?

$$ 1/3 = 2/6 > 2/7 $$

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

### TBC - how to know when to try what approch? 
And also, this is a different approach from the one in the solutions.

## "Adding" Fractions to find something inbetween
To add fractions, you nee to find a common denominator. If you don't, and just add them, then you end up wioth something in between the two fractions:

$$\frac{2}{3} + \frac{5}{7} \Rightarrow \frac{2 + 5}{3 + 7} = \frac{7}{10} $$

TBC - why do we care?

## Neighbour Fractions
(From Gelfand, Problem 42)

"Fractions $\frac{a}{b}$ and $\frac{c}{d}$ are called neighbour fractions if their difference $\frac{ad-bc}{bd}$ has numberator $±1$, that is $ad - bc = ±1$."

Lets take a step back. He's just given us a formulation to calculate differences between fractions: 

$$\frac{ad-bc}{bd}$$

Is there a way to get to this with it making sense?:

A difference is one fraction minus another.  So let's enact these steps formally  with $\frac{a}{b}$ and $\frac{c}{d}$:

$$ \frac{a}{b} - \frac{c}{d} = $$

$$ = \frac{ad}{bd} - \frac{cb}{db} = $$

$$ = \frac{ad - bc}{bd}$$

Just what we'd expect.  