# Nombre: Alex Huamani 20121383b
# Respuesta5a:  

# Item a)
plot.new() # Inicio de un nuevo grafico
# Configuramos el sistema de coordenadas para la ventana de graficos 
plot.window(range(pressure$temperature), # Vector numerico de longitud 2 que proporciona el rango de x
            range(pressure$pressure)) # Vector numerico de longitud 2 que proporciona el rango de y
# Dibujamos un rectangulo alrededor de la grafica actual
box()
# Agregando los ejes al grafico actual con la funcion 'axis(side)' donde 'side' especifica el lado que se dibujara
axis(1) # 'side' es 1, entonces el lado que se dibujara sera el de abajo (eje x)
axis(2) # 'side' es 2, entonces el lado que se dibujara sera el de la izquierda (eje y)
# Dibujamos la secuencia de puntos en las coordenadas especificadas por las temperaturas y el la presion de mercurio
points(pressure$temperature, pressure$pressure)
# Escribimos texto en los margenes de la region de la figura
mtext("temperatura", # texto que se escribira
      side = 1, # Lado del grafico sobre el cual se ubicara el texto (1=abajo)
      line = 3) # Sobre que linea de margen del grafico estara el texto, empezando en 0 y contando hacia afuera
mtext("presion", # texto que se escribira
      side = 2, # Lado del grafico sobre el cual se ubicara el texto (2=izquierda)
      line = 3)
mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura", # texto que se escribira
      side = 3, # Lado del grafico sobre el cual se ubicara el texto (3=arriba)
      line = 1, 
      font = 2) # fuente del texto

