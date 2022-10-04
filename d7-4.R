#T- test dùng hco mẫu nhỏ
#One sample T-test

#bải toán:
#người ta tiến hành điều tra năng suất của giống lúa mới tại miền tây để đánh giá xem năng suất trung bình có đạt 5.53 tạ / ha
#biết rằng sau 6 tháng trồng lúa thử nghiệm
# người ta lần lượt thu hoạch trên các khu vực thí điểm như sau: 5.44, 5.51, 5.48, 5.56, 5.49, 5.54
#

install.packages("BSDA")
library(BSDA)

data <- c(5.44, 5.51, 5.48, 5.56, 5.49, 5.54)
qqnorm(data)
qqline(data)

t.test(x=data, mu=5.53, alternative = "less", conf.level = 0.95)

#kết luận; p-value= 0.095 > 0.05 có cơ sở để kết luận giống lứa mới có năng suất trung bình là 5,53 tạ /ha