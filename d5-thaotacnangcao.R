#1
x<- seq(6,20, by=0.5)
x

#2
y<-rep(1,10)

#3, casp phep toan ao dung truc tiep tren vector
x<- c(2,4,6,8,10)
togbp <- sum(x^2)
x

#4,tao cac so ngau nhien
x<- sample(0:9, 10, replace = TRUE)
x
#5, Tao ra vector co 20 phan tu tu 0 toi 9, hay tinh trung binh va do lech chuan cua cac gia tri tren

x <- sample(0:9, 20, replace =  TRUE)
x
mx <- mean(x)
mx
stdx <- sd(x)
stdx

#6. sinh ra du lieu ngau nhien theo quy luat phan phoi chuan
#voi quy luajt phan phoi chuan thi can cung cap 2 tham so
# tham so 1: trung binh
# tham so 2: do lech chuan

x <- rnorm(20, mean = 5, sd=1.5)
x

#7. Cho diem so (số thực) của học sinh là từ 0 tới 10
# biết răng điểm số của học sinh ở Aptech được tuân theo quy luật của phân phối chuẩn, với giá trị trung bình là 6.5 và độ lệch chuẩn là 1.5
# Haãy tính xác xuất cđể một học sinh sẽ có điểm là 8.0 trong kì thi sắp tới
pdiem8 <- dnorm(8.0, mean=6.5, sd=1.5)
pdiem8

#8. Tiếp theo bài 7, hãy tính xác suaats để 1 học sinh đạt điểm tối thiểu là 9.0 trong kì thi tốt nghiêpj săp tới
ptoithieu9 <- 1-pnorm(9.0, mean=6.5, sd=1.5)
ptoithieu9

#9, R hỗ trợ rất tốt trong các kỹ thuật xư rlý ma trận
#Giả sử có ma trận 
#A 3 dòng 2 cột như sau: 
  #[1 4]
  #[2 5]
  #[3 6]

A <- matrix(c(1,2,3,4,5,6), nrow = 3)
A

#transpose
B <- t(A)
B

#nhân 2 ma trận
C <- A%*%B
C

#Định thức của C
dinhthuc <- det(C)
dinhthuc

#Giá trị riêng của ma trận
dactrung <- eigen(C)
dactrung

#10. Giải hệ phương trình tuyến tính bậc nhất 2 ẩn
# 1*x + 1*y = 3
# 3*x + 1*ty = 7
#hay tìm x, y thoả mãn hệ phương trình trên

# ý tưởng,
#xem phần hệ số ở các vế trà thành các ma trận A và hệ số vế phải là ma trận B
# Như vậy ta có các cách biểu diễn trong ma trận như sau
#A =[1 1]
  #[3 1]

#B = [3]
#   [7]

A <-  matrix(c(1,1,3,1), nrow = 2, byrow = TRUE)
A

B<-matrix(c(3,7), nrow = 2)
B

nghiempt <- solve(A)%*%B
nghiempt
#x -> 2, y -> 1

#11, Kết nối CSDL trong R
#install.packages("RMySQL")
#install.packages("DBI")
library(RMySQL)
#library(DBI)
mydb = dbConnect(MySQL(), user='root', password='', dbname='plnv', host='127.0.0.1')
listdb <- dbListTables(mydb)
listdb
rs = dbSendQuery(mydb, "select * from users")
rs
data = fetch(rs, n=-1)
data

#phan tich hoi quy
#bài toán: hay phânb tích tác động của thu nhập theo giá trị tiêu dùng hàng tháng
#biến số độc lập: tiêu dùng
#biến số phụ thuộc là gì:thu nhập
#từ đió ta có có hàm số thu nhập = f(tieudung)
#ở đây f là hàm hồi quy tuyến tính nên có dạng như sau
# thu nhập = A* tieu dung + B
#mục đích là đi tìm giá trị A và B

tieudung <- c(18:29)
tieudung
thunhap <- c(76.1,77, 78.1, 78.2, 78.8, 79.7, 79.9, 81.1, 81.2, 81.8, 81.1, 81.8)

plot(tieudung, thunhap)

ketquahoiquy <- lm(thunhap ~ tieudung)
ketquahoiquy
abline(ketquahoiquy)

#kết qủa : thu nhap = 0,5161* tieu dung + 67.4387 

#dự báo kêt quả
# Giả sử tháng 10 nhà tính tiêu khoảng 35 triệu,
#thì thu nhập tháng 10 sẽ là bao nhiêu
giatrimoi <- data.frame(tieudung=35)
dubaothunhap <- predict(ketquahoiquy, giatrimoi)
dubaothunhap

#bài tập về nhà
# 1: cho biết chiều cao trung bình của thanh niên việt nam hiện nay là 168cm với độ lêchj chuẩn là 4.6cm
# Người ta chứng minh được rằng chiều cao của thanh niên VN tuần theo quy luật phân phối chuẩn
#1. Hãy vẽ đồ thị phân phối chuẩn cho bài toán trên
#2. Hãy tìm xác xuât để 1 đứa trẻ được sinh ra lớn lên có chiều cao tối thiểu là 175cm

# B2. Cho dữ lệu bán hàng trong file sale.csv, 
#1 hãy xây dựng mô hình hồi quy tuyến tính để đánh giá phân tích tác động của giá trị mặt hàng
#A, B, C đến D
#2. giả sử biết giá trị mặt hàng của A, B, C là 6.5 , 7.5. 5/7 thì giá trị mặt hàng D là bao nhiêu
