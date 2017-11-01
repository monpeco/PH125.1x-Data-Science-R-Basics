# if

rate <- murders$total/murders$population*100000

ind <- which.min(rate)

if(rate[ind] < 0.5){
  print(murders$state[ind])
}else{
  print("No state has murder rate that low")
}



# ifelse

a <- 0
ifelse(a>0, 1/a, NA)


data(na_example)

sum(is.na(na_example))

no_na <- ifelse(is.na(na_example),0,na_example)



# any

z <- c(FALSE, FALSE, FALSE)
any(z)

z <- c(TRUE, TRUE, TRUE)
any(z)



# all

z <- c(TRUE, TRUE, FALSE)
all(z)

z <- c(TRUE, TRUE, TRUE)
all(z)




#### basic functions


avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

> avg(c(1,2,3))

[1] 2


> x <- 1:100

> avg(x)

[1] 50.5


> identical(mean(x), avg(x))

[1] TRUE


# lexical scope



# multiple arguments

my_func <- function(x,y,z){
opetarions that operate on x,y,z
value final line is returned
}



avg <- function(x, arithmetic=TRUE){
n <- length(x)
ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}

> avg(x)

[1] 50.5


> avg(x,FALSE)

[1] 37.99269