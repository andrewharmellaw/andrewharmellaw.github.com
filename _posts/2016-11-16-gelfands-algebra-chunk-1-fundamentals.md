---
layout: post
title: "Gelfand: Chunk 1 - Fundamentals"
description: "This is the very bottom."
category:
tags: [exchange-of-terms, method-addition, method-multiplication, method-long-division, gelfand, oakley, tricks]
comments: true
---
{% include JB/setup %}
{% newthought "In this first post" %}{% sidenote 'sn-id-whatever' "If you'd like to know the general idea behind this series of blog posts, check out the [introduction](/index.html) I wrote" %} I'm starting at a super-basic level with the math-elements because the main intention is to get my head used to the method of chunking much advocated in [Oakley's "A Mind for Numbers"](https://www.amazon.co.uk/Mind-Numbers-Science-Flunked-Algebra-ebook/dp/B00G3L19ZU). My aim being that the method, as well as the chunks it produces, will embed nicely before I start to use either in anger.  

The following is based on problems 1 to 24 from [Gelfand's "Algebra"](https://www.amazon.co.uk/Algebra-I-M-Gelfand/dp/0817636773).  

Lots of the subsequent posts will be taken from chunks derived from that book too.  You can tell which because it'll be flagged in the title, and a tag ("[gelfand](/tags.html#gelfand-ref)").

## Chunking the _Standard Addition Algorithm_
{% newthought "Gelfand kicks off" %} with the _Standard Addition Algorithm_. It will surely be familiar to everyone from their elementary mathematics.  It's described nicely [over at wikipedia](https://en.wikipedia.org/wiki/Elementary_arithmetic#Addition_algorithm) so I won't repeat it here.

What follows is a tidied up{% sidenote 'sn-id-whatever' "I did them initially using pen and paper." %} verison of my notes from working through problem 2 (pp. 4) using the chunking approach from Oakley (chapter 7, "How to Build a Powerful Chunk").  

In the course of doing this I noted some tricks.  It turns out that the tricks are one of the keys to all this.  I have _highlighted_ them here (and explained them a little more in a later section).  This is a theme which I'll keep returning to throughout these posts.  Having an embedded set of tricks, and patterns to use to trigger them is key to math-success.

### Step 1: "Work a problem all the way through on paper"
(You'll just have to trust me when I say I did this.)

### Step 2: "Work it through again, paying attention to the key processes"
The steps I followed were as you'd expect from the worked solution in the book.

Firstly, _eliminate the impossible_ - what are the possible values for the left-most {% m %}A{% em %}? 

Secondly, start from zero and _work up, one step at a time_:
 
 * Can it be {% m %}0{% em %}? No. 
 * Can it be {% m %}1{% em %}? Yes. 
 * Can it be {% m %}2{% em %}? The maximum possible value is {% m %}9 + 8 + 1 = 18{% em %}. So no, it can't.  
 * Can it be {% m %} \gt 2{% em %}? No. So that means {% m %}A{% em %} can only be {% m %}1{% em %}.
 
Now is a great point to pause, and fill in what we know so far, in order to get a fresh look at things. Our problem now looks like this:

{% math %}\begin{matrix} \phantom0 \phantom0 \texttt{1} \texttt{1} \texttt{1} \\ \underline{\texttt{+}\texttt{ }\texttt{ }\texttt{B}\texttt{B}\texttt{B}}  \\ \phantom0 \texttt{111C} \end{matrix}{% endmath %}

Now we can keep going. Thirdly, _eliminate the impossible (again)_:

 * Do we have a carry from the rightmost {% m %}1 + B{% em %}?  We must do because the next-left column has a different result value.
 * Therefore {% m %}B{% em %} can only be {% m %}9{% em %} (because {% m %}1 + 9  \gt 9{% em %} which we need to have a carry).

Finally, work back up, which means {% m %}C = 0{% em %}.
  
And so we're done, giving us the following solution:

{% math %}\begin{matrix} \phantom 0 \phantom0 \texttt{1} \texttt{1} \texttt{1} \\ \underline{\texttt{+}\texttt{ }\texttt{ }\texttt{9}\texttt{9}\texttt{9}}  \\ \phantom0 \texttt{1110} \end{matrix}{% endmath %}

### Step 3: "Take a break"
Basically I stopped at this point and went on to the next set of problems. (The ones we get onto later in this post.)

### Step 4: "Sleep"
This involved working each and every of the steps I described above. 

### Step 5: "Do another repetition"
First thing next morning, I worked the problem yet again, following each and every one of the original steps.  Oakley states "your understanding should be deeper" and she's right - the repetitions (and breaks) meant that now certain visual elements of both the problem and the solution came to me.  I've captured these realisations below in the "Tricks Arising" section below as _"many patterns you can spot visually"_ and _"have lots of space around your problems as you work"_

### Step 6: "Add another problem"
At this point I kept on going, launching into the Multiplication problem that is the subject of the second half of this post.

### Step 7:  "Do 'active' repetitions"
I take a walk out at lunch, and drive to and from work which takes 40 - 60 minutes each way, so on all of these occasions I repeated the solution steps to myself, making sure I visualised everything fully.

And that's it.  It felt like it worked really well.  It didn't feel self-patronising either.  By focussing on something mathematically simple, I just freed up the mental space needed to grokk Oakley's process itself, and how it felt as I followed it.  Not only that, I also got a far better, and more explicit understanding of the nuances and patterns inherant in the _Standard Addition Algorithm_.

### Addition Patterns
The end result of the working through of this problem following the chunking method was not only the above solution, but also an awareness of the following patterns in the _Standard Addition Algorithm_:

In any column, the sum-value is equal to the remainder of (the total of all values above it + carry-value) {% m %}/ 10{% em %};

In the right-hand column, there is no carry-value (or the carry-value is equivalent to {% m %}0{% em %});

If there are only two values to sum, then the max carry-value is {% m %}1{% em %} (as {% m %}9 + 9 + 1 = 19{% em %});

If there is a sum-value which has no values above it, then it must be the same as the carry-value from the column to it's right;

If two columns have the same values, but different sum-values, then the difference is solely a result of the carry values.

## The Multiplication Algorithm for Multi-Digit Factors
{% newthought "Next up" %} were problems relating to the _Multiplication Algorithm for Multi-Digit Factors_. This was unfamiliar to me.  It too is described nicely [over at wikipedia](https://en.wikipedia.org/wiki/Elementary_arithmetic#Multiplication_algorithm_for_multi-digit_factors).

From this point onwards I'll not write out in detail my chunking-led approach to things (there's little point) but following it further embedded the tricks I'd already spotted, as well as making the following patterns evident to me.

### Multiplication Patterns

The result is the same, no matter in what order you place the terms;

Repetition patterns featuring one of the terms appear in the product when the other term comprises one or more repetitions of {% m %}1{% em %} followed by a number of {% m %}0{% em %}. The number of {% m %}0{% em %}s must be equal to the number of numerals in the other term minus {% m %}1{% em %};

A {% m %}1{% em %} at a given position in the first term has the effect of taking the second term and shifting it to the left.  The magnitude of this shift is the same as the power of ten of the position of the {% m %}1{% em %} in the first term;

The second impact is of addition, which can be seen using the _Standard Addition Algorithm_ (see above), and here the same patterns again apply.

## The Long-Division Algorithm
> "In mathematics, especially in elementary arithmetic, division is an arithmetic operation which is the inverse of multiplication."
(from [wikipedia](https://en.wikipedia.org/wiki/Elementary_arithmetic#Division))

{% newthought "Note, this isn't," %} in my experience, strictly speaking 100% true.  It'll help you get along for now, but bear in mind that in time (and we'll get to it in later posts) you'll see some differences.{% sidenote 'sn-id-whatever' "For example multiplying by zero (result: zero) and dividing by zero (result: undefined)." %}

There is yet again a well-established algorithm for handling division in the positional number systems called "long division".  It's explained well in the wikipedia page linked above.

### Long-Division Patterns and Cyclic Numbers
Gelfand stops at one point to point out the existence of so-called "cyclic numbers".  There is a [whole load of detail](https://en.wikipedia.org/wiki/Cyclic_number) on this which he doesn't go into, and there is no need to know any more about them than notice their existence and the circumstances under which they arise.  What is important here (I now realise on second reading) is that my previously mentioned "pattern-awareness" can help you notice a lot of things.  I'm going to go into this a little more in the next section.  One thing I want to note here however is that, as a visual thinker, I was happy to see just how much physically "seeing" patterns on the page in front of you was a valuable skill.  

## Tricks Arising
{% newthought "I've alluded to \"tricks\"" %} that I learned as I went.  It seems to me that these are going to become more and more key as I progress through my maths journey.  

The ones I have so far are:

### You can spot many patterns visually
Take time to lay out your problem in a way which is clear.  Areas which are not symmetrical after you have done this may be worthy of attention

### Have lots of space around your problems as you work
This feels{% sidenote 'sn-id-whatever' "To me at least." %} as if it creates a corresponding mental{% sidenote 'sn-id-whatever' "Working memory?" %} space.  It also helps when trying to spot visual elements.

### Eliminate the impossible
What _can't_ happen?  This shrinks the problem space, and gives you less to think about, allowing you to focus.

### Break the problem into smaller, more manageable pieces
Then work back up to the complete solution - again, simplify.

### Start from zero, and then work up, one step at a time
Self-explanatory this one really.

### If the order of terms makes no difference to the result, use this to your advantage
Are you going to draw out {% m %}517 \times 1001{% em %} or {% m %}1001 \times 517{% em %}?  Pick the one which makes things easier.

## Additional Notes
{% newthought "Well," %} that's it for this post on the first two Gelfand-chunks. But before I close, a few other things seemed to relevant to bring out as they form part of the basic idiom of mathematics and algebra we are examining here.

### Terminology:
The following terminology was introduced in this post:

['Digit'](https://www.mathsisfun.com/definitions/digit.html) (MathIsFun.com)
['Term'](https://www.mathsisfun.com/definitions/term.html) (MathIsFun.com)
['Factor'](https://www.mathsisfun.com/definitions/factor.html) (MathIsFun.com)
['Product'](https://www.mathsisfun.com/definitions/product.html) (MathIsFun.com)
['Dividend'](https://www.mathsisfun.com/definitions/dividend.html) (MathIsFun.com)
['Divisor'](https://www.mathsisfun.com/definitions/divisor.html) (MathIsFun.com)
['Quotient'](https://www.mathsisfun.com/definitions/quotient.html) (MathIsFun.com)
['Remainder'](https://www.mathsisfun.com/definitions/remainder.html) (MathIsFun.com) 
['Expression'](https://www.mathsisfun.com/definitions/expression.html) (MathIsFun.com)

### Notation:
As well as this notation note:

 * not '1 x 1' but '{% m %}1 \cdot 1{% em %}' (or, when using letters in algebra, '{% m %}ab{% em %}')

### Numerical Systems:
And two number systems were also mentioned. (This is very interesting to look into in itself.  It's easy to assume there is only one way of doing things - there isn't, but you were probably taught about one as if it was the only one in existence.

[Decimal Number System](https://www.mathsisfun.com/definitions/decimal-number-system.html) (MathIsFun.com)
[Binary Number System](https://www.mathsisfun.com/definitions/binary-number.html) (MathIsFun.com)
 
### "Undefined"
This is the first time we hit the phrase "undefined" - still in our case in the realm of arithmetic. In this case it is when we try and divide a real number by {% m %}0{% em %}.  There is also the case of {% m %}0^0{% em %}.  In both cases these are circumstances when we know what we are trying to do doesnt make sense, so there is no "answer", so the expression is "undefinded". 

### Rational, Real and Irrational Numbers
From [wikipedia](https://en.wikipedia.org/wiki/Rational_number): 

> "Rational numbers are any number that can be expressed as the quotient or fraction {% m %}\frac{p}{q}{% em %} of two integers, a numerator {% m %}p{% em %} and a non-zero denominator {% m %}q{% em %}. Since {% m %}q{% em %} may be equal to {% m %}1{% em %}, every integer is a rational number."

Again from [wikipedia](https://en.wikipedia.org/wiki/Real_number): 

> "Real numbers are values that represent a quantity along a line.  The real numbers include all the rational numbers such as the integer {% m %}-5{% em %} and the fraction {% m %}\frac{4}{3}{% em %}, and all the irrational numbers such as {% m %}\sqrt[2]{2}{% em %}"
