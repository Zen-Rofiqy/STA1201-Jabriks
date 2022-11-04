#Membuat matriks
#byrow = TRUE, menuliskan unsur setiap baris secara terurut
A = matrix(c(1,2,5,6,3,3), ncol=2, byrow = TRUE)
A
print(A)

#byrow = FALSE, menuliskan unsur setiap kolom secara terurut
B = matrix(c(1,5,3,2,6,3), ncol=2, byrow = FALSE)
B
d
print(B)

#mengetahui ukuran atau ordo matriks
dim(A)
dim(B)

#Menghitung banyaknya baris
nrow(A)

#Menghitung banyaknya kolom
ncol(A)

#Mengakses elemen tertentu dari matriks
A
A[2,2]

#Mengakses kolom tertentu
A
A[,1]

#Mengakses baris tertentu
A[3,]

#Mengakses beberapa kolom/baris tertentu
A
A[c(1,3),]

#Menyimpan menjadi variabel baru
b = A[2,2]
b
B #R case sensitive

#Mengakses kecuali baris ke 1
A[-c(1),]

#Mendapatkan jumlah dari unsur matrix
C = matrix(c(1,2,3,3,1,4,3,2,2), byrow = TRUE, ncol = 3)
C
sum(C)
sum(C[1,])
sum(C[,1])

#Mengetahui jumlah setiap baris
rowSums(C)
apply(C,1,sum) #1 untuk baris

#Mengetahui jumlah setiap kolom
colSums(C)
C
apply(C,2,sum) #2 untuk kolom

#Mengambil unsur diagonal dari sebuah matriks
C
diag(C)

#Mengganti unsur diagonal suatu matriks
diag(C) = c(4,4,2)
C

D = matrix(c(1,2,3,3,1,4,3,2,2), byrow = TRUE, ncol=3)
E = matrix(c(2,3,3,1,4,1,2,4,3), byrow = TRUE, ncol=3)
D
E

#Pengurangan matriks
H=D-E
H

#Penjumlahan matriks
G=D+E
G

#Transpose matriks
D
t(D)

#Perkalian matriks dengan skalar
I = matrix(c(1,2,3,3,1,4), byrow=TRUE, ncol=3)
I
3*I
2.5*I

#Perkalian matriks dengan matriks
D%*%E
D%*%I #ukuran tidak sesuai
