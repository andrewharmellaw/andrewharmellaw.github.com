---
layout: post
title: "Gelfand: Chunk 10 - Factoring 101"
description: "The First Pass"
category: 
tags: [gelfand, factoring, tricks]
---
{% include JB/setup %}

Factoring is something I remember utterly failing at in school.  Consequently, I had a mental block about it.  

I'm going to go slowly for my own benefit.

## When am I Done Factoring?

There is an elephant in the room around all this factoring which I want to call out.  In a lot of the worked examples (and solutions) you'll come across you'll frequently see comments like "this could be factored further, but we're not going as it requires techniques that haven't yet been covered."  But when you;re learning, how do you know when you've reached this point?

TBC.

## Gelfand Problem 107(d)
You can brute-force this one by just staring at it hard and figuring out how it should shake out, but there is a better way.  And better ways are, well, better.

First the starting point

$$1 + a + a^2 + a^3 = $$

Then we spot that our powers of $a$ are going up by one at a time, and that we have four of them.  This means that we can probably find some repetition. There it is, in the second pair of powers

$$ = 1 + a + a^2(1 + a) = $$

Given this, we can then, to make the repetition of $1 + a$ _really_ clear

$$ = 1(1 + a) + a^2(1 + a) = $$

Which then just leaves us to collect the $1$ and $a^2$ together and we have a nice result

$$ = (1 + a)(1 + a^2)$$

## Tricks Arising (Pt. 1)
### When Factoring Look for Patterns of Common Multiplicands
This initial pattern-spot we used in Problem 107(d) (above) (of the shared $(1 + a)$ multiplicand) helps a lot in many factorings.  It's a trick you'll rely on a freqiently, and get better at intuitively spotting as you go on.  

When trying to spot these, things which can help are making powers of zero super-evident

$$1 = 1a^0$$

And making co-efficients explicit is also sometimes handy

$$a = 1a$$

## Starting with Some Simple Ones
### Gelfand Problem 107(c)
After banging my head on this for a while I caved and went to the answers by [Durham]().  His first point made perfect sense and I realised i'd been constrained in my thinking - I'd been looking for a pattern of a pair of terms, but as I had an input consisting of an _odd_ number of monomials this would _never_ work.  I had to try a different number.  That number turns out (for a possible first step anyway) to be three.

$$1 + a + a^2 + a^3 + a^4 + a^5 + a^6 + a^7 + a^8 + a^9 + a^{10} + a^{11} + a^{12} + a^{13} + a^{14} = $$

$$ = (1 + a + a^2) + a^3(1 + a + a^2) + a^6(1 + a + a^2) + a^9(1 + a + a^2) + a^{12}(1 + a + a^2) = $$

$$ = (1 + a + a^2)(1 + a^3 + a^6 + a^9 + a^{12})$$

Why three?  Because we have fifteen terms (an odd number) we couldn't use two. But fifteen divides into three nicely.  Thats why three.

Can we go further than this? (I.e. factor the $(1 + a^3 + a^6 + a^9 + a^{12})$)  Durham says no, but beacuse he's using terminology I'm not yet entirely familiar with to explain why, I'm going to leave it here - is it fundamentally beacuse we have five remaining terms, but five is a prime? Perhaps.  Anyway, it feels as if the learning goal has been achieved.

What Durham _does_ explain is what would have happened if we'd had one more term in our starting point, and it is instructive to re-state what happened here.

$$1 + a + a^2 + a^3 + a^4 + a^5 + a^6 + a^7 + a^8 + a^9 + a^{10} + a^{11} + a^{12} + a^{13} + a^{14} + a^{15} = $$

$$ = (1 + a) + a^2(1 + a) + a^4(1 + a) + a^6(1 + a) + a^8(1 + a) + a^{10}(1 + a) + a^{12}(1 + a) + a^{14}(1 + a) = $$

$$ = (1 + a)(1 + a^2 + a^4 + a^6 + a^8 + a^{10} + a^{12} + a^{14}) $$

Here we _can_ consider the $1 + a^2 + a^4 + a^6 + a^8 + a^{10} + a^{12} + a^{14}$ in the same manner that we considered our original starting point.  

There is a minor subtlety to notice - we're going to have to start nesting our parentheses.  That's conceptually not too problematic for me (I coded some [Clojure]() once which was far worse than this) but it's worth pointing out.  I, following Durham, have used square brackets ('[ and ']') for this inner parentheses.

$$ = (1 + a)[(1 + a^2) + a^4(1 + a^2) + a^8(1 + a^2) + a^{12}(1 + a^2)] $$

$$ = (1 + a)(1 + a^2)(1 + a^4 + a^8 + a^{12}) $$

And yet again, we have another pattern we can factor further in the same way

$$ = (1 + a)(1 + a^2)[(1 + a^4) + a^8(1 + a^4)] = $$

$$(1 + a)(1 + a^2)(1 + a^4)(1 + a^8)$$

Phew!

Before we move on, its worth pointing out that Durham reckons $1 + a^4$ and $1 + a^8$ an both be further factored, but he's sitting on a mound of additional knowledge that I'm not (yet) party to, so I'm going to leave it here.

### Gelfand Problem 107(d)
After that minor brain-melting, 107(d) is a nice little re-applcation of the core concepts we already have at out disposal.  To make things clear, it helps to make all powers and co-efficients super-evident

$$ x^4 - x^3 + 2x - 2 = $$

$$ = 1x^4 - 1x^3 + 2x^1 - 2x^0 = $$

$$ = x^3(x - 1) + 2(x - 1) = $$

$$ = (x^3 + 2)(x - 1)$$

### Gelfand Problems 109(a) and (b)
When multiplying polynomials we _collect_ similar terms, so when we're factoring (which is essentially attempting to fall back through this trapdoor) it seems perfectly reasonable to have to split up what had previously been collected.

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
### Spilt Similar Terms
Remember the ones you collected when you were doing the busy-work of obtaining [nice, clean "Standard Form" polynomials](Chunk_8)?  Well if you're working backwards (as you are when "Factoring Down the Line") then you need to break things up.  

How do you know which term to split? A good guess (and I've not tested this theory fully) is to pick the term with the largest co-efficient.  E.g in the following from Gelfand 109(b) it's $3a$.

$$a^2 + 3a + 2 = $$

$$ = a^2 + 2a + a + 2 = $$

Why the biggest? Because that then heops you when you get to the next question, 
how do you know where to the co-efficient of your chosen term numerically?  It seems (when things are simple at least) that looking at the other, smaller co-efficients can give you a clue.  E.g. in the following from Gelfand 109(a), these are $1$ (for $a^2$) and $2$ (for $b^2$), and added together, these give $3$ which is the co-efficient of the thing we're looking to split ($3ab$).

$$ 1a^2 - 3ab + 2b^2 = $$

$$ = 1a^2 - 1ab - 2ab + 2b^2$$

Please note, this idea is from my own head, and may be revised, or updated at a later stage.

## Coping with Annihilated Terms
But there's something we've not yet tackled. Sometimes as part of our collection we ended up with terms where the co-efficient totally zero and so we removed them all together.  This felt amazing, because we were getting rid of things and achieving increased simplicity as a result.  But now we're going backwards. How do we cope with that?  How can we see what's no longer there?

This is just one of the reasons that factoring is "hard".  (Interestingly, I remember _doing_ factoring at school, I fail to recall any of the details however, most likely due to the terror which this "summoning from the ether" element.)

Gelfand feels our fear, but he encourages us to took into the abyss and jump anyway.  He suggests we look at a factoring of the familiar difference-of-squares to salve our anxiety.  We know the steps because we've worked it the other direction [many a time](Chunk-6).

$$a^2 - b^2 = $$

$$ = a^2 - ab + ab - b^2 = $$

$$ = a(a - b) + b(a - b) = $$

$$ = (a + b)(a - b)$$

That makes sense, but thats because we already knew the steps.

$$x^5 + x + 1 = $$

$$ = x^5 + x^4 + x^3 - x^4 - x^3 - x^2 + x^2 + x + 1 = $$

$$ = x^3(x^2 + x + 1) - x^2(x^2 + x + 1) + (x^2 + x + 1) = $$

$$ = (x^3 - x^2 + 1)(x^2 + x + 1)$$

Proving that if $a^2 = b^2$ then $a = b$ and $a = -b$.

$$a^2 = b^2$$

$$ \rightarrow a^2 - b^2 = 0 $$

$$ \rightarrow (a - b)(a + b) = 0 $$

$$ \rightarrow a - b = 0 OR a + b = 0 $$

$$ \rightarrow a = b OR a = -b $$

