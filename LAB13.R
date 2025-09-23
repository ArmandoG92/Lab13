
####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)
Alumno: Luis Armando González Arellano

# LABORATORIO - Gráficos en R con ggplot2 

install.packages("ggplot2")
# cargar libreria ggplot2
library(ggplot2)

# leer df
green_data <- read.csv("REGESIONES FINALES.csv")


# echando un ojo a los datos
names(green_data)


# colocando objetos
p1 <- ggplot(data = green_data,
             mapping=aes(x=ICE_index,
                         y=GCI_index,))+
  geom_point()+
  geom_text(label= green_data$STATE,
            color= "black",
            size = 4)+
  geom_point()+
  geom_smooth(method = lm,
              se = FALSE,
              fullrange = T)

p1

p2 <- ggplot(data = green_data,
             mapping=aes(x=ICE_rank,
                         y=GCI_rank,))+
  geom_point()+
  geom_text(label= green_data$STATE,
            color= "black",
            size = 4)+
  geom_point()+
  geom_smooth(method = lm,
              se = FALSE,
              fullrange = T)


p2

p3 <- ggplot(data = green_data,
             mapping=aes(x=LPIBE,
                         y=GCI_rank,))+
  geom_point()+
  geom_text(label= green_data$STATE,
            color= "black",
            size = 4)+
  geom_point()+
  geom_smooth(method = lm,
              se = FALSE,
              fullrange = T)

p3

### correl1
install.packages("psych")
library(psych)

library(readr)
correl <- read_csv("correl.csv")


### correl2

# Calculamos la correlación 


# Redondeamos


#matriz de correlación
install.packages("ggcorrplot")
library(ggcorrplot)
library(ggplot2)



p4


#####
install.packages("ggpubr")

require(ggpubr)
ggpubr :: ggarrange (p1, p2, p3, p4, etiquetas = c ("A", "B", "C" , "D"))

#####

library(ggplot2)

install.packages("gridExtra")
require (gridExtra)
F1 <- grid.arrange (p1, p2, p3, p4, nrow = 2)