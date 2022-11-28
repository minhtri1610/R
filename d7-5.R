#mẫu nhỏ < 30
#two sample t test
#bài toán: công ty muốn nâng cao trình độ ngoại ngữ của nhân viên, nên nhờ một trun tâm ABC đào tạo, công ty đánh giá trình độ tiếng anh 
# sau khi nhân viên hoàn tất khoá học tại trung tâm thấy điểm TOEIC của 10 nhân viên, thì thấy rằng
# trước khi học tại trung tâm thì điểm là 390, 430, 410, 320, 370, 400, 420,400, 370, 380
# sau khi học thì điểm là 420, 450, 420, 430, 400, 440, 400,430, 410,400

#hỏi nhân viên học tại trung tậm có hiệu quả không, để công ty có quyết định đầu tư cho toàn bộ nhân viên học tại trung tâm

install.packages("BSDA")
library(BSDA)

data_bf <- c(390, 430, 410, 320, 370, 400, 420,400, 370, 380)
data_af <- c(420, 450, 420, 430, 400, 440, 400,430, 410,400)

t.test(x=data_bf, y=data_af, paired=TRUE, alternative="greater")

#kết luận: Chấp nhận h0, có đủ bằng chứng học tại trung tâm có kết quả