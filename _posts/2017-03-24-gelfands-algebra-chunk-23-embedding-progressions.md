---
layout: post
title: "Gelfand: Chunk 23 - Embedding Progressions"
description: ""
category: 
tags: [gelfand, arithmetic-progressions, geometric-progressions, tricks, odd, even]
---
{% include JB/setup %}

As mentioned at the close of [the previous chunk](https://andrewharmellaw.github.io/2017/03/23/gelfands-algebra-chunk-22-geometric-progression-sums), this next part (Section 43) is one of Gelfand's now-familiar "moar problems to embed and highlight subtleties and techniques from before" sections.

I used to think them a bit boring.  I now realise that its in these that most of the gold is hidden.  I'm going to go slowly.  Perhaps too slowly for some, but just to make sure we squeezed out all the goodness and siphoned it up into our brainboxes, ready for later deployment.

## Problem 204

This is a nice problem to start with.  Lets begin to tackle it as we always do by taking our inputs and laying them out nicely ready for deployment in solutioning.

We know that we can represent a value in an _arithmetic_ progression (key point, we're going back in time a bit here) as the product of a starting value (which we'll keep calling $a$), the difference between terms (which we'll keep calling $d$), and numbers representing the position of the terms in the progression (which we'll call $n_x, n_y$ and $n_z$).

What is more, if two or more terms are to be in the same progression, then they will share the values of $a$ and $d$ - the starting value and difference respectively. (A small aside: it's not actually this simple, progressions can have different $a$ values, but still overlap in terms of terms [sic - sorry], but this simplified view works for us here.)

With that in mind then, we can specify our fractions in terms of this separately before seeing if they hang together [sic]. (Note I've arranged the fractions in increasing order of magnitude. This means our $d$ will be positive.  Things could just as easily go the other way, in which case $d$ would be negative.  This just keeps things simpler I've found.)

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

Nice. 

(If you need a reminder about the rules for fiddling with fractions, take a peek back at [Chunk 4 - Fractions (Urgh)](https://andrewharmellaw.github.io/2016/11/30/gelfands-algebra-chunk-4-fractions-urgh).

We're able to rearrange our other starter expressions in the same way. I won't bore you with the working for that, and instead lay them all out side by side as an equality:

$$d = \frac{1}{5(n_x - 1)} = \frac{1}{3(n_y - 1)} = \frac{1}{2(n_z - 1)}$$

Now, we know that in our case, $n_x$, $n_y$ and $n_z$ are different values because they represent different terms in our progression.  The question is, can we find values for them that mean everything still stays valid.

It's at this point that I'm happy to make a mental leap and simplify things.  I think the following is self-evident

$$\rightarrow 5(n_x - 1) = 3(n_y - 1) = 2(n_z - 1)$$

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
We'll keep going with our all-the-gory-details working for this next problem.  Ignoring how Gelfand suggests we solve it for a second, lets take a similarly slow and steady process like we did before and see where that gets us.

First up we know again that there must be a starting point $a$ (because there always is).  There must also a ratio $q$ and a number representing the position of the term in the progression (which we'll again call $n_x, n_y and n_z$).

Yet again, if things are to be in the same _geometric_ progression (note we're not in arithmetic land any more) then $a$ and $q$ _must_ be the same.

Now we can specify our terms in the form of expressions:

$$2 = a + q^{n_x - 1}$$

$$3 = a + q^{n_y - 1}$$

$$5 = a + q^{n_z - 1}$$

Let's try and isolate $q$, just like we previously isolated $d$.

$$2 = a + q^{n_x - 1}$$

$$\rightarrow q^{n_x - 1} = 2 - a$$

Hmmm, this is about to get all kinds of complicated trying to drag $q$ out into the open on this one.  

Is there another way?  There is, and Gelfand wants to show it to us.  Rather than specifying our terms in terms [sic] of the progression we know nothing about, he's going to help us specify them in terms of each other.

This sounds like a bit of a leap, but it's far simpler once you see it.  

Firstly however, why can we do this?  The answer is that we already know they are related simply because of how progressions work - each subsequent term derives from the one before it. (N.b. they are part of the same progression, the question relies upon it.)

Before we get to it, we need one more piece of info - the knowledge of the order in which these terms appear in our as-yet-unknown progression.  It's a safe bet to start with their being in ascending order, but remember Section 42, [back in Chunk 21](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-21-geometric-progressions)? There we found that sometimes in geometric progressions we can flip and flop from positive to negative and back to positive again.  

Luckily we know that our terms are all positive, and so we are dealing with them in the order $2 \rightarrow 3 \rightarrow 5$.

With this in mind we can now specifiy them in terms of each other.  First up is $3$, specified in terms of $2$

$$3 = 2q^n$$

Just to be super-clear, and remembering that all progressions accumulate as you go, you can specify later terms by taking prior ones, and multiplying them by powers of q.  We don't know what power, so thats why Gelfand has used $n$ here.

Then its $5$ in terms of $3$

$$5 = 3q^m$$

The pattern is the same - still a prior term multiplied by a certain power of the same ratio $1$, but because we don't know how many terms are between $3$ and $5$ we have to have a potentially different power of $q$ from the one we used before. We've got $m$.

With this, evidently simpler pair of expressions we can start putting them in a form where we can compare them.  First, Gelfand begins to isolate the $q$s.

$$q^n = \frac{3}{2}$$

and

$$q^m = \frac{5}{3}$$

And then pulling them together by raising both sides of the former equality to the power of the latter, and vice versa.

$$q^{mn} = (\frac{3}{2})^m$$

and 

$$q^{mn} = (\frac{5}{3})^n$$

Allows us to then combine as

$$(\frac{3}{2})^m = q^{mn} = (\frac{5}{3})^n$$

And now we can drop $q$ altogether, because if we can prove that equality is valid, then we've proven the three starting terms can exist in a single geometric progression.

$$\frac{3^m}{2^m} = \frac{5^n}{3^n}$$

And simplifying again we can remove our fractions by multiplying the numerator of each by the denominator of the other

$$3^m \cdot 3^n = 2^m \cdot 5^n$$

$$\rightarrow 3^{m + n} = 2^m \cdot 5^n$$

Now Gelfand gets clever, showing us a new trick, and the real point of this problem I'll wager.  

Clearly we can go no further trying to figure out $m$ and $n$.  Nor would it profit us to do so.  But we could see what statements we can make about what we do have in our hands.  

First up, Gelfand spots that the left hand side ($3^{m + n}$) _must_ be odd.  Seems like a leap? Try it out.  This is because _an odd number, no matter what power it is raised to, is always odd_.

That's great info.  Now there are a few more moving parts on the right hand side ($2^m \cdot 5^n$).  What can we say about that?

We know from what we just saw, that $5^n$, no matter what $n$ is, will also always be odd.  That leaves the $2^m$.  We should now see that _even numbers, when raised to any power will always be even, except when raised to the power of $0$_.  E.g. in our case with $2^m$  

$$2^0 = 1$$

$$2^1 = 2$$

$$2^2 = 4$$

$$2^3 = 8$$

Etc.  

The final piece of the puzzle are the rules for multiplication of odd and even numbers. Lets list them as it's easier

 * even numbers multiplied by even numbers always give even results
 * odd numbers multiplied by even numbers always give even results
 * odd numbers multiplied by odd numbers always give odd results

If we put all this together, we can see that the left side of our equality will _always_ be odd, but the right hand side can _only ever_ be odd when $m = 0$.

So, following the trail of clues like Miss Marple, we next need to look at what does happen when $m = 0$.

$$3^{m + n} = 2^m \cdot 5^n$$

$$\rightarrow 3^{0 + n} = 2^0 \cdot 5^n$$

$$\rightarrow 3^n = 1 \cdot 5^n$$

$$\rightarrow 3^n = 5^n$$

Hmmm. That can't be right, which means we can't have these three terms being part of the same geometric progression.  Problem solved.

## Tricks Arising
### When Proving Equalities, Remember Fundamentals
We knew above that our equality was an inequality because we remembered (prodded by Gelfand I'll admit) that there are some fundamental truisms about odd and even numbers and what you get when you multiply them.  There are probably others which are equally useful but I've not had to use them in a problem yet: 

 * dividing by zero giving "undefined" is one likely candidate,  
 * anything multiplied by zero being zero being another, 
 * and multiplication of positive and negative numbers being the last that I can think of.

## Revisting Problem 204
It was super-useful to define the terms in terms [still sic] of each other in Problem 205.  Could we have made things simpler for ourselves by taking a similar approach in Problem 204?

$$\frac{1}{3} = \frac{1}{5} + (n \cdot x)$$

$$\frac{1}{2} = \frac{1}{3} + (m \cdot x)$$

Then we can isolate the $x$s. The first equality is up first

$$\frac{1}{3} - \frac{1}{5} = n \cdot x$$

$$\rightarrow \frac{(\frac{1}{3} - \frac{1}{5})}{n} = x$$

Then the second equality

$$\frac{1}{2} - \frac{1}{3} = (m \cdot x)$$

$$\rightarrow \frac{(\frac{1}{2} - \frac{1}{3})}{m} = x$$

Then combining

$$\rightarrow \frac{(\frac{1}{2} - \frac{1}{3})}{m} = x = \frac{(\frac{1}{3} - \frac{1}{5})}{n}$$

And dropping the $x$ altogether

$$\rightarrow \frac{(\frac{1}{2} - \frac{1}{3})}{m} = \frac{(\frac{1}{3} - \frac{1}{5})}{n}$$

Then it makes sense to make the denominators of all the top-fractions equal:

$$\rightarrow \frac{(\frac{15}{30} - \frac{10}{30})}{m} = \frac{(\frac{10}{30} - \frac{6}{30})}{n}$$

And do the simple sums

$$\rightarrow \frac{\frac{5}{30}}{m} = \frac{\frac{4}{30}}{n}$$

And finally get to $m$ and $n$.

$$\rightarrow \frac{\frac{5}{30}}{m} - \frac{\frac{4}{30}}{n} = 0$$

$$\rightarrow \frac{n \cdot (\frac{5}{30})}{m \cdot n} - \frac{m \cdot (\frac{4}{30})}{n \cdot m} = 0$$

$$\rightarrow \frac{n \cdot (\frac{5}{30}) - m \cdot (\frac{4}{30})}{m \cdot n} = 0$$

$$\rightarrow m \cdot (\frac{5}{30}) - n \cdot (\frac{4}{30}) = 0$$

$$\rightarrow m = \frac{4}{30} $$

$$\rightarrow n = \frac{5}{30}$$

A great deal of this was unnecassary, but it felt reassuring to work it all through.  And to answer my own question, "yes, I think this way was easier."

## Problem 206
I got tied up on this problem for ages.  It helped be embed (hence the title of this chunk) far more deeply as a consequence.

In this problem, Gelfand is asking us to try and think about things differently.  We know (because he has shown us) that the terms $2, 3$ and $5$ can't appear in a geometric progression _in the order presented_ because he showed us it was so.  But what about if they occurred in another order? What, asks Gelfand, should we do in these circumstances?

It makes sense to look back at the previous two posts to see what is even possible in this regard.  We see our first one in [Chunk 21 - Geometric Progressions](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-21-geometric-progressions) section "The 'Two Possibilities' Subtlety".  Here we see that a negative quotient $q$ can have our terms flipping from positive to negative.

There is another alternative in the next section of the same post - "The 'is that Really a Geometric Progression' Subtlety".  In this one we can see that after an initial value which could be anything, the rest of the progression is made up of zeros.

And the subsequent section contains our last possibility - "Flip it and Reverse it".  It gives us the possibility that our progressions don't have an increasing quotient $q$, rather that it might have a decreasing one.

So which of these might change the game in our present $3, 4, 5$ situation?  Clearly the middle possibility, that the quotient is $0$, is out for us as we have three non-zero terms and this option allows us only one. If we were to tackle a progression of this kind it would be easy to spot. 

That them leaves the other two.

The first possibility indicates we _could_ have a negative quotient. We could still have a problem of this kind but sneakily stated only giving positive terms. Can this be happening here? The answer is "no". Progressions of this kind must also work when the quotient is positive, and we know that this doesn't work for us.

The last possibility is that our progression might be going in reverse because our powers ($m$ and $n$) might be negative.  (Remember $n^-2 = \fracc{1}{n^2}$). However, being simply the mirror of the situation we investigated in Problem 205, it's existence does not negate the existence of the former. Therefore, if a progression is impossible in one direction, it is impossible in the other too.  

We can therefore conclude that there are no possibilities when this might be a geometric progression given these three numbers, and that after confirming that it is not a progression where the quotient is zero, our original approach sufficed to prove that the other two options were also impossible.

### How I went astray
I spent _ages_ trying to grok this problem.  For a long time I thought I'd found an error in Durham.  My mistake was in my starting logic.

I too had began at $3^{m + n} = 2^m \cdot 5^n$, and I had the same four options to tackle, but from there I'd explicitly changed this formula by, for example, taking $m$ and making it negative as follows:

$$3^{(-m) + n} = 2^{-m} \cdot 5^n$$ 

And then re-arranging from there before applying my logic.  

Why was this wrong?  To be honest I'm not entirely sure, but it didn't work

## Tricks Arising
### Removing fractions in equalities

Remember this leap? I'm not sure we've pulled it out explicitly before.  

$$\frac{3^n}{3^m} = \frac{5^n}{2^m}$$

$$\rightarrow 3^n \cdot 2^m = 3^m \cdot 5^n$$

Gelfand does it himself in his solution to Problem 205.  You simply taken the numerator of one side, and multiply it with the denominator of the other side. That gives you one simplification. Then you do the reverse fo the other side.

Brilliant.

### Think logically
We're slowly building up a mental set of rules - things which we know always happen, and you can set these against each other logically to reduce the number of options you're facing.

We saw this brilliantly in this problem.  I'm betting it'll come in handy again.

### More Subtleties Around Odd and Even
TBC - odd and even fractions


## Problem 207
Not so much a problem as a statement this one.  We're back at arithmetic progressions again and you're supposed to think about the difference as we have the first two terms.

In the case mentioned, we know we start with an integer, and then we have a second term which is also an integer.  That means the difference must also be an integer.  And if you add integers to integers, all you ever get are integers.
