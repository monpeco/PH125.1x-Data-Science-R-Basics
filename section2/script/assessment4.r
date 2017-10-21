### sort

# When looking at a dataset, we may want to sort the data in an order that makes more 
# sense for analysis. Let's learn to do this using the murders dataset as an example.

# Instructions
# Use the $ operator to access the population size data and store it the object pop.
# Then use the sort function to redefine pop so that it is sorted.
# Finally use the [ operator to report the smallest population size.

# Access the `state` variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states) 

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop
pop <- murders$population
 
# Sort the object and save it in the same object 
pop <- sort(pop)

# Report the smallest population size 
pop[1]




### order

# The function order() returns the index vector needed to sort the vector. This implies 
# that sort(x) and x[order(x)] give the same result.

# This can be useful for finding row numbers with certain properties such as 
# "the row for the state with the smallest population". Remember that when we extract a 
# variable from a data frame the order of the resulting vector is the same as the order
# of the rows of the data frame. So for example, the entries of the vector murders$state
# are ordered in the same way as the states if you go down the rows of murders.

# Instructions
# Now instead of the smallest population size, let's find out the row number, in the 
# data frame murders, of the state with the smallest population size.
# This time we need to replace the order() instead of sort().
# Remember that the entries in the vector murders$population follow the order of the 
# rows of murders.


# Access population from the dataset and store it in pop
pop <- murders$population

# Use the command order, to order pop and store in object o
o <- order(pop)

# Find the index number of the entry with the smallest population size
o[1]





### New Codes

# We can actually perform the same operation as in the previous exercise using 
# the function which.min. It basically tells us which is the minimum value.

# Instructions
# Write one line of code that gives the index of the lowest population entry. Use the which.min command.

# Find the smallest value for variable total 
which.min(murders$total)

# Find the smallest value for population
which.min(murders$population)



### Using the output of order

# Now we know how small the smallest state is and we know which row represents it. 
# However, which state is it?

# Instructions
# Find the index of the smallest state using which.min(murders$population).
# Define a variable states to hold the state names from the murders data frame.
# Combine these to find the state name for the smallest state.

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states
states <- murders$state

# Use the index you just defined to find the state with the smallest population
states[i]





### Ranks

# You can create a data frame using the data.frame function. Here is a quick example:

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name=city, temperature=temp)
city_temps
#            name temperature
#1        Beijing          35
#2          Lagos          88
#3          Paris          42
#4 Rio de Janeiro          84
#5       San Juan          81
#6        Toronto          30

# Instructions
# Define a variable states to be the state names from murders
# Use rank(murders$population) to determine the population size rank (from smallest to biggest) of each state.
# Save these ranks in an object called ranks.
# Create a data frame with state names and their respective ranks. Call the data frame 

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names 
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Create a data frame my_df with the state name and its rank
my_df <- data.frame(name=states, rank=ranks)


### Data Frames, Ranks and Orders

# This exercise is somewhat more challenging. We are going to repeat the previous exercise 
# but this time order my_df so that the states are ordered from least populous to most.

# Instructions
# Create variables states and ranks to store the state names and ranks by population size respectively.
#
# Create an object ind that stores the indexes needed to order the population values, using the order 
# command. For example we could define o <- order(murders$population)
#
# Create a data frame with both variables following the correct order. Use the bracket 
# operator [ to re-order each column in the data frame. For example, states[o] orders the 
# abbreviations based by population size.


# Define a variable states to be the state names from the murders data frame
states <- murders$state

states
 [1] "Alabama"              "Alaska"               "Arizona"             
 [4] "Arkansas"             "California"           "Colorado"            
 [7] "Connecticut"          "Delaware"             "District of Columbia"
[10] "Florida"              "Georgia"              "Hawaii"              
[13] "Idaho"                "Illinois"             "Indiana"             
[16] "Iowa"                 "Kansas"               "Kentucky"            
[19] "Louisiana"            "Maine"                "Maryland"            
[22] "Massachusetts"        "Michigan"             "Minnesota"           
[25] "Mississippi"          "Missouri"             "Montana"             
[28] "Nebraska"             "Nevada"               "New Hampshire"       
[31] "New Jersey"           "New Mexico"           "New York"            
[34] "North Carolina"       "North Dakota"         "Ohio"                
[37] "Oklahoma"             "Oregon"               "Pennsylvania"        
[40] "Rhode Island"         "South Carolina"       "South Dakota"        
[43] "Tennessee"            "Texas"                "Utah"                
[46] "Vermont"              "Virginia"             "Washington"          
[49] "West Virginia"        "Wisconsin"            "Wyoming"  

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

ranks
 [1] 29  5 36 20 51 30 23  7  2 49 44 12 13 47 37 22 19 26 27 11 33 38 43 31 21
[26] 34  8 14 17 10 41 16 48 42  4 45 24 25 46  9 28  6 35 50 18  3 40 39 15 32
[51]  1

# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)

ind
 [1] 51  9 46 35  2 42  8 27 40 30 20 12 13 28 49 32 29 45 17  4 25 16  7 37 38
[26] 18 19 41  1  6 24 50 21 26 43  3 15 22 48 47 31 34 23 11 36 39 14 33 10 44
[51]  5

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(name=states[ind], rank=ranks[ind])

                   name rank
1               Wyoming    1
2  District of Columbia    2
3               Vermont    3
4          North Dakota    4
5                Alaska    5
6          South Dakota    6
7              Delaware    7
8               Montana    8
9          Rhode Island    9
10        New Hampshire   10
11                Maine   11
12               Hawaii   12
13                Idaho   13
14             Nebraska   14
15        West Virginia   15
16           New Mexico   16
17               Nevada   17
18                 Utah   18
19               Kansas   19
20             Arkansas   20
21          Mississippi   21
22                 Iowa   22
23          Connecticut   23
24             Oklahoma   24
25               Oregon   25
26             Kentucky   26
27            Louisiana   27
28       South Carolina   28
29              Alabama   29
30             Colorado   30
31            Minnesota   31
32            Wisconsin   32
33             Maryland   33
34             Missouri   34
35            Tennessee   35
36              Arizona   36
37              Indiana   37
38        Massachusetts   38
39           Washington   39
40             Virginia   40
41           New Jersey   41
42       North Carolina   42
43             Michigan   43
44              Georgia   44
45                 Ohio   45
46         Pennsylvania   46
47             Illinois   47
48             New York   48
49              Florida   49
50                Texas   50
51           California   51



### NA

# The na_example dataset represents a series of counts. It is included in the dslabs package. You can quickly 
# examine the object using

library(dslabs)
data(na_example)
str(na_example)

# However, when we compute the average we obtain an NA. You can see this by typing

mean(na_example)

# Instructions
# The is.na returns a logical vector that tells us which entries are NA. Assign the logical vector 
# that is returned by is.na(na_example) to an object called ind.
# Determine how many NAs na_example has, using the sum command.


# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)

# Determine how many NA ind has using the sum function
sum(ind)

