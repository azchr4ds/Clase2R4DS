rm(list = ls())
setwd("C:/Users/AZCH/Desktop/Clase2R4DS")
dir()

#### Cargamos la data : RetailSales.csv.txt ####
retail <- read.csv(file = "RetailSales.csv.txt")

#### Alguna informacion del DF ####
class(retail)
str(retail)
colnames(retail)
View(retail)


#### limpieza de datos ####
# notamos que existen filas que posseen elementos vacios
# asi como elementos de tipo NA
help("na.omit")
retail <- na.omit(retail)
# na.omit elimina todas las filas que por lo menos tengan un elemento
# de tipo NA

str(retail)

#### retail : analisis por a�o ####
# veamos cuanto es lo que produjo de ventas por a�o
retail
retail[retail$Year==2000, ]
class(retail[retail$Year==2000, ])
retail[retail$Year==2000, ]$Sales
sum(retail[retail$Year==2000, ]$Sales)
unique(retail$Year)

# Utilicemos una estructura for para crear un data frame donde
# almacenaremos un resumen por a�o
ResumenSales <- data.frame(Year = integer(),
                           VentaTotal = double())
NuevaFila <- data.frame()

for(y in unique(retail$Year)){
  NuevaFila<- data.frame(Year = y , VentaTotal =sum(retail[retail$Year==y, ]$Sales))
  ResumenSales <- rbind(ResumenSales, NuevaFila)
}

plot(x = ResumenSales$Year , y = ResumenSales$VentaTotal)


#### Comportamiento de la data por mes ####
retail[retail$Month == "Jan", ]$Sales
unique(retail$Month)
help("aggregate")

RetailMes <- aggregate(Sales ~ Month , data = retail, FUN = sum)
RetailMes

month.abb
month.name


RetailMes <- RetailMes[order(match(RetailMes$Month, month.abb)), ]











































