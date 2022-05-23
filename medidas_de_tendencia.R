# Un estudio realizado por la Federación Colombiana de Gestión Humana en el
# año 2016, muestra que los salarios mínimos para algunos países de latinoamerica
# en dólares son los siguientes:
#   
# Argentina Bolivia Brasil Chile Colombia
# 432,21 239,48 249,94 373,22 233,86
# Ecuador Paraguay Perú Uruguay Venezuela
# 366 331,11 258,86 349,20 31,60
# a. Encontrar el salario promedio de estos países.
# b. Encontrar la desviación estándar de la muestra.
# c. Encuentre los salarios mínimos más altos y más bajos de la muestra.
library(readxl)
ejR <- read_excel("C:\\Users\\ornel\\Downloads\\ejR.xlsx", sheet = "Sheet1")
View(ejR)

salariomin <- ejR$salarioMinimo

# A. salario promedio
salProm <- mean(salariomin)
salProm
# B. Desviacion estandar
desEstandar <- sd(salariomin)
desEstandar
# C. salario minimo
salarioMinimo <- min(salariomin)
salarioMinimo
# C. salario maximo
salarioMaximo <- max(salariomin)
salarioMaximo
