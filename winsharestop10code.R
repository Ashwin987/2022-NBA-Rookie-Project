library(tidyverse)
library(showtext)
library(ggtext)
data2 <- data2
library(ggplot2)
library(ggrepel)

din (data2)

str(data2)

#--------------
#code start- Interceptions 
#-----------

e <- ggplot(data2, aes(Draft.Position ,Win.Shares.per.48.minutes))
e + geom_text(aes(label=Draft.Position ))
e + geom_text(aes(label=Draft.Position ,colour=factor(Draft.Position )))

#--------------------------------------

#Without linear Regression-Interceptions
e + geom_point(aes(colour=Draft.Position ))
#---------------------------------------

e + 
  geom_label_repel(data12 = subset(data2, Name == "Keegan Muuray"), 
                   aes(label = Name, size = NULL, color = "red"), nudge_y = 0,)


