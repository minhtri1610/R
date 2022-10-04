#kiểm định tỉ lệ*(Proportion z-test)
#Bài toán
# Trong mùa covid người ta khảo sát tại 900 người tại 1 tỉnh thì thấy có 189 người nhiễm covid
# Trong khi ở thành phố thì khảo sát trên 1200 người thì thấy có 192 người nhiễm covid
#Đặt ra câu hỏi là tỉ lệ nhiễm covid ở nông thôn và thành thị có tương đương nhau không

install.packages("BSDA")
library(BSDA)

prop.test(x = c(189,192), n= c(900,1200), alternative = "two.sided")

#kết luận: p-value = 0.003. với độ tin cậy 95% (tương đương alpha 0.05), ta ko đủ căn cứ để kết luận hai tỉ lệ có tương đương nhau hay không