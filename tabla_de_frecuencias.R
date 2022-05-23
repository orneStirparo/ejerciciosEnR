# Ejemplo 1
# Suponga que en cierta escuela las calificaciones de sus estudiantes se clasifican
# en Insuficiente, Bajo, Regular, Medio y Alto. Cada una de ellas es representada
# por sus iniciales, así:
#   
# Insuficiente: “I”
# Bueno: “B”
# Regular: “R”
# Medio: “M”
# Alto: “A”
# 
# En cierto curso de noveno los resultados de la prueba de matemáticas fueron los
# siguientes:
#   
# A A M M M M M I
# B B R I I I R R
# R R R R R R R R
# R M M M M M M M
# M M M M M M A A
# 
# a. Introducir los datos en R.
library(readr)
file.choose()
dataset <- read_csv("C:\\Users\\ornel\\Downloads\\ejercicio.csv", 
                    col_names = FALSE)
View(dataset)

# b. Construya una tabla de frecuencias absolutas.
m1 <- dataset$X1
m2 <- dataset$X2
m3 <- dataset$x3
m4 <- dataset$X4
m5 <- dataset$X5
m6 <- dataset$X6
m7 <- dataset$X7
m8 <- dataset$X8


tabla <- cbind(m1,m2,m3,m4,m5,m6,m7,m8)
FA <- table(tabla)
FA
# c. Construya una tabla de frecuencias relativas.
total <- length(dataset)
FR <- FA / total
FR
# d. Realice un diagrama circular.
colores <- c("light blue", "light green", "purple", "violet", "pink")
pie(FA, main = "Calificaciones", radius = 1, col = colores)

# e. Realice un diagrama de barras.
barplot(FA, xlab = "Clasificaciones", ylab = "Frecuencia", main = "Calificaciones", col = colores)
