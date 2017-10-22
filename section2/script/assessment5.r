### Vectorized operations

# Previously we created this data frame:

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

# Instructions
# We are interested in specifying Celsius instead of Fahrenheit. Remember that to convert
# from Fahrenheit to Celsius we use C=5/9×(F−32).

# Use vector arithmetics to convert temp to Celsius
# Create a data frame called city_temps with the city names and temperatures in Celsius.

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (temp - 32) * (5/9)

# Create a data frame `city_temps` 
city_temps <- data.frame(name=city, temperature=temp)




### Vectorized operations continued...

# We can use some of what we have learned to perform calculations that would 
# otherwise be quite complicated. Let's see an example.

# Instructions
# What is the sum of the following equation: 1 + 1/2^2 + 1/3^2 + ... + 1/100^2? 
# Thanks to Euler we know it should be close to π^2/6.

# Define an object x that contains the numbers 1 through 100
Compute the sum 1 + 1/2^2 + 1/3^2 + ... + 1/100^2.

# Define an object `x` with the numbers 1 through 100
x <- 1:100
x
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
 [19]  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
 [37]  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
 [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
 [73]  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
 [91]  91  92  93  94  95  96  97  98  99 100
 
# Compute the sum 
sum(1/(x*x))
[1] 1.634984



### Vectorized operation continued...

# Instructions
# Compute the per 100,000 murder rate for each state and store it in the 
# object murder_rate.
# Then compute the average of the state murder rates for the US using the 
# function mean. What is this average?

# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- (murders$total/murders$population) * 100000

# Calculate the average murder rate in the US 
mean(murder_rate)