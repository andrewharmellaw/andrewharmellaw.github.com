---
layout: post
title: "Gelfand: Chunk 5 - Powers: Positive and Negative"
description: "Predominantly of 10, but sometimes of 2 too."
category: 
tags: [gelfand, powers, definition, tricks]
---
{% include JB/setup %}

For me, powers always made sense; but yet again it turns out that I'd missed some subtleties which are now evident as I come back around using the Oakley chunking-cum-visual-grokking approach.

## General Definition of Powers
Let's kick off with the lovely General Definition.

For positive integers {% m %}n{% em %},

{% math %}a^n = a \cdot a \cdot  \cdot  \cdot a{% endmath %} 

({% m %}n{% em %} times)

{% math %}a^{-n} = \frac{1}{a^n}{% endmath %}

{% math %}a^0 = 1{% endmath %}

There's something worth noting explicitly about this general definition, and it's a concept we've not come across in this series; the presence of a mathematical "convention".

## The Convention of Negative Powers and Fractions
So what is the convention? Well, it turns out that when we write {% m %}\frac{1}{2}{% em %} as {% m %}2^{-1}{% em %} we're relying on a convention.  But a convenient one.  

This convention helps because it unifies how we conceptually treat very large and very small numbers.  

But why the "convention" piece? Because it is a convention rather than a _fact_ it is impossible to _prove_ that {% m %}a^{-n} = \frac{1}{a^n}{% em %} because {% m %}a^{-n}{% em %} makes no sense without the "{% m %}= \frac{1}{2}{% em %}" agreement.

Interesting huh?  Let's continue.

## Tricks Arising
With this in place, we can move on to the fun, useful stuff; the tricks we can slot into our memory banks.

### Shorten Things
The long expression

{% math %}2 \cdot a \cdot a \cdot a \cdot a \cdot b \cdot b \cdot b \cdot c \cdot c \cdot d{% endmath %}

can be written in the shorter form

{% math %}2a^4b^3c^2d{% endmath %}

and you can also write 

{% math %}\frac{2 \cdot a \cdot a \cdot a \cdot a \cdot c \cdot c}{b \cdot b \cdot b \cdot d}{% endmath %}

in the form

{% math %}2a^4b^{-3}c^2d^{-1}{% endmath %}

### Negative Powers to Fractions of Powers (& Back)
As it said in the definition, 

{% math %}a^{-n} = \frac{1}{a^n}{% endmath %}

This means we can take advantage of this equality to re-phrase things in either of the formats.  

E.g. re-writing to use only positive powers

{% math %}a^3b^{-5} = \frac{a^3}{b^5}{% endmath %}

and 

{% math %}a^{-2}b^{-7} = \frac{1}{a^2b^7}{% endmath %}

And don't forget you can go the other way too.

{% math %}\frac{1}{a^2b^7} = a^{-2}b^{-7}{% endmath %}

### Everything has a Power
If a number is just a number, and seems to have no power, then it secretly also has a power of {% m %}1{% em %}

{% math %}a = a^1 = 1 \cdot a{% endmath %}

This even works when the base is zero

{% math %}0 = 0^1{% endmath %}

In fact, when the base is zero, the power can be _anything_

{% math %}0 = 0^{10} = 0^{999} = ... {% endmath %}

etc. 

### Multiplying Powers
When multiplying powers with the same base, just add the exponents and keep the base the same:

{% math %}a^5 \cdot a^3 = (a \cdot a \cdot a \cdot a \cdot a)\cdot(a \cdot a \cdot a) = a^{5+3} = a^8{% endmath %}

This works for negative powers too:

{% math %}a^5 \cdot a^{-3} = {% endmath %}

{% math %} = a^5 \cdot \frac{1}{a^3} = {% endmath %}

{% math %} = \frac{a \cdot a \cdot a \cdot a \cdot a}{a \cdot a \cdot a} = {% endmath %}

{% math %} = a^2{% endmath %}

That example had only one negative power, but more, even all can be negative and the rule still holds.

And it also works when one or more exponents equals zero

{% math %}a^m \cdot a^0 = {% endmath %}

{% math %} = a^m \cdot 1 = {% endmath %}

{% math %} = a^m{% endmath %}

In general 

{% math %}a^m \cdot a^n = a^{m+n}{% endmath %}

### Use Powers to Multiply Small and Big Numbers Conveniently
You can lean on powers to allow you to multiply small and big numbers with ease (and without a calculator).

E.g., to multiply {% m %}2 \cdot 10^7{% em %} and {% m %}3 \cdot 10^{-7}{% em %}

{% math %}(2 \cdot 10^7) \cdot (3 \cdot 10^{-11}) = {% endmath %}

{% math %} = (2 \cdot 3) \cdot (10^7 \cdot 10^{-11}) = {% endmath %}

{% math %} = 6 \cdot 10^{7 + (-11)} = {% endmath %}

{% math %} = 6 \cdot 10^{-4}{% endmath %}

### If Powers are Different, Make the Bases the Same
In Gelfand Problem 55(b), we have {% m %}2^{something}{% em %} on one side and {% m %}\frac{1}{4}{% em %} on the other.  To get to work on this, both sides need to be the same power.  Therefore

{% math %}\frac{1}{4} = \frac{1}{2^2}{% endmath %}

Later on, in Problem 55(f), we have {% m %}4^{something}{% em %} on one side and {% m %}2^{something}{% em %} on the other.  Again, we need the same power.

{% math %}4^{100} = {% endmath %}

{% math %} = (2 \cdot 2)^{100} = {% endmath %}

{% math %} = 2^{100} \cdot 2^{100} = {% endmath %}

{% math %} = 2^{200}{% endmath %}

### If Powers are the Same, You Can Add the Bases
In Gelfand Problem 55(g), we have {% m %}2^{100} \cdot 3^{100}{% em %}.  The bases are different, but the powers are the same, so

{% math %}2^{100} \cdot 3^{100} = {% endmath %}

{% math %} = (2 \cdot 3)^{100} = {% endmath %}

{% math %} = 6^{100} {% endmath %}

### Pay Attention to the Question
Problem 49 asks for "the nuber of digits" rather than "the answer".  Gelfand gave us a clue just before as to how to represent {% m %}2^{10}{% em %} in terms of {% m %}10^n{% em %} (it's {% m %}10^3 + 24{% em %}).  Thus, when we have to raise {% m %}2^{10}{% em %} to {% m %}2^{100}{% em %} (or {% m %}(2^{10})^{10}{% em %}) we can move across to powers of {% m %}10{% em %} and only care about the bit which will have the most digits: {% m %}(10^3)^{10} \Rightarrow 10^{30}{% em %}.  We can stop worrying about {% m %}24^{10}{% em %} as it will have less.  

(The answer is {% m %}31{% em %} by the way, a {% m %}3{% em %} followed by thirty {% m %}0{% em %}s.)

### Powers of 2 are _Quite Close_ to Powers of 10
(Close enough for computer scientists anyway.) 

In Gelfand's "Remark" on page 26, we saw that {% m %}10^3{% em %} ({% m %}1000{% em %}) is _pretty close_ to {% m %}2^{10}{% em %} ({% m %}1024{% em %}), close enough for computer scientists to be happy enough to ignore the {% m %}24{% em %} extra bytes in order to be able to use the term "kilobyte".

This then brought up the fact that other powers of {% m %}2{% em %} were not a million miles away from some powers of {% m %}10{% em %}, and that when we were calculating numbers of digits rather than the actual result, then this was useful.

### Break Out Powers to Simplify Things
Last in this post is this handy trick which builds on some of the chunks we identified for simplifying things in [Post 2: Commutative, Associative and Distributive Laws](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws)

E.g.

{% math %}1024 = (10^3 + 24){% endmath %}

## Terminology

> [base number](https://www.mathsisfun.com/definitions/base-numbers-.html) - the number that is going to be raised to a power (definition from mathsisfun.com)
> [exponent](https://www.mathsisfun.com/definitions/exponent.html) - the exponent of a number says how many times to use that number in multiplication.  Aka "index" and "power" (definition from mathsisfun.com)
