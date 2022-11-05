#install.packages("MASS")
library(MASS)
A <- matrix(c( 1, 0,-1, 1, 0, 2, 2, 2, -1, 4, 5, 3), nrow=3, byrow=TRUE)
A

?ginv()
B <- ginv(A)
B

round(A %*% B %*% A)

C <- matrix(c(1, 3, 5, 2,-1,-4, 4, 2, 0, 3,-2,-7), nrow=4, byrow=TRUE)
C

D <- ginv(C)
D

round(C %*% D %*% C)
C

library("matlib")
Ginv(A)
A
?Ginv()

D <- matrix(c(4,2,2,2,2,0,2,0,2),nrow=3, byrow = T)
Ginv(D, fractions = T)

Ginv(matrix(c(3,2,1,2,2,0,1,0,1), nrow=3, byrow = T))
