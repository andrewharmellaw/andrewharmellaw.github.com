---
layout: post
title: "Gelfand: Chunk 19 - Arithmetic Progressions, Part 1"
tags: [gelfand, tricks, arithmetic-progressions]
---
{% include JB/setup %}

{% newthought "I'm not sure if it was intended," %} but after the previous mind-bending of polynomial regression; the next section{% sidenote 'sn-id-whatever' "Section 39." %} is a blessed relief.  

Consequently, I'm going to restrict myself to simply summarising here the main points arising.  

It's for my benefit mostly.  If you're working through Gelfand's book, I suggest you do the problems yourself to help the chunk embed.

## Definition

> An _Arithmetic Progression_ is a sequence of numbers where each term is a sum of the preceeding one and a _fixed number_. This fixed number is called the _common difference_, or simply _difference_ of the _Arithmetic Progression_.

## Key Facts about Arithmetic Progressions
 * _Arithmetic Progressions_ can go forwards{% sidenote 'sn-id-whatever' "In which case the difference is positive." %}
 * _Arithmetic Progressions_ can also go backwards{% sidenote 'sn-id-whatever' "In which case the difference is negative." %}
 * You can find the next term in an _Arithmetic Progression_ given only the two preceeding numbers{% sidenote 'sn-id-whatever' "See Problem 173" %}
 * If you know enough of an _Arithmetic Progression_ to know the details (the start value and the difference) then you can calculate the nth term{% sidenote 'sn-id-whatever' "See Problems 174, 175 and 176." %}
 * There is a formula for _Arithmetic Progressions_, where {% m %}a{% em %} is the starting point, {% m %}d{% em %} handily signifies the difference, and {% m %}n{% em %} the term you're wanting to calculate. The most basic formula is {% m %}a + (n - 1)d{% em %}{% sidenote 'sn-id-whatever' "See Problem 177." %}
 * To make an _Arithmetic Progression_ go backwards, reverse the sign of the {% m %}d{% em %}.  In this case the actual _size_ of {% m %}d{% em %} is unchanged{% sidenote 'sn-id-whatever' "See Problem 178." %}
 * You can remove every second value in an _Arithmetic Progression_ and still have an _Arithmetic Progression_. In this case its difference will be {% m %}2d{% em %}{% sidenote 'sn-id-whatever' "See Problem 179." %}
 * You _cannot_ remove every third value in an _Arithmetic Progression_ without it stopping being an _Arithmetic Progression_. This because the difference will no longer be fixed{% sidenote 'sn-id-whatever' "See Problem 180." %}
 * The difference need not be a whole number{% sidenote 'sn-id-whatever' "See Problem 181." %}
 * You can find the middle term between two known terms ({% m %}a{% em %} and {% m %}b{% em %}) using the formula {% m %}\frac{(a + b)}{2}{% em %}{% sidenote 'sn-id-whatever' "See Problem 182. Note: this is also the formula for calculating an average of a and b." %}
 * You can calculate all terms in a progression as long as you know the starting term value, the end term value, and the end term position (e.g. "fourth"){% sidenote 'sn-id-whatever' "See Problem 183." %}
 * You can calculate the number of terms in a given progression given a starting term, an end term, and a known term between the two (including the number of that term - e.g. "the third term"){% sidenote 'sn-id-whatever' "See Problem 184." %}

That's all for this post.  I'm sure it will all come into play when we launch into Section 40, which is up next.
