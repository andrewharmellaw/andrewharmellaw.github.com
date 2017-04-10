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
This problem is an invitation to think more deeply about what we saw earlier in Problem 205, but now with regards to the possibility that either $m$ or $n$, or both of them, might be negative rather than positive as we had previously assumed.

Let's remind ourselves a little what happens when something is raised to a negative power.  We were introduced to this back in [Chunk 5 - Powers: Positive and Negative](https://andrewharmellaw.github.io/2016/12/10/gelfands-algebra-chunk-5-powers).  The key bit is that $a^{-n} = \frac{1}{a^n}$.

With this in mind, we can start to follow the hint that Gelfand gives us.  We assumed in Problem 205 that $m$ and $n$ were positive. But they could have been negative.  In fact, this gives us three more options to consider, giving us four in total:

 1. both $m$ and $n$ are positive
 1. $m$ is negative and $n$ is positive
 1. $m$ is positive and $n$ is negative
 1. both $m$ and $n$ are negative

We've already solved the first one when we worked on Problem 205. We can work through each of the remaining three in turn.  In fact we need to, in order to have covered all our bases. 

Following the starting point of [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions)'s solution to this, it's nice to jump in at the following point, just after we dropped the $q$ and re-jig from there.

$$3^{m + n} = 2^m \cdot 5^n$$

### Option 2 - when $m$ is negative
All this means that when considering option 2, the starting point for us becomes

$$3^{(-m) + n} = 2^{-m} \cdot 5^n$$

Which we can split apart a little as follows

$$3^{-m} \cdot 3^n = 2^{-m} \cdot 5^n$$

And then rearrange

$$\frac{3^n}{3^m} = \frac{5^n}{2^m}$$

$$\rightarrow 3^n \cdot 2^m = 3^m \cdot 5^n$$

Previously, the left-hand side (now $3^n \cdot 2^m$) was always an odd number. What about now? 

 * If $m = 0$ then the second element ($2^m$) is equal to $1$ and the left-hand side will always be odd, no matter what the value of $n$ (as an odd number times another odd number is always an odd number)
 * But if $m > 0$ then the right hand side will always be even (as an even number times an odd one is always an even number) 

What can we say about the right-hand side (now $3^m \cdot 5^n$)?

 * it will _always_ be odd, no matter what the value of $m$ or $n$.

So to complete this section, we need to work things through when $m = 0$ which looks like our only hope for the equality holding. 

$$3^{(-m) + n} = 2^{-m} \cdot 5^n$$

$$\rightarrow 3^{(0) + n} = 2^0 \cdot 5^n$$

$$\rightarrow 3^n = 1 \cdot 5^n$$

$$\rightarrow 3^n = 1 \cdot 5^n$$

$$\rightarrow 3^n = 5^n$$

Argh. No dice.  (Folks with memories better than mine will have realised that the above working very quickly aligned with the working for Option 1. Go back and check it if you like. (It might help embed things even more solidly.

To be nice and clear, this means we can't have these terms being in the same progression if $m$ is negative and $n$ is positive.

However, we still have other options to explore. 

Onward!

### Option 3 - when $n$ is negative

Next up is option 3, where the starting point is now

$$3^{m + (-n)} = (2^{m}) \cdot (5^-n)$$

Which we can again split apart as follows

$$3^{m} \cdot 3^{-n} = 2^m \cdot 5^{-n}$$

And then rearrange

$$\frac{3^m}{3^n} = \frac{2^m}{5^n}$$

$$\rightarrow 3^n \cdot 2^m = 3^m \cdot 5^n$$

Now we need to kick in with the logic again.  We can shortcut matters too if we take a step back.  

When we were working through option 2, at this point we had

$$\rightarrow 3^n \cdot 2^m = 3^m \cdot 5^n$$

_which is exactly what we have now._

And so we can draw a similar conclusion - we will never be able to have a progression containing these terms, when $n$ is negative and $m$ is positive.

One more to tackle. Ready?

### Option 4 - when both $m$ and $n$ are negative

Another option, another starting point. This time its

$$3^{(-m) + (-n)} = 2^{-m} \cdot 5^{-n}$$

Which we can again split apart as follows

$$3^{-m} \cdot 3^{-n} = 2^{-m} \cdot 5^{-n}$$

And then rearrange

$$\frac{1}{3^m} \cdot \frac{1}{3^n} = \frac{1}{2^m} \cdot \frac{1}{5^n}$$

We're now into a bit of uncharted territory so lets put our logic hats back on again. Left-hand side first. Let's begin with some statements of fact:

 * if $m = n = 0$ then this side will equal $1$
 * if either $m$ or $n$ is greater than $1$, then this side will be a fraction
 * and this fraction will always be odd ($3$ to the power of anything, even $0$, is always an odd number; so both fractions on the left will always be odd too, and an odd fraction times an odd fraction gives another odd fraction)

Now lets move to the right-hand side. Some more statements of fact:

 * if $m = n = 0$ then this side will also equal $1$
 * if either $m$ or $n$ is greater than $0$, this side will also always be a fraction
 * If $m = 0$ then $\frac{1}{2^m} = 1$ and so this side will equal $\frac{1}{5^n}$ which is always odd
 * If $n = 0$ then $\frac{1}{5^n} = 1$ and so this side will equal $\frac{1}{2^m}$ which is always even

There's more in there to think about, but if we pull back, there are only two situations where things might work out for us: 

 * when $m = 0$
 * when $m = n = 0$

So to complete this section, we need to work these through. We'll start with when $m = 0$. 

$$3^{(-m) + (-n)} = 2^{-m} \cdot 5^{-n}$$

$$\rightarrow 3^{(0) + (-n)} = 2^0 \cdot 5^{-n}$$

$$\rightarrow 3^{-n} = 1 \cdot 5^{-n}$$

$$\rightarrow \frac{1}{3^n} = \frac{1}{5^n}$$

Hmmm, what's the only way we can get this to work out?  If $n = 0$ too!

$$\frac{1}{3^0} = \frac{1}{5^0}$$

$$\rightarrow \frac{1}{1} = \frac{1}{1}$$

$$\rightarrow 1 = 1$$

Awesome!  So it looks like there is a situation when these numbers can exist in the same progression, when both $m$ and $n$ are equal to zero.

### Putting it back to the start
If you've been following [Durham](https://www.scribd.com/document/243387607/Gelfand-Algebra-Solutions)'s solution to this you'll have realised I've taken a different route, and also that I have a different result - he concludes that all options fail.  

In that case, lets work our only satisfactory solution, $m=-1, n=-1$ back into our starting point, where we had our terms expressed in terms of powers of $q$, and see what happens.

First up

$$3 = 2q^n$$

$$\rightarrow 3 = 2q^{-1}$$

$$\rightarrow 3 = \frac{2}{q^1}$$

$$\rightarrow q = 6$$

Lets confirm that we get the same value for $q$ when we take 

$$5 = 3q^m$$


### Can non-integers be even or odd?




### But this is different from Durham!
TBC

AIMING FOR (DURHAM): 
$$(2^{-m}) \cdot (3^n) = (3^{-m}) \cdot (5^n)$$


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
TBC - fractions


## Problem 207
Not so much a problem as a statement this one.  We're back at arithmetic progressions again and you're supposed to think about the difference as we have the first two terms.

In the case mentioned, we know we start with an integer, and then we have a second term which is also an integer.  That means the difference must also be an integer.  And if you add integers to integers, all you ever get are integers.
