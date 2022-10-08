
#simple linear regression
df <- read.csv("D:/R/R/D9/sale.csv")
df
model = lm(LOINHUAN ~ CHIPHISX, data=df)
coff = coefficients(model)
coff

#Nếu chi phí là 5.6 thì  lợi nhuận bao nhiêu
chiphi = 5.6
loinhuan = coff[1] + coff[2] * chiphi
loinhuan

#R-square: cho biết mức độ giải thích của biến độc lập đối với biến phụ thuộc
summary(model)$r.squared
#mức độ giải thích của mô hình yếu( >0.5 là tốt)

summary(model)

#p-value: 2.933 chấp nhận H0
#kiểm tra mối quan hệ giữa biến độc lập và biến phụ thuộc căn cứ vào p-value

#dự báo khoảng tin cậy 95%
predict(model, data.frame(CHIPHISX=5.5), interval = "confidence")

#fit là giá trị dự báo, lwr và upr là cận trên và dưới của kết quả dự báo
# fit      lwr      upr
# 6.554257 6.289323 6.819191

#residual plot
res = resid(model)
plot(df$CHIPHISX, res, ylab = "Residuals", xlab = "Chi phí sản xuất", main="Biểu đồ phần dư", abline(0,0))
#là trị tuyệt đối của giá trị thực và giá trị dự báo theo mô hình
#Nhìn vào biểu dồ phần dư, mô hình tốt nếu tất cả các điểm tập trung gần đường abline(0,0)

#kiểm định về độ lệch chuẩn của phần dư
resstd = rstandard(model)

qqnorm(resstd, ylab="Độ lệch chuẩn phần dư", xlab="Normal score", main="Biểu đồ kiểm định std của phần dư")

qqline(resstd)

#Dựa vào biểu đồ ta thấy độ lệch chuẩn của phần dư tuân theo phân phối chuẩn