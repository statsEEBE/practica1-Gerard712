#Codigo para problema 1

mis_dades<-mtcars   #data.frame: base de datos, repeticion experimento aleatorio
mis_dades
dim(mis_dades)  #11 variables , 32 experimentos
names(mis_dades)

#pregunta 1
mis_dades$qsec    #extraer datos de variable qsec

#por donde espero los datos de la variable(centralidad), promedio= 1/n*(X1+X2...)

x<-mis_dades$qsec
sum(x)/length(x)  #promedio=media
mean(x)  #promedio=media

#pregunta 2
mis_dades$drat
sort(mis_dades$drat)  #ordenar de mayor a menor
median(mis_dades$drat)  #mediana

#pregunta 3
#primer quartil: cortar el primer cuarto
quantile(mis_dades$drat,0.25)
quantile(mis_dades$drat,0.75)

#pregunta 4
mis_dades$mpg
sort(mis_dades$mpg)
quantile(mis_dades$mpg,0.18)
quantile(mis_dades$mpg,0.75)
quantile(mis_dades$mpg,0.25)

#pregunta 5
#rango interquartilico= medida dispersion, distancia entre quartiles
quantile(mis_dades$mpg,0.75)-quantile(mis_dades$mpg,0.25)
IQR(mis_dades$mpg)
boxplot(mis_dades$mpg)

mis_dades$cyl
IQR(mis_dades$cyl)
median(mis_dades$cyl)
mean(mis_dades$cyl)


#pregunta 6
#medida de dipersion= 1/n-1*(media-X)^2= S^2, varianza muestral(corregida) VAR(X)
#desviación típica S= sd(x)
sd(mis_dades$cyl)
var(mis_dades$qsec)

sum(mis_dades$qsec-mean(mis_dades$qsec))^2/(length(mis_dades$qsec)-1)



