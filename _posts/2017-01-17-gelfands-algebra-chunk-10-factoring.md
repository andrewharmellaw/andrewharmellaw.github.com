---
layout: post
title: "Gelfand: Chunk 10 - Factoring 101"
tags: [gelfand, factoring, square-of-a-sum, difference-of-squares, tricks]
---

{% include JB/setup %}

{% newthought "Numbers have factors." %}  The number {% m %}6{% em %} has factors of {% m %}2{% em %} and {% m %}3{% em %} (as in {% m %}2 \times 3{% em %}) and also {% m %}1{% em %} and {% m %}6{% em %} (as in {% m %}1 \times 6{% em %}).  

Expressions also have factors. 

The expression {% m %}a^2 + 2ab + b^2{% em %} has the factors {% m %}(a + b){% em %} and {% m %}(a + b){% em %}.  We can write this as {% m %}(a + b)^2{% em %}.

The expression {% m %}a^2 - 2ab + b^2{% em %} has the factors {% m %}(a + b){% em %} and {% m %}(a - b){% em %}.

I'm assuming these two factorisations   {% sidenote 'sn-id-whatever' "Which is what we call pulling out factors."%} look familiar to you as the Square-of-a-Sum and Difference-of-Squares.  (Take a glance back at [Chunk 6 - Squares, Sums, Differences etc.](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc) if you need to.)

If all this looks incredibly like we're just doing the reverse of what we've been doing up til now{% sidenote 'sn-id-whatever' "Which has been called "expanding" by the way." %} you'd be right.  But it's harder.  Expanding is just laboriously following a bunch of rules.  You need to pay attention, but you don't need to _think_.  With factoring it's _hard_ and you need to think _a lot_.

It's for this reason that factoring is something I remember utterly failing at in school - I had a mental block about it.  

Consequently I'm going to go slowly (and break this topic into [multiple](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero) [posts](https://andrewharmellaw.github.io/2017/02/02/gelfands-algebra-chunk-12-the-hard-ones)) if only for my own benefit.

## Gelfand Problem 107(d)
{% newthought "You can brute-force this one" %} by just staring at it hard and figuring out how it should shake out, but there is a better way.  And better ways are, well, better.

First the starting point

{% math %}1 + a + a^2 + a^3 {% endmath %}

You don't need to be a maths genius to spot that our powers of {% m %}a{% em %} are going up by one at a time (especially if you recall that _anything_ to the power of {% m %}0{% em %} is {% m %}1{% em %} and that {% m %}a^1{% em %} is {% m %}a{% em %}).  You might also have eagle-eyed that we have four of them.  This means that we can probably find some repetition. 

And we can, possibly starting off in the second pair of powers.

{% math %} = 1 + a + a^2(1 + a) = {% endmath %}

Given this, we can then, to make the repetition of {% m %}1 + a{% em %} _really_ clear

{% math %} = 1(1 + a) + a^2(1 + a) = {% endmath %}

Which then just leaves us to collect the {% m %}1{% em %} and {% m %}a^2{% em %} together and we have a nice result

{% math %} = (1 + a)(1 + a^2){% endmath %}

## Tricks Arising (Pt. 1)

### When Factoring, Look for Patterns of Common Multiplicands

This initial pattern-spot we used in Problem 107(d) (above) (of the shared {% m %}(1 + a){% em %} multiplicand) helps a lot in many factorings.  It's a trick you'll rely on a frequently, and get better at intuitively spotting as you go on.  

When trying to spot these, things which can help are making powers of zero and {% m %}1{% em %} super-evident

{% math %}1 = a^0{% endmath %}

{% math %}a = a^1{% endmath %}

And making co-efficients explicit can also sometimes come in handy

{% math %}a = 1a{% endmath %}

## Starting with Some Simple Ones

{% newthought "With our new-found confidence in hand," %} let's march onward.

### Gelfand Problem 107(c)

After banging my head on this for a while I caved and went to the answers by [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions).  His first point made perfect sense and I realised I'd been constrained in my thinking - I'd been looking for a pattern of a pair of terms, but as I had an input consisting of an _odd_ number of monomials this would _never_ work.  I had to try a different number.  That number turns out{% sidenote 'sn-id-whatever' "For a possible first step anyway." %} to be another odd number, and that odd number is three.

{% math %}1 + a + a^2 + a^3 + a^4 + a^5 + a^6 + a^7 + a^8 + a^9 + a^{10} + a^{11} + a^{12} + a^{13} + a^{14} = {% endmath %}

{% math %} = (1 + a + a^2) + a^3(1 + a + a^2) + a^6(1 + a + a^2) + a^9(1 + a + a^2) + a^{12}(1 + a + a^2) = {% endmath %}

{% math %} = (1 + a + a^2)(1 + a^3 + a^6 + a^9 + a^{12}){% endmath %}

Why three?  Because we have fifteen terms (an odd number) we couldn't use two. But fifteen divides into three nicely.  That's why three.

Can we go further than this? (I.e. factor the {% m %}(1 + a^3 + a^6 + a^9 + a^{12}){% em %})  Durham says no, but beacuse he's using terminology I'm not yet entirely familiar with to explain why, I'm going to leave it here - is it fundamentally beacuse we have five remaining terms, but five is a prime? Perhaps.  Anyway, it feels as if the learning goal has been achieved.

What Durham _does_ explain is what would have happened if we'd had one more term in our starting point, and it is instructive to re-state what happened here.

{% math %}1 + a + a^2 + a^3 + a^4 + a^5 + a^6 + a^7 + a^8 + a^9 + a^{10} + a^{11} + a^{12} + a^{13} + a^{14} + a^{15} = {% endmath %}

{% math %} = (1 + a) + a^2(1 + a) + a^4(1 + a) + a^6(1 + a) + a^8(1 + a) + a^{10}(1 + a) + a^{12}(1 + a) + a^{14}(1 + a) = {% endmath %}

{% math %} = (1 + a)(1 + a^2 + a^4 + a^6 + a^8 + a^{10} + a^{12} + a^{14}) {% endmath %}

Here we _can_ consider the {% m %}1 + a^2 + a^4 + a^6 + a^8 + a^{10} + a^{12} + a^{14}{% em %} in the same manner that we considered our original starting point.  

There is a minor subtlety to notice - we're going to have to start nesting our parentheses.  That's conceptually not too problematic for me (I coded some [Clojure](https://clojure.org/) once which was far worse than this) but it's worth pointing out.  I, following Durham, have used square brackets ('[ and ']') for this inner parentheses.

{% math %} = (1 + a)[(1 + a^2) + a^4(1 + a^2) + a^8(1 + a^2) + a^{12}(1 + a^2)] {% endmath %}

{% math %} = (1 + a)(1 + a^2)(1 + a^4 + a^8 + a^{12}) {% endmath %}

And yet again, we have another pattern we can factor further in the same way

{% math %} = (1 + a)(1 + a^2)[(1 + a^4) + a^8(1 + a^4)] = {% endmath %}

{% math %}(1 + a)(1 + a^2)(1 + a^4)(1 + a^8){% endmath %}

Phew!

Before we move on, its worth pointing out that Durham reckons {% m %}1 + a^4{% em %} and {% m %}1 + a^8{% em %} an both be further factored, but he's sitting on a mound of additional knowledge that I'm not (yet) party to, so I'm going to leave it here.

### Gelfand Problem 107(d)
After that minor brain-melting, 107(d) is a nice little re-applcation of the core concepts we already have at out disposal.  To make things clear, it helps to make all powers and co-efficients super-evident, just as we highlighted earlier

{% math %} x^4 - x^3 + 2x - 2 = {% endmath %}

{% math %} = 1x^4 - 1x^3 + 2x^1 - 2x^0 = {% endmath %}

{% math %} = x^3(x - 1) + 2(x - 1) = {% endmath %}

{% math %} = (x^3 + 2)(x - 1){% endmath %}

### Gelfand Problems 109(a) and (b)
Another lesson to learn here.  When multiplying polynomials we _collect_ similar terms, so when we're factoring{% sidenote 'sn-id-whatever' "Which is essentially attempting to fall back through this trapdoor." %} it seems perfectly reasonable to have to split up what had previously been collected.

Problem (a) first

{% math %} a^2 - 3ab + 2b^2 = {% endmath %}

{% math %} = a^2 - ab - 2ab + 2b^2 = {% endmath %}

{% math %} = a(a - b) - 2b(a - b) = {% endmath %}

{% math %} = (a - 2b)(a - b){% endmath %}

And now problem (b)

{% math %}a^2 + 3a + 2 = {% endmath %}

{% math %} = a^2 + 2a + a + 2 = {% endmath %}

{% math %} = a(a + 2) + 1(a + 2) = {% endmath %}

{% math %} = (a + 1)(a + 2){% endmath %}

(b) is a little different than the ones we've seen. It only has one variable, but things still work in the same way as before.

## Tricks Arising (Pt. 2)

### When Factoring, It Can Help to Split Similar Terms

Remember the ones you collected when you were doing the busy-work of obtaining [nice, clean "Standard Form" polynomials](https://andrewharmellaw.github.io/2017/01/10/gelfands-algebra-chun-8-nomials)?  Well if you're working backwards (as you are when "Factoring Down the Line") then you need to break things up.  

How do you know which term to split? A good guess {% sidenote 'sn-id-whatever' "Though I've not tested this theory fully." %} is to pick the term with the largest co-efficient.  E.g in the following from Gelfand 109(b) it's {% m %}3a{% em %}.

{% math %}a^2 + 3a + 2 = {% endmath %}

{% math %} = a^2 + 2a + a + 2 = {% endmath %}

Why the biggest? Because that then helps you when you get to the next question, how do you know where to the co-efficient of your chosen term numerically?  It seems {% sidenote 'sn-id-whatever' "When things are simple at least." %} that looking at the other, smaller co-efficients can give you a clue.  E.g. in the following from Gelfand 109(a), these are {% m %}1{% em %} (for {% m %}a^2{% em %}) and {% m %}2{% em %} (for {% m %}b^2{% em %}), and added together, these give {% m %}3{% em %} which is the co-efficient of the thing we're looking to split ({% m %}3ab{% em %}).

{% math %} 1a^2 - 3ab + 2b^2 = {% endmath %}

{% math %} = 1a^2 - 1ab - 2ab + 2b^2{% endmath %}

Please note, this idea is from my own head, and may be revised, or updated at a later stage.

## Gelfand Problems 110(a), (b) and (c)
{% newthought "Now on to problem 110(a)." %}  This one I found challenging too. We're supposed to be learning again.  I took it step by step.

{% math %}a^2 + 4ab  + 4b^2 = {% endmath %}

{% math %} = 1a^2 + 4ab + 4b^2 = {% endmath %}

{% math %} = 1a^2 + 2ab + 2ab + 4b^2 = {% endmath %}

{% math %} = a(a + 2b) + 2b(a + 2b) = {% endmath %}

{% math %} = (a + 2b)(a + 2b) = {% endmath %}

{% math %} = (a + 2b)^2 {% endmath %} 

Checking again against Durham, I ended up at the right answer but he's keen to show there is a hidden realisation and a consequent shortcut.  I _could_ have also noticed that this is a perfect square, but just using {% m %}b^2{% em %} rather than {% m %}b{% em %}.  

{% math %} = a^2 + 2a(2b) + (2b)^2{% endmath %}

I must admit, this passed me by, though it makes sense given the output of my working.

110(b) next, but now looking out for this additional element

{% math %} a^4 + 2a^2b^2 + b^4 = {% endmath %}

Now I'm aware of it, this too is a perfect square, but of {% m %}(a^2 + b^2){% em %} rather than {% m %}(a + b){% em %}.  Let's keep stepping it through though

{% math %} = a^2(a^2 + b^2) + b^2(a^2 + b^2) = {% endmath %}

{% math %} = (a^2 + b^2)(a^2 + b^2) = {% endmath %}

{% math %} = (a^2 + b^2)^2{% endmath %}

Great. Now the final one, 110(c)

{% math %}a^2 - 2a + 1 = {% endmath %}

{% math %} = a(a - 1) - 1(a - 1) = {% endmath %}

{% math %} = (a - 1)(a - 1) = {% endmath %}

{% math %} = (a - 1)^2{% endmath %}

All good. In fact, this is actually getting a little easy.  Surely there must be a catch...?  

Unfortunately there is, and that's the topic of the next post in this series.
