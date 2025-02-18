#Codigo para problema 2
#cyl variable discreta
#tabla frecuencias
mis_dades<-mtcars
x<-mis_dades$cyl

#frecuencia absoluta, cuantos coches vi con x valor
ni<-table(x) #tabla frecuencias
barplot(ni) 
ni

#frecuencia relativa
fi<-ni/length(x)
fi
pie(fi) #todas las frecuencias dan 1, gráfico de sectores

#frecuencia absoluta acumulada, hasta cuantos coches vi con x cylindros
Ni<-cumsum(ni)
Ni

#frecuencia relativa acumulada, hasta cuantos coches vi con x cylindros en porcentaje
Fi<-cumsum(fi)
Fi

#resumen
ni<-table(x)
fi<-ni/length(x)
Ni<-cumsum(ni)
Fi<-cumsum(fi)
cbind(ni,fi,Ni,Fi) #tabla de frecuencias

x<-mis_dades$mpg #variable contínua, hay que discretizar
x<-cut(x,10) #variable contínua, hay que discretizar
ni<-table(x)
fi<-ni/length(x)
Ni<-cumsum(ni)
Fi<-cumsum(fi)
cbind(ni,fi,Ni,Fi)

#resolucion problema
data<-mis_dades
hist(data$mpg)