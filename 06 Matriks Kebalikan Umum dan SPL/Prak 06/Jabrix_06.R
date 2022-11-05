#install.packages("MASS")
library(MASS)
A = matrix(c(1,0,-1,1,
             0,2,2,2,
             -1,4,5,3),nrow=3, byrow=T)
A

?ginv()
B= ginv(A)
B

#Pembuktian A*B*A = A
round(A%*%B%*%A)

C = matrix(c(1,3,5,2,
             -1,-4,4,2,
             0,3,-2,-7),nrow=3, byrow=T)
C
D = ginv(C)
D

#Pembuktian A*B*A = A
round(C%*%D%*%C)


install.packages("matlib")
library("matlib")
Ginv(A)
A

D = matrix(C())


































