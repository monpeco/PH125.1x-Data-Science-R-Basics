# Using Logical operator to index vector

# calculate the murder_rate
murder_rate <- murders$total / murders$population * 100000                                                                                                                                                 

# find the indexes of the murder_rates that are lower than 0.71
index <- murder_rate < 0.71
index
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[13] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[25] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
[49] FALSE FALSE FALSE

# Which states are the ones with the murder_rate lower than 0.71
murders$state[index]
[1] "Hawaii"        "Iowa"          "New Hampshire" "North Dakota" 
[5] "Vermont" 


# Conditional as indexes

# we want to find the indexes of the states that are in the west region
west <- murders$region == "West"
west
 [1] FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE
[13]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[25] FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
[37] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
[49] FALSE FALSE  TRUE

# and the indexes of the states that are safe (murder_rate < 1)
safe <- murder_rate <= 1
safe
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[13]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE
[25] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[37] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE
[49] FALSE FALSE  TRUE

# Now we want the indexes of the states that are both (west and safe)
index <- safe & west
index
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[13]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[25] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[37] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
[49] FALSE FALSE  TRUE

# this are the states
> murders$state[index]
[1] "Hawaii"  "Idaho"   "Oregon"  "Utah"    "Wyoming"



###########
# Install 
install.packages("dplyr")

library(dplyr)

# mutate

> murders <- mutate(murders, rate=total/population*100000)                                                                                                                                                   
> head(murders)
       state abb region population total     rate
1    Alabama  AL  South    4779736   135 2.824424
2     Alaska  AK   West     710231    19 2.675186
3    Arizona  AZ   West    6392017   232 3.629527
4   Arkansas  AR  South    2915918    93 3.189390
5 California  CA   West   37253956  1257 3.374138
6   Colorado  CO   West    5029196    65 1.292453

# filter

> filter(murders, rate <= 0.71)
          state abb        region population total      rate
1        Hawaii  HI          West    1360301     7 0.5145920
2          Iowa  IA North Central    3046355    21 0.6893484
3 New Hampshire  NH     Northeast    1316470     5 0.3798036
4  North Dakota  ND North Central     672591     4 0.5947151
5       Vermont  VT     Northeast     625741     2 0.3196211

# select

> new_table <- select(murders, state, region, rate)
> head(new_table)
       state region     rate
1    Alabama  South 2.824424
2     Alaska   West 2.675186
3    Arizona   West 3.629527
4   Arkansas  South 3.189390
5 California   West 3.374138
6   Colorado   West 1.292453


# pipe operator (%>%)

> murders %>% select(state,region,rate) %>% filter(rate <= 0.71)
          state        region      rate
1        Hawaii          West 0.5145920
2          Iowa North Central 0.6893484
3 New Hampshire     Northeast 0.3798036
4  North Dakota North Central 0.5947151
5       Vermont     Northeast 0.3196211



########

> grades <- data.frame(names=c("John", "Juan", "Jean", "Yao"), 
                        exam_1=c(95,80,90,85), 
                        exam_2=c(90,85,85,90))                                                                                                 
> grades
  names exam_1 exam_2
1  John     95     90
2  Juan     80     85
3  Jean     90     85
4   Yao     85     90

> class(grades$names)
[1] "factor"


> grades <- data.frame(names=c("John", "Juan", "Jean", "Yao"), 
                                exam_1=c(95,80,90,85), 
                                exam_2=c(90,85,85,90), 
                                stringsAsFactors = FALSE)                                                                       

> class(grades$names)
[1] "character"

