data (iris)# se   carga la base de datos de flores 
flores<-iris # se mete a una variable
View(flores)# se vizualiza el contenido de las bases de datos 
flores[,1:4]<-scale(flores[,1:4])# selecciona ,1 fila de las 4 columnas 
View(flores[,1:4]) # se viualizan  los datos seleccionados 
distancia_euclidiana<-dist(flores[,1:4])#devuelve un objeto a clase demuestra la medida  de distancia  para calcular  las distancias entre fias  de una matriz de datos 
agrupamiento<-hclust(distancia_euclidiana)# Hay una amplia gama de enfoques jerárquicos de agrupación en clústeres. He tenido buena suerte con el método de Ward descrito a continuación.
(kgrupos<-cutree(agrupamiento,k=1))# corta  un arbol como resultado de hclust el numero en k o altura en h
plot(agrupamiento,hang=4,cex=0.8,labels=flores[,5],main="anlisis cluster") #grafica de arbol con hang que demuestra los arboles no binarios Este parámetro sirve para modificar el tamaño de los símbolos, nombres de los ejes, marcas de los ejes y títulos.
#labels Puede utilizar la función factor para crear sus propias etiquetas de valor.
rect.hclust(agrupamiento,k=25,border = "green") 
# en este punto se clasifica los cluster   para los algoritmos no supervisados  y sirve para determinar  una decision 
