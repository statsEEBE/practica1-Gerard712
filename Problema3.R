#pregunta 3

x <- 10:20 #numeros del 10 al 20

x[2] #seleccionar numero
x[2:4] #seleccionar varios
x[-c(3,5,7)] #borrar numeros de esas posiciones

sum(x)
y<-x[-c(3,5,7)]
y

sum(exp(x)-exp(y))