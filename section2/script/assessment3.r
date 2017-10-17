### Numeric Vectors

# A vector is a series of values, all of the same type. They are the most basic data type in R and can 
# hold numeric data, character data, or logical data. In R, you can create a vector with the combine 
# function c(). You place the vector elements separated by a comma between the parentheses. For example 
# a numeric vector would look something like this:

cost <- c(50, 75, 90, 100, 150)

# Instructions
# Use the function c() to create a numeric vector with the average high temperatures in January for Beijing, 
# Lagos, Paris, Rio de Janeiro, San Juan, and Toronto. The average high temperatures are 35, 88, 42, 84, 81,
# and 30 degrees Fahrenheit. Call the object temp.

# Here is an example creating a numeric vector named cost
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the temperatures listed in the instructions into a vector named temp
# Make sure to follow the same order in the instructions
cities <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
temp <- c(35, 88, 42, 84, 81, 30)
names(temp) <- cities


### Character vectors

# As in the previous question, we are going to create a vector. Only this time, we learn to create character 
# vectors. The main difference is that these have to be written as strings and so the names are enclosed 
# within double quotes.

# A character vector would look something like this:

food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# Instructions
# The temperatures we stored in temp are from the cities Beijing, Lagos, Paris, Rio de Janeiro, San Juan, 
# and Toronto.

# Create a vector with these city names and call the object city.

# here is an example of how to create a character vector
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# Create a character vector called city to store the city names
# Make sure to follow the same order as in the instructions
city  <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")



### Connecting Numeric and Character Vectors

# We have successfully assigned the temperatures as numeric values to temp and the city names as character 
# values to city. But can we associate the temperature to it's related city? Yes! We can do so using a code 
# we already know - names. We assign names to the numeric values.

# It would look like this:

cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# Instructions
# Use the names function and the objects defined in the previous exercises to associate the temperature data 
# with its corresponding city. (You can go back to the previous questions and copy the objects stored.) 
# Note: to see what happened, after assigning the city names to the temp vector, try printing the temp vector 
# to understand how the names are associated with elements of temp.

# Associate the cost values with its corresponding food item
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# You already wrote this code
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values with its corresponding city
names(temp) <- city



### Subsetting vectors

# If we want to display only selected values from the object, R can help us do that easily.

# For example, if we want to see the cost of the last 3 items in our food list, we would type:

cost[3:5]

# Note here, that we could also type cost[c(3,4,5)] and get the same result. The : operator helps
# us condense the code and get consecutive values.

# Instructions
# We will learn to subset using several special operators.

# Use the [ and : operators to access the temperature of the first three cities in the list, 
# which are already stored in temp.

# cost of the last 3 items in our food list:
cost[3:5]

# temperatures of the first three cities in the list:
temp[1:3]