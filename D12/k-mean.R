# Step 1: Load data
data <- read.csv("D:/R/R/D11/binary.csv", header = T)
data

data$rank[data$rank == 1] <- '1'
data$rank[data$rank == 2] <- '2'
data$rank[data$rank == 3] <- '3'
data$rank[data$rank == 4] <- '4'
data$admit <- factor(data$admit)

#install.packages("ggplot2")
library(ggplot2)
ggplot(data, aes(gpa, gre, color = rank)) + geom_point()

set.seed(20)
cluster <- kmeans(data[,2:3], 3, nstart =  20)
cluster

table(cluster$cluster,data$rank)

cluster$cluster <- as.factor(cluster$cluster)
ggplot(data,aes(gpa,gre,color = cluster$cluster))+geom_point()