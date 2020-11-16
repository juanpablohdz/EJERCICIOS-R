install.packages("TSA") #ANALISIS DE SERIE TEMPORALES
library(TSA)
data("AirPassengers") #UTILIZAMOS UNA BASE DE DATOS PRECARGADA EN  R 
serie.ts<-ts(AirPassengers) #AGREGAMOS  LOS DATOS A UNA SERIE TEMPORAL
str(serie.ts) #pasamos a una cadena de caracteres de cadena (string)
decompose(AirPassengers) #decompose(obtiene las series de tendencia, estacionalidad e irregular de una serie temporal a través de medias móviles, además permite obtener los componentes en base a un esquema aditivo ó multiplicativo.)
plot(decompose(AirPassengers))# muestra las 4 lineas de descomposision de una grafia

plot(serie.ts,main="Pasajeros de 1960 a 1971",xlab="años",ylab="numero de psajeros")# grafica la base de datos  de la serie.ts
install.packages("forecast")# se instala forecast para iniciar con la prediccion
library("forecast")#installacion de la libreria
modelo<-auto.arima(serie.ts)# auto.arima proporciona  una opcion  rapida  para construir pronosticos  con serie temporales
summary(modelo) # muestra datos estadisticos
pronostico<-forecast(modelo,12,level=95) # va a hacer la  predccion en 12 años  con el nivel de confienza en un  95 % de confiabiliadad 
pronostico # muestra el pronostico con el nivel de confiabilidad de la campana gaussiana 
plot(pronostico,main="pronostico",xlab = "años",ylab = "numero pasajeros")
#con esta grafica se pronostica que se aumentaran los pasjeros en 12 años
View(AirPassengers)
