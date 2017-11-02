# Conditional
# What will this conditional expression return? Run it from the console.

x <- c(1,2,-3,4)
if(all(x>0)){
    print("All Positives")
  } else{
     print("Not All Positives")

  }
  
# R: All Positives


# Conditional continued

# Which of the following expressions is always FALSE when at least one entry of a logical vector x is TRUE? You can try examples in the R console.

# R: all(!x)



# ifelse

# The function nchar tells you how many characters long a character vector is. For example:

char_len <- nchar(murders$state)
head(char_len)

# The function ifelse is useful because you convert a vector of logicals into something else. For example, some datasets use the number -999 to denote NA. A bad practice! You can convert the -999 in a vector to NA using the following ifelse call:

x <- c(2, 3, -999, 1, 4, 5, -999, 3, 2, 9)
ifelse(x == -999, NA, x)

# If the entry is -999 it returns NA, otherwise it returns the entry.

# Instructions
# We will combine a number of functions for this exercise.

# Use the ifelse function to write one line of code that assigns to the object new_names the state abbreviation when the state name is longer than 8 characters. So, for example, where the original vector has Massachusetts (13 characters), the new vector should have MA. But where the original vector has New York (8 characters), the new vector should have New York as well.

# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)



# Defining functions

# You will encounter situations in which the function you need does not already exist. R permits you to write your own. Let's practice one such situation, in which you first need to define the function to be used. The functions you define can have multiple arguments as well as default values.

# To define functions we use function. For example the following function adds 1 to the number it receives as an argument:

my_func <- function(x){
    y <- x + 1
    y
}

# The last value in the function, in this case that stored in y, gets returned.

# If you run the code above R does not show anything. This means you defined the function. You can test it out like this:

my_func(5)

# Instructions
# We will define a function sum_n for this exercise.

# Create a function sum_n that for any given value, say n, creates the vector 1:n, and then computes the sum of the integers from 1 to n.
# Use the function you just defined to determine the sum of integers from 1 to 5,000.

# Create function called `sum_n`
sum_n <- function(n){
  x <- 1:n
  sum(x)
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)



# Defining functions continued...

# We will make another function for this exercise. We will define a function altman_plot that takes two arguments x and y and plots the difference y-x in the y-axis against the sum x+y in the x-axis.

# You can define functions with as many variables as you want. For example, here we need at least two, x and y. The following function plots log transformed values:

log_plot <- function(x, y){
    plot(log10(x), log10(y))
}

# This function does not return anything. It just makes a plot.

# Instructions
# We will make another function for this exercise.

# Create a function altman_plot that takes two arguments x and y and plots y-x (on the y-axis) against x+y (on the x-axis).

# Create `altman_plot` 
altman_plot <- function(x,y){
  plot(x+y, y-x)
}



