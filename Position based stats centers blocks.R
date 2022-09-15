library(tidyverse)
library(showtext)
library(ggtext)
data30 <- data30
library(ggplot2)

din (data30)

str(data30)

#--------------
#code start-Defenisve Win Shares
#-----------

e <- ggplot(data30, aes(Draft.Position,Blocks.POWER.FORWARDS.AND.CENTERS.))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))

#--------------------------------------

#Without linear Regression-EFG%
e + geom_point(aes(colour=Name))
#---------------------------------------



#-------------------------------
#With linear regrsssion-EFG%

ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp



ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")
#---------------------------------




#--------------
#code start-STEALS
#-----------
e <- ggplot(data5, aes(Draft.Position,Steals))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))

#--------------------------------------

#Without linear Regression-EFG%
e + geom_point(aes(colour=Name))
#---------------------------------------



#-------------------------------
#With linear regrsssion-EFG%

ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp



ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")
#---------------------------------





