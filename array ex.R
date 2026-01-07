# An array with one dimension with value ranging from 1 to 24
thisarray <- c(1:24)


#an array with more than one dimension 
multiarray <- array(thisarray, dim = c(4,3,2))
print (multiarray)
#use the [] brackets to access the array element 
#by index position 
print (multiarray[2,3,2])
#access all the items from the first row from matrix one 
print(multiarray[c(1),,1])
#access all the i items from the first column from matrix one 
print(multiarray[,c(1),1])
#check if the value "2" is present in the array 
print(paste(2 %in% (multiarray )))
#USE THE LENGTH() function to find the no.of element
#of an array:
print (length(multiarray))
#you can loop through the array items by using a for loop:
for(x in multiarray){
  print(x)
  
}

