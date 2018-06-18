##Nombre: Alex Raul Huamani Inga (20121383B)
##Desarollo de la pregunta 6 item 2
#PRIMER PUNTO
#En R, almacena la matriz 4 × 4 × 2 × 3 como el objeto qux:
qux <- array(96:1,dim=c(4,4,2,3))
#Escribe un bucle implícito que obtenga los elementos diagonales de todas las matrices de
#segunda capa para producir la siguiente matriz:
a=apply(qux,4:3,FUN = diag) ## usamos apply para no usar funciones explicitas.
a[,,2]
#otra forma puede ser
a=apply(qux[,,2,],3,diag) #aqui el argumento de la funcion apply se ha reducido a lo especificado en el problema
a
#SEGUNDO PUNTO
#Escribe un bucle implícito que devuelva las dimensiones de cada una de las tres matrices
#formadas accediendo a la cuarta columna de cada matriz en qux, independientemente de
#la capa o bloque, enlazado por otro bucle implícito que encuentre la suma de filas de esa
#estructura, resultando en el siguiente vector:

dimensiones=apply(apply(qux[,4,,],3,dim),1,sum) #aqui usamos un bucle aninado, ya que la primera funcion apply retorna un matriz.
dimensiones

