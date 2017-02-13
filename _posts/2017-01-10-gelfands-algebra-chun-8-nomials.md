---
layout: post
title: "Gelfand: Chunk 8 - 'Nomials."
description: "Mono-, Poly-, ..."
category: 
tags: [gelfand, tricks, monomials, polynomials, collecting-similar-terms, standard-form, porving-equality, proving-inequality, tricks]
---
{% include JB/setup %}

(This is the second attempt at this post after I lost the first in a git-user-error incident.  Hopefully it makes even more sense due the benefit of a re-visit.)

## Polynomials (and Monomials)
There seem to me to be (at least - remember this is Math, and things keep popping up) three types of benefits of highlighting Poly (and therefore Mono) mials.  These are 

 1. the convention around their reopresentation and resulting ease of use, - the so-called _"Standard Form"_ for polynomials and;
 2. the specific tricks and manipulations you can pull off with polynomials in this form to solve bigger problems, and;
 3. the fact you can draw them as lines.

I'm going to cover the first two in this post.  Gelfand (but not everyone) leaves the "Linear" element of algebra until later, and so will we.

## Representing 'Nomials
A polynomial is basically a subset of algebraic knowledge which defines a set of rules which your expression must comply with to be considered.  These rules are simple:

  * your expression can have letters (variables) and numbers
  * it can have addition and subtraction
  * and multiplication.

There is one subtlety. _Positive-integer powers are also allowed_ as they are just short-cuts to represent multiplication.  E.g.
 
$$a \cdot a \cdot a \cdot a = a^4$$

Monimials are a subset of polynomials.  The rules to qualify to be one are even more restrictive.

 *  your expression can have letters (variables) and numbers
 *  and multiplication.

There is a subtlety here too - you can have the minus symbol, but only if it represents a negative number or variable.  E.g. 

$$x - zy = x + (-1)zx$$

In the case of monomials, there is a further, purely aesthetic (which makes me happy) rule of thumb that you should collect similar terms.  Lets cover that next.

### Collecting Similar Terms
Collecting similar terms means you don't repeat a term unless it is necessary. For example

$$5 \cdot a \cdot 7 \cdot b \cdot a = 35a^2b$$

Note, you can only collect things which have the same letters _and_ same powers, and differing _only_ in their co-efficient.  However, if you remember the Commutative Law, $ab = ba$, then you can see that the _order_ of the variables is up for grabs

$$a^2 + 2ab + bc + ba + 2b^2 = a^2 + 3ab + bc + 2b^2$$

### The Explicit Relationship Between Mono- and Polynomials
I jumped ahead a little. Gelfand stops mid-way through all of this to point out that a polynomial is _made up of_ monomials.  That is to say, _a polynomial can be split up into a set of monomials which could be summed together to get back to the polynomial_.

$$(a + b)(a^3 + b^3) = aa^3 + ab^3 + ba^3 + bb^3 = a^4 + ab^3 + ba^3 + b^4$$

### Standard Form
There is one more thing we need to know, and that is about the Standard Form of polynomials which I mentioned at the top of the post.  Are we there yet?  Almost.  We just need to introduce two more micro-sub-conventions

 * no subtraction
 * everything has an _explicit_ co-efficient

Both are easy to remedy, as you can see 

$$12 - zx -13y + 12x - zx^2 - yx + yzx + y^2 =$$

$$= 12 + (-1)zx + (-13)y + 12x + (-1)zx^2 + (-1)yx + 1yzx + 1y^2$$

Which that under our belt, its a nice check-point to state explicitly everything you need to have in place to have a polynomial in the _Standard Form_:

 * it is the sum of monimials
 * where each monomial is the product of a number (the co-efficient) and of powers of different letters
 * and where all similar monomials are collected

## Tricks Arising (Pt. 1)
Now we have everything in Standard Form, we can get to the exciting parts - the tricks. (Or the frst part anyway, we also have a second set later.)

### Adding Two Polynomials in Standard Form
Simply add the co-efficients of similar terms. If the resulting co-efficient is zero, the corresponding term vanishes.

$$(1x + (-1)y) + (1y + (-2)x + 1z) = $$

$$= (1 + (-2))x + ((-1) + 1)y + 1z = $$

$$= (-1)x + 0y + 1z = $$

$$= (-1)x + 1z$$

In the above example (Gelfand, because I copied it right out of the book) doesn't take these micro-steps, but they're useful to see _explicitly_ what's happening and really grokk it so I put them in.

### Multiplying Two Polynomials in Standard Form
Simply multiply each term of the first polynomial by each term of the second polynomial.  When multiplying monomials, we add powers of each variable

$$(a^5b^7c) \cdot (a^3bd^4) =$$

$$= a^{5+3}b^{7+1}cd^4 =$$

$$= a^8b^8c^d4$$

Once this is done, we have to collect similar terms. For example,

$$(x - y)(x^2 + xy + y^2) =$$

$$ = 1x^3 + 1x^2y + 1xy^2 + (-1)yx^2 + (-1)xy^2 + (-1)y^3 =$$

$$ = x^3 + (-1)y^3$$

Nice.

Note, we _have_ been pedantic here.  Gelfand takes a short-cut which he 'fesses up to.  From here on in we're going to do the same.  It turns out that to reduce the visual noise, once you've proven you know how to have no subtraction and always have an explicit co-efficient, youre allowed to drop them and still be admitted into Math-club.  #winning.

## Learning Checkpoint
If it feels like you've been unwittingly applying much of this all along but without knowing the names of what you were doing, congratulations, you have been.  All Gelfand is doing here is making explicit a bunch of conventions which allow him to then make explicit some tricks which he builds on from here on in.  

## Awesome. Now What?  Equality's What.
Now we have this, it's time to make something else super-explicit; Equality.  This is labelled as "a digression" by Gelfand, but I found it helped me a lot at this point in my journey and beyond.  Thats why I'm going into it a bit here.

Equality (and inequality) is at the core of loads of stuff we do in algebra.  Gelfand (and I will follow him) makes some statements which he just asks you to follow.  These statements are around the two ways to prove of equality of polynomials.

 1. by being able to transform one form into another using only the algebraic rules (the ones we've been looking at in this and previous posts)
 2. by giving specific numerical values to the variables and seeing that the results are the same from both forms _in all cases_ (remember, a variable is _variable_ - it can have many values)

First thing to point out (but not prove - neither does Gelfand, perhaps that's a post for the future) is that he states these two are equivalent.  If two polynomials are equal by one definition, then they are equal by the other.

But there are preferred versions for different tasks - _when proving equality, the first option is your go-to angle of attack_, as it's easier to convince people of your correctness.  This is because by using variables you are covering _all possibilities_.  With the second version you might not be and you need to know that all possibilities render equality. (Unless you work things out with _all_ possible options for _all_ variables - something that looks like a lot of work.)

But, _when proving inequality then the second should be your helper_.  That is because what made the second version bad above, makes it ideal now.  In order to prove inequality, all you need is one example where the results are _the same_.  Just one.  Brilliant.

Lets try some exercises (the ones from Gelfand - Problems 91 and 92)

### Gelfand Problem 91 - Proving an Inequality
We have to prove that 

$$(x - 1)(x - 2)(x - 3)(x - 4) \ne (x + 1)(x + 2)(x + 3)(x + 4)$$

Gelfand requests that we solve it "without computation".  This means, we have to do it in our head.  A quick glance tells you that we are supposed to spot a trick here because to remove the parentheses in our heads would be a hefty task.  So what else do we know which might short-circuit everything?  The one he's hoping we'll settle upon (and remember, all you need is to prove an inequality with one value of x) is that anything multiplied by zero is zero.  All we need to get to in that case is a zero result in one of the parens and then no matter what the values of all other parens calculations (i.e. $(x - 2)$ the result for the side will _always_ be zero.

So what does $x$ have to equal to get a zero on the left hand side?  $1$ is a easy one: 

$$(1 - 1)(x - 2)(x - 3)(x - 4) = $$

$$0 \times (x -2)(x - 3)(x - 4) = $$

From here we don't even need to bother with the rest, as the overall answer will be zero.

But remember, we're after _inequality_ here.  So we need to put $x = 1$ into the right hand side and how we get "not zero".

$$(1+1)(1+2)(1+3)(1+4) = $$

$$= 2 \times 3 \times 4 \times 5 = $$

$$= 120$$

It didn't take a lot of mental effort to see that this wouldn't be zero before all this, but its nice to be explicit at least the first time.

### Gelfand Problem 92 - Proving an Equality
Now we're going the other route - proving _equality_.

Firstly, I had a little trouble with the phrasing of this question, and the hint.  What I now _think_ is that Gelfand means us to do is as follows. Given

$$(x^2- 1)(x+ ...) = (x-1)(x+3)(x+...)$$

find out what you can put in place of the '$...$' on both the left and right hand sides.  The value of '$...$' need not be the same on both sides (remember, these aren't variables).

I then attacked this two ways.  Applying what I'd learned from [Chunk 6](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc) I spotted that I could use the DIfference of Squares on the left hand side.

$$(x^2- 1)(x+ ...) = (x-1)(x+3)(x+...)$$

$$(x+1)(x-1)(x+ ...) = (x-1)(x+3)(x+...)$$

A quick aside, how did I spot it? I recognised the $x^2 - a$ pattern which can be re-stated as $(x + a)(x - a)$.

If we then re-arrange what we end up with we get something useful

$$(x+1)(x-1)(x+ ...) = (x-1)(x+...)(x+3)$$

From here I could simplify by removing the $(x-1)$ from both sides

$$(x+1)(x+ ...) = (x+...)(x+3)$$

And then it was clear what the only two values of '$...$' could be: $3$ on the left hand side, and $1$ on the right

$$(x+1)(x+3) = (x+1)(x+3)$$

With this in mind I then went to [Durham's solutions](http://documents.tips/documents/gelfand-algebra-solutions.html) to see what he got and how he got there.

This confused me.  His method didn't, but I think his answer is wrong (caveat, I too could be wrong, and just as he does, please let me know if this is the case as I don't want to mislead.)  Following the hint from Gelfand I took first $x = -1$ and then $x = -3$ and put them into the equation to see what I got. 

Here's the $-1$ attack, left hand side first (to keep the noise down):

$$(x^2 - 1)(x + ...) = ...$$

$$ = (-1^2 - 1)(x + ...) = $$

$$ = (1 - 1)(x + ...) = $$

$$ = 0 \times (x + ...)$$

Just as before, because we've managed to get a zero in one of our multiplicands, which means it will all result in zero overall on the left hand side no matter that '...' is.

Now we know what putting $x = -1$ in the left hand results in we can put the same value of $x$ in and be able to work out what '...' must be to get zero there.

$$... = (x - 1)(x + 3)(x + ...) = $$

$$... = (-1 - 1)(-1 + 3)(-1 + ...) = $$ 

$$... = (-2)(2)(-1 + ...) = $$

$$... = -4 \times (-1 + ...) $$

We need to get a $0$ multiplicand again, and to get that, we need to offset the $-1$.  For that we need '...' on the right hand side to equal $1$.

$$... = -4 \times (-1 + 1) = $$

$$... = -4 \times 0 = $$

$$... = 0$$

Right. this is a good mini-milestone.  Given we now know that the '...' on the right hand side, we can look back at things overall. We currently have the following:

$$(x^2 - 1)(x + ...) = (x - 1)(x + 3)(x + 1)$$

Now we can turn our attention to the '...' on the left hand side.  Gelfand says to "try $x = -3$" so let's try that. Right hand side first this time

$$... = (x - 1)(x + 3)(x + 1) = $$

$$... = (-3 - 1)(-3 + 3)(-3 + 1) = $$ 

$$... = -4 \times 0 \times -2 = $$

Great.  Having $x = -3$ on the right hand side means we again get a zero multiplicand, meaning the overall result is zero.

So finally, what does this mean for the '...' in the left hand side?

$$(x^2 - 1)(x + ...) = ...$$

$$ = (-3^2 - 1)(-3 + ...) = $$

$$ = (9 - 1)(-3 + ...) = $$

$$ = 8 \times (-3 + ...)$$

We need to get to an overall result of zero, and there is only one value we can get to that - '...' must equal $3$.

$$ = 8 \times (-3 + 3) = $$

$$ = 8 \times 0 = $$

$$0$$

Brilliant.  All done.  Let's write it out in full now we know the values 

$$(x^2 - 1)(x + 3) = (x - 1)(x + 3)(x + 1)$$

But wait, why doesn't Durham have this? (He has $-1$ and $-3$.) Simply put, I think Durham's he's made a typo.  It's not a heinous a crime (I'm _certain_ I have actual errors in what I've written).  It made me pause and think though (which is definitely a good thing.)

More importantly, why does Gelfand suggest we try putting in $-1$ and $-3$?  It's not just because he knows the answer...

## Tricks Arising (Part 2)

### One Side at a Time
Tackling this equality-problem one side at a time helps.  We really have two equations to solve when we look at it in one way, but we're just trying to get them or have the same end result.  Doing one side at a time keeps the symbol-noise down and helps clear thinking (it does for me anyway).

### Try and Find the Simplest Way to Zero
Its not the only trick, but finding a zero in a multiplicand makes almost everything else irrelevant, and therefore means you can clear your decks.  Why? Because $x \times 0$ is _always_ $0$, no matter what $x$ is.  That's _very_ helpful.  

To answer the question above, "how did Gelfand know to suggest $-1$ and $-3$? It's because he looked at the formulas and spotted what the '...' needed to be to get a zero for that particular set of parentheses.  

### Try it with $x = 0$ (and also $1$ and $-1$)
If all else fails, it's handy to try putting $x = 0$, and $x = 1$ and $x = -1$ into yoru equation and see what you get.  Sometimes what shakes out is useful to get to the requried answer.

### Always Convert Your Polynomials to Standard Form
By doing this you again clear some noise away. (Always a good thing.)  If after thsi they only differ in the order of the mononials (or in the order of the factors inside the monomials) then the polynomials are equal.  If not, it is possible to prove they are different.

$$(x + 1)^2-(x - 1)^2 = x^2 + 4x - 1$$

$$(x^2 + 2x + 1)-(x^2 - 2x + 1) = x^2 + 4x - 1$$

$$1x^2 + 2x + 1 + (-1)x^2 + 2x + (-1) = 1x^2 + 4x - 1$$

$$1x^2 + (-1)x^2 + 2x + 2x + 1 - 1 = 1x^2 + 4x - 1$$

$$4x = x^2 + 4x - 1$$

So they're patently _not_ equal, so we should actually write

$$4x \ne x^2 + 4x - 1$$

## But This all Sounds a Little Labour Intensive...
... and you're right, at this stage it does.  We'll come back in a later post to how to use a finite number of tests to decide whether two polynomials are equal or not.  But for now, we're done.
