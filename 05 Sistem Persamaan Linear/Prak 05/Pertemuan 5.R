A <- matrix(c(1,1,2,2,1,0,1,2,2), nrow=3, byrow = TRUE)
b <- c(1,2,3)

solve(A,b)
A1 <- solve(A)
A1%*%b

a <- matrix(c(1,-4,-2,-2,7,3,3,0,-1), nrow = 3, byrow = TRUE)
b <- c(0,-2,3)
solve(a,b)

A2 <- matrix(c(1,-3,-1,3),ncol=2,byrow = T)
b <- c(0,0)
solve(A2,b)

