---
layout: post
title: "Gelfand: Chunk 23 - Embedding Progressions"
description: ""
category: 
tags: [gelfand, arithmetic-progressions, geometric-progressions, tricks, odd, even]
---
{% include JB/setup %}

As I mentioned at the close of [the previous chunk](https://andrewharmellaw.github.io/2017/03/23/gelfands-algebra-chunk-22-geometric-progression-sums), this next part (Section 43) is one of Gelfand's now-familiar "moar problems to embed and highlight subtleties and techniques from before" sections.

I used to think them a bit boring.  I now realise that it's in these that a good deal of the gold is hidden.  

Consequently I'm going to go slowly.  Perhaps too slowly for some, but just to make sure we squeezed out all the goodness and siphoned it up into our brainboxes, ready for later deployment.

## Problem 204

This is a nice problem to start with.  Let's begin to tackle it as we always do by taking our inputs and laying them out nicely ready for deployment in solutioning.

We know that we can represent a value in an _arithmetic_ progression (key point, we're going back in time a bit here) as the product of a starting value (which we'll keep calling $a$), the difference between terms (which we'll keep calling $d$), and numbers representing the position of the terms in the progression (which we'll call $n_x, n_y$ and $n_z$).

What is more, if two or more terms are to be in the same progression, then they will share the values of $a$ and $d$ - the starting value and difference respectively. (A small aside: it's not actually this simple, progressions can have different $a$ values, but still overlap in terms of terms [sic - sorry], but this simplified view works for us here.)

With that in mind, we can specify our fractions separately in terms of this before seeing if they hang together [sic]. 

Note I've arranged the fractions in increasing order of magnitude. This means our $d$ will be positive.  Things could just as easily go the other way, in which case $d$ would be negative.  This just keeps things simpler I've found.

$$\frac{1}{5} = a + (n_x - 1)d$$

$$\frac{1}{3} = a + (n_y - 1)d$$

$$\frac{1}{2} = a + (n_z - 1)d$$

How can we simplify these?  The easiest way might be to guess that the starting point, $a$, was zero.  That leaves us with 

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

We're able to rearrange our other starter expressions in the same way. I won't bore you with the working for them. Instead let's jump to laying them all out side by side as an equality:

$$d = \frac{1}{5(n_x - 1)} = \frac{1}{3(n_y - 1)} = \frac{1}{2(n_z - 1)}$$

Now, we know that in our case, $n_x$, $n_y$ and $n_z$ are different values because they represent different terms in our progression.  The question is, can we find values for them that mean everything still stays valid?

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
We'll keep going with our all-the-gory-details working for this next problem.  Ignoring how Gelfand suggests we solve it for a second, let's take a similarly slow and steady process like we did before and see where that gets us.

First up we know again that there must be a starting point $a$ (because there always is).  There must also a ratio $q$ and a number representing the position of the term in the progression (which we'll again call $n_x, n_y$ and $n_z$).

Yet again, if things are to be in the same _geometric_ progression (note we're not in arithmetic land any more) then $a$ and $q$ _must_ be the same in each case.

Now we can specify our terms in the form of expressions:

$$2 = a + q^{n_x - 1}$$

$$3 = a + q^{n_y - 1}$$

$$5 = a + q^{n_z - 1}$$

Let's now try and isolate $q$, just like we previously isolated $d$.

$$2 = a + q^{n_x - 1}$$

$$\rightarrow q^{n_x - 1} = 2 - a$$

Hmmm, this is about to get all kinds of complicated trying to drag $q$ out into the open on this one.  

Is there another way?  

There is, and Gelfand wanted to show it to us but we prevuously ignored him. Let's admit defeat and see what he has to say. 

Rather than specifying our terms in terms [sic] of the progression we know nothing about, he's going to help us specify them in terms of each other.

This sounds like a bit of a leap, but it's far simpler once you see it.  

Firstly however, why can we do this?  The answer is that we already know they are related simply because of how progressions work - each subsequent term derives from the one before it. (N.b. they are part of the same progression, the question relies upon it.)

Before we get to it, we need one more piece of info - the knowledge of the order in which these terms appear in our as-yet-unknown progression.  It's a safe bet to start with their being in ascending order, but remember Section 42, [back in Chunk 21](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-21-geometric-progressions)? There we found that sometimes in geometric progressions we can flip and flop from positive to negative and back to positive again.  Don't worry about that for now - Gelfand will come back to it later. Luckily we know that our terms are all positive, and so we are pretty safe in dealing with them in the order $2 \rightarrow 3 \rightarrow 5$.

With this in mind, we can now specifiy them in terms of each other.  First up is $3$, specified in terms of $2$

$$3 = 2q^n$$

Just to be super-clear, and remembering that all progressions accumulate as you go, you can specify later terms by taking prior ones, and multiplying them by powers of q.  We don't know what power, so that's why Gelfand has used $n$ here.

With that done we now specify $5$ in terms of $3$

$$5 = 3q^m$$

The pattern is the same - still a prior term multiplied by a certain power of the same ratio $1$, but because we don't know how many terms are between $3$ and $5$ we have to have a potentially different power of $q$ from the one we used before. We've got $m$ to represent this.

With this, evidently simpler pair of expressions we can start putting them into a form where we can compare them.  First, Gelfand begins to isolate the $q$s.

$$q^n = \frac{3}{2}$$

and

$$q^m = \frac{5}{3}$$

And then pulling them together by raising both sides of the former equality to the power of the latter, and vice versa.

$$q^{mn} = (\frac{3}{2})^m$$

and 

$$q^{mn} = (\frac{5}{3})^n$$

Allows us to then combine as

$$(\frac{3}{2})^m = q^{mn} = (\frac{5}{3})^n$$

And now we can drop $q$ altogether, because if we can prove that this new merged equality is valid, then we've proven the three starting terms can exist in a single geometric progression.

$$\frac{3^m}{2^m} = \frac{5^n}{3^n}$$

Simplifying again we can remove our fractions by multiplying the numerator of each by the denominator of the other

$$3^m \cdot 3^n = 2^m \cdot 5^n$$

$$\rightarrow 3^{m + n} = 2^m \cdot 5^n$$

Now Gelfand gets clever, showing us a new trick, and one of the real points of this problem I'll wager.  

Clearly we can go no further trying to figure out $m$ and $n$.  Nor would it profit us to do so.  But we could see what statements we can make about what we do have in our hands.  

First up, Gelfand spots that the left hand side ($3^{m + n}$) _must_ be odd.  Seems like a leap? Try it out.  This is because _an odd number, no matter what power it is raised to, is always odd_.

That's great info.  Now there are a few more moving parts on the right hand side ($2^m \cdot 5^n$).  What can we say about that?

We know from what we just saw, that $5^n$, no matter what $n$ is, will also always be odd.  That leaves the $2^m$.  We should now see that _even numbers, when raised to any power will always be even, except when raised to the power of $0$_.  E.g. in our case with $2^m$  

$$2^0 = 1$$

$$2^1 = 2$$

$$2^2 = 4$$

$$2^3 = 8$$

Etc.  

The final piece of the puzzle are the rules for multiplication of odd and even numbers. Let's list them as it's easier

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
We knew above that our equality was actually an inequality because we remembered (prodded by Gelfand I'll admit) that there are some fundamental truisms about odd and even numbers and what you get when you multiply them.  There are probably others which are equally useful but I've not had to use them in a problem yet: 

 * dividing by zero giving "undefined" is one likely candidate,  
 * anything multiplied by zero being zero being another, 
 * and multiplication of positive and negative numbers being the last that I can think of.

## Revisiting Problem 204
It was super-useful to define the terms in terms [still sic] of each other in Problem 205.  Could we have made things simpler for ourselves by taking a similar approach in Problem 204?

$$\frac{1}{3} = \frac{1}{5} + (n \cdot x)$$

$$\frac{1}{2} = \frac{1}{3} + (m \cdot x)$$

Then we can isolate the $x$s. The first equality is up first

$$\frac{1}{3} - \frac{1}{5} = n \cdot x$$

$$\rightarrow \frac{(\frac{1}{3} - \frac{1}{5})}{n} = x$$

Then the second equality

$$\frac{1}{2} - \frac{1}{3} = m \cdot x$$

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

$$\rightarrow \frac{n \cdot \frac{5}{30}}{m \cdot n} - \frac{m \cdot \frac{4}{30}}{n \cdot m} = 0$$

$$\rightarrow \frac{n \cdot \frac{5}{30} - m \cdot \frac{4}{30}}{m \cdot n} = 0$$

$$\rightarrow m \cdot \frac{5}{30} - n \cdot \frac{4}{30} = 0$$

$$\rightarrow m = \frac{4}{30} $$

$$\rightarrow n = \frac{5}{30}$$

A great deal of this was unnecassary, but it felt reassuring to work it all through.  And to answer my own question, "yes, I think this way was easier."

## Problem 206
I got tied up on this problem for ages.  But it helped be embed (hence the title of this chunk) progressions far more deeply as a consequence.

In this problem, Gelfand is asking us to try and think about things differently.  We know (because he has shown us) that the terms $2, 3$ and $5$ can't appear in a geometric progression _in the order presented_ because he showed us it was so.  But what about if they occurred in another order? What, asks Gelfand, should we do in these circumstances?

It makes sense to look back at the previous two posts to see what is even possible in this regard.  We see our first one in [Chunk 21 - Geometric Progressions](https://andrewharmellaw.github.io/2017/03/21/gelfands-algebra-chunk-21-geometric-progressions) section "The 'Two Possibilities' Subtlety".  Here we see that a negative quotient $q$ can have our terms flipping from positive to negative.

There is another alternative in the next section of the same post - "The 'is that Really a Geometric Progression' Subtlety".  In this one we can see that after an initial value which could be anything, the rest of the progression is made up of zeros.

And the subsequent section contains our last possibility - "Flip it and Reverse it".  It gives us the possibility that our progressions don't have an increasing quotient $q$, rather that it might have a decreasing one.

So which of these might change the game in our present $3, 4, 5$ situation?  Clearly the middle possibility, that the quotient is $0$, is out for us as we have three non-zero terms and this option allows us only one. If we were to tackle a progression of this kind it would be easy to spot. 

That them leaves the other two.

The first possibility indicates we _could_ have a negative quotient. We could still have a problem of this kind but sneakily stated only giving positive terms. Can this be happening here? The answer is "no". Progressions of this kind must also work when the quotient is positive, and we know that this doesn't work for us.

The last possibility is that our progression might be going in reverse because our powers ($m$ and $n$) might be negative.  (Remember $n^-2 = \frac{1}{n^2}$). However, being simply the mirror of the situation we investigated in Problem 205, it's existence does not negate the existence of the former. Therefore, if a progression is impossible in one direction, it is impossible in the other too.  

We can therefore conclude that there are no possibilities when this might be a geometric progression given these three numbers, and that after confirming that it is not a progression where the quotient is zero, our original approach sufficed to prove that the other two options were also impossible.

## Tricks Arising
### Removing fractions in equalities

Remember this leap? I'm not sure we've pulled it out explicitly before.  

$$\frac{3^n}{3^m} = \frac{5^n}{2^m}$$

$$\rightarrow 3^n \cdot 2^m = 3^m \cdot 5^n$$

Gelfand does it himself in his solution to Problem 205.  You simply taken the numerator of one side, and multiply it with the denominator of the other side. That gives you one simplification. Then you do the reverse fo the other side.

Brilliant.

### Think logically - that's Maths too!
We're slowly building up a mental set of rules - things which we know always happen, and you can set these against each other logically to reduce the number of options you're facing.

We saw this brilliantly in this problem.  I'm betting it'll come in handy again.

## Problem 207
Not so much a problem as a statement this one.  We're back at _arithmetic_ progressions again, and you're supposed to think about the difference as we have the first two terms.

In the case mentioned, we know we start with an integer, and then we have a second term which is also an integer.  That means the difference must also be an integer.  And if you add integers to integers, all you ever get are integers.

That means it is impossible to have an arithmetic progression where the first two terms are integers, but all subsequent ones are not.

## Problem 208
This is a similar problem to 207, but we're now talking about _geometric_ progressions.  We saw in our discussion for Problem 206 (above) that geometric progressions can go backwards, and that when the powers of the quotient flip from positive to negative then we enter the realm of fractions with a numerator of $1$, and stay there.  And what is such a fraction not? An integer, that's what.

## Problem 209
We've flipped back to arithmetic progressions again.  Remember in this type, the difference must always be the same, and if the second term is less than the first, but also less than the third, then this doesn't hold true, because as Gelfand points out, the difference, which might be of the same magnitude, would be positive and negative at the same time, which is verboten.

## Problem 210
Geometric once again.  Now it is handy to recall Problem 205 again.  Geometric progressions _can_ flip-flop, from positive to negative, when the quotient is negative.  That means it is possible to have a geometric progression where the second term is less than the first term, and also less than the third term.

## Problem 211
Now we're back on our own again. Well, almost.  Gelfand does give us a hint, but let's see what we can make of things before we take him up on it.

First lets lay out what we know:

 * we're talking about arithmetic progressions, which means all our terms can be calculated by the formula $x = a + (n - 1) \cdot d$
 * we need to have "exactly one integer term" which means all terms must be the same

Following this logic through, that means that to achieve this, then the difference between terms must be zero ($d = 0$). 

Does that tell us what our starting point needs to be?  Nope, we can pick anything we want (i.e. $a$ can be anything).

Let's see how that plays out:

$$n = 1 \rightarrow a + (1 - 1) \cdot 0 = a + 0 = a$$

$$n = 2 \rightarrow a + (2 - 1) \cdot 0 = a + 0 = a$$

$$n = 3 \rightarrow a + (3 - 1) \cdot 0 = a + 0 = a$$

Etc. Etc. ad infinitum.

It seems that you _can_ have an arithmetic progression which contains exactly one integer term.  

But there is a problem with this.  Have we misunderstood the question?  Does Gelfand _really_ mean that we want to find an arithmetic progression which has one integer term, and all other terms are non-integers?  

If that is the case, then it's time to take him up on his offer of the hint.

Again, let's start by laying out what we know:

 * we're still talking about arithmetic progressions, which means all our terms can be calculated by the formula $x = a + (n - 1) \cdot d$
 * the hint tells us that we're starting at zero, which means $a = 0$. This is our single integer
 * and it is also hinted that we use a difference, $d$ of $\sqrt{2}$
 
Given all this, then the $n$th term will be $0 + (n - 1) \cdot \sqrt{2}$. It is essential that this be a non-integer when $n > 1$  (i.e. all subsequent terms) if we are to find the progression Gelfand is looking for.

We can simplify this, stating that all terms other than the first (i.e. where $n > 1$) will be in the form $b \cdot \sqrt{2}$. 

It is in this that we need to find our solution, well, actually the reason that _this is our solution_.  How do we know that $b \cdot \sqrt{2}$ will never give us an integer?

We can approach this from the reverse angle.  If, instead of $d = \sqrt{2}$ our $d$ was an integer, clearly our progression would contain lots more integers, which is a failure.  If on the other hand, our $d$ was a rational number (a number that can be written as a ration, i.e. as a fraction) then eventually, as we moved through the progression, we would get to a multiple of that fraction which was a whole number, an integer, and we woulf fail again.

What we need then is a number which no matter how many times you multiply it, it never becomes an integer.  For that we need an _irrational_ number.  The simplest one of these that we know of is $\sqrt{2}$.  That's why Gelfand picked it.

This all seems a little mind-bending. We'll get around to Irrational Numbers in a later chunk so please trust me and don't worry about it too much for now.

## Problem 212
Given what we've seen, it's now quite clear why Gelfand answers this problem with a single word - "no".  There is no $d$ which we can use in an arithmetical progression which will give us one more integer after the starting figure $a$, and then never give us one again.

## Problem 213
This one is a simple geometric progression, but with a little bit of fiddling after the fact. 

Remember this from ["Chunk 21 - Geometric Progressions"]()?

$$2^1 = 2$$

$$2^2 = 4$$

$$2^3 = 8$$

Which came from 

$$a \cdot q^{n-1}$$

Here, our numbers are just one less than that.  I.e.

$$2^1 - 1 = 1$$

$$2^2 - 1 = 3$$

$$2^3 - 1 = 7$$

$$2^4 - 1 = 15$$

Which means the $100$th term will be $2^{100} - 1$.

## Problem 214
I'll come back to this once I get to "Quadratic Equations" which Gelfand points out in his Hint.

## Problem 215
The Fibbonacci sequence (which will be _incredibly_ familiar to anyone who does any form of agile software development) is a geometric sequence which follows the pattern identified in Problem 214.

So what are we being asked to obtain in this problem?  Gelfand wants us to find out what $A$, and $B$ are.

The simplest way to do this is the approach taken by Durham (but here using my characteristic, every-microscopic-step-shown style).  We know that this $A$ / $B$ formula helps you work out any given term in the Fibbonacci sequence if you know it's position (i.e. it's $n$). 

We also know some of the answers already, and so given that we can plug our $n$, and our result into this formula for two scenarios and then cross-reference the results. 

For us, that means calculating using the simplest two knowns which are the first and second terms: $1$ (when $n = 1$) and $1$ (when $n = 2$).  

Here's our starting formula. We'll begin by using it with the first term ($1$ with the corresponding $n$ of $1$):

$$A(\frac{1 + \sqrt{5}{2}) + B(1 - \sqrt{5}{2})$$

Let's rearrange for $A$ first.  We begin by plugging in what we know (a result of $1$ and an $n$ of $1$)

$$1 = A(\frac{1 + \sqrt{5}}{2})^1 + B(\frac{1 - \sqrt{5}}{2})^1$$

And then we can remove our powers of 1

$$\rightarrow 1 = A(\frac{1 + \sqrt{5}}{2}) + B(\frac{1 - \sqrt{5}}{2})$$

And them remove the parentheses

$$\rightarrow 1 = A \cdot \frac{1}{2} + A \cdot \frac{\sqrt{5}}{2} + B \cdot \frac{1}{2} - B \cdot \frac {\sqrt{5}}{2}$$

Then multiply everything by $2$

$$\rightarrow 2 = A + A \cdot \sqrt{5} + B - B \cdot \sqrt{5}$$

Then rearrange

$$\rightarrow 2 = A + B + (A - B) \cdot \sqrt{5}$$

Now let's rearrange for $B$.  We begin again by just plugging in what we know (this time a result of $1$ but an $n$ of $2$)

$$1 = A(\frac{1 + \sqrt{5}}{2})^2 + B(\frac{1 - \sqrt{5}}{2})^2$$

And then we can apply our powers of 2

$$\rightarrow 1 = A(\frac{1 + 2 \cdot \sqrt{5} + 5}{4}) + B(\frac{1 - 2 \cdot \sqrt{5} + 5}{4})$$

And them remove the parentheses

$$\rightarrow 1 = A \cdot \frac{1}{4} + A \cdot \frac{\sqrt{5}}{4} + A \cdot \frac{5}{4} + B \cdot \frac{1}{4} - B \cdot \frac {\sqrt{5}}{4} + B \cdot \frac{5}{4}$$

Then multiply everything by $4$

$$\rightarrow 4 = 6 \cdot (A + B) + (A - B)  \cdot 2 \cdot \sqrt{5}$$

Now we have these two pieces we can try and put them together.  The first equation is equal to $2$, but the second is equal to $4$, so let's double the first equation

$$4 = 2 \cdot (A + B) + 2 \cdot (A - B) \cdot \sqrt{5}$$

Now we can put both our equations together

$$2 \cdot (A + B) + 2 \cdot (A - B) \cdot \sqrt{5} = 6 \cdot (A + B) + (A - B)  \cdot 2 \cdot \sqrt{5}$$

If we then simplify by subtracting $2 \cdot (A - B) \cdot \sqrt{5}$ from both sides we get this

$$2 \cdot (A + B) = 6 \cdot (A + B)$$

$$\rightarrow 0 = 4 \cdot (A + B)$$

$$\rightarrow A + B = 0$$

$$\rightarrow A = -B$$

Phew! That's quite a simplification.  Now that we know what $A$ and $B$ are in terms of each other, we can go back to the first of our rearranged equalities and obtain first $B$, and then from that $A$.

Taking 

$$ 2 = A + B + (A - B) \cdot \sqrt{5}$$

and swapping each $A$ for $-B$ we get

$$ 2 = (-B + B) + (-B-B) \cdot \sqrt{5} = -2B \cdot \sqrt{5} $$

$$ \rightarrow B = \frac{-1}{\sqrt{5}} $$

And from there getting $A$

$$ \rightarrow A = -B = \frac{1}{\sqrt{5}} $$

We could equally have done $A$ first and from there obtained $B$, but I followed Durham to keep everything predictable.

## Another (non)-Conclusion
Phew! That was a lot.  You're probably reeling from the shock of it all.  I'd suggest re-reading all this again, perhaps working through some other options of th last problem, and then taking a break.

See you in the next chunk.
