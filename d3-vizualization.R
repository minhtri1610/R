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

