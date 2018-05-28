#Nombre: Alex Raul Huamani Inga (20121383B)
##Desarollo de la pregunta 2 y sus items.

#PREGUNTA 2.a #se crea una matriz ordenana por filas
a2a=matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),4,2,byrow = T)
#PREGUNTA 2.b
a2a[1:3,] #utilizamos las filas del 1 al 3 asi podemos eliminar la ultima fila. o tambien de la forma a2a[-4,]
dim(a2a[1:3,])
dim(a2a[-4,])
a2a[-4,] == a2a[1:3,] #comprobamos que ambas formas nos dan matrices de las mismas dimensiones ya que tienen los mismos elementos
#PREGUNTA 2.c
a2c=a2a
a2c[,2]=sort(a2a[,2]) #se reemplazo la segunda columna con la misma columna pero con sus elementos ordenados
#PREGUNTA 2.d
is.matrix(a2a[-4,-1]) == T #comprobaremos si el resultado que devuelve la elimniacion es una matrix.
#el resultado devuelto es falso
matrix(a2a[-4,-1],3,1) #asi obtendremos una matrix de 3x1
#PREGUNTA 2.e
a2e=a2a[3:4,] #esta es una forma en la cual podemos crear la matriz 2x2
a2e2=matrix(a2a[3:4,],2,2) #esta es otra forma
#PREGUNTA 2.f
a2c[c(4,1),c(2,1)]=-0.5*diag(a2e2)
a2c
#PREGUNTA 2.g
A=diag(c(2,3,5,-1))
a2g=solve(A)%*%A-diag(4) == diag(0,4) #aqui podemos verificar que es igual a la matriz NULA de dim 4x4
a2g
