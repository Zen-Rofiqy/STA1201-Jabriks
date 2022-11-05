A = matrix(c(1,1,2,
             2,1,0,
             1,2,2), nrow=3, byrow=T)
A
b = c(1,2,3)
b
  solve(A,b)   #harus matrix persegi

A1 = solve(A)  #cara lain (nggak harus persegi)
A1
A1%*%b



a = matrix(c(1,-4,-2,
             -2,7,3,
             3,0,-1), nrow=3, byrow=T)
a
b1 = c(0,-2,3)
b1
  solve(a,b)


A2 = matrix(c(3,-5,
              -6,10),ncol=2, byrow=T)
A2
b2 = c(2,4)
b2
  solve(A2,b2)
    #jika saat di OBD r(A)<r(A|B) = tidak konsisten = tidak memiliki solusi = error


A3 = matrix(c(1,-3,
              -1,3),ncol=2, byrow=T)
b3 = c()
  solve(A3,b3)
























