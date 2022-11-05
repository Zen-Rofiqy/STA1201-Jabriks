#Pertemuan 3

#===============Teras Matriks====================
A = matrix(c(1,2,5,4,
             2,2,3,3,
             1,4,1,0,
             2,9,0,6), nrow=4, byrow = TRUE)
A
sum(diag(A))

#Pembuktian sifat tr(A')=tr(A)
sum(diag(t(A)))==sum(diag(A))

B = matrix(c(1,2,3,
             4,5,6,
             7,8,9), nrow=3, byrow=TRUE)
B

C = matrix(c(2,3,4,
             5,6,7,
             8,9,10), nrow=3, byrow=TRUE)
C

D = B%*%C
D

sum(diag(D))

#Pembuktian sifat tr(AB)=tr(BA) 
sum(diag(B%*%C))==sum(diag(C%*%B))

#===================Determinan================
E = matrix(c(1,0,2,
             0,1,2,
             2,2,1), ncol=3, byrow=TRUE)
E
det(E)

G = matrix(c(1,2,3,
             2,3,4,
             3,5,7), ncol=3, byrow=TRUE)
G
det(G)

#baris/kolom semuanya 0 -> det=0
E[1,]=c(0,0,0)
E
det(E)

#ada sedikitnya 2 baris/kolom sama -> det=0
#run ulang matriks E
E[1,]=E[2,]
E
det(E)

#===================cek lagi=======================
#det(AB)=det(A)det(B)
I = matrix(c(1,2,
             3,4), nrow=2, byrow=TRUE)
I

G = matrix(c(1,3,
             5,7), nrow=2, byrow=TRUE)
G
round(det(I%*%G))==det(I)*det(G)
#===================================================

#jika menukar posisi 2 baris/kolom -> det(B)=-det(A)
H = matrix(c(1,2,
             3,4), nrow=2, byrow=TRUE)
H

J = matrix(c(3,4,
             1,2), nrow=2, byrow = TRUE)
J

det(H)==-det(J)

#det(cA)==c*det(A)
K = matrix(c(2,4,#baris pertama = 2*baris pertama matriks H
           3,4), nrow=2, byrow=TRUE)

det(K)==2*det(H)

#c konstanta, matriks nxn -> det(cA)=c^n(det(A))
det(3*H)==3^2*(det(H))

#=======================Minor cofaktor=====================

minor <- function(A, i, j) {
  det( A[-i,-j] )
}


cofactor <- function(A, i, j) {
  (-1)^(i+j) * minor(A,i,j)
}

#=====================Soal Latihan==========================

X = matrix(c(3,4,5,1,
             1,3,4,2,
             1,4,5,2,
             6,4,3,3), ncol=4, byrow = TRUE)
X

Y = matrix(c(7,2,5,1,
             1,5,4,3,
             2,4,3,2,
             1,4,1,3), ncol=4, byrow = TRUE)
Y

#Memperoleh determinan matriks X
det(X)

#Memperoleh determinan matriks Y
det(Y)

#det(Y)=det(y')
det(Y)==det(t(Y))

#det(X)=det(X')
det(X)==det(t(X))

#det(XY)=det(X)det(Y)
round(det(X%*%Y))==round(det(X)*det(Y))

#==============================Latihan Soal=========================

#Nomor 1
A = matrix(c(55,-22,
             21,63), nrow = 2, byrow = TRUE)
A
det(A)
det(t(A))

B = matrix(c(75,24,125,-48), nrow=2, byrow = TRUE)
B
det(B)
det(t(B))

C = matrix(c(-3,0,0,
             -7,5,0,
             4,-9,-2), nrow=3, byrow = TRUE)
C
det(C)
det(t(C))

det(2*A)
det(-5*B)
det(A%*%B)
det(t(A)%*%B)
det(A%*%t(B))
det(t(A)%*%t(B))
det(t(A)+B)
det(A+t(B))
det(2*t(C))

#Nomor 4
A = matrix(c(1,-2,0,
             2,-1,5,
             1,0,4), nrow=3, byrow = TRUE)
A
det(A)

#Mempertukarkan kolom pertama dengan ketiga
A1 <- A[,1]
A3 <- A[,3]
A[,1] <- A3
A[,3] <- A1  
A  
det(A)

#Mengalikan kolom ketiga dengan -4
A[,3] <- -4*A[,3]
A
det(A)

#Mengalikan kolom pertama dengan 3 dan kolom kedua dengan -1/3
A1 <- A[,1]*3
A3 <- A[,3]*-(1/3)
A[,1] <- A1
A[,3] <- A3
A
det(A)

#Menambahkan 2 kali kolom ketiga terhadap kolom pertama
A1 <- 2*A[,3]+A[,1]
A[,1] <- A1
A  
det(A)  

#menambahkan minus 3 kali baris kedua terhadap baris ketiga
A3 <- -3*A[2,]+A[3,]
A[3,] <- A3
A
det(A)

#Mengalikan semua unsurnya dengan 1/2
A*1/2
det(A*1/2)

#Nomor 16a
det(-A)=-det(A)


