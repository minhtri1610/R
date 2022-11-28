# URL: https://www.r-bloggers.com/2021/04/logistic-regression-r-tutorial/
install.packages("naivebayes")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("psych")
library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
# Step 1: Load data
data <- read.csv("D:/R/R/D11/binary.csv", header = T)
data

# Step X: Xử lý dữ liệu và EDA dữ liệu
data$admit <- as.factor(data$admit)
data$gre <- as.factor(data$gre)
data$gpa <- as.factor(data$gpa)
data$rank <- as.factor(data$rank)


# Step 2: Split into test and train
set.seed(1234)
ind <- sample(2, nrow(data), replace = T, prob = c(0.8, 0.2))
train <- data[ind==1,]
test <- data[ind==2,]

# Step 3: Build model on train dataset
mymodel <- naive_bayes(admit ~ ., data = train, usekernel = T)
summary(mymodel)

# Step 4: Evaluation: Train dataset
p1 <- predict(mymodel, train)
tab1 <- table(p1,train$admit)
tab1

# Step 4.1: Evaluation: Test dataset
p2 <- predict(mymodel, test)
tab2 <- table(p2, test$admit)
tab2

