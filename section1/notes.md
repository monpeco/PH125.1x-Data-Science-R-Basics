#### Section 1: R Basics, Functions, and Data Types   1.2 R Basics   R Basics

Store value in variable:

    > a <- 1

See values in the variable:

    > a
    [1] 1

    > print(a)
    [1] 1

See all variables store in workspace:

    > ls()
    [1] "a" "b" "c"

If we want print a variable that we havent define, we get an error:

    > x
    Error: object 'x' not found

To solve an equation:

    > (-b + sqrt(b^2 - 4*a*c)) / ( 2*a )
    [1] 0.618034
    
    > (-b - sqrt(b^2 - 4*a*c)) / ( 2*a )
    [1] -1.618034
    
---

#### Section 1: R Basics, Functions, and Data Types   1.2 R Basics   Functions

Evaluate a function with an argument:

    > log(8)
    [1] 2.079442
    
Evaluate a function with a variable:
    
    > log(a)
    [1] 0

Nested function:

    > log(exp(1))
    [1] 1

See the help:

    > help("log")

    > ?help
    
To see the arguments:

    > args("log")
    function (x, base = exp(1)) 
    NULL

To change the default value:

    > log(8, base=2)
    [1] 3
    
Using the name of the argument:

    > log(x=8, base=2)                                                                                                                                                                    
    [1] 3

---

#### Section 1: R Basics, Functions, and Data Types   1.3 Data Types   Data Types

To see the data sets:

    > data()
    
Find the type of an object
    
    > class(a)
    [1] "numeric"

Data Frames
    
    > library(dslabs)
    > data("murders")
    > class(murders)
    [1] "data.frame"

Show the structure of an object
    
    > str(murders)
    'data.frame':   51 obs. of  5 variables:
     $ state     : chr  "Alabama" "Alaska" "Arizona" "Arkansas" ...
     $ abb       : chr  "AL" "AK" "AZ" "AR" ...
     $ region    : Factor w/ 4 levels "Northeast","South",..: 2 4 4 2 4 4 1 2 2 2 ...
     $ population: num  4779736 710231 6392017 2915918 37253956 ...
     $ total     : num  135 19 232 93 1257 ...
     
To show the first 6 rows:

    > head(murders)
           state abb region population total
    1    Alabama  AL  South    4779736   135
    2     Alaska  AK   West     710231    19
    3    Arizona  AZ   West    6392017   232
    4   Arkansas  AR  South    2915918    93
    5 California  CA   West   37253956  1257
    6   Colorado  CO   West    5029196    65
    
    # Columns represent different variables
    # Rows represent different observations
    
The **accesor** (to access variable inside a data frame)
    
    > murders$population
     [1]  4779736   710231  6392017  2915918 37253956  5029196  3574097   897934
     [9]   601723 19687653  9920000  1360301  1567582 12830632  6483802  3046355
    [17]  2853118  4339367  4533372  1328361  5773552  6547629  9883640  5303925
    [25]  2967297  5988927   989415  1826341  2700551  1316470  8791894  2059179
    [33] 19378102  9535483   672591 11536504  3751351  3831074 12702379  1052567
    [41]  4625364   814180  6346105 25145561  2763885   625741  8001024  6724540
    [49]  1852994  5686986   563626

To get the names of a data frame column:

    > names(murders)
    [1] "state"      "abb"        "region"     "population" "total"  

A vector is a object with several entries (like `murders$population`)

    > pop <- murders$population

To find the lenght of the vector:
    
    > length(pop)
    [1] 51

The find the class of vector:
    
    > class(pop)
    [1] "numeric"
    
With a different type of data:

    > class(murders$state)
    [1] "character"

A important difference is the **factor** type of data, witch ara a data that take a limited number of different values:

    > class(murders$region)
    [1] "factor"

Like regions data:
    
    > levels(murders$region)
    [1] "Northeast"     "South"         "North Central" "West" 
    
---

#### Section 1: R Basics, Functions, and Data Types   1.3 Data Types   Assessment 2