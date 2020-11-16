library(C50) # para generar arboles de decision
data("iris")#genera  la base de datos iris 
View(iris)# se vizualiza  la base de datos
bd <-iris # se mete la base ded datos en una variable llamada bd
set.seed(120)#La función set. seed se usa para establecer la semilla aleatoria para todas las funciones de aleatorización en este caso se  creara en 120 formas de aleatorizacion 
dimension.total<-nrow(bd) # dimensiona la  y hace aleatoria la fila random row 
dimension.entreno<-round(dimension.total*0.7)#redondea los numeros decimales por la dimension total de 0.7
View(dimension.total)
View(dimension.entreno)
bd.indices<-sample(1:dimension.total,size=dimension.entreno)# el sample va  a hacer numeros aleatorios  con la dimension entreno que son 105 resultados
View(bd.indices)# pude ver la matriz de 1(fila):el numero maximo que es 150 y el tamaño es  la dimension entreno 105 valores
bd.entreno<-bd[-bd.indices,]#el objeto de la base de datos iris se va a restar  con bd.indices
View(bd.entreno)
bd.test<-bd[bd.indices,]#se va  a tomar los 105 datos para plicar el test
View(Species)
modelo<-C5.0(Species~.,data=bd.entreno)# El "~" (virgulilla) debería leerse como "es modelado por" o "es modelado como una
# función de". entnces Species es una funcion  que consulta, ordenar y ensamblar  
summary(modelo) # el resumen de todo lo que se a echo
plot(modelo) # se grafica el modelo  del arbol de decision y obtenemos cada planta con su  separacion 
