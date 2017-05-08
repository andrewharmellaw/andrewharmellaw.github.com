---
layout: post
title: "Gelfand: Chunk 19 - Arithmetic Progressions, Part 1"
description: "The Quick Bits"
category: 
tags: [gelfand, tricks, arithmetic-progressions]
---
{% include JB/setup %}

I'm not sure if it was intended, but after the previous mind-bending of polynomial regression; the next section (39) is a blessed relief.  

Consequently, I'm going to restrict myself to simply summarising here the main points arising.  

It's for my benefit mostly.  If you're working through Gelfand's book, I suggest you do the problems yourself to help the chunk embed.

## Definition
An _arithmetic progression_ is a sequence of numbers where each term is a sum of the preceeding one and a _fixed number_. This fixed number is called the _common difference_, or simply _difference_ of the arithmetic progression.

## Key Facts about Arithmetic Progressions
 * arithmetic progressions can go forwards (in which case the difference is positive)
 * arithmetic progressions can also go backwards (in which case the difference is negative)
 * you can find the next term in an arithmetic progression given only the two preceeding numbers {% sidenote 'sn-id-whatever' 'see Problem 173'%}
 * if you know enough of an arithmetic progression to know the details (the start value and the difference) then you can calculate the nth term - see Problems 174, 175 and 176
 * there is a formula for arithmetic progressions, where $a$ is the starting point, $d$ handily signifies the difference, and $n$ the term you're wanting to calculate. The most basic formula is $a + (n - 1)d$ - see Problem 177
 * to make an arithmetic progression go backwards, reverse the sign of the $d$.  In this case the actual _size_ of $d$ is unchanged - Problem 178
 * you can remove every second value in an arithmetic progression and still have an arithmetic progression. In this case its difference will be $2d$ - Problem 179
 * you _cannot_ remove every third value in an arithmetic progression without it stopping being an arithmetic progression. This because the difference will no longer be fixed - Problem 180
 * the difference need not be a whole number - Problem 181
 * you can find the middle term between two known terms ($a$ and $b$) using the formula $\frac{(a + b)}{2}$ - Problem 182. _Note: this is also the formula for calculating an average of $a$ and $b$._
 * you can calculate all terms in a progression as long as you know the starting term value, the end term value, and the end term position (e.g. "fourth") - Problem 183
 * you can calculate the number of terms in a given progression given a starting term, an end term, and a known term between the two (including the number of that term - e.g. "the third term") - Problem 184

 That's all for this post.  I'm sure it will all come into play when we launch into Section 40, which is up next.
