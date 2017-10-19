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

https://youtu.be/SpoylOa1GHo

> In general, coercion is an attempt by R to be flexible with data
> types. When an entry does not match the expected, R tries to guess
> what we meant before throwing it in there. But this can also lead to
> confusion. Failing to understand coercion can drive programmers crazy
> when attempting to code in R, since it behaves quite differently from
> most other languages. Let's learn about it with some simple examples.
> We earlier said that vectors must be all of the same type. So if we
> try to combine say numbers and characters, you might expect an error.
> But if we type x and assign 1, canada, 3, we don't get an error. We
> don't even get a warning. So what's happened? Let's look at what x is
> when we type that. It says quotes 1, quotes canada, quotes 3, has
> converted the 1 and the 3 to character strings. And the class of x is
> character. Even though one and 3 were originally numbers when we wrote
> it out, it has converted them to character. We say that R coerced the
> data into a character string. It guessed that because we put a
> character string there in the middle, we meant the 1 and the 3 to
> actually also be character strings. R also offers functions to force a
> specific coercion. For example, you can turn numbers into characters
> with the as.character function. Here's an example. We create a
> variable x, numbers 1 through 5, and we convert them to characters
> using the as.character function. Now you can see that y is a list a
> vector of character strings from 1 to 5. We can turn them back using
> the as.numeric function, which converts characters or other data types
> into numeric variables. This function is actually quite useful in
> practice, because many datasets, many public datasets that include
> numbers, include them in a form that makes them appear to be character
> strings. Missing data is very common in practice. In R, we have a
> special value for missing data. It's the NA. We can get to NA's from
> coercion. For example, when R fails to coerce something, it tries to
> coerce but it can't, we will get NA. Here's an example. Suppose we
> define a object of character strings 1, b, 3, and we want to convert
> them to numbers, R will be able to get them to 1 and the 3 to the
> numeric values 1, 3. But it won't know what to do with b. So if you
> call as.numeric on this vector, we get a warning. It says NA's
> introduced by coercion. And the answer is the number one, a missing
> value, and then the number 3. R does not have any guesses of what to
> do. So instead of converting b to a number, it tells us it's an NA.
> Note that, as a data scientist, you will encounter the NA often, as
> they are used as missing data. And as I said, this is a very common
> problem in real life data sets. So be sure to know what NA means. And
> be ready to see a lot of them.

---

#### Section 2: Vectors, Sorting   2.2 Sorting   Sorting

https://youtu.be/hvYVm1-qcgU

> Now that we have some basic R knowledge under our belt, let's try to
> gain some insights into the safety of different states in the context
> of gun murders. We want to rank the states from least to most
> dangerous. The function sort, sorts the vector in increasing order. So
> we can see the largest total number of gun murders by simply typing
> sort, and then murders$total. And we can see that the state with the
> smallest number of murders had 2, and the one with the most had 1,257.
> However, this does not give us any information about the states, only
> about the totals. The function order is closer to what we want. It
> takes a vector and returns the indices that sorts that vector. This
> may sound confusing, so let's look at a simple example. Consider this
> very simple vector of five numbers-- 31, 4, 15, 92, and 65. If I type
> sort, it puts them in order-- 4, 15, 31, 65, 92. Rather than sort the
> vector, the function order gives us back the index that if used to
> index the vector, will sort it. So if I type index, and I assign order
> of x, now if I index x by that index, I get back the sorted numbers.
> If you look at the object index, we see why it works. Look at x-- 31,
> 4, 15, 92, 65. If I type order x, I get 2, 3, 1, 5, 4. This is the
> index that puts x in order. 2 is the first entry because the second
> entry of x is 4, which is the smallest number. The second smallest is
> 15, which is in the third location. So 3 is the second entry of order
> x, et cetera. So how does this help us order the states by murderers?
> First, remember that the entries of vectors you accessed with the
> dollar sign follow the same order as the rows in the table. So for
> example, these two vectors containing the state names and state
> abbreviations respectively, match their order. We only show the first
> entries so that it fits on the screen, but notice that we have
> Alabama, Alaska, Arizona, et cetera, and in the other one, we have AL,
> AK, AZ. Those are the abbreviations that goes with those three states.
> If you look through all 10, you see that they match. This means we can
> now order the state names by their total murders by first obtaining
> the index that orders according to murder totals, and then indexing
> the state names or abbreviations using that index. Let's type it here.
> Let's define index with the order of the totals, and then index the
> murders abbreviations to see the states ordered by murder totals. We
> see that Vermont has the lowest total and California has the most
> murders. Now, there's actually a much faster way of doing this, of
> getting the biggest or the smallest. If we are only interested in the
> entry with the largest value, we can use the function max. So max of
> the murders total gives us 1,257, the largest number. And which max
> gives us the index where this number resides. So if I define i_max as
> which.max of the murders total, I get back the index for which that
> value is 1,257, and now I can index the state names, and get back the
> answer which we were looking for. California is the state with the
> largest number of total murders. For the minimum, we can do the same
> with min and which.min. So is California the most dangerous state? In
> the next section, we argue that we should be considering rates, not
> total. But before doing that, we introduce one last order related
> function-- rank. For any given list, it gives you a vector with the
> rank of the first entry, second entry, et cetera. Here's a simple
> example. Let's look at that vector we defined earlier-- 31, 4, 15, 92
> 65. If I type rank of x, I get back 3, 1, 2, 5, 4. Why? Because 31, the first entry of x, is the third smallest value in x. 4 is the
> smallest, so that one gets a 1. 15 is the second smallest, so it gets
> a 2, et cetera. To summarize, let's look at the results of the three
> functions we have introduced. In the first column of this table, we
> have the original vector-- 31, 4, 15, 92, 65. In the second column, we
> have the result of sort. In the third column, we have the result of
> order, and in the fourth column, we have the result of rank. Notice
> that the sort column simply has the original sorted. So we have the
> values going from the smallest to the biggest. Order, again, gives us
> the index needed to obtain the sorted data. So because in the sort
> column, the first entry is a 4, in order, we have 2. Why? Because if
> we go to the original, we need to go to the second entry to get that
> 4. In the second row of order, we have a 3. Why? Because to get a 15, the second smallest, we need to go to the third column of the original
> to get 15. Et cetera. Now, the final column rank, gives us the ranks
> of the original vector. 31 is the third smallest, 4 is the smallest,
> 15 is the second smallest, et cetera. All right, now that we have
> learned about sorting in R, we have some useful tools to answer
> questions about the data at hand.

---

