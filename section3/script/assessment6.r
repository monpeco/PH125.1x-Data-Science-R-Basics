### Logical Vectors

Here we will be using logical operators to create a logical vector.

# Instructions
# Compute the per 100,000 murder rate for each state and store it in 
# an object called murder_rate.
# Then use the logical operators to create a logical vector, name it 
# low, that tells us which entries of murder_rate are lower than 1.

# Store the murder rate per 100,000 for each state, in `murder_rate`

murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 

> low <- murder_rate < 1
> low
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[13]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE
[25] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[37] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE
[49] FALSE FALSE  TRUE




### which

# The function which() help us know directly, which values are low or high, etc. 
# Let's use it in this question.

# Instructions
# Use the results from the previous exercise and the function which to determine 
# the indices of murder_rate associated with values lower than 1.

# Store the murder rate per 100,000 for each state, in murder_rate

murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 

low <- murder_rate < 1

# Get the indices of entries that are below 1

> which(murder_rate < 1)
 [1] 12 13 16 20 24 30 35 38 42 45 46 51
 
 
 
 
### Ordering vectors

# Note that if we want to know which entries of a vector are lower 
# than some values we can use code like this:

small <- murders$population < 1000000
murders$state[small]

# The code above shows us the states with populations smaller than 
# one million.

# Instructions
# Use the results from the previous exercise to report the names 
# of the states with murder rates lower than 1, using the square 
# brackets to retrieve the name of the states from the dataset.

# Store the murder rate per 100,000 for each state, in murder_rate

murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 

low <- murder_rate < 1

# Names of states with murder rates lower than 1
murders$state[low]
> murders$state[low]
 [1] "Hawaii"        "Idaho"         "Iowa"          "Maine"        
 [5] "Minnesota"     "New Hampshire" "North Dakota"  "Oregon"       
 [9] "South Dakota"  "Utah"          "Vermont"       "Wyoming"  
 
 
 
 
 
### Filtering

# Instructions
# Now we will extend the code from the previous exercises to report the states 
# in the Northeast with murder rates lower than 1.

# Define low as before.
# Use the & operator to create a new object ind that is true when low is true 
# and the state is in the Northeast
# Use the brackets [ and ind to show the state names that satisfy this condition

# Store the murder rate per 100,000 for each state, in `murder_rate`

murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 

low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1.

> ind <- murders$region == 'Northeast' & murder_rate < 1
> ind
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
[25] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
[49] FALSE FALSE FALSE


# Names of states in `ind` 

> murders$state[ind]
[1] "Maine"         "New Hampshire" "Vermont"  