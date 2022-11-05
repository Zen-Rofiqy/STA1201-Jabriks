#Matriks Spesial
#Matriks Nol
#Seluruh unsur matriks = 0
A = matrix (rep(0, 12), ncol=3)
A

B = matrix (rep(0, 30), ncol=6)
B

#Cara Lain
C = matrix(0,3,3)
C

#Matriks Satuan
#Seluruh unsur matriks = 1
D = matrix (rep(1, 12), ncol=3)
D

C = matrix (rep(1, 30), ncol=6)
C

E = matrix(1,4,3)
E

#Matriks Diagonal
#Unsur matriks di luar diagonal = 0
E = diag(c(4,5,10))
E

#Matriks Identitas
#Unsur diagonal matriks = 1, di luar diagonal = 0
#cara pertama
G = diag(c(1,1,1,1))
G

#cara kedua
H = diag(1, nrow=4, ncol=4)
H

#cara ketiga
I = diag(rep(1, 4))
I

#Matriks Segitiga Atas
(m2 <- matrix(1:16, 4, 4))
lower.tri(m2)
m2[lower.tri(m2)] <- 0
m2

#Matriks Segitiga Bawah
(m3 <- matrix(1:16, 4, 4))
upper.tri(m3)
m3[upper.tri(m3)] <- 0
m3

#Matriks Simetrik
s<-matrix(1:25,5)
s[lower.tri(s)] = t(s)[lower.tri(s)]
s[upper.tri(s)]=t(s)[upper.tri(s)]
s

#Matriks Miring Simetrik
s<-matrix(1:25,5)
diag(s)<-c(rep(0,5))
s[lower.tri(s)] = -t(s)[lower.tri(s)]
s

#Matriks Idempoten
# AA = A
A = matrix(c(2,-2,-4,
             -1,3,4,
             1,-2,-3), byrow = T, ncol=3)
A == A%*%A

#Matriks Ortogonal
# AA'=A'A=I
A = matrix(c(0,0,0,1,
             0,0,1,0,
             1,0,0,0,
             0,1,0,0), byrow = T, ncol=4)
I = diag(1,4,4)
I == A%*%t(A)
I == t(A)%*%A

#Jawaban Latihan
diag(rep(1,6))
diag(c(1,1,1,1,1,1))
diag(1, nrow = 6, ncol = 6)

matrix(1,3,1)

diag(1:5)

#Latihan
L = matrix(c(2,7,9,3,2,1,0,1,2),ncol=3)
upper.tri(L)
L[upper.tri(L)] <- 0
L[upper.tri(L)] = t(L)[upper.tri(L)]
L