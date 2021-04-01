---
layout: post
title: "Gelfand: Aside 1 - Proofs!?!?!"
tags: [gelfand, proofs, factoring, tricks]
comments: true
---
{% include JB/setup %}

{% newthought "In the last few problems in the Factorials section of Gelfand" %} he asks you to "prove" things.  I wasn't sure how to approach this.  Up until now I've just been "solving".  This post catalogs the process of my working this out.{% sidenote 'sn-id-whatever' "I'm certain that the philosophy of proofs is far more complex than I am about to cover here. In fact I have another book to read at some point in the future which links Haskell, Mathematics, and the construction and use of Proofs.  It all means I'll probably post again at some point in the future on this topic." %}

## A First Stab at a Proof
{% newthought "Let's dive straight into the first problem" %} - Problem 123.

Prove that if {% m %}a, b \gt 1{% em %} then {% m %}a + b \lt 1 + ab{% em %}.

Now on it's own, I initially had no idea how to approach this. But we get a clue.  Gelfand suggests we "factor {% m %}(1 + ab) - (a + b){% em %}".  You can see in here that the component parts have clearly come from the original formula which we need to prove.

Let's factor using our new-found skills.

{% math %}(1 + ab) - (a + b) = {% endmath %}

Hmmm, not like anything we've seen before really. And not much to do. Perhaps if we simply remove the brackets

{% math %} = 1 + ab - a - b = {% endmath %}

and re-arrange

{% math %} = ab - a - b + 1 = {% endmath %}

Does that look a little like a kind-of-polynomial? (I.e. like {% m %}x^2 - 2x + 1{% em %} - I was happy to have a go to this point without reference to [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions)).  Let's try it and see.  If it is, then we could do some nice factorisation on it, but with {% m %}a{% em %} as our first {% m %}x{% em %} and {% m %}b{% em %} as our second.  That gives us this

{% math %} = (a - 1)(b - 1) {% endmath %}

Is that right?  Sometimes I doubt myself. Let's quickly multiply it back out to check.

{% math %} ab - a - b - 1{% endmath %}

Awesome!

Now what do we need to do?  Well, the problem requires that we prove that when {% m %}a{% em %} and {% m %}b{% em %} are both greater than one, then {% m %}a + b \lt 1 + ab{% em %}.  If we look at our factorisation, we can easily see that when {% m %}a{% em %} and {% m %}b{% em %} are greater than one we get a positive result.  If either or both are less than or equal to one then we get a zero or negative result.  That's the point of the factorisation I deduce.

So, at this point, it _kind of_ felt like we've proved this, but the issue here is still the leap made at the start - how were we to know that doing such a factorisation would lead us to this factorisation and therefore to the proof?  Let's look back at the problem and the thing to factor.

{% math %} a + b < 1 + ab {% endmath %}

The first step of the transformation from this statement into the expression we want to factor is the simple addition of brackets:

{% math %} = (a + b) < (1 + ab) = {% endmath %}

And subsequent to this there is the effective moving of the right hand side across to the left hand side (with corresponding change in sign from positive to negative.)

{% math %} \rightarrow (a + b) - (1 + ab) {% endmath %}

I pondered this next bit for a while.  (In fact I stopped writing this, went off and did other things, and have now come back 24 hours later.)  (Note, I dropped the "{% m %} \gt 0{% em %}" bit as it no longer served any purpose for us. Nigglingly, when we bring it back later in this section, the direction of the symbol changes, but I have looked at both versions every which way and both seem valid and correct in the circumstances they are being used.  To reconcile this in my head I had to remember there will be times when {% m %}(a + b) - (1 + ab){% em %} would be equalt to zero, times when it would be less than zero, and times when it would be greater than zero - in each case based entirely on the input values for {% m %}a{% em %} and {% m %}b{% em %}.)

Moving on from this very difference, there are two significant elements in our question which we need to acknowledge. 

* we have a {% m %}\lt{% em %} in our starting point rather than an {% m %}={% em %}
* we have a statement: "if {% m %}a, b \gt 1{% em %} then ..." that our starting formula has applied to it

Unlike in everything we've done previously, we're now looking at a problem of the type "when something is the case, then something else is also the case."  Can we do anything with that?

In our situation, if one thing is to be greater than another, then to be true, when you subtract the bigger thing from the smaller thing (i.e. move the bigger thing from it's side of the equation to the same side as the smaller thing) then the result will be less than zero.  

Or to put it more clearly in a symbolic fashion

{% math %} a < b {% endmath %}

{% math %} a - b < 0 {% endmath %}

And you then test it by putting in values for a and b which meet the criteria {% m %}a \lt b{% em %}.

{% math %} 3 < 4 {% endmath %}

{% math %} 3 - 4 = -1 {% endmath %}

Which is correct as {% m %}-1{% em %} is indeed less than {% m %}0{% em %}.

So how do we take this back to our problem?  We know, because we followed mathematical rules when we factored, that {% m %}(a - 1)(b - 1){% em %} and {% m %}(a + b) - (1 + ab){% em %} are equivalent.  We are now in the position to put back in our less-than statement and test our conjecture.

{% m %}(a - 1)(b - 1) \gt 0{% em %} when {% m %}a, b \gt 1{% em %}

Now we can see why our factoring helped.  It's obvious from the new-found clarity, that if either {% m %}a{% em %} or {% m %}b{% em %} (or both) are less than {% m %}0{% em %} then the result will be less than zero.  But that if both {% m %}a{% em %} and {% m %}b{% em %} are greater than zero then the product will be greater than zero too.  That clarity is why it's a _proof_; because the finding is undeniable.

## Next Stab - Problem 124
{% newthought "This one looks a bit easier." %} No "greater than" or "less than" symbols.

Let's write out our starting point first

{% math %}a^2 + ab + b^2 = 0{% endmath %}

And then bring in the factoring of {% m %}a^3 - b^3{% em %} to look at side-by-side as suggested by Gelfand.

{% math %} a^3 - b^3 = {% endmath %}

{% math %} = a^3 - a^2b + a^2b - ab^2 + ab^2 - b^3 = {% endmath %}

{% math %} = a^2(a - b) - ab(a - b) + b^2(a - b) = {% endmath %}

{% math %} = (a^2 + ab + b^2)(a - b){% endmath %}

Hmmm, there is a direct match in there - the first part of the factored output is the same as our proof starting point.

But what does this mean?  I'll admit I had to cheat and read Durham here.  He then combines the two, so I'll do the same (remember that in our case {% m %}a^2 + ab + b^2 = 0{% em %})

{% math %} a^3 - b^3 = (0)(a - b) {% endmath %}

{% math %}\rightarrow a^3 - b^3 = 0 {% endmath %}

{% math %}\rightarrow a^3 = b^3 {% endmath %}

That rules-wise makes sense, but what am I doing here? (What is anyone doing here?)  

 * We're aiming to find out the circumstances when {% m %}a^2 + ab + b^2 = 0{% em %}.  OK.  
 * We've now seen that this forms a part of a factoring of {% m %}a^3 - b^3{% em %}.  OK.  

What I missed was looking at the {% m %}a^3 - b^3{% em %}.  Now when is _this_ zero?  This is zero whenever {% m %}a = b{% em %}.  Nice.  And it's even distilled for us in the remainder of the factored result - {% m %}(a - b){% em %} - which is zero again whenever {% m %}a = b{% em %}.

Combined, _that's_ the echo of a future solution-reason calling me, and enough to move forward.

So do we have our proof with this alone?  Again _I_ think you could stop at this point, given where we are in the Gelfand-journey.{% sidenote 'sn-id-whatever' "I might come back to this in an update to this post sometime." %} [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) however goes further. He then analyses {% m %}a^2 + ab + b^2 = 0{% em %} directly.  I encourage you to take a look and see what you can glean.

## Problem 125
{% newthought "Prove that" %} if {% m %}a + b + c = 0{% em %} then {% m %}a^3 + b^3 + c^3 = 3abc{% em %}

First step is again to see have we seen any of this (or parts of this) before?  

We have.  Problem 122(d) had this:

{% math %}a^3 + b^3 + c^3 - 3abc{% endmath %}

How did we factor that?  Well, I looked back and I didn't - I just fell back on [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) (even he thought it was hard.)  So what does his factoring give us?  There we saw that {% m %}a^3 + b^3 + c^3 - 3abc = (a + b + c) \times ...{% em %}.

We can work with that, so, when {% m %}(a + b + c ) = 0{% em %}

{% math %} a^3 + b^3 + c^3 - 3abc = (a + b + c)(...){% endmath %}

{% math %} \rightarrow a^3 + b^3 + c^3 - 3abc = 0 \times (...){% endmath %}

{% math %} \rightarrow a^3 + b^3 + c^3 - 3abc = 0 {% endmath %}

{% math %} \rightarrow a^3 + b^3 + c^3 = 3abc {% endmath %}

Proved.

## Tricks Arising

### Look for the Same Pattern in Things You Know (Beyond the Standard Short-Cut Formulas)
_Many_ of the solutions to the proof-problems in this post have involved looking back to what we have seen worked previously.  It makes the clear (but possibly not self-evident) point that _anything_ can be a pattern to match on.  The _short-cut formulas_ are key ones because they pop up _a lot_, but others work in just the same way, by giving you a sudden jump into a well-worn path to differently formed expressions and perhaps further leaps.

## Some Kind of a Conclusion
{% newthought "I'm going to be honest" %} and state that I'm still not 100% certain as to the difference between a solution and a proof.  It'll get clearer I'm sure and I'll come back here and update this when I get something more pithy.

Suffice to say, I'm currently under the impression that for something to be a "proof", you need to be able to get from your starting point, using only allowable mathematical manipulations, to something which allows you to state unequivocally that the proposition you need to make is true (and is the only thing that can be true).  

Having written it out, that actually seems quite correct.  I'm guessing there is also the ideal which I shoudl be aiming for which is something which is "simple" , and in that aspect I would guess that "simple" is an end result where things are plain as day, or where the steps taken to get there are few and direct.

I might come back to this too. 

You can now jump to th enext post which is [another aside, this time on the Binary Number System](https://andrewharmellaw.github.io/2017/02/20/gelfands-algebra-aside-2-binary-who-cares), or you can skip it and move on to [Chunk 13 - Rational Expressions](https://andrewharmellaw.github.io/2017/02/21/gelfands-algebra-chunk-13-rational-expressions-concepts).
