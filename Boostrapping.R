A<-c(20,120,130,1,3,4,55,6,22,74,17,29,32,56,42,56,36,2,67,11,10,24,17) # numeros a ocupar


library(boot)#la libreria se ocupara para utilizar el metodo estadistico boostraping
#cuando se corre  sustituir mean por var
F<- function(A,d){return(var(A[d]))} # se guarda una funcion para su analisis y ocuparla en diferentes situaciones
View(F) #muestra de la funcion 
BS<-boot(A,F,R=100000) #seran permutados con una  aleatoriedad de 100000

boot.ci(BS,conf = 0.99,type="basic")# se muestra el intervalo de confianza no parametricos  que en este caso es 99% de confianza 
plot(BS)
# este programa es para cuando los datos son muy escasos ya que son no parametricos son numero enteros 
