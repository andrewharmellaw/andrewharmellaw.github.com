---
layout: post
title: "Gelfand: Aside 2 - Binary? Who Cares?"
tags: [gelfand, binary, turing, petzold, method-addition, method-multiplication]
---
{% include JB/setup %}

{% newthought "There is a section in Gelfand" %}{% sidenote 'sn-id-whatever' "Section 7, Problems 15 to 24." %} which covers the Binary Number system.  It kind of comes out of the blue, and while it's handy to see that all of the tricks you have just seen from the Decimal Number System still apply it's sometimes hard to see why you should care beyond nothing that both are posiotional and lots of our tricks are based on this rather than on the digits we're allowed to use.

I now care.

Why? Because I'm reading [Charles Petzold's "The Annotated Turing"](https://www.amazon.co.uk/Annotated-Turing-Through-Historic-Computability/dp/0470229055) which is pretty much a massive (and brilliant) [gloss](https://en.wikipedia.org/wiki/Gloss_(annotation)) on Alan Turing's classic paper ["On Computable Numbers, with an Application to the Entscheidungsproblem" (1936)](http://www.turingarchive.org/browse.php/b/12).  It could be argued that the reason modern computers use binary is down to a decision Turing made.{% sidenote 'sn-id-whatever' "See pp. 73 of Petzold for some background." %}

Because I didn't care{% sidenote 'sn-id-whatever' "And because I thought it was too easy" %} I didn't blog some highlights of binary when I passed it.  I'm going to make up for that now.

## Visualising Carries in Binary Addition
{% newthought "I covered the _Addition Algorithm_" %} in the decimal system in [Chunk 1](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals).  Let's see it in action in binary, taking the addition from page 101 of Petzold.

{% math %}\begin{matrix} \phantom0 \phantom0 \phantom0 \phantom0 \phantom0 \phantom0 \texttt{1} \texttt{0} \texttt{1} \texttt{1} \texttt{1} \\ \phantom0 \phantom0 \phantom0 \phantom0 \phantom0 \texttt{1} \texttt{0} \texttt{1} \texttt{1} \texttt{1} \phantom0 \\ \phantom0 \phantom0 \phantom0 \phantom0 \texttt{1} \texttt{0} \texttt{1} \texttt{1} \texttt{1} \phantom0 \phantom0 \\ \phantom0 \phantom0 \phantom0 \texttt{0} \texttt{0} \texttt{0} \texttt{0} \texttt{0} \phantom0 \phantom0 \phantom0 \\ \texttt{+} \phantom0 \texttt{1} \texttt{0} \texttt{1} \texttt{1} \texttt{1} \phantom0 \phantom0 \phantom0 \phantom0 \\ \texttt{1} \texttt{1} \texttt{1} \texttt{1} \texttt{1} \texttt{1} \phantom0 \phantom0 \phantom0 \\
\underline{\texttt{1} \texttt{1} \texttt{1} \texttt{1} \texttt{1} \texttt{1} \phantom0 \phantom0 \phantom0 \phantom0 \phantom0 } \\ \texttt{1} \texttt{0} \texttt{0} \texttt{0} \texttt{0} \texttt{1} \texttt{0} \texttt{0} \texttt{0} \texttt{1} \texttt{1} \end{matrix}{% endmath %}

Now this is largely a straight copy, but I've made two things a little clearer -  I've tried to lay the out the columns with a monostpaced font{% sidenote 'sn-id-whatever' "The non-fixed-width font makes things a little unclear in the book, something which is _incredibly_ rare in Petzold." %} and I've also shown the carries as two extra rows below the line with the {% m %}+{% em %} symbol.{% sidenote 'sn-id-whatever' "Petzold doesn't, he just assumes you can picture them in your head." %}

It's the showing of the carries which I wanted to talk about a little more.  Grokking this was the key step in getting this to stick.  I had real difficulty in getting this as I kept wanting to fall back to decimal thinking.  That'll confuse you.

We'll start with the super-useful table Petzold gives us on page 100.  But we're going to jig it around a bit and add something - the carries.

First up, here's my version of the table (we're not carrying anything in any of these, as denoted by "Carried Digits" but we still might end up with one in our output, as denoted by "Carry"):

 * First digit: 0, Second Digit: 0, Carried Digit(s): (none), Result: 0, Carry: 0
 * First digit: 0, Second Digit: 1, Carried Digit(s): (none), Result: 1, Carry: 0
 * First digit: 1, Second Digit: 0, Carried Digit(s): (none), Result: 1, Carry: 0
 * First digit: 1, Second Digit: 1, Carried Digit(s): (none), Result: 0, Carry: 1

See the result of the fourth line?  That's what I want to highlight.  The result for the column is "{% m %}0{% em %}", but we are now also carrying a "{% m %}1{% em %}".  Now let's see the next five rows of the new table with this carry now being taken into consideration:

 * First digit: 0, Second Digit: 0, Carried Digit(s): 1, Result: 1, Carry: 0
 * First digit: 0, Second Digit: 1, Carried Digit(s): 1, Result: 0, Carry: 1
 * First digit: 1, Second Digit: 0, Carried Digit(s): 1, Result: 0, Carry: 1
 * First digit: 1, Second Digit: 1, Carried Digit(s): 1, Result: 1, Carry: 11

It's all pretty logical as you can see, but I ended up having to pull this out in this form just so I could see the rules in action for myself.  Note that now in all but the fifth line our results are now always in something-to-carry-land.  Our rules are working just like they do when we do decimal addition, but it's just happening more freuqently as we have less digits to apply per position.

Also note the fact that in the eighth column we are now carrying _two_ {% m %}1{% em %}s.  The trick here is to *not* let yourself think of them as "eleven".  They aren't.{% sidenote 'sn-id-whatever' "Obviously - but I kept falling into that pit so I thought you'd benefit from having a reminder too." %}

This is great, but what happens when we're adding more than two digits and a carry?  That's not very difficult either, and it's to this point we need to get to feel assured the first addition on page 101 of Petzold is grokked.

We're also going to drop the "carried digit(s)" concept now.  Carried digits are just treated like any other additional digits, and that's the secret to all of this.  

The key to this is that when we have two {% m %}1{% em %}'s to add, we get a {% m %}0{% em %}, and carry a {% m %}1{% em %}, and any more than this, we stil get a {% m %}0{% em %}, but we carry more ones.  When we're considering the carried {% m %}1{% em %}'s, they are _now_ treated just like additional digits.  Carried two {% m %}1{% em %}'s? Treat them as {% m %}1{% em %} and {% m %}1{% em %} (so if everything else is {% m %}0{% em %} then you will have a result of {% m %}0{% em %} and a carry of {% m %}1{% em %}).  Carried three {% m %}1{% em %}'s? Treat them as {% m %}1{% em %} and {% m %}1{% em %} and {% m %}1{% em %}, etc. etc.

So what happens when you use this and work through the addition in Petzold?  Well, the worst you have to deal with is a bunch of "{% m %}11{% em %}" carries, which at the end result in the far-left {% m %}1{% em %} in the answer.

## The Multiplication Algorithm in Binary
So what about multiplication?  I've actually been lying this whole post - the top sum on page 101 of Petzold is actually the second step consequent to us using the standard "Multiplication Algorithm for Multi-Digit Factors" (see [my previoulsy-mentioned first Chunk post](https://andrewharmellaw.github.io/algebra/2016/11/16/gelfands-algebra-chunk-1-fundamentals) for more.)  To get to this addition, we just applied the same rules as we would have in decimal-land to the multiplicands.  It's actually super-easy in binary land because we're either just left-shifting (when we see a 1) or having a row of zeros (when we see a 0).  It's so simple in fact I'll just leave you to look at Petzold.  There's little point in my repeating it here.

## Conclusion (of Sorts)
{% newthought "\"Left-shifting\"?" %}  Doesn't that sound like a feature of primitives in many programming languages{% sidenote 'sn-id-whatever' "E.g. Java" %} that gets mentioned (and ignored if you're me) whenever you read about support for the more primitive data types and their manipulation?  Yup, I think so.  But I'll save that for another post.
