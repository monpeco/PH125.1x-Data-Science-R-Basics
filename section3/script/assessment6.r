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
 
 
 
 
 