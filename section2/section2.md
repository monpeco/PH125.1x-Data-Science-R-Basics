#### Section 2: Vectors, Sorting   Section 2 Overview   Section 2 Overview

# Section 2 Overview

Section 2 introduces you to vectors and functions such as sorting.

In Section 2.1, you will: 

Create numeric and character vectors. 
Name the columns of a vector. 
Generate numeric sequences. 
Access specific elements or parts of a vector.
Coerce data into different data types as needed. 

In Section 2.2, you will: 
Sort vectors in ascending and descending order. 
Extract the indices of the sorted elements from the original vector. 
Find the maximum and minimum elements, as well as their indices, in a vector. 
Rank the elements of a vector in increasing order. 

In Section 2.3, you will: 
Perform arithmetic between a vector and a single number.
Perform arithmetic between two vectors of same length. 
There are 3 assignments that use the DataCamp platform for you to practice your coding skills.

We encourage you to use R to interactively test out your answers and further your learning.

---

#### Section 2: Vectors, Sorting   2.1 Vectors   Vectors

# Vectors

https://youtu.be/vJG-7btoYlE

> RAFAEL IRIZARRY: The most basic unit available in R to store data are
> vectors. Complex datasets can usually be broken down into components
> that are vectors. For example, in a dataframe such as the Murders
> Dataframe, each column is a vector. In this video, we're going to
> learn more about this important class. Let's start by learning how to
> create vectors. One way we can do that is by using the function C,
> which stands for concatenate. So in this very simple example, I am
> defining eight object codes with three country codes, 380, 124, and
> 818. We're going to use this example going forward. We can also create character vectors. For example, we can create a character vector with
> the names of the three countries associated with those three codes. We
> use the quotes to denote that the entries are characters rather than
> variables. If you don't use the quotes, R looks for variables with
> those names, and in this case, it will return an error, because you
> haven't defined object's named Italy, Canada, or Egypt. Sometimes it's
> useful to name the entries of a vector. For example, when defining a
> vector of country codes as we did, we can use the names to connect the
> two. So here we would type codes, then use concatenate. But this time,
> instead of just writing out the three numbers, we would assign a name
> to each one. And as you can see, when we look at the object codes, we
> can see that the three numbers are associated with three countries.
> The object codes continues to be a numeric vector though. If we type
> class(codes), we can see that it's numeric. Now, if we use strings
> without quotes, it looks a little confusing to some. But you should
> know that you can use strings here. You can do the same exact
> expression. But this time, you use quotes to define the names, like
> this. There's no difference between this call and the previous one.
> This is one of the many ways in which R is quirky compared to other
> languages. Know that we can also use the names functions to assign
> names to the entries of a vector. Here's a code that we would use that
> does exactly the same thing as the previous two chunks of code, but
> using the names function. All right, another useful function for
> creating vectors, and we use this often, is a function that generates
> sequences. The function is seq, stands for sequence. So if I type seq,
> then from 1, 10, it writes out the numbers from 1 to 10, consecutive
> integers from 1 to 10. In this function, the first argument defines
> the start, and the second defines the end. The default is to go in
> increments of 1. But a third argument, which defaults to 1, lets us
> tell seq how much to jump by. So for example, if I type seq(1, 10, 2),
> it would write out the odd numbers from 1 to 9. Note that if we want
> consecutive integers, we can use the following shorthand. We can type
> 1:10 and we get the integers from 1 to 10. Now let's go over
> subsetting, an important topic. It lets us access specific parts of a
> vector. We use square brackets to access elements of a vector. So for
> example, we can access the second element of codes by simply typing
> codes, square bracket, 2, close square bracket. And you can see it
> shows us the country code for Canada. You can get more than one entry
> by using a multi-entry vector as an index. So we can type codes, and
> then create the vector 1, 3. And now we get the first and third
> element. The sequences defined above are particularly useful if you
> want to access, say, the first two elements. So we can type codes and
> then 1 through 2, we get the first two elements of our vector. If the
> elements have names, we can also access the entries using these names.
> For example, if we type codes, open brackets, and then canada in
> quotes, it will access the entry that has the name Canada. We can also
> have vector of names that are longer than 1. So we can also call
> codes, open brackets, and then have a vector of string names, and it
> will return the two elements associated with those two names.

---

#### Section 2: Vectors, Sorting   2.1 Vectors   Vector Coercion
