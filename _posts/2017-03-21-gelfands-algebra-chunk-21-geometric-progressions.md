---
layout: post
title: "Gelfand: Chunk 21 - Geometric Progressions"
tags: [gelfand, tricks, geometric-progressions, positive, negative, roots]
---
{% include JB/setup %}

{% newthought "You might remember we had a sneak peek at these things" %} back in [Chunk 15 - Polynomial Division Addendum](https://andrewharmellaw.github.io/2017/02/28/gelfands-algebra-chunk-15-polynomial-division-special-cases).  Now we can really get our teeth into it.

## Definition - Geometric Progressions
{% newthought "As is our wont," %} let's again start with a definition, taken straight out of Gelfand, section 41.

> "A _geometric progression_ is a sequence of numbers where each term is a _product_ of the proceeding one and a fixed number. This fixed number is called the _common ratio_ (or ratio) of the geometric progression."

I added the second set of _italics_.  It highlights the key difference between these and _Arithmetic Progressions_ - there we were adding, whereas now we're multiplying.

## The General Formula
{% newthought "In the solution to Problem 192" %} Gelfand shows us the general formula for the {% m %}n{% em %}th term in a _Geometric Progression_.

{% math %}a \cdot q^{n - 1}{% endmath %}

## The "Two Possibilities" Subtlety
{% newthought "In _Arithmetic Progressions_" %}, we only had adding and subtracting and everything was easy.  But now we have multiplication, and that means there are subtleties.  Gelfand leads us to this with Problem 193.

He asks, given a progression with first term of {% m %}1{% em %} and third term of {% m %}4{% em %}, what is the second term?

You can get all mathematical, but just looking at it, it seems easy.  These are the powers of {% m %}2{% em %} right? 

{% math %}2^0 = 1{% endmath %}

{% math %}2^1 = 2{% endmath %}

{% math %}2^2 = 4{% endmath %}

{% math %}2^3 = 8{% endmath %}

Etc.  And in one way we're right.  But there are _two_ answers.  If we now look at the _Geometric Progression_ formula, {% m %}a \cdot q^{n - 1}{% em %}, what is {% m %}a{% em %} and {% m %}q{% em %}?.  If the second term is {% m %}2{% em %}, then {% m %}a = 1{% em %}, and {% m %}q = 2{% em %}.  But can {% m %}q{% em %} be anything else and still give us {% m %}1{% em %} for the first term and {% m %}4{% em %} for the third?  Yes, it can be {% m %}(-2){% em %}{% sidenote 'sn-id-whatever' "Tip: Those parens are important if you're using Google as a calculator." %}

{% math %}1 \cdot (-2)^0 = 1{% endmath %}

{% math %}1 \cdot (-2)^1 = -2{% endmath %}

{% math %}1 \cdot (-2)^2 = 4{% endmath %}

And continuing on

{% math %}1 \cdot (-2)^3 = -8{% endmath %}

{% math %}1 \cdot (-2)^4 = 16{% endmath %}

{% math %}... {% endmath %}

What we're getting strongly hinted at here is the fact that even powers of negative numbers are even, but odd powers of negative numbers are negative.  Odd and even powers of even numbers are always even.

## The "Is that Really a Geometric Progression?" Subtlety
If the common ratio ({% m %}q{% em %} in our formula) is zero, then you end up with progressions which look similar to this

{% math %}1, 0, 0, 0, 0, 0, 0, ...{% endmath %}

Where {% m %}a = 1{% em %}.  If {% m %}a{% em %} equals anything else then that "anything else" will be the first value, and the remainder of the progression will be {% m %}0{% em %}s.

This is because

{% math %}0^0 = 1{% endmath %}

but 

{% math %}0^1 = 0^2 = 0^3 = 0^4 = 0^5 = 0{% endmath %}

Gelfand notes that in some circumstances these are _verboten_, specifiying that the ratio is "non-zero".

## Flip It and Reverse It
{% newthought "So what happens" %} when we take a progression and write it in reverse?  What happens to the ratio then?  You might have guessed.{% sidenote 'sn-id-whatever' "Perhaps casting your mind back to [Chunk 5 - Powers: Positive and Negative](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers)." %}

Yup, our ratio becomes {% m %}\frac{1}{q}{% em %}.

## Dropping Steps
{% newthought "Can we drop every second step" %} and still be a geometric progression? Yah, because this will leave the ratio between each constant. Here the common ratio changes from {% m %}q{% em %} to {% m %}q^2{% em %}.

Can we drop every third?  No, we can't.  Just as in arithmetic progressions, the ratio of the gaps is no longer constant (being {% m %}q{% em %} between some and {% m %}q^2{% em %} between others) and so these progressions are no longer geometric.

## Back to Roots
{% newthought "The last part of this section" %}{% sidenote 'sn-id-whatever' "But not of this post" %} is interesting for a few reasons.  Firstly, it gives us another (reverse) angle on the positive / negative aspect.{% sidenote 'sn-id-whatever' "Via roots of the number kind." %}  Secondly, we're back in the world of zeros{% sidenote 'sn-id-whatever' "But not the polynomial-root kind." %} not working for us.  Based on what we've seen before now, we know that these aspects are where it gets interesting.

I'm now going to give a little more detail on Gelfand's solution.{% sidenote 'sn-id-whatever' "As per, please ignore this if you've already got things nice and clear in your head.  For me it personally helps to see all the gory, multi-step, micro-step detail." %}

First up, our first term: {% m %}a{% em %}.

Next our second term: {% m %}x{% em %}.

Then our third term: {% m %}b{% em %}.

To progress we need to know our common ratio, which I'm calling {% m %}z{% em %} for a second  We can determine it using either {% m %}a{% em %} or {% m %}b{% em %}.

First using {% m %}a{% em %}:

{% math %}z = \frac{x}{a}{% endmath %} 

(because {% m %}a = z^0{% em %} and {% m %}x = a \cdot z{% em %})

Second using {% m %}b{% em %}:

{% math %}z = \frac{b}{x}{% endmath %}

(because {% m %}b = x \cdot z{% em %}) 

Then we can remove our {% m %}z{% em %} altogether:

{% math %}\frac{x}{a} = \frac{b}{x}{% endmath %}

{% math %}\rightarrow x^2 = ab{% endmath %}

{% math %}\rightarrow x = \sqrt{ab}{% endmath %}

We can then draw our conclusions.{% sidenote 'sn-id-whatever' "This works because we are looking for the _second term_, and it would also have worked for the fourth, and sixth etc, but not the fifth, seventh, etc.  Remember, we saw before that even numerical roots have this special \"could be positive, could equally be negative\" property.  There is a subtle alusion to this in problem 199. See if you can spot it." %}

 * Conclusion 1: if {% m %}ab \lt 0{% em %} then the problem has no solutions.  Why? Because you can't square root a negative number.
 * Conclusion 2: if {% m %}ab = 0{% em %} then {% m %}x = 0{% em %}.  That seems simple enough.
 * Conclusion 3: if {% m %}ab \gt 0{% em %} then there are _two_ possible values for {% m %}x{% em %}: {% m %}\sqrt{ab}{% em %} and {% m %}-\sqrt{ab}{% em %}.

## Tricks Arising

### Sometimes There's No Answers, Other Times There's More Than One Answer
Notwithstanding the aside about how {% m %}a^2 = b^2{% em %} in [Chunk 11 - Factoring to Zero](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero), Problem 198 is the first time we've seen something where we need to think about different categories of input.  It's handy to have this in mind for the future.{% sidenote 'sn-id-whatever' "Trust me, I've read ahead." %}
