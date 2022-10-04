#one sample proportion z -test
#bài toán
#Để cải thiện sự thoải mái trong giờ làm việc, nhằm nâng cao chất lượng công việc công ty tiến hành điều tra trên 1500 nhân viên, thì thấy rằng  có 1150 nhân viên trả lời
#rằng sau 16h30 thì sự tập trung cho công việc giảm hẳn
#hỏi có phải 75% nhân viên cảm thấy làm việc sau 16h30 thì không hiệu quả không

#H0: p = 0.75
install.packages("BSDA")
library(BSDA)

prop.test(x=1150, n=1500, p=0.75, alternative = "greater")
#Kết luận: có đủ căn cứ để nói rằng 75% nhân viên làm việc sau 16h30 là ko hiệu quả (p-value = 0.07202 > alpha 0.05)