#Thống kế suy diễn

#Z-test 
#Z test trên một biến số
#Mục đích:
#kiểm định giả thuyết về giá trị trung bình

#yêu cầu: số lượng mẫu phải lớn hơn 30 mẫu, và phân phối chuẩn

#Giả thuyết: 
#H0: trung bình mẫu = giá trị cần kiểm định

install.packages("BSDA")
library(BSDA)

#Bài toán: công ty cần kinh doanh trà sữa tại 1 khu vực nào đó, 
#giả sử rằng công ty biết dược độ lệch chuẩn của số tiền mà sinh viên khu vực đó bỏ ra hàng tháng để mua trà sữa là 100k(VND)
# công ty nhận thấy cần điều tra xem có phải chi tiêu trung bình 
#hàng tháng cho trà sữa của sinh viên khu này là 610k hay ko để có chiến lược kinh doanh


#b1: công ty cần thu thập dữ liệu từ 30 mẫu dữ liệu từ sinh viên về chi phí mà sinh viên bỏ ra để mua trà sữa hàng tháng

#giả sử dữ liệu thu thập được như sau

data <- c(670, 730, 540, 670, 480, 800, 690, 560, 620, 700, 660, 640, 710, 650, 490,800 , 600,560, 700,680,550,580,700,705,690,660,790)
data

#b2 chọn mức ý nghĩa alpha = 0.1 or 0.05 or 0.01
# sẽ tương ứng với độ tin cậy: 90%, 95%, 99%
# thông thường người ta chọn mức tin cậy 95% tương ứng với alpha = 0.05

#b3: kiểm tra xem dữ liệu phân phối có gần với phân phối chuẩn ko

qqnorm(data)
qqline(data)

# nếu là phân phối chuẩn thì ta làm tiếp
# nếu ko phải là phân phối chuẩn
## 1. điều chỉnh dữ liệu
## 2. Lấy nhiều dữ liệu hơn và giả định là phân phối chuẩn
## 3. Tìm phương pháp khác

#b4: Thực hiện z_test

z.test(x=data, mu=610, alternative="two.sided", sigma.x=100)

#data:  data
#z = 2.2228, p-value = 0.02623
#alternative hypothesis: true mean is not equal to 610
#95 percent confidence interval:
  #615.0583 690.4973
#sample estimates:
  #mean of x 
#652.7778 

# kẾt luận: trung bình chi tiêu cho trà sữa hàng tháng của sinh viên khác 610k

# H0 -> 610
#ALPHAL: 0.05
#p-value: 0.02623

#p-value < alpha -> bác bỏ H0
#p-value > alpha -> chấp nhận H0


#Lý thuyết thống kê (phân tích) suy diễn
#yêu cầu mẫu phải lớn hơn 30
# phải xác định
#(1) H0
#(2) Mức ý nghĩa thống kế alpha
#(3) p-value
# Quy tắc suy diễn
#p-value < alpha -> bác bỏ H0
#p-value >= alpha -> chấp nhận H0


#bài 2
#công ty vừa sản xuất ra dòng sản phẩm mới nhằm thay thế cho dòng sản phẩm cũ
# công ty muốn biết rằng trung bình lợi nhuận từ dòng sản phẩm mới và cũ có bằng nhau hay không
# sau ba tháng thử nghiệm trên 35 đại lý cho sản phẩm cũ và 32 đại lý cho sản phẩm mới
# Người ta thấy rằng độ lệch chuẩn cho dòng cũ là 100 triệu
# độ lệch chuẩn cho dòng mới là 70 triệu
library(BSDA)
data_sp_old <- c(250,270,350,450, 500,670,230,450,880,120,345,500,450,439,567,343,900,345,546,222,567,456,700,333,587,978,800,760,560,345,456,765,789,986,465)
data_sp_new <- c(150,567,330,890, 665,670,230,450,880,120,345,500,450,439,567,343,900,345,546,222,567,456,700,333,587,978,800,760,560,345,456,765,789,986,465)

z.test(x=data_sp_new, y=data_sp_old, mu=0, sigma.x=70, sigma.y=100, alternative="two.sided")