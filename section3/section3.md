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

#### Section 3: Indexing, Data Wrangling, Plots   3.1 Indexing   Indexing Functions

# Indexing Functions

https://youtu.be/Z0lKp9QoWhY

RAFAEL IRIZARRY: In this video, we introduce three very useful functions
related to indexing that use logical operators.
They are which, match, and %in%.
Which gives us the entries of a logical vector that are true.
Here's an example.
If I define x as the vector, FALSE, TRUE, FALSE, TRUE, TRUE, FALSE,
which of x gives us to 2,4,5.
Those are the indices of x that are true.
This can be useful, for example, when the logical vector that we
want to use to index is very long and we only want it for indexing,
so we can just keep the actual indices, not the entire vector of logicals.
As an example, suppose we want to look up Massachusetts' murder rate.
The function, which, tells us which entries have a logical vector are true.
So we can type index which, state equals Massachusetts.
And now index will be 22.
That's because that's the only entry that was true.
That's Massachusetts entry.
So now to get the murder rate, we simply index the murder rate value.
And we get that it's 1.8, a pretty low murder rate compared to other states.
Now, we don't need to use which for what we just did.
We could have just used the logic vector.
However, it makes index a much smaller object.
Next function we're going to look at his match.
Match looks for entries in a vector and returns
the index needed to access them.
Suppose that instead of one state, we want
to find out the murder rate for several states,
say New York, Florida, and Texas.
Here we can use match.
Let's look at an example.
This function tells us which indices of the second vector
match each of the entries of a first vector.
So here it is.
We say match, New York, Florida, Texas.
And then the second vector are the state names.
So index is going to be 33.
That's the index that matched New York, 10 the index that matched Florida,
and 44, the index that matched Texas.
So now to confirm that we did this right, we can simply type murder state,
use the index, and see that we actually got the three states we
wanted, New York, Florida, and Texas.
And now we're can also look at the murder rates of these three
states, which are 2.66, 3.4, and 3.2.
The last function we're going to look at is perhaps the most useful.
And it's the %in% operator.
If rather than an index, we want to know whether or not each element of a first
vector is in a second vector, we use the function %in%.
Here's a simple example.
Let's define the object x as the first five letters, a through e.
And let's define y as a, d, and f.
If I ask y %in% x, I get back TRUE, TRUE, FALSE.
This is because a, the letter a, is in the object x.
The letter d is in the object x But the letter f is not.
So we get a false.
So, say you are not sure of Boston, Dakota, and Washington are state's.
And you want to find out.
Here's a simple way you can do it.
You type Boston, Dakota, Washington and check
to see if they're in the state vector.
And you can see that Boston is not a state.
Dakota is not a state.
But Washington is.
We will be using these functions often as subsetting
data sets into different strata is a very common task in data science.
You will commonly be asked to look at subsets
of the data for this country or that country, this sector or that sector,
etc.
So make sure to familiarize yourself with these powerful tools.


---


