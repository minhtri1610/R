#Mann-whitney-wilcoxon test
#Mục tiêu: kiểm định xem là các biến số có độc lập không
# Không cần phải giả định dữ liệu là phân phối chuẩn
#H0: các biến số không có mối quan hệ( tức là độc lập)

library(datasets)
mtcars
#summary(mtcars)

test <- wilcox.test(gear ~ am, data = mtcars)
test

