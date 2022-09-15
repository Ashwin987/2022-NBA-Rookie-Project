library(tidyverse)
library(showtext)
library(ggtext)
data25 <- data25
library(ggplot2)
library(ggrepel)

din (data25)

str(data25)

#--------------
#code start- Interceptions 
#-----------

e <- ggplot(data25, aes(Starting.Price,Interceptions))
e + geom_text(aes(label=Starting.Price))
e + geom_text(aes(label=Starting.Price,colour=factor(Starting.Price)))

#--------------------------------------

#Without linear Regression-Interceptions
e + geom_point(aes(colour=Starting.Price))
#---------------------------------------

e + 
  geom_label_repel(data25 = subset(data25, Player == "Declan Rice"), 
                   aes(label = Player, size = NULL, color = NULL), nudge_y = 0.75,)


