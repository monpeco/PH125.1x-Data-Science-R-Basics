#create vector

	c
	codes <- c(380,124,818)

#Character vector

	country <- c("italy", "canada", "egypt")
	
# Name the entries of a vector

	codes <- c(italy=380, canada=124, egypt=818)
	codes 
	italy canada  egypt 
	380    124    818 
	
# the object `codes` is still a numeric vector

	class(codes)
	[1] "numeric"
	
# You can use quotes also

	codes <- c("italy"=380, "canada"=124, "egypt"=818)
	
# You can do the same in other way

	codes <- c(380,124,818)
	country <- c("italy","canada","egypt")
	names(codes) <- country
	codes
	italy canada  egypt 
	380    124    818 
	
# generate sequences

	seq(1,10)
	 [1]  1  2  3  4  5  6  7  8  9 10
	 
# By default is in steps of one, but it can be changed

	seq(1,10,2)
	[1] 1 3 5 7 9
	
# or

	> 1:10
	[1]  1  2  3  4  5  6  7  8  9 10
	
# Access spefifics element of the vector

	codes[2]
	canada 
	124 

# You can get more than one entry using a multi-entry vector

	codes[c(1,3)]
	italy egypt 
	380   818 
	
# If we want the first 2 elements

	codes[1:2]
	italy canada 
	380    124 
   
# If the elements have names, we can use the names to access the entries

	codes["canada"]
	canada 
	124 
   
# We can also have vector of names that are longer than 1

	codes[c("egypt","italy")]
	egypt italy 
	818   380 
  