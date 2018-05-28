#Nombre: Alex Raul Huamani Inga (20121383B)
##Desarollo de la pregunta 1 y sus items.

#PREGUNTA 1.A
a1a=seq(5,-11,by=-.3)#se crea la secuencia requerida
#Prgunta 1.B #
# o tambien se puede invertir la secuencia con rev pero no iniciaria en 11. si no en el ultimo termino, que termino el primer vector
a1a=seq(-11,5,by=.3)
rev(a1a)
#PREGUNTA 1.c
#repitiendo el elemento c(-1,3, -5,7, -9) 2 veces
a1c=rep(c(-1,3, -5,7, -9),times=2,each=10)
sort(a1c, decreasing =  T)
#PREGUNTA 1.d
a1d=c(6:12,rep(5.3,3),-3,seq(102,length(a1c),length.out = 9)) #se crea el vector con las caracteristicas indicadas
length(a1d) #podemos verificar que el resultado es lo esperado