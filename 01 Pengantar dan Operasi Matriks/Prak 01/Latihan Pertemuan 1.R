Z = matrix(c(1,4,5,6,3,7,9,9), ncol=2, byrow = TRUE)
Z
Z[3,2]
Z[1,1]
Z[1,]
Z[3:4,]
Z[2:4,1]
sum(Z)
sum(colSums(Z))

P = matrix(c(3,4,5,6,3,8,9,4,9), ncol=3, byrow = TRUE)

sum(rowSums(P))
sum(diag(P))
sum(P[2,])
sum(P[1:2,2:3])

