##Nombre: Alex Raul Huamani Inga (20121383B)
##Desarollo de la pregunta 6 item 1
#Convierta el siguiente ciclo en un ciclo implícito (utilizando alguna función de la familia apply)
#que haga exactamente lo mismo:

matlist=list(matrix(c(T,F,T,T),2,2),
                matrix(c("a","c","b","z","p","q"),3,2),
                matrix(1:8,2,4))

##for(i in 1:length(matlist)){  ##AQUI LA FUNCION "FOR" ESTA HALLANDO LA TRANSPUESTA DE LOS ELEMENTOS DE LA LISTA 
  #+ matlist[[i]] <- t(matlist[[i]])
  #+ }
#una forma mas sencilla de obtener lo mismo es con la funcion lapply ya que devuelve una lista tambien
matlist
matlist=lapply(matlist,t)
matlist
