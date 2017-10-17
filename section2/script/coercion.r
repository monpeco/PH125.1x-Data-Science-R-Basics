# Coercion

	x <- c(1,"canada",3)
	> x
	[1] "1"      "canada" "3"  

# Force to a specific coercion

	x <- 1:5
	y <- as.character(x)
	y
	[1] "1" "2" "3" "4" "5"
	as.numeric(y)
	[1] 1 2 3 4 5
	
# Missing data

	NA #not available

# Missing data in coercion
  
	x <- c("1","b","3")
	as.numeric(x)
	[1]  1 NA  3
	Warning message:
	NAs introduced by coercion 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  