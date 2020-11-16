data("iris") # se carga la base de datos iris
iris_m<-iris[1:100,c(2,4,5)] # selecciona los 100 valores  de los datos y selecciona la fila 2  fila 4 y la fuila 5
View(iris)
View(iris_m)
iris2_m<-as.data.frame(iris_m) #se guardan los datos que se vizualizaron en iris_m
library("dplyr") # para  manipular dataframes 
iris2_m=mutate(iris2_m,var_intermedia=rep(0:1,c(50,50)))# mutar o transformar iris2_m y la variabe intermedia cambiara a setosa y versicolor la mitad de 50 y 50 
#y separara la setosa con  versicolor 0 y 1para su analisis
View(iris2_m)
iris2_m$var_intermedia<-iris2_m$var_intermedia==0
# en este codigo $ extrae datos  que se necesiten  en este caso solo va a traer 0 y 1
View(iris2_m$var_intermedia)
modelo<-glm(var_intermedia~Sepal.Width+Petal.Width,data=iris2_m,family=binomial())# el modelo  glm permite ajustar barios modelos  lineales de muchos tipos
# en este caso var se modelara con sepal y sumara el ancho de petal y los datos iris  y la binomial 
summary(modelo)# resumen de modelo
plot(modelo)
#1 era grafica Residual vs fitted se tiene una grafica  de racional
#2 se obtiene una grafica de cuantiles que esta ajustada  en este caso se acepta la hipotesis
#3 se tiene una campana gaussiana que  es una platicurtica y  no hay sesgos
#4 se tiene que los datos  continuos y cuantitativos  de pearson [-1,1]y se obtiene  una correlacion positiva 

