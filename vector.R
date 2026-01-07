# Vector of strings and numerical values
fruits <- c("Apple","Orange","Banana","graps","Lemon")
numbers <- c(13,3,5,7,20,2)

cat("fruits","\n")
cat("------","\n")
cat(fruits,"\n")

cat("\nlength of fruits vector","\n")
cat("------------------------","\n")
cat(length(fruits),"\n")

cat("\n number vector","\n")
cat("----------------","\n")
cat(numbers,"\n")

cat("\n sort string vector","\n")
cat("-----------------","\n")
cat(sort(fruits),"\n")

cat("\n sort number vector","\n")
cat("-----------------","\n")
cat(sort(numbers),"\n")

cat("\n access the first item in string vector","\n")
cat("-----------------","\n")
cat(fruits[1],"\n")

cat("\n access the first and third item in string vector","\n")
cat("--------------------------------------------------","\n")
cat(fruits[c(1,3)],"\n")

cat("\n access all items except the first in string vector","\n")
cat("--------------------------------------------------","\n")
cat(fruits[c(-1)],"\n")

cat('\n change "Banana" to "pear" in string vector',"\n")
cat("--------------------------------------------------","\n")
fruits[3] <- "pear"

cat("after change in fruits\n")
cat(fruits,"\n")

cat("to repeat vectors , use the rep() function:","\n")
cat("--------------------------------------------------","\n")
repeat_each <- rep(fruits, each = 3)

for (x in repeat_each)
{
  cat(x,"\n")
}

cat("Repeat the sequence of the vector:","\n")
cat("--------------------------------------------------","\n")
repeat_times <- rep(numbers, times = 3)

for (y in repeat_times)
{
  cat(y,"\n")
}

cat("Repeat each value independently:","\n")
cat("--------------------------------------------------","\n")
repeat_independent <- rep(fruits, times = c(5,2,1,1,1))

for (z in repeat_independent)
{
  cat(z,"\n")
}

numberseq <- 1:10
cat("\n number sequence\n")
cat(numberseq,"\n")

cat("\n number sequence by stepwise\n")
numberstep <- seq(from = 0, to = 100, by = 20)
cat(numberstep,"\n")
