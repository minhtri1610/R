# URL: https://www.r-bloggers.com/2021/04//
install.packages("DAAG")
install.packages("party")
install.packages("rpart")
install.packages("rpart.plot")
install.packages("mlbench")
install.packages("caret")
install.packages("pROC")
install.packages("tree")
library(DAAG)
library(party)
library(rpart)
library(rpart.plot)
library(mlbench)
library(caret)
library(pROC)
library(tree)

# Step 1: Load data
data <- read.csv("D:/R/R/D11/binary.csv", header = T)
data

# Step X: Xử lý dữ liệu và EDA dữ liệu
data$admit[data$admit == 0] <- 'No'
data$admit[data$admit == 1] <- 'Yes'

data$admit <- factor(data$admit)
data$gre <- as.factor(data$gre)
data$gpa <- as.factor(data$gpa)
data$rank <- as.factor(data$rank)

# Step 2: Split into test and train
set.seed(1234)
ind <- sample(2, nrow(data), replace = T, prob = c(0.8, 0.2))
train <- data[ind==1,]
test <- data[ind==2,]

# Step 3: tree classification
tree <- rpart(admit ~., data= train)

#plot tree
rpart.plot(tree)

#print tree info 
printcp(tree)

#validation on train
rpart(formula = admit ~., data = train)

tree <- rpart(admit ~., data = train, cp = 0.07444)

p <- predict(tree, train, type = 'class')
confusionMatrix(p, train$admit, positive='Yes')


