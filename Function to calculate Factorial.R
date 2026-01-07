factorial_calc <- function(n) {
  if (n < 0) {
    stop("Factorial is not defined for negative numbers")
  }
  
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}

cat("Factorial of 5:",factorial_calc(5),"\n")