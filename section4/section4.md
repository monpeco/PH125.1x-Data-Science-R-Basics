# Section 4 Overview

Section 4 introduces you to general programming features like **if-else**, and **for loop** commands so that you can write your own functions to perform 
various operations on datasets.

In Section 4.1, you will:
* Understand some of the programming capabilities of R. 

In Section 4.2, you will:
* Use basic conditional expressions to perform different operations. 
* Check if any or all elements of a logical vector are TRUE. 

In Section 4.3, you will:
* Define and call functions to perform various operations.
* Pass arguments to functions, and return variables/objects from functions.

In Section 4.4, you will:
* Use ‘for’ loop to perform repeated operations. 
* Articulate in-built functions of R that you could try for yourself. 

There is one assignment that uses the DataCamp platform for you to practice your coding skills.

We encourage you to use R to interactively test out your answers and further your learning.

---

#### Section 4: Programming Basics   4.1 Introduction to Programming in R   Programming Basics

# Introduction to Programming in R

https://www.youtube.com/watch?v=GjzmF-ZEoRM

RAFAEL IRIZARRY: We teach R because it greatly
facilitates data analysis, the main topic of this series.
Coding in R, we can efficiently perform exploratory data analysis,
build data analysis pipelines, and prepare data visualizations
to communicate results.
However, R is not just a data analysis environment, but a programming
language.
Advanced R programmers can develop complex packages,
and even suggest ways to improve R itself.
But we do not cover advanced programming in this course.
However, in the next videos, we introduce three key programming
concepts--
conditional expressions, for-loops, and building functions.
These are not just key building blocks for advanced programming,
but often come in handy during data analysis.

Tags: `conditional expressions`, `for-loops`, `building functions`.

---

#### Section 4: Programming Basics   4.2 Conditionals   Basic Conditionals

# Basic Conditionals

https://youtu.be/mwxfdiJ9KYs

RAFAEL IRIZARRY: Conditional expressions are one
of the basic features of programming.
The most common conditional expression is the if-else statement.
Here's a very simple example showing the general structure
of an if-else statement.
The basic idea of this chunk of code is to print the reciprocal of a unless a
is zero.
So we type, if a is not 0, print the reciprocal, else print no reciprocal
for zero.
You can run that function now with a equals to 2.
And you get a different answer then if you
run the function with a equals to zero.
Here's a general form of a if-else statement.
We type if and then a condition.
We call these Boolean conditions.
If that is true, this, the expression in the brackets following that condition
are performed.
If that is not true, then the alternative expressions
encompassed by the else brackets are performed.
Let's look at some more examples using the US murders data frame.
We load the data frame and define the murder rate variable.
And now we ask the question, which states, if any,
have murder rates lower than 0.5?
The if statement protects us from the case in which
no state satisfy the condition.
So we can write something like this.
If the smaller state has a murder rate less than 0.5,
print out the name of that state.
But otherwise, say there's no state with murder rates that low.
So if we use 0.5, we get the answer we want,
because that state has a murder rate lower than 0.5.
But if we changed that level to 0.25, we get a different answer.
Now we say, no state has a murder rate that low.
A related function that is very useful is that ifelse function, one word,
ifelse.
This function takes three arguments, a logical, and two possible answers.
If the logical is true, the first answer is returned.
If it's false, the second answers returned.
Here's an example.
Define a as zero.
And we ask, ifelse a bigger than zero return the reciprocal, otherwise
return the missing data.
If we apply this function, we get back missing data.
But the function is particularly useful, because it works on vectors.
It examines each element of the logical vector
and returns a corresponding answer accordingly.
So let's look at an example.
Let's define a as 0, 1, 2, negative 4, and 5.
Now the result here is going to be the reciprocal, if a is positive,
and a missing data if it's not.
This table helps us see what's happening.
In the first column of the table we have the first vector.
In the third column, we have the first answer.
In the fourth column, we have the second answer.
In the second column, we have the conditional.
If the conditional is true, the first answer is returned.
If it's false, the second answers is returned.
So let's go down the list.
0, is it bigger than 0?
No.
So we return the second answer, the missing data.
So the result column has an NA.
Second one, 1, is it positive?
Is it bigger than zero?
Yes.
So I'll return the first answer, 1 divided by 1 is 1.
That's what I return.
Second one, is 2 bigger than 0?
Yes.
I'll return the first answer, 0.5.
Negative 4, not bigger than 0.
I will return NA, second answer.
And finally 5, which is bigger than 0, gets a true.
And we return 1 over 5.
Here's an example of how this function can
be readily used to replace all the missing values in a vector with zeros.
This is a very common use of this function,
replacing NA's with some other value.
For this we're going to use an example as included in ds labs package,
it's the NA underscore example.
We can load it like this.
And we can see by using the sum of is.na(na_example) that there's 145
NA's in this vector, which contains numbers and NA's.
So what we want to do next is create a new vector called no_nas that replaces
all the NA's with zero, using the ifelse function,
we can do this very easily, like this.
Once we're done with this, we see that the new object no_nas has no more NA's.
All right.
Two more functions, any and all.
These are also quite useful.
Any function takes a vector of logicals and it returns true
if any of the entries is true.
So here's an example.
If I apply any to the vector TRUE, TRUE, FALSE,
I get a TRUE, because at least one of them is true.
If I apply it to FALSE, FALSE, FALSE, I get a false, because none of them
are true.
The all function takes a vector of logicals and returns
TRUE if all the entries are true.
So here's an example.
If z is TRUE, TRUE, FALSE, and I ask all(z),
I get FALSE, because they're not all true.
If I make z TRUE, TRUE, TRUE, then of course
I get a TRUE, because they're all true.

---

#### Section 4: Programming Basics   4.3 Functions   Functions

# Basic Functions

RAFAEL IRIZARRY: As you become more experienced,
you'll find yourself needing to perform the same operation over and over.
A simple example of this is computing the average.
You compute the average all the time when you're doing data science.
You can compute the average of a vector x by computing the sum
and then dividing by the length.
This is longer than it really needs to be,
because we can define a function that does this automatically.
Because we do this so often, it's more efficient to write a function that
performs this operation.
And this has already been done.
This is what the mean function does in R.
However, you will encounter situations in which the function that you need
does not already exist.
So you have to write your own.
A simple version of a function that computes the average
can be defined like this.
We use this as an example, so you'll learn how to write functions.
So we're going to write a new function called avg, stands for average.
It takes x, computes the sum, assigns it to s, computes the length,
assigns it to n.
And then the last line inside the function brackets, s divided by n,
is what is returned.
So if I type average and then give it a vector,
I will get back the sum divided by the length, which is the average.
Now average is a function that computes the mean.
So we can show that it gives you the same answer as a mean,
using the identical function.
Note that variables defined inside a function
are not saved in the workspace.
So while wi use s and n inside the average call,
the values are created and change only during the call.
So if I define a function like we did before,
but I define s equals 3 and then call average, inside of average,
an s is created that is not 3, it's something else.
And it's assigned to s, but that only happens inside the function.
If I type s after calling average, I get back
3, the value that I defined outside of the function.
So the general way to define functions is as follows.
You decide on a name that will be an object.
Here I'm using my_function.
Then you type the function function, is what
lets R know that you are defining a function.
I have the arguments inside parentheses.
And then with brackets, I put all the operations
that operate on x, which is defined by the user when they call this function.
Note that functions are objects.
So we assign them to variable names with the arrow operator.
The R function, called function, tells R you're about to define a new function.
Note that functions can have more than one variable.
The way you define them is by having multiple arguments.
In this example, I have x, y, and z.
Now the operations inside the brackets operate
with the x, y, and z defined by the user that's calling your function.
For example, we can define a function that
computes either the arithmetic or geometric average depending
on a user-defined variable like this.
Notice that arithmetic has a default value of true,
but the user, when they call your new function,
can change it to true or to false.
Once that's done, you'll see that the last argument, the argument that
defines what's returnhed, uses an if else statement,
which returns either the arithmetic or the geometric mean,
depending on what the value of arithmetic is.
We will learn more about how to create functions through experience
as we face more and more complex tasks.

---

#### Section 4: Programming Basics   4.4 For Loops   For Loops