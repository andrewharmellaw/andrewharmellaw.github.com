---
layout: post
title: "Gelfand: Chunk 8 - 'Nomials."
tags: [gelfand, tricks, monomials, polynomials, collecting-similar-terms, standard-form, commutative-law, difference-of-squares, proving-equality, proving-inequality]
---
{% include JB/setup %}

## Polynomials (and Monomials)
{% newthought "There seem to me to be" %} (at least - remember this is Math, and things keep popping up) three types of benefits of highlighting poly- (and therefore mono-)mials.  These are 

 * the convention around their representation and resulting ease of use; the so-called _"Standard Form"_ for polynomials and;
 * the specific tricks and manipulations you can pull off with polynomials in this form to solve bigger problems, and;
 * the fact you can draw them as lines.

I'm going to cover the first two in this post.  Gelfand (but not everyone) leaves the "Linear" element of algebra until later, and so will we.

## Representing 'Nomials
{% newthought "A polynomial is basically" %} a subset of algebraic knowledge which defines a set of rules which your expression must comply with to be considered as one of the gang.  The qualifiying rules are simple:

  * your expression can have letters (variables) and numbers
  * it can have addition and subtraction
  * and multiplication.

There is one subtlety. _Positive-integer powers are also allowed_ as they are just short-cuts to represent multiplication.  

E.g.
 
{% math %} a \cdot a \cdot a \cdot a = a^4{% endmath %}

Monomials are a subset of polynomials.  The rules to qualify to be a monomial are even more restrictive.

 *  your expression can have letters (variables) and numbers
 *  and multiplication.

There is a subtlety here too - you can have the minus symbol, but only if it represents a negative number or variable.  E.g. 

{% math %} x - zy = x + (-1)zx{% endmath %}

In the case of monomials, there is a further, purely aesthetic (which makes me happy) rule of thumb that you should collect similar terms.  Let's cover that next.

### Collecting Similar Terms
Collecting similar terms means you don't repeat a term unless it is necessary. For example

{% math %} 5 \cdot a \cdot 7 \cdot b \cdot a = 35a^2b{% endmath %}

Note, you can only collect things which have the same letters _and_ same powers, and differing _only_ in their co-efficient.  However, if you remember the [_Commutative Law_](https://andrewharmellaw.github.io/2016/11/23/gelfands-algebra-chunk-2-commutative-associative-and-distributive-laws), {% m %}ab = ba{% em %}, then you can see that the _order_ of the variables is up for grabs

{% math %} a^2 + 2ab + bc + ba + 2b^2 = a^2 + 3ab + bc + 2b^2{% endmath %}

### The Explicit Relationship Between Mono- and Poly-nomials
I jumped ahead a little. Gelfand stops mid-way through all of this to point out that a polynomial is _made up of_ monomials.  That is to say, _a polynomial can be split up into a set of monomials which could be summed together to get back to the polynomial_.

{% math %} (a + b)(a^3 + b^3) = aa^3 + ab^3 + ba^3 + bb^3 = a^4 + ab^3 + ba^3 + b^4 {% endmath %}

### Standard Form
There is one more thing we need to know, and that is about the _Standard Form_ of polynomials which I mentioned at the top of the post.  Are we there yet?  Almost.  We just need to introduce two more micro-sub-conventions

 * no subtraction
 * everything has an _explicit_ co-efficient

Both are easy to remedy, as you can see 

{% math %} 12 - zx -13y + 12x - zx^2 - yx + yzx + y^2 ={% endmath %}

{% math %} = 12 + (-1)zx + (-13)y + 12x + (-1)zx^2 + (-1)yx + 1yzx + 1y^2{% endmath %}

Which that under our belt, its a nice check-point to state explicitly everything you need to have in place to have a polynomial in the _Standard Form_:

 * it is the sum of monimials
 * where each monomial is the product of a number (the co-efficient) and of powers of different letters
 * and where all similar monomials are collected
 
You can also add one more (Gelfand does himself later in Section 35 on pp 61)

 * monomials are arranged in order of decreasing degrees (where the power of a monomial is it's degree)

## Tricks Arising (Pt. 1)
{% newthought "Now we have everything in _Standard Form_," %} we can get to the exciting parts - the tricks. (Or the first lot anyway, we also have a second set later.)

### Adding Two Polynomials in Standard Form
Simply add the co-efficients of similar terms. If the resulting co-efficient is zero, the corresponding term vanishes.

{% math %} (1x + (-1)y) + (1y + (-2)x + 1z) = {% endmath %}

{% math %} = (1 + (-2))x + ((-1) + 1)y + 1z = {% endmath %}

{% math %} = (-1)x + 0y + 1z = {% endmath %}

{% math %} = (-1)x + 1z{% endmath %}

In the above example (Gelfand, because I copied it right out of his book) doesn't take these micro-steps, but they're useful to see _explicitly_ what's happening and really grokk it so I put them in.

### Multiplying Two Polynomials in Standard Form
Simply multiply each term of the first polynomial by each term of the second polynomial.  When multiplying monomials, we add powers of each variable

{% math %} (a^5b^7c) \cdot (a^3bd^4) ={% endmath %}

{% math %} = a^{5+3}b^{7+1}cd^4 ={% endmath %}

{% math %}= a^8b^8c^d4{% endmath %}

Once this is done, we have to collect similar terms. For example,

{% math %}(x - y)(x^2 + xy + y^2) ={% endmath %}

{% math %} = 1x^3 + 1x^2y + 1xy^2 + (-1)yx^2 + (-1)xy^2 + (-1)y^3 ={% endmath %}

{% math %} = x^3 + (-1)y^3{% endmath %}

Nice.

Note, we _have_ been pedantic here.  Gelfand takes a short-cut which he 'fesses up to.  From here on in we're going to do the same.  It turns out that to reduce the visual noise, once you've proven you know how to have no subtraction and always have an explicit co-efficient, youre allowed to drop them and still be admitted into Math-club.  #winning.

## Learning Checkpoint
{% newthought "If it feels like" %} you've been unwittingly applying much of this all along but without knowing the names of what you were doing, congratulations, you have been.  All Gelfand is doing here is making explicit a bunch of conventions which allow him to then make explicit some tricks which he builds on from here on in.  

## Awesome. Now What?  Equality's What.
{% newthought "Now we have this," %} it's time to make something else super-explicit; equality.{% sidenote 'sn-id-whatever' "This is labelled as \"a digression\" by Gelfand, but I found it helped me a lot at this point in my journey and beyond.  That's why I'm going into it a bit here." %}

Equality (and inequality) is at the core of loads of stuff we do in algebra.  Gelfand (and I will follow him) makes some statements which he just asks you to follow.  These statements are around the two ways to prove of equality of polynomials.

 * by being able to transform one form into another using only the algebraic rules (the ones we've been looking at in this and previous posts)
 * by giving specific numerical values to the variables and seeing that the results are the same from both forms _in all cases_. (Remember, a variable is _variable_ - it can have many values)

First thing to point out{% sidenote 'sn-id-whatever' "But not prove - neither does Gelfand, perhaps that's a post for the future" %} is that he states these two are equivalent.  If two polynomials are equal by one definition, then they are equal by the other.

But there are preferred versions for different tasks - _when proving equality, the first option is your go-to angle of attack_, as it's easier to convince people of your correctness.  This is because by using variables you are covering _all possibilities_.  With the second version you might not be and you need to know that all possibilities render equality. {% sidenote 'sn-id-whatever' "Unless you work things out with _all_ possible options for _all_ variables - something that looks like a lot of work." %}

But, _when proving inequality then the second should be your helper_.  That is because what made the second version bad above, makes it ideal now.  In order to prove inequality, all you need is one example where the results are _the same_.  Just one.  Brilliant.

Let's try some exercises (the ones from Gelfand - Problems 91 and 92)

### Gelfand Problem 91 - Proving an Inequality
We have to prove that the two sides of the following are _not equal_.

{% math %}(x - 1)(x - 2)(x - 3)(x - 4) \ne (x + 1)(x + 2)(x + 3)(x + 4){% endmath %}

Gelfand requests that we solve it "without computation".  This means, we have to do it in our head.  

A quick glance tells you that we are supposed to spot a trick here because to remove the parentheses in our heads would be a hefty task.  So what else do we know which might short-circuit everything?  The one he's hoping we'll settle upon (and remember, all you need is to prove an inequality with one value of x) is that anything multiplied by zero is zero.  All we need to get to in that case is a zero result in one of the parens and then no matter what the values of all other parens calculations (i.e. {% m %}(x - 2){% em %} the result for the side will _always_ be zero.

So what does {% m %}x{% em %} have to equal to get a zero on the left hand side?  {% m %}1{% em %} is a easy one: 

{% math %}(1 - 1)(x - 2)(x - 3)(x - 4) = {% endmath %}

{% math %}0 \times (x -2)(x - 3)(x - 4) = {% endmath %}

From here we don't even need to bother with the rest, as the overall answer will be zero.

But remember, we're after _inequality_ here.  So we need to put {% m %}x = 1{% em %} into the right hand side and how we get "not zero".

{% math %}(1+1)(1+2)(1+3)(1+4) = {% endmath %}

{% math %}= 2 \times 3 \times 4 \times 5 = {% endmath %}

{% math %}= 120{% endmath %}

It didn't take a lot of mental effort to see that this wouldn't be zero before all this, but its nice to be explicit at least the first time.

### Gelfand Problem 92 - Proving an Equality
Now we're going the other way - proving _equality_.

Firstly, I had a little trouble with the phrasing of this question, and the hint.  What I now _think_ is that Gelfand means us to do is as follows. Given

{% math %}(x^2- 1)(x+ ...) = (x-1)(x+3)(x+...){% endmath %}

find out what you can put in place of the '{% m %}...{% em %}' on both the left and right hand sides.  The value of '{% m %}...{% em %}' need not be the same on both sides (remember, these aren't variables).

I then attacked this two ways.  Applying what I'd learned from [Chunk 6 (Squares, Sums Differences etc.)](https://andrewharmellaw.github.io/2016/12/17/gelfanfd-algebra-chunk-6-squares-sums-diffs-etc) I spotted that I could use the _Difference of Squares_ on the left hand side.

{% math %}(x^2- 1)(x+ ...) = (x-1)(x+3)(x+...){% endmath %}

{% math %}(x+1)(x-1)(x+ ...) = (x-1)(x+3)(x+...){% endmath %}

A quick aside, how did I spot it? I recognised the "{% m %}x^2 - a{% em %}" pattern which can be re-stated as {% m %}(x + a)(x - a){% em %}. (Remember, {% m %}1{% em %} is a square.)

If we then re-arrange what this gives us, we get something a little more useful

{% math %}(x+1)(x-1)(x+ ...) = (x-1)(x+...)(x+3){% endmath %}

From here I could simplify by removing the {% m %}(x-1){% em %} from both sides

{% math %}(x+1)(x+ ...) = (x+...)(x+3){% endmath %}

And then it was clear what the only two values of '{% m %}...{% em %}' could be: "{% m %}3{% em %}" on the left hand side, and "{% m %}1{% em %}" on the right

{% math %}(x+1)(x+3) = (x+1)(x+3){% endmath %}

With this in mind I then went to [Durham's solutions](http://documents.tips/documents/gelfand-algebra-solutions.html) to see what he got and how he got there.

This confused me.  His method didn't, but I think his answer is wrong{% sidenote 'sn-id-whatever' "Caveat, I too could be wrong, and just as he does, please let me know if this is the case as I don't want to mislead." %}  Following the hint from Gelfand I took first {% m %}x = -1{% em %} and then {% m %}x = -3{% em %} and put them into the equation to see what I got. 

Here's the {% m %}-1{% em %} attack, left hand side first{% sidenote 'sn-id-whatever' "To keep the noise down." %}:

{% math %}(x^2 - 1)(x + ...) = ...{% endmath %}

{% math %} \rightarrow ((-1)^2 - 1)(x + ...) = ... {% endmath %}

{% math %} \rightarrow (1 - 1)(x + ...) = ...{% endmath %}

{% math %} \rightarrow 0 \times (x + ...) = ...{% endmath %}

Just as before, because we've managed to get a zero in one of our multiplicands, which means it will all result in zero overall on the left hand side no matter that first '...' is.

Now we know what putting {% m %}x = -1{% em %} into the left hand side produces, we can put the same value of {% m %}x{% em %} into the right hand side and be able to work out what '...' must be to get zero there.

{% math %}... = (x - 1)(x + 3)(x + ...) {% endmath %}

{% math %}\rightarrow ... = (-1 - 1)(-1 + 3)(-1 + ...) {% endmath %} 

{% math %} \rightarrow ... = (-2)(2)(-1 + ...) {% endmath %}

{% math %} \rightarrow ... = -4 \times (-1 + ...) {% endmath %}

As this hasn't produced us a "{% m %}0{% em %}", that means we need to get a {% m %}0{% em %} multiplicand again from the last parentheses. To get that, we need to offset the {% m %}-1{% em %}.  Therefore, for that we need the '...' on the right hand side to equal {% m %}1{% em %}, so we continue as follows

{% math %}... = -4 \times (-1 + 1) = {% endmath %}

{% math %}... = -4 \times 0 = {% endmath %}

{% math %}... = 0{% endmath %}

Right. This is a good mini-milestone.  Given that we now know that the '...' on the right hand side is {% m %}-1{% em %}, we can look back at things overall. We currently have the following:

{% math %}(x^2 - 1)(x + ...) = (x - 1)(x + 3)(x + 1){% endmath %}

Now we can turn our attention to the '...' on the left hand side.  Gelfand says to "try {% m %}x = -3{% em %}" so let's try that. Right hand side first this time

{% math %}... = (x - 1)(x + 3)(x + 1) = {% endmath %}

{% math %}... = (-3 - 1)(-3 + 3)(-3 + 1) = {% endmath %} 

{% math %}... = -4 \times 0 \times -2 = {% endmath %}

Great.  Having {% m %}x = -3{% em %} on the right hand side means we again get a zero multiplicand, meaning the overall result is zero.

So finally, what does this mean for the '...' in the left hand side?

{% math %}(x^2 - 1)(x + ...) = ...{% endmath %}

{% math %} = (-3^2 - 1)(-3 + ...) = {% endmath %}

{% math %} = (9 - 1)(-3 + ...) = {% endmath %}

{% math %} = 8 \times (-3 + ...){% endmath %}

We need to get to an overall result of zero, and there is only one value we can get to that - '...' must equal {% m %}3{% em %}.

{% math %} = 8 \times (-3 + 3) = {% endmath %}

{% math %} = 8 \times 0 = {% endmath %}

{% math %}0{% endmath %}

Brilliant.  All done.  Let's write it out in full now we know the values 

{% math %}(x^2 - 1)(x + 3) = (x - 1)(x + 3)(x + 1){% endmath %}

But wait, why doesn't Durham have this? (He has {% m %}-1{% em %} and {% m %}-3{% em %}.) Simply put, I think Durham's made a typo.  It's not a heinous crime (I'm _certain_ I have actual errors in what I've written elsewhere).  It made me pause and think though.{% sidenote 'sn-id-whatever' "Definitely a good thing." %}

More importantly, why does Gelfand suggest we try putting in {% m %}-1{% em %} and {% m %}-3{% em %}?  It's not just because he knows the answer...

## Tricks Arising (Part 2)

### One Side at a Time
Tackling that equality-problem one side at a time helped a lot.  We really have two equations to solve when we look at it in one way, but we're just trying to get them or have the same end result.  Doing one side at a time keeps the symbol-noise down and helps clear thinking (it does for me anyway).

### Try and Find the Simplest Way to Zero
It's not the only trick, but finding a zero in a multiplicand makes almost everything else irrelevant, and therefore means you can clear your decks.  Why? Because {% m %}x \times 0{% em %} is _always_ {% m %}0{% em %}, no matter what {% m %}x{% em %} is.  That's _very_ helpful.  

To answer the question above, "how did Gelfand know to suggest {% m %}-1{% em %} and {% m %}-3{% em %}? It's because he looked at the formulas and spotted what the '...' needed to be to get a zero for that particular set of parentheses.  

### Try it with {% m %}x = 0{% em %} (and also {% m %}1{% em %} and {% m %}-1{% em %})
If all else fails, it's handy to try putting {% m %}x = 0{% em %}, and {% m %}x = 1{% em %} and {% m %}x = -1{% em %} into your equation and see what you get.  Sometimes what shakes out is useful to get to the requried answer.

### Always Convert Your Polynomials to Standard Form
By doing this you again clear some noise away. {% sidenote 'sn-id-whatever' "Always a good thing." %}  If after that they only differ in the order of the mononials (or in the order of the factors inside the monomials) then the polynomials are equal.  If not, it is possible to prove they are different.

{% math %}(x + 1)^2-(x - 1)^2 = x^2 + 4x - 1{% endmath %}

{% math %}(x^2 + 2x + 1)-(x^2 - 2x + 1) = x^2 + 4x - 1{% endmath %}

{% math %}1x^2 + 2x + 1 + (-1)x^2 + 2x + (-1) = 1x^2 + 4x - 1{% endmath %}

{% math %}1x^2 + (-1)x^2 + 2x + 2x + 1 - 1 = 1x^2 + 4x - 1{% endmath %}

{% math %}4x = x^2 + 4x - 1{% endmath %}

So they're patently _not_ equal, so we should actually write

{% math %}4x \ne x^2 + 4x - 1{% endmath %}

## But This all Sounds a Little Labour Intensive...
{% newthought "... and you're right," %} at this stage it does.  We'll come back in a later post to how to use a finite number of tests to decide whether two polynomials are equal or not.  But for now, we're done.
