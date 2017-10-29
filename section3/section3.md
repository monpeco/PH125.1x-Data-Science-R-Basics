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

#### Section 3: Indexing, Data Wrangling, Plots   3.2 Basic Data Wrangling   Basic Data Wrangling

# Basic Data Wrangling

RAFAEL IRIZARRY: Up to now, we have been manipulating vectors
by reordering them and subsetting them through indexing.
But once we start more advanced analyses,
we will want to manipulate data tables.
For this purpose, we will introduce the dplyr package,
which provides intuitive functionality for working with tables.
Later in the series, we will cover the dplyr package in much more depth.
Once you install dplyr, you can load it using library dplyr like this.
This package introduces functions that perform the most common operations
in data manipulation and uses names for these functions that
are relatively easy to remember.
For example, to change the data table by adding a new column
or changing an existing one, we use mutate.
To filter the data by subsetting rows, we use the function filter.
And to subset the data by selecting specific columns, we use select.
We can also perform a series of operations--
for example, select this and then filter that--
by sending the results of one function to another function
using what is called the pipe operator.
We now demonstrate all this with examples.
Let's go back to our murder rate example.
For this analysis, we want all the necessary information
to be included in the data table.
So the first task is to add the murder rate to our data frame.
The function mutate takes the data frame as the first argument
and the name and value of the variable in the second argument.
We're going to use the convention name equals value.
So as an example, to add murder rate, we use the following.
We say mutate, then murders.
That's the first argument.
That's the table we're going to manipulate.
And then we define a new column called rate.
And that column is going to be the total divided by the population, multiplied
by 100,000.
Note that in this call, we use total and population.
These are not defining the workspace.
What is happening here is that the mutate function
knows to look for these variables in the murders data frame
rather than in the workspace.
This makes the call much cleaner, because we
don't have to keep writing murders over and over again.
So the intuitive line of code above does exactly what we want.
We can see the new column by just looking at the murder data set.
And we can see there's a new column called rate
and it has the murder rates.
Note that we have redefined the murders object.
And remember that, if, you reload it from the dslabs package,
you will overwrite what you've just created.
All right, now let's learn about the filter function.
Suppose that we want to filter the data table to only show
the entries for which the murder rate is lower than 0.71.
To do this, you use the filter function, which
takes the data table as the first argument
and the conditional statement as the next.
Like in the mutate function, we can use the data table variable
names inside the function, and we'll know that we mean the columns and not
objects in the workspace.
So we would type filter, then the data table, murders, comma.
And the second argument is the conditional, rate less than
or equal to 0.71.
When we type this, we get the five states
for which the conditional is true.
We get the entire table for these five states.
Now let's learn about the select function.
Although our data table only has six columns,
some data tables include hundreds.
So it's often useful to select just the columns that you want to work with.
Here we defined a new object, new_table.
And it's the murders data table, but only three columns
of it, state, region, and rate.
Once we define this new object, then we filter it
for the states that have a rate of less than 0.71.
And you can see the result. It's a smaller table now
with just three columns and it's only the five states with murder rates
smaller than 0.71.
Note that in the call to select, the first argument, murders, is an object.
It's the data table.
But state, region, and rate are variable names from that table.
OK.
We've learned select, mutate, and filter.
Now we're going to learn to put them all together using the pipe.
In the code above, we want to show the three variables for states
that have murder rates below 0.71.
To do this, we define an intermediate object.
It was called new_table.
In dplyr, we can avoid this.
We can write code that looks more like our description of what
we want to do, take the original data, select some columns,
and then filter some rows.
For such operations, we can use the pipe.
The code looks like this.
We start with a data table, murders.
We pipe that data into the select function.
That performs an operation.
The result of that operation gets piped into the filter function,
and that gives us the final result, which you can see right here.
Notice that we get the same answer as in the previous code.
Know that when using the pipe, we no longer
need to specify the required argument, as the dplyr
function assumes that whatever is being piped is what should be operated on.


---


