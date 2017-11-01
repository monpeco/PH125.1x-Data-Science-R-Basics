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

