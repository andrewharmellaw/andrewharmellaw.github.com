---
layout: post
title: "Gelfand: Chunk 2 - Commutative, Associative and Distributive Laws"
tags: [commutative-law, associative-law, distributive-law, gelfand, stewart-algebra-review, tricks]
comments: true
---
{% include JB/setup %}

## The _Assocative_ and _Commutative Laws_
{% newthought "These laws allow you to jiggle around" %} the numbers in your sums and multiplications, to make them easier to do in your head.{% sidenote 'sn-id-whatever' "and manipulate in other ways." %}

There are _Associative Laws_ for addition:

{% math %}(a + b) + c = a + (b + c){% endmath %}
    
and multiplication:

{% math %}(ab)c = a(bc){% endmath %}

The _Associative Laws_ are all about the order in which you do the individual two-element sums / multiplications in a bigger expression.

There are _Commutative Laws_ for addition:

{% math %}a + b = b + a{% endmath %}

and multiplication:

{% math %}ab = ba{% endmath %}

The _Commutative Laws_ are about the fact you can move the order of numbers around in an expression.

Combined, the _Associative_ and _Commutative Laws_ are the basis of most tricks you probably know without knowing for handling mental arithmetic.  More on them below.

Some handy mnemonics{% sidenote 'sn-id-whatever' "taken from [Onlinemathlearning.com](http://www.onlinemathlearning.com/pre-algebra-mnemonics.html)." %} to remember these two laws are as follows:

The _Associative Law_ is about association or _grouping_ - who you are paired with?

The _Commutative Law_ is about things being the same either way - like a _commute_ to and from work

## The _Distributive Law_
The _Distributive Law_ is a rule for removing parentheses:  

{% math %}c(a + b) = ca + cb {% endmath %}

From Gelfand (pp. 15): 

> "To multiply two sums you need to multiply each term of the first sum by each term in the second one and then add them all together."

Additionally (from the Stewart Calculus "[Review of Algebra](http://www.stewartcalculus.com/data/ESSENTIAL%20CALCULUS%20Early%20Transcendentals/upfiles/ess-reviewofalgebra.pdf)") it's worth nothing that putting {% m %}a = -1{% em %} into the _Distributive Law_ you get:

{% math %} -(b + c) = {% endmath %}

{% math %} = (-1)(b + c) = {% endmath %}

{% math %} = (-1)b + (-1)c {% endmath %}

and so

{% math %} -(b + c) = -b - c {% endmath %}

A handy mnemonic to remember this law is as follows: the _Distributive Law_ is about _distributing_ or "giving out" things outside some parentheses to the things inside them.{% sidenote 'sn-id-whatever' "Again this mnemonic is taken from [Onlinemathlearning.com](http://www.onlinemathlearning.com/pre-algebra-mnemonics.html)." %}

We will see a _lot more_ of the _Distributive Law_ over the next few Chunks (and thereafter too).{% sidenote 'sn-id-whatever' "Adding and removing parentheses seems to be the _raison d'etre_ for algebraists." %}

## Tricks Arising

### Simplifying Addition with the _Associative Law_

Example 1: when the pieces are already in place to simplify: 

{% math %}   1 + 357 + 17999 = {% endmath %}

{% math %} = 357 + (1 + 17999) = {% endmath %}

{% math %} = 357 + 18000 = {% endmath %}

{% math %} = 18357 {% endmath %}

Example 2: when you need to do some splitting in order to get the simple parts: 

{% math %}    357 + 17999 = {% endmath %}

{% math %} = (356 + 1) + 17999 = {% endmath %}

{% math %} =  356 + (1 + 17999) = {% endmath %}

{% math %} =  356 + 18000 = {% endmath %}

{% math %} =  18356 {% endmath %}

Remember, we saw in the [previous post](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals) how we can use the _Associative Law_ to make application of the _Standard Multiplcation Algorithm_ simpler, and to spot patterns. 

In all these cases we're looking to arrange things so we can (re-)state our problem in terms of groups of numbers which are simpler to add / multiply. This "simpler" form is usually one where there are lots of {% m %}0{% em %}'s which ultimately results in lots of simple column arithmetic, and therefore no carries, and therefore less to wrangle with in your working memory.{% sidenote 'sn-id-whatever' "And with less chance of errors." %}

### Simplifying Multiplication with the _Commutative Law_

Example 3: when the elements are already in place ready to be simplified: 

{% math %}37 \cdot 25 \cdot 4 = {% endmath %}

{% math %} = 37 \cdot 100 = {% endmath %}

{% math %} = 3700 {% endmath %}

Example 4: when you need to do some splitting in order to get to your simple elements: 

{% math %}   125 \cdot 37 \cdot 8 = {% endmath %}

{% math %} = 5 \cdot 25 \cdot 8 \cdot 37 = {% endmath %}

{% math %} = 5 \cdot 200 \cdot 37 = {% endmath %}

{% math %} = 1000 \cdot 37 = {% endmath %}

{% math %} = 37000 {% endmath %}

Again we're looking to arrange things so we can (re-)state our problem in terms of groups of numbers which are simpler to add  / multiply.

But can we take this trick of "re-arrangement" further and add even more to our kit bag?  The answer is "yes", and it's also our first encounter with [Carl Friedrich Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss), to many the mathematicians mathematician.

To see this, take a look at Problem 35 (pp. 14) in Gelfand.

### Remove Parentheses with the _Distributive Law_

Example 5: the _Distributive Law_ can be applied to remove parentheses in increasingly complex scenarios simply by: 

{% math %} (m+n)(a+b) = {% endmath %}

{% math %} = ma + mb + na + nb {% endmath %}

### Split a number into two numbers which sum / multiply to the same result if it's useful
e.g. 

{% math %} 0 = -5 + 5 {% endmath %}

{% math %} 125 = 5 \cdot 25 {% endmath %}

## Why U No Laws for Division?
{% newthought "Remember in the [previous post](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals)" %} where we said that "multiplication and division" were kind-of-but-not-really the same sides of a coin? Remember then that we had to trail the concepts of "Not Defined" and "Real" and "Rational" Numbers?  

Well now here is another fly in the ointment - why are there no equivalents of these three laws for division? Things are looking less and less simple aren't they?
