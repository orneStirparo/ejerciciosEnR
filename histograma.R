# Considere los siguientes datos de edades de 42 estudiantes:
#   
# 20 17 18 25 23 15
# 18 22 21 22 23 23
# 19 20 30 25 24 25
# 21 24 24 21 23 22
# 26 24 23 21 21 18
# 21 23 24 16 17 19
# 26 23 24 18 21 33
# 
# a. Introducir los datos en R.
library(readr)
file.choose()
ruta <- "C:\\Users\\ornel\\Downloads\\ejercicioR.csv"
matriz <- read_csv(ruta,
                   col_names = FALSE)
View(matriz)

# b. Ordenar los datos de menor a mayor.
m1 <- matriz$X1
m2 <- matriz$X2
m3 <- matriz$X3
m4 <- matriz$X4
m5 <- matriz$X5
m6 <- matriz$X6

ej <- cbind(m1,m2,m3,m4,m5,m6)
datosOrdenados <- sort(ej)
datosOrdenados

# c. Construir una tabla de frecuencias absolutas, relativas y acumuladas. Usar
# seis clases.
total <- length(ej)
FA <- table(ej)
FR <- FA/total
FAA <- cumsum(FA)
FRA <- cumsum(FR)
FA
FR
FAA
FRA

# d. Graficar un histograma.
hist(ej,
     col = 'pink',
     xlab = "edades",
     ylab = "frecuencia",
     main = "Histograma de edades")

