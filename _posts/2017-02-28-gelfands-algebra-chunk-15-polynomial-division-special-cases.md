---
layout: post
title: "Gelfand: Chunk 15 - Polynomial Division Addendum"
tags: [gelfand, division, polynomials, geometric-progression]
---
{% include JB/setup %}

Seeing as this is merely an addendum to [the previous post](https://andrewharmellaw.github.io/2017/02/23/gelfands-algebra-chunk-14-polynomial-division-all-the-gory-details/), let's jump straight in.

## Problems 143(a)-(c) - A Handy Shortcut
{% newthought "We'll work through the first Problem (a)" %} using the long-winded method

{% math %}
\require{enclose}
\begin{array}{rll}
   x^2  + x \phantom{000000} + 1 && \hbox{(Explanations)} \\[-3pt]
   x - 1 \enclose{longdiv}{x^3 \phantom{000000} - 1 \phantom{0000}}\kern-.2ex \\[-3pt]
      \underline{x^3 - x^2 \phantom{000000000}} && \hbox{($(x - 1) \times x^2 = x^3 - x^2$)} \\[-3pt]
      x^2 \phantom{000000} -1 && \hbox{($-1 - (-x^2) = x^2 - 1$)} \\[-3pt]
      \underline{x^2 \phantom{00} - x\phantom{0000}} && \hbox{($(x - 1)\times x = x^2 - x$)} \\[-3pt]
      x \phantom{0} - 1  && \hbox{($-1 - (-x) = x - 1$)} \\[-3pt]
      \underline{x \phantom{0} - 1} && \hbox{($(x - 1) \times 1 = x - 1$)} \\[-3pt]
      0  && \hbox{($\leftarrow$ the remainder: $-1 - (-1) = 0$)} \\[-3pt]
  \end{array}
{% endmath %}

We could now do the same for (b) and (c), but I think it's evident, even from just the above, that we'd get a pattern emerging.  Gelfand would undoubtedly be pleased that we'd spotted this, as he goes on to point out just that they have all been generic forms of a standard formula

{% math %} \frac{x^n -1}{x - 1} = x^{n-1} + x^{n-2} + \hbox{...} + x^2 + x + 1{% endmath %}

It turns out that this has a special power - it can be used to compute the sums of consecutive powers of a number {% m %}x{% em %}.  You can imagine how it would be; just flip the above standard formula round and reverse the order of the additions

{% math %} 1 + x + x^2 + \hbox{...} + x^{n-2} + x^{n-1} = \frac{x^n -1}{x - 1}{% endmath %}

The left hand side shows the long-winded way you'd have to go about this. I.e. "what are the consecutive powers of {% m %}3{% em %} up to the power of three?" you might ask.

{% math %}3^0 + 3^1 + 3^2= {% endmath %}

{% math %} = 1 + 3 + 9= {% endmath %}

{% math %} = 13{% endmath %}

But as we know the left hand side and right hand sides of this forumula are equivalent, we can get the same answer by substituting the same values into our other formula.

{% math %}\frac{3^3 - 1}{3 - 1} = \frac{26 - 1}{2} = \frac{26}{2} = 13{% endmath %}

Much quicker.

## Problem 144 - A Sneak Peek at Geometric Progressions
{% newthought "Now while this is handy," %} we're actually getting a sneak preview of something which Gelfand will later spend quite a lot of time investigating - geometric progressions - but he stops here for now.{% sidenote 'sn-id-whatever' "I don't recommend you jump ahead, but if you must, take a look at [Chunk 21 - Geometric Progressions](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-21-geometric-progressions/), but be sure and come right back." %}

There's little for us to do other than just try substituting the number {% m %}2{% em %} for {% m %}x{% em %} and realise that what we have just been working with is the reason this progression property. 
