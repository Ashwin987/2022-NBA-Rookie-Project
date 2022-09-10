library(tidyverse)
library(showtext)
library(ggtext)
data50 <- data50
library(ggplot2)

din (data50)

str(data50)
########################
e <- ggplot(data50, aes(College.international.g.league,Points.Per.Game ))
e + geom_text(aes(label=College.international.g.league))
e + geom_text(aes(label=College.international.g.league,colour=factor(College.international.g.league)))


e + geom_point(aes(colour=College.international.g.league,))

summary(data50)

####################################################


