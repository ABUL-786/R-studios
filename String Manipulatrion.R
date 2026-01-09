#string Manipulation Fuction in R

string1 <- "Hello"
string2 <- "World"

result <-paste(string1,string2)
cat("Concatenated String:",result,"\n")

#Extract Substring
original_string <- "DataScience"
substring <- substr(original_string,start=5,stop=9)
cat("Subatring:",substring, "\n")

#calculatr string length
string <- "programming"
length_result <-nchar(string)
cat("String Length:",length_result,"\n")

#convert to uppercase and lowercase
uppercase_string <- toupper(string)
lowercase_string <- tolower(string)
cat("Uppercase String:",uppercase_string,"\n")
cat("Lowercase String:", lowercase_string,"\n")

#Repalce the substring
original_string <-"I Love Programming in R"
modified_string <- gsub("R","Python",original_string)
cat("Modified String:",modified_string,"\n")

#split a string
text <-"apple,orange,banana"
split_result <- strsplit(text,",")
cat("Split Result:",unlist(split_result),"\n")