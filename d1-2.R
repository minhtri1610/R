# kiểu dữ liệu chuỗi
#Chuỗi là dãy các kí tự
#1. Khai báo
s <- "hello"
ss <- 'hello'

print(s)
print(ss)

#2. Tìm số kí tự trong chuỗi (độ dài chuỗi)
str <- "hello"
nchar(str)

#3. Nối chuỗi
mess <- "Hello"
mess2 <- "Aptech"
paste(mess,mess2)

#4. So sánh 2 chuỗi
print(mess == mess2)

#5. Uppercase và lowercase
uppMess <- toupper(mess)
print(uppMess)

#PArt 2: VECTOR: là danh sách chừa nhiều phần tử

#1. Tạo vector chứa nhiều phần tử bằng hàm c()
emps <- c("Nam", "Tu", "lan", "ha")
emps

#2. Lấy phần tử tại chỉ số
#Chỉ số đánh từ 1
emps[1]

#3. Gán giá trị mới cho phần tử
emps[4] <- "MAi"
print(emps)

#4. Tạo nhanh vetor chứa các số nguyên theo thứ tự
nums <- 10:25
nums

#5. Lặp nhiều lần số phần tử trong vector
numbers <- c(3,4,5,6)
numbersx2 <- rep(numbers, times = 3)
print(numbersx2)

#6. Đếm số lượng phần tử trong vector 
nums <- c(3,5,6,8)
length(nums)

#Part 3: Matrix
#là ma trận có dòng và cột

#1. Tạo ma trận
m1 <- matrix(c(3,4,5,6,7), nrow = 2, ncol =3, byrow = TRUE)
m1


m1 <- matrix(c(3,4,5,6,7), nrow = 2, ncol =3, byrow = FALSE)
m1

#2. Truy xuất ma trận
m1 <- matrix(c(2,4,5,6,4,22), nrow = 2, ncol = 3, byrow = TRUE)
m1[2,3] #row, col

#3. Truy xuất theo dòng
m1 <- matrix(c(2,4,5,6,4,22), nrow = 2, ncol = 3, byrow = TRUE)
m1[2,]

#4. Truy xuất theo cột
m1 <- matrix(c(2,4,5,6,4,22), nrow = 2, ncol = 3, byrow = TRUE)
m1[,2]

#5. Truy xuất theo nhóm dòng
m2 <- matrix(tmp <- 1:15, nrow =3, ncol = 5, byrow = TRUE)
m2

m2[c(1,3),] # lấy dữ liệu dòng 1 và dòng 3
m2[,c(2,4,5)] # lấy dữ liệu cột 2,4,5

#6. Lấy giá trị thay đổi giá trị cho phần tử trong matrix
m1 <- matrix(c(2,4,5,6,4,22), nrow = 2, ncol = 3, byrow = TRUE)
m1[2,3] = 100
m1

#7. Kết hợp 2 ma trận
#2 ma trận phải cùng chiều
m1 <- matrix(c(2,4,5,6,4), nrow = 2, ncol = 3, byrow = TRUE)
m2 <- matrix(c(1,2,3,4,5), nrow = 2, ncol = 3, byrow = TRUE)

mb <- cbind(m1, m2)
mb
#8. Kiểm tra phần tử có trong ma trận không
m1 <- matrix(c(2,4,5,6,4), nrow = 2, ncol = 3, byrow = TRUE)

10 %in% m1
2 %in% m1

