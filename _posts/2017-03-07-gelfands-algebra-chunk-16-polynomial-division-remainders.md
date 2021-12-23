---
layout: post
title: "Gelfand: Chunk 16 - Polynomial Division - Remainders, Bezout and Roots"
tags: [gelfand, bezout, division, polynomials, remainder-theorem, tricks, factoring, roots]
comments: true
---
{% include JB/setup %}

## There Must be an Easier Way...
{% newthought "All this polynomial division is very exciting and all," %} but it's also very long-winded.  Surely there's an easier way? (At least in certain circumstances?)

Reassuringly there is, at least for remainders, and factoring, and this is all up next, courtesy of [Bezout](https://en.wikipedia.org/wiki/%C3%89tienne_B%C3%A9zout) and his [Polynomial Remainder Theorem](https://en.wikipedia.org/wiki/Polynomial_remainder_theorem).{% sidenote 'sn-id-whatever' "Bezout was a busy guy, and there are other theorems he came up with which you should not confuse with this one.  There is even one called \"Bezout's Theorem\" which is _not_ this one.  Confusing, right?" %}

I'll let you go to Gelfand{% sidenote 'sn-id-whatever' "Section 37." %} for the simple reason why this works, but in general, if {% m %}P{% em %} is an arbitrary polynomial (i.e. any polynomial in a single variable, {% m %}x{% em %} in what follows) which we want to divide by {% m %}x - a{% em %} then we can use the following equality to give us a jump on things:

{% math %}P(x) = (\hbox{quotient})(x - a) + (\hbox{remainder}){% endmath %}

This simple formula gives us a bunch of cool stuff and these cool things are the subject of the rest of this post.

## Tricks Arising (Pt. 1)

### Find the Remainder Quickly and Simply - Bezout's Remainder Theorem
We can use Bezout's theorem in a sneaky way. To find the remainder when {% m %}P{% em %} is divided by {% m %}x - a{% em %}, simply substitute {% m %}a{% em %} for {% m %}x{% em %}. We don't need to calculate the quotient to be able to do this either.

E.g. we have a polynomial {% m %}P{% em %} which is {% m %}x^4{% em %}, and we want to know what the remainder is when we divide it by {% m %}x - 2{% em %}.  In this scenario, {% m %}a = 2{% em %}, and we can put this along with {% m %}x = 2{% em %} into our equality.

{% math %}2^4 = (\hbox{quotient})(2 - 2) + (\hbox{remainder}){% endmath %}

{% math %}16 = (\hbox{quotient})\cdot 0 + 16{% endmath %}

This is the aforementoned Remainder Theorem, discovered by [Etienne Bezout](https://en.wikipedia.org/wiki/%C3%89tienne_B%C3%A9zout).{% sidenote 'sn-id-whatever' "Note, this is _only_ a method for finding the remainder. If you need the quotient, you still have to take the long way round as we described in [Chunk 14.](https://andrewharmellaw.github.io/2017/02/23/gelfands-algebra-chunk-14-polynomial-division-all-the-gory-details/)" %}

### Find out if {% m %}P{% em %} is Divisible by {% m %}x - a{% em %}, aka "Roots" to Factoring Joy
The previous trick was nice, but not too magical.  Up next is a consequence of Bezout's theorem, and it's going to give us another weapon in our fight against factoring.  

Now _that's_ magical.

First we need to take a step back.  Two in fact. Forget about polynomials, and forget about division.  We're going to introduce properly the concept of _polynomial roots_.{% sidenote 'sn-id-whatever' "Polynomial roots _are not_ roots of numbers such as square roots and cube roots.  I've written [a separate section](https://andrewharmellaw.github.io/2017/04/24/gelfands-algebra-aside-2-roots-roots-and-more-roots) to disambiguate all this. If you feel the need jump over there now to make sure you're happy with the difference, and what we are and arent talking about here." %}

Polynomials have things called _roots_. If I tell you they are also called a "zero" you might think back to the last time we heard the "zero" word with regards to factoring, in [Chunk 11 - Factoring to Zero](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero).  In that post we found great solace for our annihilated-terms woes by "looking for the zero result".

Gelfand is now going to take the finding-the-remainder element of this approach, and bring us up to speed with roots in general (without explicitly calling out the link I've just made - I found it by [reading around the topic](http://www.sosmath.com/algebra/factor/fac02/fac02.html)).  ([Oakley](https://www.amazon.co.uk/Mind-Numbers-Science-Flunked-Algebra-ebook/dp/B00G3L19ZU) FTW!)

The definition of a root {% m %}x = a{% em %} of a function {% m %}f(x){% em %} from the above linked page is as follows:

{% math %}f(a) = 0{% endmath %}

I.e. the number represented by {% m %}a{% em %} is a root of the function represented by {% m %}f(x){% em %} because when you make {% m %}a = x{% em %} the result is {% m %}0{% em %}.

Pause a while for that to sink in.  It's very simple, but powerful.  It means if we find an {% m %}a{% em %} (and there could be more than one, then we have a root of {% m %}f(x){% em %}.

Now consider the fact that {% m %}f(x){% em %} is just another way of representing our polynomial, {% m %}P{% em %}.  We have seen that {% m %}a{% em %} is the root of this polynomial. When this is the case,  {% m %}x - a{% em %} will be a factor (because {% m %}x - a = 0{% em %}, we're just rearranging our expression using standard laws).  

That last bit might have been a bit fast, so lets step up on it slowly, and we'll do it from the Bezout angle this time.

Remember this from Bezout?

{% math %}P(x) = (\hbox{quotient})(x - a) + (\hbox{remainder}){% endmath %}

If we state Bezout in a _different_ way we can see why this is a logical consequence.  

> "To find whether polynomial {% m %}P{% em %} is divisible by {% m %}x - a{% em %} (without remainder), test whether it becomes zero after substitution of {% m %}a{% em %} for {% m %}x{% em %}."

That means (and it's not too much of a brain stretch to see it) that when you put a value into your polynomial {% m %}P{% em %}, and the result does become zero, then it is divisible by {% m %}x - a{% em %}, then that means {% m %}a{% em %} is a _root_ of {% m %}P{% em %}.  (We have _rooted_ our polynomial {% m %}P{% em %}.)  That also means {% m %}x - a{% em %} is a _factor_ of {% m %}P{% em %}.

One last point{% sidenote 'sn-id-whatever' "Perhaps a self-evident one, but I dislike loose ends." %} How does this relate to division (polynomial or otherwise)?  Remember, two or more factors are the result of _dividing_ a polynomial.  To get back to the original polynomial, you simply take their product{% sidenote 'sn-id-whatever' "Which is just a fancy maths word for _multiplying_ them together." %}  Bezout's formula is simply one which make evident both sides of the situation - a polynomial in entirety, and the same, but broken into pieces by division and about to be multiplied and added up again.
 
## Still Too Magical? Let's Check With Some Problems
{% newthought "Does that seem a little too magical?" %}  Are you feeling that adding strings to factoring bows should be harder-fought?  lets tackle some of the followiung problems to check.

### Problem 146(a)

{% math %}x^4 + 5x - 6{% endmath %}

Lets start trying values for {% m %}x{% em %} to see if we get a zero result.  {% m %}0{% em %} first.

{% math %}0^4 + 5 \cdot 0 - 6 = {% endmath %}

{% math %} = 0 + 0 - 6 = {% endmath %}

{% math %} = -6{% endmath %}

Nope. Not the answer we were looking for.  How about {% m %}1{% em %}?

{% math %}1^4 + 5 \cdot 1 - 6 = {% endmath %}

{% math %} = 1 + 5 - 6 = {% endmath %}

{% math %} = 0{% endmath %}

Super!  That means {% m %}1{% em %} is a root of {% m %}x^4 + 5x - 6{% em %}, which in turn means that {% m %}x - 1{% em %} must be a factor of the same polynomial.

To factor from here we need to use the good-ole polynomial division to see what's left once we factor out {% m %}x - a{% em %}

{% math %}
\require{enclose}
\begin{array}{rll}
   x^3  + x^2 \phantom{0} + x + 6 \phantom{00000} && \hbox{} \\[-3pt]
   x - 1 \enclose{longdiv}{x^4 \phantom{000000000} + 5x - 6}\kern-.2ex \\[-3pt]
      \underline{x^4 - x^3 \phantom{0000000000000}} && \hbox{} \\[-3pt]
      x^3 \phantom{00000} +5x -6 && \hbox{} \\[-3pt]
      \underline{x^3 \phantom{0} - x^2\phantom{00000000}} && \hbox{} \\[-3pt]
      x^2 + 5x - 6  && \hbox{} \\[-3pt]
      \underline{x^2 \phantom{0} - x \phantom{0000}} && \hbox{} \\[-3pt]
      6x - 6  && \hbox{} \\[-3pt]
      \underline{6x - 6} && \hbox{} \\[-3pt]
      0  && \hbox{} \\[-3pt]
  \end{array}
{% endmath %}

Awesome.  That means our factoring is as follows:

{% math %}x^4 + 5x - 6 = (x - 1)(x^3 + x^2 + x - 6){% endmath %}

We could go farther, and factor {% m %}x^3 + x^2 + x - 6{% em %}, but you get the gist.

We'll do one more before moving on, because it introduces another little clue for us to pick up on

### Problem 146(b)

{% math %}x^4 + 3x^2 + 5x + 1{% endmath %}

First up, let's try with {% m %}0{% em %}

{% math %}0^4 + 3\cdot0^2 + 5 \cdot 0 + 1 = {% endmath %}

{% math %} = 0 + 0 + 0 + 1 = {% endmath %}

{% math %} = 1{% endmath %}

Thats no good.  How about {% m %}1{% em %}?

{% math %}1^4 + 3\cdot1^2 + 5 \cdot 1 + 1 = {% endmath %}

{% math %} = 1 + 3 + 5 + 1 = {% endmath %}

{% math %} = 10{% endmath %}

That's no good either.  And we're actually _moving away_ from a zero result too.  How about {% m %}-1{% em %}?

{% math %}-1^4 + 3\cdot-1^2 + 5 \cdot -1 + 1 = {% endmath %}

{% math %} = 1 + 3 - 5 + 1 = {% endmath %}

{% math %} = 0{% endmath %}

That's our root!

We can then take this into our division to get the quotient for our factoring.

{% math %}
\require{enclose}
\begin{array}{rll}
   x^3  + x^2 + 4x \phantom{0} + 1 \phantom{00000} && \hbox{} \\[-3pt]
   x + 1 \enclose{longdiv}{x^4 \phantom{00000} + 3x^2 + 5x + 1}\kern-.2ex \\[-3pt]
      \underline{x^4 + x^3 \phantom{00000000000000}} && \hbox{} \\[-3pt]
      -x^3 + 3x^2 + 5x + 1 && \hbox{} \\[-3pt]
      \underline{-x^3 \phantom{0} - x^2\phantom{00000000}} && \hbox{} \\[-3pt]
      4x^2 + 5x + 1  && \hbox{} \\[-3pt]
      \underline{4x^2 + 4x \phantom{0000}} && \hbox{} \\[-3pt]
      x + 1  && \hbox{} \\[-3pt]
      \underline{x + 1} && \hbox{} \\[-3pt]
      0  && \hbox{} \\[-3pt]
  \end{array}
{% endmath %}

Which means our factoring is as follows:

{% math %}x^4 + 3x^2 + 5x + 1 = (x + 1)(x^3  + x^2 + 4x + 1){% endmath %}

## Tricks Arising (Pt. 2)

### Nothing Subtracted? Try a Negative
If when you look at your polynomial you see that nothing is subtracted{% sidenote 'sn-id-whateved' "As in Problem 146(b) above." %} you know that your root will have to be a negative number (so that your sum will add to zero when you mix in the {% m %}x{% em %}).

### How Many Roots?
The gory details of how to get to this fact are in Gelfand, but its a truism that a polynomial of degree {% m %}x{% em %} will have at most {% m %}x{% em %} different roots.  The "different" is important - remember a polynomial can have two roots which are the same (n.b. {% m %}(x - 1)(x - 1) = (x - 1)^2{% em %} which translates as two roots which are the same).  Mathematicians say this has "two equal roots".

## Further Reading
{% newthought "There is a lot more to know about all this," %} but we've covered what Gelfand needs us to know for now.  If you are excited to learn more, I'd recommend the [Fundamental Theorem of Algebra](https://www.mathsisfun.com/algebra/fundamental-theorem-algebra.html) on MathsIsFun.  It sounds scary, but it is really well written.
