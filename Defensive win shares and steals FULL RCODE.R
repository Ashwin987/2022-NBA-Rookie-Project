library(tidyverse)
library(showtext)
library(ggtext)
data5 <- data5
library(ggplot2)

din (data5)

str(data5)

#--------------
#code start-Defenisve Win Shares
#-----------

e <- ggplot(data5, aes(Draft.Position,Defensive.Win.Shares))
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





