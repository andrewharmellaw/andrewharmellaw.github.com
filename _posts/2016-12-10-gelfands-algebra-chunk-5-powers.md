---
layout: post
title: "Gelfand: Chunk 5 - Powers: Positive and Negative"
description: "Predominantly of 10, but sometimes of 2 too."
category: 
tags: [gelfand, powers, definition, tricks]
---
{% include JB/setup %}

For me, powers always made sense, but yet again I'd missed some subtleties which are now evident as I come back round with the chunking-cum-visual-grokking approach.

## General Definition of Powers
Lets kick off with the lovely General Definition.

For positive integers $n$,

$$a^n = a \cdot a \cdot  \cdot  \cdot a$$ ($$n$$ times)

$$a^{-n} = \frac{1}{a^n}$$

$$a^0 = 1$$

There's something worth noting explicitly in this general definition, and its a concept we've never encountered before now; a methematical "convention".

## The Convention of Negative Powers and Fractions
Writing $\frac{1}{2}$ as $2^{-1}$ is a convention.  But a convenient one.  

It also helps because it unifies how we conceptually treat very large and very small numbers.  

Because it is a convention rather than a _fact_ it is impossible to _prove_ that $a^{-n} = \frac{1}{a^n}$ because $a^{-n}$ makes no sense without the "$= \frac{1}{2}$" agreement.

## Tricks Arising
With all this in place, we can move on to the fun, useful stuff; the tricks we can slot into our memory banks.

### Shorten Things
The long expression

$$2 \cdot a \cdot a \cdot a \cdot a \cdot b \cdot b \cdot b \cdot c \cdot c \cdot d$$

can be written in the shorter form

$$2a^4b^3c^2d$$

and you can also write 

$$\frac{2 \cdot a \cdot a \cdot a \cdot a \cdot c \cdot c}{b \cdot b \cdot b \cdot d}$$

in the form

$$2a^4b^{-3}c^2d^{-1}$$

### Negative Powers to Fractions of Powers (& Back)
As it said in the definition, 

$$a^{-n} = \frac{1}{a^n}$$

This means we can take advantage of this equality to re-phrase things in either of the formats.  

E.g. re-writing to use only positive powers

$$a^3b^{-5} = \frac{a^3}{b^5}$$

and 

$$a^{-2}b^{-7} = \frac{1}{a^2b^7}$$

And don't forget you can go the other way too.

$$\frac{1}{a^2b^7} = a^{-2}b^{-7}$$

### Everything has a Power
If a number is just a number, and seems to have no power, then it secretly also has a power of 1

$$a = a^1 = 1 \cdot a$$

This even works when the base is zero

$$0 = 0^1$$

In fact, when the base is zero, the power can be _anything_

$$0 = 0^{10} = 0^{999} = ... $$

etc. 

### Multiplying Powers
When multiplying powers with the same base, just add the exponents and keep the base the same:

$$a^5 \cdot a^3 = (a \cdot a \cdot a \cdot a \cdot a)\cdot(a \cdot a \cdot a) = a^{5+3} = a^8$$

This works for negative powers too:

$$a^5 \cdot a^{-3} = a^5 \cdot \frac{1}{a^3} = \frac{a \cdot a \cdot a \cdot a \cdot a}{a \cdot a \cdot a} = a^2$$

That example had only one negative power, but more, even all can be negative and the rule still holds.

And it also works when one or more exponents equals zero

$$a^m \cdot a^0 = a^m \cdot 1 = a^m$$

In general 

$$a^m \cdot a^n = a^{m+n}$$

### Multiplying Small and Big Numbers Conveniently
You can lean on powers to allow you to multiply small and big numbers with ease (and without a calculator).

E.g., to multiply $2 \cdot 10^7$ and $3 \cdot 10^{-7}$

$$(2 \cdot 10^7) \cdot (3 \cdot 10^{-11}) = (2 \cdot 3) \cdot (10^7 \cdot 10^{-11}) = 6 \cdot 10^{7 + (-11)} = 6 \cdot 10^{-4}$$

### If Powers are Different, Make the Bases the Same
In Gelfand Problem 55(b), we have $2^{something}$ on one side and $\frac{1}{4}$ on the other.  To get to work on this, both sides need to be the same power.  Therefore

$$\frac{1}{4} = \frac{1}{2^2}$$

Later on, in Problem 55(f), we have $4^{something}$ on one side and $2^{something}$ on the other.  Again, we need the same power.

$$4^{100} = (2 \cdot 2)^{100} = 2^{100} \cdot 2^{100} = 2^{200}$$

### If Powers are the Same, Add the Bases
In Gelfand Problem 55(g), we have $2^{100} \cdot 3^{100}$.  The bases are different, but the powers are the same, so

$$2^{100} \cdot 3^{100} = (2 \cdot 3)^{100} = 6^{100}$$

### Pay Attention to the Question
Problem 49 asks for "the nuber of digits" rather than "the answer".  Gelfand just before gave a clue as to how to represent $2^{10}$ in terms of $10^n$ (it's $10^3 + 24$).  Then when we have to raise $2^{10}$ to $2^{100}$ (or $(2^{10})^{10}$) we can move across to powers of 10 and only care about the bit which will have the most digits: $(10^3)^{10} \Rightarrow 10^{30}$.  We can stop worrying about $24^{10}$ as it will have less.  (The answer is $31$ by the way, a $3$ followed by 30 $0$s.)

### Powers of 2 are quite close to powers of 10
(For computer scientists anyway.) 

In Gelfand's "Remark" on page 26, we saw that $10^3$ ($1000$) is _pretty close_ to $2^{10}$ ($1024$), close enough for computer scientists to be happy enough to ignore the 24 extra bytes in order to be able to use the term "kilobyte".

This then brought up the fact that other powers of 2 were not a million miles away from some powers of 10, and that when we were calculating numbers of digits rather than the actual result, then this was useful.

### Break Out Powers to Simplify Things
Last in this post is this handy trick which builds on some of the chunks we identified for simplifying things in [Post 2: Commutative, Associative and Distributive Laws](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws)

E.g.

$$1024 = (10^3 + 24)$$

## Terminology

* [base number](https://www.mathsisfun.com/definitions/base-numbers-.html) - the number that is going to be raised to a power (definition from mathsisfun.com)
* [exponent](https://www.mathsisfun.com/definitions/exponent.html) - the exponent of a number says how many times to use that number in multiplication.  Aka "index" and "power" (definition from mathsisfun.com)