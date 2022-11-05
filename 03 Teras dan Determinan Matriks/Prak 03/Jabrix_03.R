#=======================================================                Teras Matrix

A= matrix(c(1,2,5,4,
            2,2,3,3,
            1,4,1,0,
            2,9,0,6), nrow=4, byrow=TRUE)
A
sum(diag(A))

#==============================================                Pembuktian sifat tr(A')=tr(A)
sum(diag(t(A)))==sum(diag(A))

B= matrix(c(1,2,3,
            4,5,6,
            7,8,9), byrow=TRUE, nrow=3)
B

C= matrix(c(2,3,4,
            5,6,7,
            8,9,10), byrow=TRUE, nrow=3)
C

D = B%*%C
D

sum(diag(D))
sum(diag(B%*%C))

#=====================================================             Pembuktian sifat tr(AB)=tr(BA)
sum(diag(B%*%C))==sum(diag(C%*%B))

sum(diag(B+C))==sum(diag(B))+sum(diag(C))

sum(diag(2*B))==2*sum(diag(B))

#================================================                  Determinan
E= matrix(c(1,0,2,
            0,1,2,
            2,2,1), ncol=3, byrow=TRUE)
E
det(E)

G= matrix(c(1,2,3,
            2,3,4,
            3,5,7),ncol=3, byrow=TRUE)
G
det(G)

#======================================================                 baris/kolom semuanya 0 -> det=0
E[1,]=c(0,0,0)
E
det(E)

#=====================================================                 sifat 2 baris/kolom sama ->
#==============================================                            run ulang matriks E

E[1,]=E[2,]
E
det(E)

#det(AB)=det(A)det(B)
I= matrix(c(1,2,
            3,4), nrow=2, byrow=TRUE)
I

G= matrix(c(1,3,
            5,7), nrow=2, byrow=TRUE)
G

det(I%*%G)
det(I)*det(G)
round(det(I%*%G))==det(I)*det(G)

#========================================           sifat menukar posisi 2baris/kolom
H= matrix(c(1,2,
            3,4), nrow=2, byrow=TRUE)
H
J= matrix(c(3,4,
            1,2), nrow=2, byrow=TRUE)
J

det(H)==-det(J)
det(H)
det(J)

#========================================                  sifat ke 8 pada slide
K= matrix(c(2,4,
            3,4), nrow=2, byrow=TRUE)
det(K)==2*det(H)


#=========================================            c konstanta, matriks nxn -> det(cA)=c^n(det(A))
det(3*H)==3^2*(det(H))

#========================================                      minor cofaktor
minor = function(A, i, j){
  det(A[-i,-j])
}
minor(E,1,1)


cofactor =function(A, i, j){
  det(A[-i,-j])
}
cofactor(E,1,1)


#SOAL

A1= matrix(c(55,-22,
            21,63),ncol=2, byrow=TRUE)
A1

B1= matrix(c(75,24,
             125,-48),ncol=2, byrow=TRUE)
B1

C1= matrix(c(-3,0,0,
             -7,5,0,
             4,-9,-2),ncol=3, byrow=TRUE)
C1

s1 = det(A1)
s2 = det(t(A1))
s3 = det(B1)
s4 = det(t(B1))
s5 = det(C1)
s6 = det(t(C1))
s7 = det(-5*B1)
s8 = det(A1%*%B1)
s9 = det(t(A1)%*%B1)
s10 = det(A1%*%t(B1))
s11 = det(t(A1)%*%t(B1))
s12 = det(t(A1)+B1)
s13 = det(A1+t(B1))
s14 = det(2*(t(C1)))





