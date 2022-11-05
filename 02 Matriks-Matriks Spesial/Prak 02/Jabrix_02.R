A = matrix (c(1,2,5,6,3,3,7,2,1), ncol=3, byrow = TRUE)
A
B = matrix (c(8,5,6,7,7,3,3,6,1,0), ncol=2, byrow = TRUE)
B
D = matrix (c(8,5,6,7,7,3,3,6,1), ncol=3, byrow = TRUE)
D

A
A[-c(2),]

X=matrix(c(rep(1,3), rep(2,3), rep(3,3)), ncol=3, byrow=TRUE)
print('Cara buat ngulang isi Matrix')
X

R=matrix (0,2,3)
R

Y=matrix(0, ncol=3, nrow=4)
Y

U=matrix (rep(1,12), ncol=3)
print('Matrix satuan')
U

print('Matrix Diagonal')
E=diag(c(4,5,10))
E

print('Matrix Identitas')
I=diag(1,3,3)
I

I=diag(1,4,4)
I
I=diag(c(1,1,1,1))
I

I=diag(rep(1,4))
I

(m2 <- matrix(1:16,4))
m2
(m3 <- matrix(2:17,4,4))


m2[lower.tri(m2)] <-0
m2

m2[lower.tri(m2)] =0
m2

m2[upper.tri(m2)] =0
m2

m3[upper.tri(m2)] =0
m3
m2


s=matrix(1:25,5)
s

s[lower.tri(s)] = t(s)[lower.tri(s)]  #pembuatan simetri
s

I
t(A)      #trapose



s[lower.tri(s)] = -t(s)[lower.tri(s)]  #pembuatan simetri miring
s


s[lower.tri(s)] = t(s)[lower.tri(s)]


diag(s)=0
s

V=matrix(1:25,5)
V

#Matrix idempoten
A2=matrix(c(2,-2,-4,
            -1,3,4,
            1,-2,-3), byrow =T, ncol=3)
A2

A2 == A2%*%A2


#Matrix ortogonal
A3=matrix(c(0,0,0,1,
            0,0,1,0,
            1,0,0,0,
            0,1,0,0), byrow=T, ncol=4)
A3
A3==A3%*%A3

I=diag(1,4,4)
I==A3%*%t(A3)




S=diag(1,6)
S


A4=diag(1:5)
A4


sample(1:107,1)



A5=diag(2:6)
A5







