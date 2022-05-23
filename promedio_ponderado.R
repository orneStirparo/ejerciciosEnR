# Promedio ponderado
# 
# En ’América Económica’ se evalúan 52 ciudades latinoamericanas en ocho aspectos para determinar cuáles son las mejores para hacer
# negocios: marco social y político (15 %), marco y dinamismo económico (25 %), servicios a empresas
# (10 %), servicios a ejecutivos (10 %), infraestructura y conectividad física (10 %),
# capital humano (10 %), sustentabilidad medioambiental (5 %) y poder de la marca (15 %).
# Sus calificaciones van de 0 a 100 puntos.
# 
# Por ejemplo los índices de tres ciudades se muestran a a continuación:
#   
#   M.S.P M.D.E S.E  S.Ej I.C.F C.H  S.A  P.M
# Sao Paulo    69,6  76,7  69,5 70,5 63,1  97,3 90,4 96,1
# Bogotá       68,4  72,9  66,2 74,1 61,9  87,1 87,1 94,0
# Buenos Aires 67,0  59,2  90,3 67,4 40,5  97,1 91.5 97,2
# 
# Encuentre el promedio ponderado por cada uno de los aspectos indicados para
# cada una de estas ciudades.
library(readxl)
file.choose()
ejR <- read_excel("C:\\Users\\ornel\\Downloads\\ejR.xlsx", sheet = "Sheet4")
View(ejR)

SaoPaulo <- ejR$`Sao Paulo`
Bogota <- ejR$Bogotá
BuenosAires <- ejR$`Buenos Aires`

# Promedio Ponderado
ppSP <- weighted.mean(SaoPaulo)
ppB <- weighted.mean(Bogota)
ppBsAs <- weighted.mean(BuenosAires)

ppSP
ppB
ppBsAs
