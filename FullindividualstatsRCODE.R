library(tidyverse)
library(showtext)
library(ggtext)
data2 <- data2
library(ggplot2)

din (data2)

str(data2)
#--------------------------------------------------------------
#Templates
#-----------------------------------------------------------------


plot(data2$Draft.Position, data2$Effective.field.goal.rating..EFG....)

# Add some options

plot(data2$Draft.Position, data2$Effective.field.goal.rating..EFG....,
     pch = 19,         # Solid circle
     cex = .5,        # Make 150% size
     col = "#cc0000",  # Red
     main = "EFG% Per Player",
     xlab = "Draft Position",
     ylab = "EFG%")

##########################################

a <- ggplot(data2, aes(x=Draft.Position,y=Effective.field.goal.rating..EFG....))
a <- a + geom_blank() + ylim(0,35)+ xlim(0,5)
a <- a + geom_hline(yintercept = 25)
a <- a + geom_vline(xintercept = 4)
a <- a + geom_abline(intercept = 10, slope=5)
a

#------------------------------------

#Real Code
#DRAFT POSITION AND EFG%
#---------------------------------------

e <- ggplot(data2, aes(Draft.Position,Effective.field.goal.rating..EFG....))
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
#--------------------------------------
#e + geom_jitter(aes(colour = factor(Draft.Position),shape = factor(Draft.Position)))



#------------------------------------------------------------------
#POINTS PER 40
e <- ggplot(data2, aes(Draft.Position,Points.per.40.mins))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))


#---------------------------------------------------------


#----------------------------------------------------------------
#WITHOUT LINEAR REGRESSION-Points per 40
e + geom_point(aes(colour=Name))
#-------------------------------


#----------------------------------

#With linear regression-Points per 40
ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp

ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")






#--------------------------------

#FIELD GOAL PERCENTAGE

e <- ggplot(data2, aes(Draft.Position,Field.Goal.percentage))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))



#----------------------------------------------------------------


#WITHOUT LINEAR REGRESSION-FIELD GOAL

e + geom_point(aes(colour=Name))


#-------------------------------
#With linear regression-FIELD GOAL
ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp

ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")


#--------------------------------
#GAMES PLAYED

e <- ggplot(data2, aes(Draft.Position,Games.Played))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))

#----------------------------------------------------------------




#WITHOUT LINEAR REGRESSION-GAMES PLAYED

e + geom_point(aes(colour=Name))


#-------------------------------
#With linear regression-GAMES PLAYED
ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp

ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")


#--------------------------------
#Plus/Minus Rating
e <- ggplot(data2, aes(Draft.Position,Plus.Minus.Rating))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))


#WITHOUT LINEAR REGRESSION-Plus/Minus Rating

e + geom_point(aes(colour=Name))


#With linear regression-Plus/Minus Rating
ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp

ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")
#------------------------

#--------------------------------
#Win Shares
e <- ggplot(data2, aes(Draft.Position,Win.Shares.per.48.minutes))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))


#WITHOUT LINEAR REGRESSION-Win Shares

e + geom_point(aes(colour=Name))


#With linear regression-Win Shares
ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp

ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")
#------------------------

#--------------------------------


#Usuage%
e <- ggplot(data2, aes(Draft.Position,Usage...))
e + geom_text(aes(label=Draft.Position))
e + geom_text(aes(label=Draft.Position,colour=factor(Draft.Position)))


#WITHOUT LINEAR REGRESSION-Usuage%

e + geom_point(aes(colour=Name))


#With linear regression-Usuage%
ggp <- e + geom_point(aes(colour=Name))
geom_point()
ggp

ggp +                                     
  stat_smooth(method = "lm",
              formula = y ~ x,
              geom = "smooth")
#------------------------
#END CODE




