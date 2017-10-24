#### Section 3: Indexing, Data Wrangling, Plots   Section 3 Overview   Section 3 Overview

# Section 3 Overview

Section 3 introduces to the R commands and techniques that help you wrange, analyze and visualize data.

In Section 3.1, you will:

* Subset a vector based on properties of another vector. 
* Use multiple logical operators to index vectors.
* Extract the indices of vector elements satisfying one or more logical conditions. 
* Extract the indices of vector elements matching with another vector.
* Determine which elements in one vector are present in another vector. 

In Section 3.2, you will:

* Wrangle data tables using the functions in ‘dplyr’ package. 
* Modify a data table by adding or changing columns. 
* Subset rows in a data table.
* Subset columns in a data table. 
* Perform a series of operations using the pipe operator. 
* Create data frames. 

In Section 3.3, you will:
* Plot data in scatter plots, box plots and histograms. 

There are 3 assignments that use the DataCamp platform for you to practice your coding skills.

We encourage you to use R to interactively test out your answers and further your learning.


---

#### Section 3: Indexing, Data Wrangling, Plots   3.1 Indexing   Indexing

# Indexing

https://youtu.be/nAy791YjglU


RAFAEL IRIZARRY: R provides a powerful and convenient way of indexing vectors.
We can, for example, subset a a vector based on properties of another vector.
We continue our US murders example to demonstrate
this powerful approach using the murder rates we have already calculated.
All right, let's suppose you're moving from Italy where
according to the ABC News report we showed earlier, the murder
rate is only 0.71 per 100,000 people.
You would prefer to move to a state with a similar murder rate or lower.
To find these states, we're going to use a powerful feature of R,
and it's that we can use logicals to index factors.
Furthermore, the principles of vector arithmetics that we've already
learned apply to logical operations.
For example, if we compare a vector to a single number,
it actually performs the test for each entry.
Here's an example related to the question above.
We're going to define index as the murder rate smaller than 0.71,
or, if we want to know it's less than or equal, we can use less than or equal.
Here's a result of this operation.
We can see the 51 entries are either false or true.
The entries that are true are the cases for which the murder
rate is smaller than or equal 0.71.
To see which states these are, we can leverage the fact
that vectors can meet the index with logicals.
So if we type murders$state and then index with the index object,
we get the answer.
It's Hawaii, Iowa, New Hampshire, North Dakota, and Vermont.
Another nice feature is that to count how many entries are true,
the function sum returns the sum of these entries.
This is because the logical vector gets coerced in numeric.
True turns into a 1.
False gets turned into a 0.
So when we sum them, we're basically counting the cases that are true.
Here's an example.
If we say sum of index, we get 5.
That's how many states have murder rates smaller than 0.71.
All right, now suppose we like the mountains,
and we want to move to a safe state in the west region of the country.
That's where the mountains are in the US.
We want the murder rate to be at most, 1.
So we want two different things to be true now.
Here, we can use the logical operators in R. And one of them
is the and sign, which makes two logicals true
only when they're both true.
So true and true is true, but true and false is false.
And false and false, of course, is false.
Knowing this, we can use the and to get a vector of logicals
and find out which states satisfy our two conditions.
Let's start by creating the two logical vectors representing our conditions.
We want the region to be west.
And we want the murder rate to be less than or equal to 1.
We can use the and to get a vector of logicals
and find out which states satisfy our two conditions.
We define index now as safe and west.
And that will only be true when both entries of those vectors are true.
Now we can see which states are both safe according to our definition,
and in the west.
The five states are Hawaii, Idaho, Oregon, Utah, and Wyoming.
So now we have five states to pick for where we're going to move from Italy.

---
