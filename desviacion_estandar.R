# Suponga que las edades de los niños de un salón completo de primero de primaria
# son:
#   
#   7, 6, 5, 8, 7, 7, 7, 5, 6, 8. 
# 
# Calcular la desviación estándar de dicha población.

edades <- c(7, 6, 5, 8, 7, 7, 7, 5, 6, 8)
# opcion 1
sd(edades)

# opcion 2
m <- mean(edades)
d2 <- (edades - m)^2
sd2 <- sum(d2)
n <- length(edades)
var <- sd2/(n-1)
d.estandar <- sqrt(var)

d.estandar
