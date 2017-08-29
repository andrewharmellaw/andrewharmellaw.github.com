---
layout: post
title: "Gelfand: Chunk 20 - Arithmetic Progressions Progress"
tags: [gelfand, tricks, arithmetic-progressions, odd, even]
---
{% include JB/setup %}

{% newthought "This is another pretty straight-forward section." %}  I'm going to leave Gelfand pretty largely to his own devices, only occasionally providing a summary-gloss over the top.  You might find it useful to read this chunk in it's entirety, then work through the section in Gelfand, before coming back here again to check your chunk is embedded nicely.

## Racing Through the Sums

{% newthought "Section 39 ended with a question" %} about calculating the number of terms in a given _Arithmetic Progression_. Section 40 opens by using that technique to calculate the sum of the values in a specified range of a given arithmetic progression.

As is his general style, Gelfand begins by asking us to solve a specific problmem in our current domain.  This comes in Problem 185.{% sidenote 'sn-id-whatever' "The solution to this problem might remind you of the Gauss solution to Problem 33 which we saw back in ["Chunk 2 - Commutative, Associative and Distributive Laws"](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws)." %}

The next Problem{% sidenote 'sn-id-whatever' "Problem 186." %} asks us to figure out a general formula for sums of terms.  This is solved for us, and makes a lot of sense if we self-solved problem 185, and also if we looked back at chunk 2.  The general formula is just a symbolic representation of this pairing {% m %}(a + b){% em %} and subsequent multiplication of this by {% m %}\frac{n}{2}{% em %}.

Problem 187 then points out that we might have been tripped up had we had an odd number of terms.{% sidenote 'sn-id-whatever' "Dammit!" %} 

Those dashed odd-numbers again!  Note that the forumla derived to calculate the answer is unchanged, but the mental model that you might be using to get there needs more detail.

Not content with explaining this to us numerically, Gelfand then breaks into some of his glorious imagery to explain the latest solution to the current problem in hand.  Personally I found this second approach mentally-sticky (in a good way) and it's lodged up in my brain box nice and solid with very little rehersal as a consequence.

There is a reason Gelfand gave us a picture, and also a reason for his stressing of the _arithmetic_ in the name of the progression; it's because he was about to introduce the next level of complexity in Problem 188.

This problem is about to illustrate a key property of the _Geometric Progression_ that is known as "the odd numbers" - that their sums are always perfect squares.

{% math %}1 = 1^2{% endmath %}

{% math %}1 + 3 = 4 = 2^2{% endmath %}

{% math %}1 + 3 + 5 = 9 = 3^2{% endmath %}

{% math %}1 + 3 + 5 + 7 = 16= 4^2{% endmath %}

etc.

This all very good, but how do we _prove_ this is always the case?  By dropping to the formulas that's how.

Remember, from Problem 186 the formula we need to calculate is 

{% math %}\frac{n(a + b)}{2}{% endmath %}

And here {% m %}a = 1{% em %} and {% m %}b = 2n - 1{% em %}{% sidenote 'sn-id-whatever' "The formula for calculating any nth odd number." %}

Putting the together we get

{% math %}\frac{n(1 + 2n - 1)}{2}{% endmath %}

And simplifying

{% math %} = \frac{n(2n)}{2} = {% endmath %}

{% math %} = \frac{n(2n)}{2} = {% endmath %}

{% math %} = n^2{% endmath %}

Proven!  {% m %}n^2{% em %} it is.
