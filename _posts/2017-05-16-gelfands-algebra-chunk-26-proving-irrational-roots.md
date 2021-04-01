---
layout: post
title: "Gelfand: Chunk 26 - Some Square Roots are Irrational"
tags: [gelfand, positive, negative, odd, even, roots, rational-numbers, irrational-numbers]
comments: true
---
{% include JB/setup %}

{% newthought "We're stepping away" %} from quadratics completely for this Chunk.  Like a dog following an interesting scent, Gelfand is off on what might to the uninitiated seem like a tangent.  If you've been following along you'll know that in fact you should be paying _more attention_ at such times.  It's in these digressions that Gelfand typically hides gold which we will rely on later on in our journey.

We're going to work through the next two problems in our traditional painful levels of detail.  While interesting, the thing we are proving - that certain numeric roots are irrational numbers - is not the reason for our travails.  The point is that Gelfand's worked solutions are going to give us more than a few new mental tools for our problem-solving kitbag.  Ones which we'll need to chunk solidly if we are to progress much further than this.

## Proving {% m %}\sqrt{2}{% em %} is Irrational
Gelfand begins his solution{% sidenote 'sn-id-whatever' "Remember, there are _many_ solutions to most problems in mathematics.  Simply because this is the one Gelfand shows us does not mean it is the only one.  We should however assume that (a) it is correct and (b) there are pedagogic reasons for choosing this one." %} to Problem 226 by setting out his stall in a way that should now be familiar.  

### Laying Out the Stall
First he represents all the elements symbolically:

{% math %}\sqrt{2} = \frac{m}{n}{% endmath %}

The then points out that given this, there are four different possibilities in what this gives us.  Firstly, that both {% m %}m{% em %} and {% m %}n{% em %} are odd, that {% m %}m{% em %} is even and {% m %}n{% em %} is odd, that {% m %}m{% em %} is odd and {% m %}n{% em %} is even, and that both {% m %}m{% em %} and {% m %}n{% em %} are even.  He then points out that the last option can actually be expressed in terms of one of the other options if we divided it by {% m %}2{% em %} a number of times.

For example

{% math %}\frac{8}{6} = \frac{4}{3}{% endmath %}

{% math %}\frac{162}{100} = \frac{81}{50}{% endmath %}

We could at this point forge ahead with Gelfand, but let's hold on a minute.  We're suddenly back in the world of odds and evens.  Why?

Remember we're trying to prove (i.e. demonstrate) that some numbers, for example   {% m %}\sqrt{2}{% em %} _can't_ be represented in the form {% m %}\frac{m}{n}{% em %} where {% m %}m{% em %} and {% m %}n{% em %} are integers.  This means what we're actually looking for is this

{% math %}\sqrt{2} \ne \frac{m}{n}{% endmath %}

Next up, note the approach Gelfand is taking; he is proving something is the case, by taking all the options to disprove it, and showing that they are not possible.

This is why we have our three options which we prove in turn - Gelfand's proof-approach is based on _an-odd-can't-be-even_ and _an-even-can't-be-odd_ statements of fact.  For this to hold water, he needs to consider all the odd/even inputs, to be able to draw general odd/even conclusions.

With all this in our [level-one mental cache](https://en.wikipedia.org/wiki/CPU_cache), let's continue.

### Representing Odd and Even Symbolically
Now we need to represent odd numbers and even numbers, but we need to use symbols, so that we're proving things for _all odd_ and _all even_ numbers.  We use something that we've seen before.  

Evens are

{% math %} 2k, {% endmath %}

and Odds are

{% math %} 2k + 1. {% endmath %}

In both cases, {% m %}k{% em %} is any integer including {% m %}0{% em %}.  

### Proof Part (a) - {% m %}\frac{odd}{odd}{% em %}
We start where Gelfand starts, by restating our (in)equality in terms of {% m %}k{% em %} (and also {% m %}l{% em %} which allows our numerator and denominator to be different numbers.){% sidenote 'sn-id-whatever' "I've flipped the sides of the working that follows.  Primarily to keep the reading flow, but also to keep you on your toes mentally.  You can thank me later, dear reader." %}

{% math %} \sqrt{2} = \frac{2k + 1}{2l + 1} {% endmath %}

Then we work this through, starting by squaring both sides

{% math %} 2 = \left(\frac{2k + 1}{2l + 1}\right)^2 {% endmath %}

and re-writing the same a little more cleanly

{% math %} 2 = \frac{(2k + 1)^2}{(2l + 1)^2} {% endmath %}

then rearranging

{% math %} 2 \cdot (2l + 1)^2 = (2k + 1)^2 {% endmath %}

and finally expanding the right hand side

{% math %} 2 \cdot (2l + 1)^2 = 4k^2 + 4k + 1 {% endmath %}

Now we can stop.  We have what we need to prove our first inequality.  

Considering the left hand side first.  It comprises _some unknown value_ {% m %}l{% em %} which is multiplied by {% m %}2{% em %}.  Clearly for every possible value of {% m %}l{% em %}, this will be even.  So the left hand side will always be even.

Now the right hand side. It comprises _two unknown values_ {% m %}4k^2{% em %} and {% m %}4k{% em %} which are both multipled by {% m %}4{% em %}. Clearly these must both be even also, as to multiply something by {% m %}4{% em %} is the same as multiplying it by {% m %}2{% em %} and then multiply it by {% m %}2{% em %} again.  But there is something left, a {% m %}1{% em %}. And we know from previously that odd numbers are obtained by adding {% m %}1{% em %} to even numbers.  This means the right hand side will always be odd.

This is summarised much more pithily by Gelfand

> Contradiction: (even number) + 1 = (even number)
 
### Proof Part (b) - {% m %}\frac{even}{odd}{% em %}
Up next, even divided by odd.  We start in an equivalent place to before:

{% math %} \sqrt{2} = \frac{2k}{2l + 1} {% endmath %}

Working this through as before, we again start by squaring both sides

{% math %} 2 = \left( \frac{2k}{2l + 1} \right) ^2 {% endmath %}

then rearranging (no need for cleaning up this time)

{% math %} 2 \cdot (2l + 1)^2 = (2k)^2 {% endmath %}

next we expand the right hand side

{% math %} 2 \cdot (2l + 1)^2 = 4k^2 {% endmath %}

before expanding the left hand side

{% math %} 2 \cdot (4l^2 + 4l + 1) = 4k^2 {% endmath %}

and finally dividing both sides by {% m %}2{% em %}

{% math %} 4l^2 + 4l + 1 = 2k^2 {% endmath %}

We can stop here as we have what we need to prove our second inequality.

Again reading from left to right, we start at the left where this half of the (in)equality is _exactly the same as the left-hand side in part (a)_.  This means the right hand side will always be odd.

Now the right hand side. It is slightly different from part (a), comprising _some unknown value_ {% m %}k{% em %} which is multiplied by itself (squared) and then multiplied by {% m %}2{% em %}.  Clearly for every possible value of {% m %}k{% em %}, this will be even.  So the right hand side will always be even.

Yet again we have something which is odd, equalling something which is even, which is not possible.  Back to Gelfand again for the punchline:

> Contradiction: (even number) + 1 = (even number)
  
### Proof Part (c) - {% m %}\frac{odd}{even}{% em %}
Finally, odd divided by even.  We start yet again in our equivalent place:

{% math %} \sqrt{2} = \frac{2k + 1}{2l} {% endmath %}

Working through again we square both sides

{% math %} 2 = \left( \frac{2k + 1}{2l} \right) ^2 {% endmath %}

And then multiply both sides by {% m %}2l^2{% em %}

{% math %} 2 \cdot (2l)^2 = (2k + 1)^2 {% endmath %}

before finally expanding the right hand side

{% math %} 2 \cdot (2l)^2 = 4k^2 + 4k + 1 {% endmath %}

The result is pretty easy to read now given the practice we've had in (a) and (b).  The right hand side is clearly always even, while the left hand side can only ever be odd.  Back to Gelfand for one last statement:

> Contradiction: (even number) = (even number) + 1
 
### In Conclusion
To conclude, we have shown that {% m %}\sqrt{2}{% em %} is always an irrational number, because we have shown that all the ways in which we _might_ represent it as a rational number are impossible.

## What about {% m %}\sqrt{3}{% em %}?
This is Problem 227.  You can prove it using exactly the same method Gelfand laid out for us.  I'll not set it out here.  I suggest you follow it through yourself however as the doing helps the chunking.

## We Cheated?!?
We're almost done.  Hurrah!  But Gelfand wants to keep us on our toes.  Apparently we{% sidenote 'sn-id' "Led by him admittedly." %} cheated.  What? How so?  It turns out that the Greeks weren't completely incompetent. When we _made up_ {% m %}\sqrt{2}{% em %} we were in fact admitting defeat.  {% m %}\sqrt{2}{% em %} means nothing except as 

> "the positive solution to {% m %}x^2 - 2 = 0{% em %}".  

It's worth letting that sink in for a while, just to keep you frosty.