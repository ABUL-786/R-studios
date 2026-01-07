# matrix operation
A <- matrix (c(1,2,3,4,5,6), nrow = 2, ncol = 3)
B <- matrix (c(7,8,9,10,11,12), nrow = 2, ncol = 3)

cat("matrix A\n")
cat("____\n")
prmatrix(A,rowlab=rep("",nrow(A)),collab=rep("",ncol(A)))
cat("\n matrix B\n")
cat("_____\n")
prmatrix(B,rowlab=rep("",2),collab=rep("",3))
cat("\n matrix Addition \n")
cat("_______\n")
result_add <- A+B
prmatrix(result_add,rowlab=rep("",2),collab=rep("",3))
cat("\n matrix subtractin \n")
cat("________\n")
result_sub <- A-B
prmatrix(result_sub,rowlab=rep("",2),collab=rep("",3))
cat("\n matrix multiplication \n")
cat("________\n")
result_mul = A*B
prmatrix(result_mul,rowlab=rep("",2),collab=rep("",3))


