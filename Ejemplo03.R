#### Estructura de deciscion IF ####
x <- runif(1, 0, 10)
if(x>5){
  y <- TRUE
}else{
  y <- FALSE
}

#  en general 
# if(cond1){
#   # bloque de codigo
# }else if (cond2){
#   # bloque de codigo
# } else {
#   # Otro bloque de codigo 
# }


#### Estructura de repeticion : FOR ####
for(i in 1:5){
  print(i)
}

# en general 
# for(variable in ObjetoIterable){
#   # algo de codigo que depende de variable
# }


#### Paquetes/librerias en R ####
sessionInfo()


# Para cargar el paquete extraDistr
library(extraDistr) # cargamos el paquete/libreria de extraDistr
help("extraDistr") # accedemos a la ayuda de paquete
library(help = "extraDistr") # mostramos toda la informacion que posee el paquete
help("BetaPrime") # accedemos a la ayuda de una funcion

#### Definicion de funciones de usuario e R ####
# sintaxis

# NombreDeLaFuncion <- function(arg1,arg2, ....){
#   # alguna funcionalidad 
# }




















