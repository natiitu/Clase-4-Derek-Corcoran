# cargar la base de datos

library(tidyverse)
library(ggplot2)

data("diamonds")
view(diamonds)

ggplot(diamonds, aes(x=carat, y = price))+ 
  geom_point(aes(color=cut))

#argumentos para geoms

ggplot(diamonds, aes(x=carat, y = price)) + 
  geom_point(aes(color=cut), alpha=0.2, size=4)

#size...Para mtcars vamos a cambiar el tama?o

data("mtcars")
ggplot(diamonds, aes(x= carat, y= price) + 
         geom_point(aes(shape=cut, color=color)) +
         theme_classic
       
       #boxplot
       
       data("iris") 
       
       ggplot(iris,aes(x=Species, y=Sepal.Width))+ 
         geom_boxplot(notch = T, aes(fill=Species))
       
       
       ggplot(iris,aes(x=Species, y=Sepal.Width))+ 
         geom_boxplot(notch = T, aes(color=Species))
       
       
       ggplot(iris,aes(x=Species, y=Sepal.Width))+ 
         geom_boxplot(notch = T, aes(fill=Species))+
         scale_fill_manual(values=c("yellow", "red","orange"))
       
       #Colorbrewer 2.0 <-paleta de colores de internet.
       
       #Una variable categorica una continua