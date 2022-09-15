library(tidyverse)
library(showtext)
library(ggtext)
data12 <- data12
library(ggplot2)
library(ggrepel)

din (data12)

str(data12)

#--------------
#code start- Interceptions 
#-----------

e <- ggplot(data12, aes(Draft.Position ,Points.per.40.mins))
e + geom_text(aes(label=Draft.Position ))
e + geom_text(aes(label=Draft.Position ,colour=factor(Draft.Position )))

#--------------------------------------

#Without linear Regression-Interceptions
e + geom_point(aes(colour=Draft.Position ))
#---------------------------------------

e + 
  geom_label_repel(data12 = subset(data12, Name == "Declan Rice"), 
                   aes(label = Name, size = NULL, color = "red"), nudge_y = 0,)


