df <- read.csv("D:/R/D11/binary.csv")
df

mymodel = glm(formula = admit ~ gre+gpa+rank, data =  df, family = binomial)
summary(mymodel)

newdata = data.frame(gre = 120, gpa = 3,rank = 2)

predict(mymodel, newdata, type = "response")