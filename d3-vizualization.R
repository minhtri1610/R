# Trực quan hoá dữ liệu với R
#1. Bar plot
#giả sử nhiệt độ của 7 ngày 
nhietdo <- c(22,23,24,25,26,28,30)
bieudobar <- barplot(nhietdo)

bieudobar <- barplot(nhietdo, 
                  main = "BIểu đồ nhiệt độ", 
                  xlab="Ngày", 
                  ylab = "Nhiệt độ",
                  names.arg = c("Mon", "Tue", "Wen", "Thurs", "Fri", "Sat", "Sun"),
                  col = "yellow",
                  density = 20,)
                  #horiz = TRUE)


#2. Histogram
# cho biết xác xuất xảy ra trên khoảng giá trị

bieudohist <- hist(nhietdo,
                   main = "BIểu đồ Hist nhiệt độ", 
                   xlab="Nhiệt độ", 
                   ylab = "Tần số",
                   col = "red",
                   xlim=c(10,50),#khoảng giá trị của trục x,
                   ylim = c(0,10)
                   )

#3. Biểu đồ Pie
# Biểu diễn phần trăm
doanhso <- c(300,200,300,400,800)

bieudopie <- pie(doanhso,
                 main = "BIểu đồ Pie tỉ lệ doanh số", 
                 labels = c("Milk", "Food", "Cocacola", "Meat", "Fish"),
                 col =c ("red", "yellow", "pink", "gray", "blue")
                 )

#install.packages("plotrix")
library(plotrix)
bieudopie <- pie3D(doanhso,
                 main = "BIểu đồ Pie tỉ lệ doanh số", 
                 labels = c("Milk", "Food", "Cocacola", "Meat", "Fish"),
                 col =c ("red", "yellow", "pink", "gray", "blue")
)

#4. Biểu đồ Boxplot

df <- data.frame(Name = c("NAM", "Hung", "Mai"), 
                 Age = c(32, 25, 27),
                 Salary = c(1000,2000,3000),
                 Vote = c(TRUE, FALSE, TRUE))

#ghép thêm dòng
df2 <- data.frame(
  Name = c("long", "lan"),
  Age = c(33,22),
  Salary = c(2333,3333),
  Vote = c(TRUE, FALSE)
)

df3 <- rbind(df, df2)

#ghép thêm cột
df4 <- data.frame(Hobby = c("Tennis", "football", "swimming", "Badminton", "Golf"))
df5 <- cbind(df3, df4)

df5

head(df5)
bieudoboxplot <- boxplot(df5$Salary,
                         xlab="Biến số",
                         ylab="Lương",
                         col="red")

bieudoboxplot_nhom <- boxplot(Salary~Vote, data=df5,
                              xlab="Biến số",
                              ylab="Lương",
                              notch=TRUE)#thường để bằng false, nếu muốn nhìn sâu hơn thì để true

#5. Biểu đồ strip
stripchart(df5$Age)

ds <- list("Age" = df5$Age, "Salary" = df5$Salary)
stripchart(ds)
# lưu ý nên chọn biến có cùng scale để vẻ biểu đồ này

#6. Biểu đồ Scatter
plot(2,4)
x<-c(2,3,4,5)
y<-c(3,5,6,7)
plot(x,y,
     xlim=c(0,10),
     ylim=c(0,10))

#sequence
plot(1:10,
     xlim=c(0,15),
     ylim=c(0,15),
     type = "l")#s, #h, #p, #b, 

x<-seq(-pi, pi, 0.1)
y<-sin(x)
plot(x,y, type="p")

#sinh ra dãy giá trị x từ -5 tới 5, bước nhảy là 0.2
# vẽ đồ thị y = x^3 + 2*x^2 + 1

x<-seq(-10,10,0.2)
y<-x^3 + 2*x^2 + 1
plot(x,y, type="l")

#8. Hệ thống màu trong R
colors()
barplot(nhietdo, col= rainbow(7))

barplot(nhietdo, col = heat.colors(7))

barplot(nhietdo, col = terrain.colors(7))

barplot(nhietdo, col = topo.colors(7))

barplot(nhietdo, col = c("#dcdcdc", "#dfdfdf", "#f4f4f4", "red", "green", "blue"))
