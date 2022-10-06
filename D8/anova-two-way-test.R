df <- read.csv('D:/R/R/hocvien2.csv', header=TRUE)

df

model <- aov(Multimedia ~ QTR*LOCATION, data=df)
summary(model)
#-> chấp nhận H0 dựa vào cột Pr(>F) nếu > 0.05