---
layout: post
title: "Gelfand: Chunk 10 - Factoring 101"
description: "The First Pass"
category: 
tags: [gelfand, factoring, square-of-a-sum, difference-of-squares, tricks]
---
{% include JB/setup %}
Numbers have factors.  The number $6$ has factors of $2$ and $3$ (as in $2 \times 3$) and also $1$ and $6$ (as in $1 \times 6$).  

Expressions also have factors. 

The expression $a^2 + 2ab + b^2$ has the factors $(a + b)$ and $(a + b)$.  We can write this as $(a + b)^2$.

The expression $a^2 - 2ab + b^2$ has the factors $(a + b)$ and $(a - b)$.

I'm assuming these two factorisations (which is what we call pulling out factors) look familiar to you as the Square-of-a-Sum and Difference-of-Squares.  (Take a glance back at [Chunk 6 - Squares, Sums, Differences etc.](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc) if you need to.)

If all this looks incredibly like we're just doing the reverse of what we've been doing up til now (which has been called "expanding" by the way) you'd be right.  But it's harder.  Expanding is just laboriously following a bunch of rules.  You need to pay attention, but you don't need to _think_.  With factoring it's _hard_ and you need to think _a lot_.

It's for this reason that factoring is something I remember utterly failing at in school - I had a mental block about it.  

Consequently I'm going to go slowly (and break this topic into [multiple](https://andrewharmellaw.github.io/2017/01/20/gelfands-algebra-chunk-11-factoring-to-zero) [posts](https://andrewharmellaw.github.io/2017/02/02/gelfands-algebra-chunk-12-the-hard-ones)) if only for my own benefit.

## Gelfand Problem 107(d)
You can brute-force this one by just staring at it hard and figuring out how it should shake out, but there is a better way.  And better ways are, well, better.

First the starting point

$$1 + a + a^2 + a^3 = $$

You don't need to be a maths genius to spot that our powers of $a$ are going up by one at a time (especially if you recall that _anything_ to the power of $0$ is $1$ and that $a^1$ is $a$).  You might also have eagle-eyed that we have four of them.  This means that we can probably find some repetition. 

And we can, possibly starting off in the second pair of powers.

$$ = 1 + a + a^2(1 + a) = $$

Given this, we can then, to make the repetition of $1 + a$ _really_ clear

$$ = 1(1 + a) + a^2(1 + a) = $$

Which then just leaves us to collect the $1$ and $a^2$ together and we have a nice result

$$ = (1 + a)(1 + a^2)$$

## Tricks Arising (Pt. 1)

### When Factoring, Look for Patterns of Common Multiplicands

This initial pattern-spot we used in Problem 107(d) (above) (of the shared $(1 + a)$ multiplicand) helps a lot in many factorings.  It's a trick you'll rely on a frequently, and get better at intuitively spotting as you go on.  

When trying to spot these, things which can help are making powers of zero and $1$ super-evident

$$1 = a^0$$

$$a = a^1$$

And making co-efficients explicit can also sometimes come in handy

$$a = 1a$$

## Starting with Some Simple Ones

With our new-found confidence in hand, let's march onward.

### Gelfand Problem 107(c)

After banging my head on this for a while I caved and went to the answers by [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions).  His first point made perfect sense and I realised I'd been constrained in my thinking - I'd been looking for a pattern of a pair of terms, but as I had an input consisting of an _odd_ number of monomials this would _never_ work.  I had to try a different number.  That number turns out (for a possible first step anyway) to be another odd number, and that odd number is three.

$$1 + a + a^2 + a^3 + a^4 + a^5 + a^6 + a^7 + a^8 + a^9 + a^{10} + a^{11} + a^{12} + a^{13} + a^{14} = $$

$$ = (1 + a + a^2) + a^3(1 + a + a^2) + a^6(1 + a + a^2) + a^9(1 + a + a^2) + a^{12}(1 + a + a^2) = $$

$$ = (1 + a + a^2)(1 + a^3 + a^6 + a^9 + a^{12})$$

Why three?  Because we have fifteen terms (an odd number) we couldn't use two. But fifteen divides into three nicely.  That's why three.

Can we go further than this? (I.e. factor the $(1 + a^3 + a^6 + a^9 + a^{12})$)  Durham says no, but beacuse he's using terminology I'm not yet entirely familiar with to explain why, I'm going to leave it here - is it fundamentally beacuse we have five remaining terms, but five is a prime? Perhaps.  Anyway, it feels as if the learning goal has been achieved.

What Durham _does_ explain is what would have happened if we'd had one more term in our starting point, and it is instructive to re-state what happened here.

$$1 + a + a^2 + a^3 + a^4 + a^5 + a^6 + a^7 + a^8 + a^9 + a^{10} + a^{11} + a^{12} + a^{13} + a^{14} + a^{15} = $$

$$ = (1 + a) + a^2(1 + a) + a^4(1 + a) + a^6(1 + a) + a^8(1 + a) + a^{10}(1 + a) + a^{12}(1 + a) + a^{14}(1 + a) = $$

$$ = (1 + a)(1 + a^2 + a^4 + a^6 + a^8 + a^{10} + a^{12} + a^{14}) $$

Here we _can_ consider the $1 + a^2 + a^4 + a^6 + a^8 + a^{10} + a^{12} + a^{14}$ in the same manner that we considered our original starting point.  

There is a minor subtlety to notice - we're going to have to start nesting our parentheses.  That's conceptually not too problematic for me (I coded some [Clojure](https://clojure.org/) once which was far worse than this) but it's worth pointing out.  I, following Durham, have used square brackets ('[ and ']') for this inner parentheses.

$$ = (1 + a)[(1 + a^2) + a^4(1 + a^2) + a^8(1 + a^2) + a^{12}(1 + a^2)] $$

$$ = (1 + a)(1 + a^2)(1 + a^4 + a^8 + a^{12}) $$

And yet again, we have another pattern we can factor further in the same way

$$ = (1 + a)(1 + a^2)[(1 + a^4) + a^8(1 + a^4)] = $$

$$(1 + a)(1 + a^2)(1 + a^4)(1 + a^8)$$

Phew!

Before we move on, its worth pointing out that Durham reckons $1 + a^4$ and $1 + a^8$ an both be further factored, but he's sitting on a mound of additional knowledge that I'm not (yet) party to, so I'm going to leave it here.

### Gelfand Problem 107(d)
After that minor brain-melting, 107(d) is a nice little re-applcation of the core concepts we already have at out disposal.  To make things clear, it helps to make all powers and co-efficients super-evident, just as we highlighted earlier

$$ x^4 - x^3 + 2x - 2 = $$

$$ = 1x^4 - 1x^3 + 2x^1 - 2x^0 = $$

$$ = x^3(x - 1) + 2(x - 1) = $$

$$ = (x^3 + 2)(x - 1)$$

### Gelfand Problems 109(a) and (b)
Another lesson to learn here.  When multiplying polynomials we _collect_ similar terms, so when we're factoring (which is essentially attempting to fall back through this trapdoor) it seems perfectly reasonable to have to split up what had previously been collected.

Problem (a) first

$$ a^2 - 3ab + 2b^2 = $$

$$ = a^2 - ab - 2ab + 2b^2 = $$

$$ = a(a - b) - 2b(a - b) = $$

$$ = (a - 2b)(a - b)$$

And now problem (b)

$$a^2 + 3a + 2 = $$

$$ = a^2 + 2a + a + 2 = $$

$$ = a(a + 2) + 1(a + 2) = $$

$$ = (a + 1)(a + 2)$$

(b) is a little different than the ones we've seen. It only has one variable, but things still work in the same way as before.

## Tricks Arising (Pt. 2)

### Split Similar Terms

Remember the ones you collected when you were doing the busy-work of obtaining [nice, clean "Standard Form" polynomials](https://andrewharmellaw.github.io/2017/01/10/gelfands-algebra-chun-8-nomials)?  Well if you're working backwards (as you are when "Factoring Down the Line") then you need to break things up.  

How do you know which term to split? A good guess (and I've not tested this theory fully) is to pick the term with the largest co-efficient.  E.g in the following from Gelfand 109(b) it's $3a$.

$$a^2 + 3a + 2 = $$

$$ = a^2 + 2a + a + 2 = $$

Why the biggest? Because that then helps you when you get to the next question, how do you know where to the co-efficient of your chosen term numerically?  It seems (when things are simple at least) that looking at the other, smaller co-efficients can give you a clue.  E.g. in the following from Gelfand 109(a), these are $1$ (for $a^2$) and $2$ (for $b^2$), and added together, these give $3$ which is the co-efficient of the thing we're looking to split ($3ab$).

$$ 1a^2 - 3ab + 2b^2 = $$

$$ = 1a^2 - 1ab - 2ab + 2b^2$$

Please note, this idea is from my own head, and may be revised, or updated at a later stage.

## Gelfand Problems 110(a), (b) and (c)
Now on to problem 110(a).  This one I found challenging again - we're supposed to be learning again.  I took it step by step.

$$a^2 + 4ab  + 4b^2 = $$

$$ = 1a^2 + 4ab + 4b^2 = $$

$$ = 1a^2 + 2ab + 2ab + 4b^2 = $$

$$ = a(a + 2b) + 2b(a + 2b) = $$

$$ = (a + 2b)(a + 2b) = $$

$$ = (a + 2b)^2 $$ 

Checking again against Durham, I ended up at the right answer but he's keen to show there is a hidden realisation and a consequent shortcut.  I _could_ have also noticed that this is a perfect square, but just using $b^2$ rather than $b$.  

$$ = a^2 + 2a(2b) + (2b)^2$$

I must admit, this passed me by, though it makes sense given the output of my working.

110(b) next, but now looking out for this additional element

$$ a^4 + 2a^2b^2 + b^4 = $$

Now I'm aware of it, this too is a perfect square, but of $(a^2 + b^2)$ rather than $(a + b)$.  Let's keep stepping it through though

$$ = a^2(a^2 + b^2) + b^2(a^2 + b^2) = $$

$$ = (a^2 + b^2)(a^2 + b^2) = $$

$$ = (a^2 + b^2)^2$$

Great. Now the final one, 110(c)

$$a^2 - 2a + 1 = $$

$$ = a(a - 1) - 1(a - 1) = $$

$$ = (a - 1)(a - 1) = $$

$$ = (a - 1)^2$$

All good. In fact, this is actually getting a little easy.  Surely there must be a catch...?  

Unfortunately there is, and that's the topic of the next post in this series.