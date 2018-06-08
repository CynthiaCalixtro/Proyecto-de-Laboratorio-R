##Nombre: Alex Raul Huamani Inga (20121383B)
##Desarollo de la pregunta 7 item B - Uganda
mcd <- function(x, y) #funcion que halla el mcd de 2 números
{
  while(y) {
    temp = y
    y = x %% y
    x = temp
  }
  return(x)
}
uganda=function() #funcion donde ingresamos el valor de los resultados de Vilma y Esther
{
  a=readline("ingrese el resultado de vilma: ") #recibiendo el valor de Vilma
  a=as.integer(a) #convirtiendo un entero el valor recibido ya que era un char
  b=readline("ingrese el resultado de Esther: ") #recibiendo el valor de Esther
  b=as.integer(b) #convirtiendo un entero el valor recibido ya que era un char
  Max=max(a,b) #funcion que halla el maximo de los 2 valores recibidos
  dice=1:6 #valores de un dado
  sumadelazamientos=factor(rowSums(expand.grid(dice,dice,dice))) #suma de los resultados obtenidos al lanzar 3 dados
  frecuencias=table(sumadelazamientos) #frecuencias de los resultados
  casos=sum(frecuencias[(Max-2):16]) #suma de los casos en los que Jessica gana
  euc=mcd(casos,216) #mcd de los casos favorables y el total 216
  cat("la probabilidad de que Jessica gane es: ",casos/euc,"/",216/euc,"\n")
}
uganda()
