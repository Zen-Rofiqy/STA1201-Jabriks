#----OPERASI BARIS ELEMENTER-----
#Tukar Baris
tukarbaris <- function(A, baris1, baris2){
  A1 <- A[baris1,]
  A2 <- A[baris2,]
  A[baris1,] <- A2
  A[baris2,] <- A1
  return(A)
}

B = matrix(c(1, 2, 3, 2, 3, 4, 3, 5, 7), ncol=3, byrow=TRUE)
B

tukarbaris(B,2,3)

#Pengganda Baris
penggandabaris <- function(A, baris, pengganda){
  A[baris,] <- A[baris,] * pengganda
  return (A)
}

B = matrix(c(1, 2, 3, 2, 3, 4, 3, 5, 7), ncol=3, byrow=TRUE)
B

penggandabaris(B,2,6)
penggandabaris(pengganda = 2, baris = 2, A=B)

#Tambah Ganda
tambahganda <- function(A, baris1, baris2, pengganda){
  A[baris1, ] <- A[baris1, ] + pengganda * A[baris2, ]
  return(A)
}

B = matrix(c(1, 2, 3, 2, 3, 4, 3, 5, 7), ncol=3, byrow=TRUE)
B

tambahganda(B,2,1,-2)

#----RANK MATRIKS-----
A = matrix(c(1,0,2,0,1,2,2,2,1), ncol=3, byrow=TRUE)
A
?qr
qr(A)$rank
library(Matrix)
?rankMatrix
rankMatrix(A)
rankMatrix(A)[1]

B = matrix(c(1, 2, 3, 2, 3, 4, 3, 5, 7), ncol=3, byrow=TRUE)
B
det(B)
qr(B)$rank
rankMatrix(B)[1]

#----MATRIKS KEBALIKAN-----
A <- matrix(c(1, 2, 3, 1, 3, 4, 1, 4, 3), nrow=3, byrow=TRUE)
A

A.invers <- solve(A)
A.invers

B <- matrix(c(1, 2, 1, 2), nrow=2, byrow=TRUE)
B #matriks singular

solve(B)

D <- matrix(c(1, 0,-3, 2, 5,-4), nrow=2, byrow=TRUE)
D #bukan matriks persegi

solve(D)

Z <- matrix(c(-3,0,0,-7,5,0,4,-9,-2), byrow = T, ncol=3)
Z

minor <- function(A, i, j) {
  det( A[-i,-j] )
}

cofactor <- function(A, i, j) {
  (-1)^(i+j) * minor(A,i,j)
}

minor(Z,3,1)
cofactor(Z,3,1)
cofactor(Z,2,2)
cofactor(Z,3,3)

adjoint <- function(A) {
  n <- nrow(A)
  B <- matrix(NA, n, n)
  for( i in 1:n )
    for( j in 1:n )
      B[j,i] <- cofactor(A, i, j)
  B
}

adjoint(Z)

##Sifat-Sifat##
#1)|A^-1|=1/|A|
A <- matrix(c(1, 2, 3, 1, 3, 4, 1, 4, 3), nrow=3, byrow=TRUE)
A
det(A)

A.invers <- solve(A)
A.invers
det(A.invers)

round(det(A.invers))==round(1/det(A))

#2)(A^-1)^-1 =A
A <- matrix(c(1, 2, 3, 1, 3, 4, 1, 4, 3), nrow=3, byrow=TRUE)
A

A.invers <- solve(A)
A.invers
solve(A.invers)

A==round(solve(A.invers))

#3)(A')^-1 = (A^-1)'
A <- matrix(c(1, 2, 3, 1, 3, 4, 1, 4, 3), nrow=3, byrow=TRUE)
A

solve(t(A))
t(solve(A))

#4)(AB)^-1 = B^-1 * A^-1, untuk keduanya non-singular dan ukuran sama
A <- matrix(c(1, 2, 3, 1, 3, 4, 1, 4, 3), nrow=3, byrow=TRUE)
A

C <- matrix(c( 1, 0, 3, -2, 3, 1, 1, 1, 2), nrow=3, byrow=TRUE)
C

solve(A%*%C)
solve(C)%*%solve(A)
round(solve(A%*%C))==round(solve(C)%*%solve(A))



#----LATIHAN----
L <- matrix(c(1,2,1,
              3,6,3,
              5,10,5),byrow = T, ncol=3)
L
qr(L)$rank

D <- matrix(c(2,1,1,
              3,2,4,
              2,1,3),byrow = T, ncol=3)
D
qr(D)$rank

P <- matrix(c(-3,4,-4,5),ncol=2)
P
solve(P)

Q <- matrix(c(1,2,3,
              0,1,0,
              2,2,0), byrow = T, ncol = 3)
Q
Q1 <- tambahganda(Q,1,2,-2)
tambahganda(Q1,3,1,-2)