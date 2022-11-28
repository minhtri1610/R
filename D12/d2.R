#Bafi toan FRM-> PCA
install.packages("factoextra")

library(ggplot2)
library(factoextra)
library(dplyr)

data <- read.csv("D:/R/R/D12/Mall_Customers.csv", header = T)
data

data$AnnualIncome = factor(data$AnnualIncome)
data$SpendingScore = factor(data$SpendingScore)

library(ggplot2)
ggplot(data, aes(AnnualIncome, SpendingScore, color = Gender)) + geom_point()

