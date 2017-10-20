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

