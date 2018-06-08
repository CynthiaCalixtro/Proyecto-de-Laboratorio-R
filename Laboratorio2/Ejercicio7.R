#Nombre: Alex Raul Huamani Inga (20121383B)
##Desarollo de la pregunta 7 y sus items.
zombie=function()
{
  r=readline("Ingrese la longitud del vector con las instrucciones: ") 
  r=as.integer(r)
  perZom=readline("Que porcentaje zombie esta A el dia de hoy (0-100): ")
  perZom=as.integer(perZom)/100
  valores=c('?','-','+') #vector con los valores que tendra A
  info=sample(valores,r,replace = T,c(0,0.5,0.5)) #indicaciones de B hacia A
  received=sample(valores,r,replace=T,c(perZom,(1-perZom)/2,(1-perZom)/2)) #indicaciones que toma A debido a que esta modo zombie
  positives=sum(info=='+') #numero de positivos en la informacion enviada por B
  negatives=-(length(info)-positives) #numero de negativos en la informacion enviada por B
  location=positives+negatives #Lugar donde A debe colocar la antena
  posirece=sum(received=='+') #Numero de positivos anotados por A
  Q=sum(received=='?') #Numero de datos no anotados por A
  negarece=-(length(received)-(posirece+Q)) #Numero de negativos anotados por A
  locationfail=posirece+negarece #lugar donde supuestamente A instalara la antena
  distancia=location-locationfail #Distancia a corregir
  if(Q<abs(distancia)) prob=0  else prob=(factorial(Q)/(factorial(abs(distancia))*factorial(Q-abs(distancia))))/2**Q
  #si la distania a corregir es mayor que los datos no anotados nunca podra se corregido asi que la probabilidad seria 0
  #caso contrario hallamos la probabilidad de corregir el error de A
  cat("La informacion enviada por B es:\n",info,"\n La informacion recibida por A es: \n",received,"\n")
  cat("Numero de datos no anotados por A: ",Q,"\n")
  cat("Lugar donde se deberia arreglar la antena ",location," \n Lugar donde se encuentra A ",locationfail)
  cat("\nDistancia que debe moverse A para corregir su error ",distancia,"\n")
  sprintf("el valor de la probabilidad es %.9f",prob)
}