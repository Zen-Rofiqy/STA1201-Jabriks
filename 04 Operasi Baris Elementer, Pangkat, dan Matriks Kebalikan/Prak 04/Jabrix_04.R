B = matrix(c(1,2,3,
             2,3,4,
             3,5,7), ncol=3, byrow=TRUE)
B


swap = function(B,row1 ,row2){
  B1 = B[row1,]
  B2 = B[row2,]
  B[row1,] = B2
  B[row2,] = B1
  return(B)
}
swap(B, 2,3)


double = function(B, row,k){
  B[row,] = B[row,]*k
  return(B)
}
double(B,2,6)


sumdouble = function(B, row1, row2, k){
  B[row1,] = B[row1,] + k * B[row2,]
  return(B)
}
sumdouble(B,2,1,-2)


#RANK MATRIKS
A = matrix(c(1,0,2,
             0,1,2,
             2,2,1), ncol=3, byrow=TRUE)
A
qr(A)$rank
library(Matrix)   #lib untuk rankMatrix
rankMatrix(A)
rankMatrix(A)[2]
rankMatrix(A)[1]

det(B)
qr(B)$rank
rankMatrix(B)[1]


#MATRIX KEBALIKAN
A.inv = solve(A)
A.inv

solve(B) #B = singular

D = Matrix(c(1,0,-3,
             2,5,-4), nrow=2, byrow=TRUE)
D

solve(D) #bukan matrix persegi

Z = matrix(c(-3,0,0,
             -7,5,0,
             4,-9,-2),byrow=T, ncol=3)
Z

minor = function(A,i,j){
  det(A[-i,-j])
}

cofactor = function(A,i,j){
  (-1)^(i+j) * minor(A,i,j)
}

minor(Z,3,1)
cofactor(Z,3,1)

adjoint = function(A){
  n = nrow(A)
  B = matrix(NA,n, n)
    for(i in 1:n)
      for(j in 1:n)
        B[j,i] = cofactor(A,i,j)
    B
}
adjoint(Z)


#Sifa-sifat
#1) |A^-1|=1/|A|
A1 = matrix(c(1,2,3,
              1,3,4,
              1,4,3), nrow=3, byrow=T)
A1
A1.inv = solve(A1)
A1.inv
solve(A1.inv)

round(det(A1.inv))==round(1/det(A))























