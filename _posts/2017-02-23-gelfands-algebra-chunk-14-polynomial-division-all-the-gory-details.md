---
layout: post
title: "Gelfand: Chunk 14 - Polynomial Division"
tags: [gelfand, petzold, tricks, division, degrees, polynomials, monomials, standard-form]
---
{% include JB/setup %}

## A Quick Note - Monomial Degrees
{% newthought "This concept actually is a very simple one" %}{% sidenote 'sn-id-whatever' "Unlike some _seemingly_ simple concepts which in fact turn out to be nebulously nightmarish." %}  

It is however, a _fundamental_ one, hence why I've chosen to highlight it.  Why fundamental? Because in order to bootstrap your mind into the next set of chunks, you'll need to be able to snap your fingers at any time and point to the degree of a given monomial (and thence the entire polynomial to which it belongs).  

So what is the degree of of a monomial? Here it is, in textual form first:{% sidenote 'sn-id-whatever' "From Gelfand pp 61" %}

> "If a polynomial contains only one variable, it's standard form consists of it's monomials written in order of decreasing degrees. The monomial having the highest degree is called the 'first monomial'. It's degree is called the 'degree of the polynomial."

Now let's break this into pieces and show it visually

* "... a polynomial contains _only one variable_..." - i.e. "{% m %}x{% em %}".  That means {% m %}2x^2 + 3x - 3{% em %} meets this criteria, as does {% m %}b^{300}{% em %} but {% m %}a^2 + 2ab - 3{% em %} does not

* "_Standard Form_" - We discussed this at length in [Chunk 8 - 'Nomials](https://andrewharmellaw.github.io/2017/01/10/gelfands-algebra-chun-8-nomials).  I added at the time that it was nice to order things decreasing by degree. That'll be helpful in the next step. This also means that while {% m %}3x - 3 + 2x^2{% em %} and {% m %}2x^2 + 3x - 3{% em %} are equivalent, but only the latter is in _Standard Form_.

* "The monomial having the highest degree is called the '_first_ monomial'" - See the reason for ordering?  It will literally be the first monomial in your polynomial if you've done this.  Therefore in {% m %}2x^2 + 3x - 3{% em %} the first monomial is {% m %}2x^2{% em %}, and in {% m %}b^{300}{% em %} the first monomial is {% m %}b^{300}{% em %}

* "It's degree (the first monomial) is called the 'degree of the polynomial'" - That means that in {% m %}2x^2 + 3x - 3{% em %} the degree is {% m %}2{% em %}, and in {% m %}b^{300}{% em %} the degree is {% m %}300{% em %}

### A First Subtlety - Constants
What if there are no variables? (N.b. this is just equivalent to a polynomial where all variables have co-efficients of value {% m %}0{% em %}). In these circumstances, your degree is {% m %}0{% em %} too.

Remember

{% math %}3 = 3x^0 = 3 \times 1 = 3{% endmath %}

### A Second Subtlety - Undefined Degrees
What about monomials with zero-co-efficients? (I.e. with a co-efficient of {% m %}0{% em %}).  These monomials are ignored, and their degrees (the monomials) are "undefined" (which means you may then fall back on the degree of a constant).

Extending the example we just saw

{% math %}0x^2 + 3 = 0x^2 + 3x^0 = 0 + 3x^0 = 3 \times 1 = 3{% endmath %}

## Degree Consequences 
{% newthought "With all this in place," %} things start to get useful.{% sidenote 'sn-id-whatever' "If also a bit meta" %}  Via the medium of problems,{% sidenote 'sn-id-whatever' "Problems 137 and 138" %} Gelfand gets us to realise the following rules:

* the degree of the _product_ of two polynomials (one with degree {% m %}a{% em %} and the other with degree {% m %}b{% em %}) is {% m %}a + b{% em %}{% sidenote 'sn-id-whatever' "How? Remember [Chunk 5 - Powers](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers)" %}
* the degree of the _sum_ of two polynomials with degrees {% m %}x{% em %} and {% m %}y{% em %}, where {% m %}x \ge y{% em %}, will be {% m %}x{% em %}
* the degree of the sum of two polynomials both having degrees {% m %}x{% em %} will be {% m %}\le x{% em %}

## Tricks Arising

### You Can Represent a _Whole_ Polynomial as a _Single_ Variable
This powerful concept was snuck in by Gelfand in his further discussions of  Rational Expressions{% sidenote 'sn-id-whatever' "Section 34, pp 56-57" %} but he didnt ask you to manipulate them in any way so I didn't bring them up until now.  However, in problem 137 you have to make this mental leap for yourself.

It looks a little scary,{% sidenote 'sn-id-whatever' "Not so much perhaps for programmers who are used to multiple levels of abstraction" %} but it's fine. Go on, nothing's stopping you.

This means that we can take {% m %}2x^2 + 3x - 3{% em %} and replace it with {% m %}A{% em %}.  But remember, {% m %}A{% em %} is a variable too.  We've specified that {% m %}A{% em %} is "any polynomial with degree {% m %}2{% em %}" so {% m %}A{% em %} could just as easily represent {% m %}1000z^2 - 9z{% em %} or even {% m %}-17b^2{% em %}.  It couldn't however represent {% m %}2x^{300} + 3x - 3{% em %}, nor could it represent {% m %}2b^2 + 3ab - 3{% em %} as these don't meet the criteria for being an {% m %}A{% em %}.  The _degree_ here is key for us as we've specified it in our {% m %}A{% em %}-rules.{% sidenote 'sn-id-whatever' "And for this they must be a polynomial in one variable - though I'm a little shaky on this, perhaps polynomials in multiple variables have multiple degrees, I'll come back here if I'm wrong and update this." %}

See now why I said grokking degrees solidly was handy?

N.b. Durham does this _a lot_ in his later solutions, so it's worth getting comfortable with it before progressing.

## Proper and Improper Fractions
{% newthought "Fractions again." %} Urgh.  And it turns out they get even more complicated with the concepts of "proper" and "improper" ones.  Luckily, this is super-easy to grokk.{% sidenote 'sn-id-whatever' "And not much harder to commit to memory." %}

As we're building on previous blocks again mathematicians have come up with a nice short-hard to flag if a fraction really is _just a fraction_ or if it is in fact a whole number and a fraction.

If something is _just a fraction_ then the numerator{% sidenote 'sn-id-whatever' "The bit on the top." %} will be smaller than the denominator.{% sidenote 'sn-id-whatever' "The bit on the bottom." %}  

If something is _a whole number and a fraction_ then the numerator will be greater than or equal to the denominator.

Any improper fraction can therefore simply be broken out into a whole number, and the _remaining_ proper fraction.  It's what you get from long division in fact{% sidenote 'sn-id-whatever' "The one you know from school, and that we revised in [Chunk 1 - Fundamentals](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals)." %}

### Proper and Improper and Fractions and Polynomials
What happens when you divide two polynomials in one variable?  It's the same as regular numbers. You can have improper and improper fractions, and you can convert the former to the latter in the same way.

You can use a very similar method to do the work of division too, using a form of the long-division algorithm. There is even a definition{% sidenote 'sn-id-whatever' "The first of these that we come across in Gelfand if I recall correctly." %}

> Assume that we have two polynomials (both in the same, single variable), called the dividend and the divisior. To perform a division means to find two other polynomials , called the quotient and the remainder such that (dividend) = (quotient).(divisor) + remainder) where the degree of the remainder is less than the degree of the degree of the divisor (or is zero)

For super-clarity, 

 * the dividend is the polynomial _inside_ the long-division "L"{% sidenote 'sn-id-whatever' "And also the numerator when expressed as an improper fraction." %}
 * the divisor is is the polynomial _outside and to the left of_ the long-division "L"{% sidenote 'sn-id-whatever' "And also the denominator when expressed as an improper fraction." %}
 * the quotient is the resulting polynomial _on top of_ the long-division "L"{% sidenote 'sn-id-whatever' "And also the whole polynomial element resulting from the division." %}
 * the remainder is either zero or the undivisable element at the bottom of the working in the long-division{% sidenote 'sn-id-whatever' "And also the proper fraction polynomial element resulting from the division. " %}

## Polynomial Division - Worked Examples
{% newthought "Given [my history](https://andrewharmellaw.github.io/2016/11/30/gelfands-algebra-chunk-4-fractions-urgh)," %} the very concept of "Polynomial Division" sounded horrifing to me when I first thought if it, but compared to the actual physical pain that factoring can cause you this is actually a nice return to the world of mechanistically applying a set of steps to something to achive an end result.  Nice.

Now we have all the elements in place to dive into this, lets see a few worked examples, taken from Gelfand, but with more inline explanation than might to help things embed mentally.{% sidenote 'sn-id-whatever' "Props by the way to [Davide Cervone](https://stackoverflow.com/users/502334/davide-cervone) for his [very handy answer](http://stackoverflow.com/a/22871404) on the tex.stackexchange.com forums." %}

### Example from Page 63 

{% math %}
\require{enclose}
\begin{array}{rll}
    x^3 + 2x^2 + 4x + 8 \phantom{00000000} && \hbox{(Explanations)} \\[-3pt]
   x-2 \enclose{longdiv}{x^4 \phantom{000000000000000000000}}\kern-.2ex \\[-3pt]
      \underline{x^4 -2x^3\phantom{0000000000000000}} && \hbox{($x-2 \times x^3 = x^4 -2x^3$)} \\[-3pt]
      2x^3\phantom{0000000000000000} && \hbox{($0 - (-2x^3) = 2x^3$)} \\[-3pt]
      \underline{2x^3 -4x^2\phantom{00000000000}} && \hbox{($x-2\times 2x^2 = 2x^3 -4x^2$)} \\[-3pt]
      4x^2\phantom{00000000000} && \hbox{($0 - (-4x^2) = 4x^2$)} \\[-3pt]
      \underline{4x^2 -8x\phantom{000000}} && \hbox{($x-2 \times 4x  = 4x^2 -8x$)} \\[-3pt]
      8x\phantom{000000} && \hbox{($0 - (-8x) = 8x$)} \\[-3pt]
      \underline{8x-16\phantom{00}} && \hbox{($x-2 \times 8  = 8x - 16$)} \\[-3pt]
      16\phantom{00} && \hbox{($\leftarrow$ the remainder: $0 - (-16) = 16$)} \\[-3pt]
  \end{array}
{% endmath %}

Which means our answer is 

{% math %} \frac{x^4}{x - 2} = x^3 + 2x^2 + 4x + 8 + \frac{16}{x - 2} {% endmath %}

{% math %} \rightarrow x^4 = (x^3 + 2x^2 + 4x + 8)(x - 2) + 16 {% endmath %}

Which is the way things are stated in the definition above.

For some of you there might be enough in the above to work things through. But it's nice to pull out the key steps.  We start with our divisor ({% m %}x-2{% em %}) and our dividend ({% m %}x^4{% em %}).  We then repeat the following steps, again and again to slowly reveal our quotient, and eventually distill out our remainder.

We begin by getting our {% m %}x^4{% em %}, and to do this we need to multiply {% m %}x-2{% em %} enough to get this. We can get there by multiplying it by {% m %}x^3{% em %}.  That gives us {% m %}x^4 - 2x^3{% em %}.  We put our {% m %}x^3{% em %} up atop everything as the first part of our quotient. (I've tried to lay things out as nicely as Gelfand does to keep all this clean.  The final step is to then see what we have left of our dividend, and we get this by subtracting {% m %}x^4 -2x^3{% em %} from {% m %}x^4{% em %}

{% math %} x^4 - (x^4 - 2x^3) = {% endmath %}

{% math %} = x^4 -x^4 + 2x^3 = {% endmath %}

{% math %} = 2x^3 {% endmath %}

From this point on it's just rinse and repeat.  Your new dividend is {% m %}2x^3{% em %}.

I'll work through the next two in sub-Gelfand detail too.

### First Example from Page 64

{% math %}
\require{enclose}
\begin{array}{rll}
    x + 1 \phantom{0000000000} && \hbox{(Explanations)} \\[-3pt]
   x^2 - x +1 \enclose{longdiv}{x^3 + \phantom{0000} 2x \phantom{0000}}\kern-.2ex \\[-3pt]
      \underline{x^3 - x^2 + x\phantom{00000}} && \hbox{($x^2 - x + 1 \times x = x^3 -x^2 + x$)} \\[-3pt]
      x^2 + x\phantom{00000} && \hbox{($2x - (-x^2 + x) = x^2 + x$)} \\[-3pt]
      \underline{x^2 - x + 1 \phantom{00}} && \hbox{($x^2 - x + 1\times 1 = x^2 - x + 1$)} \\[-3pt]
      2x - 1\phantom{0} && \hbox{($\leftarrow$ the remainder: $x - (-x + 1) = 2x - 1$)} \\[-3pt]
  \end{array}
{% endmath %}

The difference between this one and the example before is that the subtractions to get the remaining dividend are a _little more_ complicated.  Not much though. I've tried to push the {% m %}2x{% em %} right a bit in the example above so the columns stay lined up and you can follow things through.

### Second Example from Page 64

As previously, here's the deeply-worked example first.

{% math %}
\require{enclose}
\begin{array}{rll}
    \frac{1}{2}x^2 + \frac{3}{4}x + \frac{9}{8}\phantom{00000000} && \hbox{(Explanations)} \\[-3pt]
   2x - 3 \enclose{longdiv}{x^3 \phantom{000000000000000000}}\kern-.2ex \\[-3pt]
      \underline{x^3 - \frac{3}{2}x^2 \phantom{000000000000}} && \hbox{($(2x - 3) \times \frac{1}{2}x^2 = x^3 -\frac{3}{2}x^2$)} \\[-3pt]
      \frac{3}{2}x^2\phantom{000000000000} && \hbox{($0 - (-\frac{3}{2}x^2) = \frac{3}{2}x^2$)} \\[-3pt]
      \underline{\frac{3}{2}x^2 - \frac{9}{4}x\phantom{0000000}} && \hbox{($(2x - 3)\times \frac{3}{4}x = \frac{3}{2}x^2 - \frac{9}{4}x$)} \\[-3pt]
      \frac{9}{4}x \phantom{0000000} && \hbox{($0 - (-\frac{9}{4}x) = \frac{9}{4}x$)} \\[-3pt]
      \underline{\frac{9}{4}x - \frac{27}{8}x\phantom{0}} && \hbox{($(2x - 3) \times \frac{9}{8} = \frac{27}{8}$)} \\[-3pt]
      \frac{27}{8} \phantom{00} && \hbox{($\leftarrow$ the remainder: $0 - (-\frac{27}{8}) = \frac{27}{8}$)} \\[-3pt]
  \end{array}
{% endmath %}

So what's interesting here?  This time we've had to jump through fraction-hoops a little to get the pieces we want.  It looks complicated, but if we pull out the first one for you and show you it in isolation, all should become a lot clearer.

OK, so we need to get an {% m %}x^3{% em %}, and we have {% m %}2x - 3{% em %}.  What do we need to do to the latter, to get some of the former? Half it then multiply by {% m %}x^2{% em %}, or in other words, multiply by {% m %}\frac{1}{2}x^2{% em %}.

{% math %} \frac{1}{2}x^2 \times (2x - 3) = {% endmath %}

{% math %} = (\frac{1}{2}x^2 \times \frac{2}{1}x^1) - (\frac{1}{2}x^2 \times \frac{3}{1}) {% endmath %}

{% math %} = \frac{2}{2}x^3 - \frac{3}{2} {% endmath %}

{% math %} = x^3 - \frac{3}{2} {% endmath %}

If you take this method and work it all the way through the rest of the example (perhaps moving things to one side to figure things out in this way) it should all fall into place.

## Commentary - The "Important Things to Notice" Problems
{% newthought "As is his way," %} Gelfand closes out the section with some semi-abstract problems to which you are supposed to have "ah-ha!" moments.  I know to my detriment{% sidenote 'sn-id-whatever' "I'm not re-reading his book, blogging it as I go for no reason." %} that you misapprehend{% sidenote 'sn-id-whatever' "Or heaven-forbid skip." %} these at your peril.  So what are we supposed to grok here?

### The Relationships Between Degrees
This is covered in Problems 140 and 142.  There are some "Laws" hidden in there; things that always hold true, and which, no doubt, will be relied upon in a higher algebraic-storey which builds upon them.

The laws are as follows:

 * If the degree of the dividend is larger than the degree of the divisor the degree of the quotient will clearly be the degree of the dividend polynomial  minus the degree of the divisor polynomial.  The degree of the remainder may then be undefined (there is no remainder) or it may be anywhere from {% m %}0{% em %} to {% m %}n - 1{% em %} (where {% m %}n{% em %} is the degree of the quotient). 
 * If, on the other hand, the degree of the dividend is smaller than the degree of the divisor, the fraction is already proper.  In this case the quotient is equal to zero and the remainder is equal to the dividend.

### The Uniqueness of Resulting Quotients and Remainders
This is covered in Problem 141.  The aim here is for Gelfand to show us that the quotient and remainders which we produced via the method he outlined{% sidenote 'sn-id-whatever' "And which I've gone into more detail on in the majority of this post." %} are unique.  That is to say, the quotient produced is the only quotient in the circumstances, and the remainder is the only remainder. 

That's actually quite reassuring, especially having just come from Factoring-land where you're never quite sure if there's something else just around the corner to find, if only you were a bit better at all that stuff...

The way Gelfand proves it is pretty interesting too.{% sidenote 'sn-id-whatever' "Sometimes the method is as important as the end result, and you're supposed to be always paying attention." %}  The following things are of note:

 * he's gone all meta, representing polynomials in a single variable as individual variables again{% sidenote 'sn-id-whatever' "With capital letters again too - I smell a convention here..." %}
 * the variables he uses are actually quite simple.  {% m %}P{% em %} is the dividend, {% m %}S{% em %} is the divisor, {% m %}Q{% em %} is the quotient and {% m %}R{% em %} is the remainder.  If {% m %}Q{% em %} and {% m %}R{% em %} have such intuitive names, why then have {% m %}P{% em %} and {% m %}S{% em %}?  I could thrown up my hands and exclaim "mathematicians" but remember, both the others start with "D", and {% m %}P{% em %} and {% m %}S{% em %} do make a nice alphabetical run...
 * the formula is simple too.{% sidenote 'sn-id-whatever' "It even works for non-polynomial division." %}  Any number ({% m %}P{% em %}) is equal to two other numbers multiplied by each other ({% m %}Q{% em %} the quotient and {% m %}S{% em %} the divisor) and a remainder ({% m %}R{% em %})
 * The approach to the proof is to begin by making an assumption (in this case that there might be more than one Quotient, {% m %}Q_{1}{% em %} and {% m %}Q_{2}{% em %}, and more than one Remainder, {% m %}R_{1}{% em %} and {% m %}R_{2}{% em %}) and then logically follow the implications of that assumption.  In this case that {% m %}Q_{1} = Q_{2}{% em %} and {% m %}R_{1} = R_{2}{% em %} 

## Another Pseudo-Conclusion
{% newthought "We're not really completely done with Polynomial Division." %}  Gelfand has a few more tricks up his sleeve which I'll cover next in [Chunk 15 - Polynomial Division Addendum](https://andrewharmellaw.github.io/2017/02/28/gelfands-algebra-chunk-15-polynomial-division-special-cases).  But this is a good place to stop for now.
