library("factoextra")

data9

#iris Labels
data9.labels = data9$Efficiency
table(data9.labels)
data9_data <- data9 [1:2]

#scale data

data9_data_scale <- scale(data9_data)

#distance 

data9_data <- dist(data9_data_scale)

#calculate how many clusters you need
#fviz_nbclust use this to find the right ammount of clusters
fviz_nbclust(data9_data_scale, kmeans, method= "wss") +
  labs(subtitle= "Elbow Method")


#kmeans

km.out <- kmeans(data9_data_scale, centers= 3, nstart=58)
print(km.out)


#Visualizing cluster data

km.clusters <- km.out$cluster
#rownames(data9_data_scale) <- paste(data9$Efficiency, 1: dim(data9)[1], sep = "_")

require(reshape2)
data9$id <- rownames(data9) 
melt(data9)

fviz_cluster(list(data=data9_data_scale, cluster= km.clusters))


#-------------------------------------------
install.packages("dplyr")

library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)


data9
mydata= select(data9,c(1,2))

#WSS plot function

wssplot <- function(data, nc=15, seed=12)
{
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  
  for (i in 2: nc){
    set.seed(seed)
    wss[i]<- sum(kmeans(data,centers=i)$withinss)}
  plot(1:nc,wss, type= "b", xlab= "Number of Clusters",
       ylab="within groups sum of squares")
}


wssplot(mydata)


KM=kmeans(mydata,5)


autoplot(KM,mydata, frame=TRUE)

KM$centers

table(km.clusters, data9$E)
#---------------------------------------------

