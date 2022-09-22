#hàm C() dùng để tạo 1 vector
x <- c(12,54,13,10,5)

#R Căn băn
# 1.In thông báo ra màn hình 
print("Hello")

#2.Khai báo biến
x = 13.8
print(x)

#3. Kiểm tra kiểu dữ liệu của biến số
a = TRUE
print(a)
print(class(a))

#4Thay đổi giá trị của biến số
message = "hello world"
message <- "wellcome to Aptech"
print(message)

#5. Kiểu số phức z = a + i*b 
z <- 10 + 2i
print(z)
print(class(z))

#6, Luỹ thừa
x <- 2^5

#7. Sữ dụng một số phép toán số học
x <- 4.5
y <- 10L
t <- 4.5 + 10
print(t)

#9. Chuỗi và ký tự
c <- 'A'
print(class(c))

#10 xuất ra màn hình
name <- "MR. Nam"
print(paste("Hello:",name))
print(paste0("Hello:",name))

#11. Xuất ra màn hình với định dạng
x <- "Aptech"
sprintf("hello: %s", x)

y <- 10L
z <- 12.5

sprintf("sum of %d and %f is %f", y, z, y + z)

#12 Hàm cat() dùng để xiaats trị biến số ra màn hình với kiểu biến số đơn giản
name <- "MR>TRI"
cat(name)

#13. Để xuất nhanh ra termial ta dùng đúng tên biến
mess <- "hi"
mess

#Biểu thức luận lý LOgical
# Là biểu thức chỉ trả về 1 trong 2 giá trị TRUE OR FALSE

x <- 10
y <- 23
print( x==y )

z <- 12
print(y==z)

print(x<y & y > z)#AND

w <- 54
print( w>x | x>y | z>w )#OR

print( !(w>x | x>y | z>w) )#NOT

# CẤU TRÚC ĐIỀU KIỆN
x <- 100
if((x %% 2) == 0){
  print("số %d là chẳn")
} else{
  print("số %d là số lẻ")
}

#có nhiều điều kiện
x <- 10
if((x %% 4) == 0){
  print("chia 4 du 0")
} else if((x %% 4) == 1){
  print("chia 4 dư 1")
} else if((x %% 4) == 2){
  print("chia 4 dư 2")
} else if((x %% 4) == 3){
  print("chia 4 dư 3")
} else{
  print("Ko dư")
}


#ifelse trả về kiểu danh sách/
marks <- c(7,5,5,3,3,2,4,5,76,9,906,4,3)
ifelse(marks < 5, "FAILD", "PASSED")

#Vòng lặp với for
marks <- c(7,5,5,3,3,2,4,5,76,9,906,4,3)
for (i in marks) {
  if( (i %% 2) == 0){
    print(i)
  }
}

# Hàm
#18. Hàm không trả về
calculator <- function(a,b){
  print(a + b)
  print(a -b)
  print(a*b)
  print(a/b)
}
calculator(1,3)

#19. Hàm có trả về giá trị
tong <- function(a,b,c){
  return (a^2 + b^2 + c^3)
}
kp <- tong(1,2,3)
print(kp)