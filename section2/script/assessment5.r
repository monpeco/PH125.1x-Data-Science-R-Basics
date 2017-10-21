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
