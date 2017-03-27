---
layout: post
title: "Gelfand: Chunk 23 - Embedding Progressions"
description: ""
category: 
tags: [gelfand, arithmetic-progressions, geometric-progressions, tricks, odd, even]
---
{% include JB/setup %}

As mentioned at the close of the previous chunk, this next part (Section 43) is one of Gelfand's now-familiar "lots of problems to embed and highlight subtleties and techniques" sections.

I used to think them a bit boring.  I now realise that its in these that perhaps most of the gold is hidden.  We're going to go slowly.  Perhaps too slowly for some, but just to make sure we squeezed out all the goodness and siphoned it up into our brainboxes, ready for later deployment.

##Problem 204
This is a nice problem to start with.  Lets begin to tackle it as we always do by taking our inputs and laying them out nicely ready for deployment in solutioning.

We know that we can represent a value in an _arithmetic_ progression (key point, we're going back in time a bit here) as the product of a starting value (which we'll keep calling $a$), the difference between terms (which we'll keep calling $d$), and a number representing the position of the term in the progression (which we'll call $n_x, n_y and n_z$).

What is more, if two or more terms are to be in the same progression, then they will share the values of $a$ and $d$ - the starting value and difference respectively.

With that in mind, then we can specify our fractions in terms of this separately before seeing if they hang together together [sic]. (Note I've arranged the fractions in increasig order of magnitude. This means our $d$ will be positive.  it could just as easily go the other way, in which case $d$ would be negative.  This just keeps things simpler I found.)

$$\frac{1}{5} = a + (n_x - 1)d$$

$$\frac{1}{3} = a + (n_y - 1)d$$

$$\frac{1}{2} = a + (n_z - 1)d$$

How can we smplify these?  The easiest way might be to guess that the starting point, $a$, was zero.  That leaves us with 

$$\frac{1}{5} = (n_x - 1)d$$

$$\frac{1}{3} = (n_y - 1)d$$

$$\frac{1}{2} = (n_z - 1)d$$

Now how do we shuffle these so that $d$ is isolated in each?

$$ \frac{1}{5} = (n_x - 1)d $$

$$\rightarrow d = \frac{\frac{1}{5}}{(n_x - 1)}$$

$$\rightarrow d = \frac{1}{5} \cdot \frac{1}{(n_x - 1)}$$

$$\rightarrow d = \frac{1}{5(n_x - 1)}$$

Nice. (If you need a reminder about the rules for fiddling with fractions, take a peek back at [Chunk 4 - Fractions (Urgh)](https://andrewharmellaw.github.io/2016/11/30/gelfands-algebra-chunk-4-fractions-urgh) and remind yourself.

We'd be able to rearrange our other starter expressions in the same way. I won't bore you with the working for that, and instead lay them all out side by side as an equality:

$$d = \frac{1}{5(n_x - 1)} = \frac{1}{3(n_y - 1)} = \frac{1}{2(n_z - 1)}$$

Now, we know $n_x$, $n_y$ and $n_z$ are different values.  The question is, can we find values for them that mean everything still stays valid.

It's at this point that I'm happy to make a mental leap and simplify things.  I think the following is self-evident

$$\rightarrow = 5(n_x - 1) = 3(n_y - 1) = 2(n_z - 1)$$

And from this point, we can take a trick we know from finding common denominators and work out that $d$ is $30$ (or you can take this from Gelfand's tip, but I'm trying to be good and get there without it) and from there work out $n_x$, $n_y$ and $n_z$.

$$5 \times ((3 \times 2 + 1) - 1 ) = 30$$

$$ \rightarrow n_x = (3 \times 2) + 1 = 7 $$

$$3 \times ((5 \times 2 + 1) - 1 ) = 30$$

$$ \rightarrow n_y = (5 \times 2) + 1 = 11 $$

$$2 \times ((5 \times 3 + 1) - 1 ) = 30$$

$$ \rightarrow n_z = (5 \times 3) + 1 = 16 $$

We've actually overshot here. The question was only to find out if the three terms could exist on the same arithmetic progression.  Clearly they do, at points $7$, $11$ and $13$ where the difference is $\frac{1}{30}$.

### Was There a Shortcut?
Hell yes.  [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions) spotted the common-denominator trick based on the fact that $30 = 2 \times 3 \times 5$ before any fiddling around.  I'm guessing that kind of insight comes with practice and confidence.  I'm personally happy that I worked it all the way through.

## Problem 205
We'll now keep going with our all-the-gory-details working for this problem.  Ignoring how Gelfand suggests we solve it for a second, lets take a similarly slow and steady process as we did before.

First up we know again that there must be a starting point $a$ (because there always is).  There must also a ratio $q$ and a number representing the position of the term in the progression (which we'll again call $n_x, n_y and n_z$).

Yet again, if things are to be in the same _geometric_ progression (note we're not in arithmetic land any more) then $a$ and $q$ _must_ be the same.

Now we can specify our terms in the form of expressions:

$$2 = a + q^{n_x - 1}$$

$$3 = a + q^{n_y - 1}$$

$$5 = a + q^{n_z - 1}$$

Let's try and isolate $q$, just like we previously isolated $d$.

$$2 = a + q^{n_x - 1}$$

$$\rightarrow q^{n_x - 1} = 2 - a$$

Hmmm, this is about to get all kinds of complicated trying to drag $q$ out into the open on this one.  Is there another way?  There is, and Gelfand wants to show it to us.  Rather than specifying our terms in terms [sic] of the progression we know nothing about, he's going to help us specify them in terms of each other.

This sounds like a bit of a leap, but it's far simpler once you see it.  but firstly, why can we do this?  The answer is that we already know they are related (if they are part of the same progression) simply because of how progressions work - each subsequent term derives from the one before it.

Before we get to it, we need one more piece of info - the knowledge of the order in which these terms appear in our as-yet-unknown progression.  It's a safe bet to start with their being in ascending order, but remember Section 42, [back in Chunk 21](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-21-geometric-progressions)? There we found that sometimes in geometric progressions we can flip and flop from positive to negative and back to positive again.  

Luckily we know that our terms are all positive, and so we are dealing with them in the order $2 \rightarrow 3 \rightarrow 5$.

With this in mind we can now specifiy them in terms of each other.  First up is $3$, specified in terms of $2$

$$3 = 2q^n$$

Just to be super-clear, and remembering that all progressions accumulate as you go, you can specify later terms by taking prior ones, and multiplying them by powers of q.  We don't know what power, so thats why Gelfand has used $n$ here.

Then its $5$ in terms of $3$

$$5 = 3q^m$$

The pattern is the same - still a prior term multiplied by a certain power of the same ratio $1$, but because we don't know how many terms are between $3$ and $5$ we have to have a potentially different power of $q$ from the one we used before. We've got $m$.

With this, possibly simpler pair of expressions, we can start putting them in a form where we can compare them.  First, Gelfand begins to isolate the $q$s.

$$q^n = \frac{3}{2}$$

and

$$q^m = \frac{5}{3}$$

And then pulling them together by raising both sides of the former equality to the power of the latter, and vice versa.

$$q^{mn} = (\frac{3}{2})^m$$

and 

$$q^{mn} = (\frac{5}{3})^n$$

So now we can combine

$$(\frac{3}{2})^m = q^{mn} = (\frac{5}{3})^n$$

And now we can drop $q$ altogether, because if we can prove that equality is valid, then we've proven the three starting terms can exist in a single geometric progression.

$$(\frac{3^m}{2^m}) = (\frac{5^n}{3^n})$$

And simplifying again we can remove our fractions by multiplying the numerator of each by the denominator of the other

$$3^m \cdot 3^n = 2^m \cdot 5^n$$

$$\rightarrow 3^{m + n} = 2^m \cdot 5^n$$

Now Gelfand gets clever, showing us a new trick, and the real point of this problem I'll wager.  

Clearly we can go no further trying to figure out $m$ and $n$.  Nor would it profit us to do so.  But we could see what we could say about what we have.  

First up, Gelfand spots that the left hand side must be odd.  Seems like a leap?Try it out.  _An odd number, no matter what power it is raised to, is always odd_.

That's great info.  Now there are a few more moving parts on the right hand side.  What can we say about that?

We know from what we just saw that $5^n$, no matter what $n$ is, will also always be odd.  That leaves the $2^m$.  We should now see that _even numbers, when raised to any power will always be even, except when raised to the power of $0$_.  E.g. in our case with $2^m$  

$$2^0 = 1$$

$$2^1 = 2$$

$$2^2 = 4$$

$$2^3 = 8$$

Etc.  

The final piece of the puzzle are the rules for multiplication of odd and even numbers. Lets list them as its easier

 * even numbers multiplied by even numbers always give even results
 * odd numbers multiplied by even numbers always give even results
 * odd numbers multiplied by odd numbers always give odd results

If we put all this together, we can see that the left side of our equality will _always_ be odd, but the right hand side can _only ever_ be odd when $m = 0$.