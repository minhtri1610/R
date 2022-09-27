#https://statsandr.com/blog/descriptive-statistics-in-r/#summary
#de xu dung du lieu co san trong R phuc vu nghien cuu va hoc tap ta chi can goi dung ten cua tap du lieu 
print(airquality)

#thong ke 
#b1 doc du lieu
df <- read.csv("/Users/IntelTri/WorkPlace/Aptech/R/R/sales.csv")
df

#b2 lay thong tin co ban cua du lieu 
#so chieu
cat(dim(df))
#row
cat(nrow(df))
#col
cat(ncol(df))

#b3: Mot so thao tac tren cac cot ma chung ta lua chon nghien cuu
#mot so ham thong ke co ban tren doi tuong ma ban lua chon
cat(names(df))
df$Unit.Costs
sort(df$Unit.Cost)
max(df$Unit.Cost)
min(df$Unit.Cost)
mean(df$Unit.Cost)
median(df$Unit.Cost)
mode(df$Unit.Cost)
#lay theo phan vi cua 80%
quantile(df$Unit.Cost,0.8)
quantile(df$Unit.Cost, c(0.7,0.5,0.2,0.8,0.9))

#B4: nguoi ta thuogn dung nhng thong ke co ban  co san dc xay dung trong ham sumary
summary(df$Unit.Cost)

#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#1.29    3.99    4.99   20.31   17.99  275.00 

#Min -> cho biet don gia thap nhat
#1sQu -> tu phan vi 25%, cho biet co 25% so luong mat hang (~11 so don hang) duoc dat hang co don gia nho hon 3.99$
#Median: Duoc goi la Q2, tuc la tu phan vi 50%, cho biet co 50% so luong mat hang duoc dat hang co don gia nho hon 4.99$
#Mean: gia tri trung binh
#3rdQu: dc goi la Q3, tuc la tu phan vi 75%, cho biet co 75% so luong mat hang dc dat hang co don gia nho hon 17.99

# -->Đăặt nghi vấn khi so sanh Q3 và mean thì ta thấy có khả năng dữ liệu bị nhiễu bất thường trong đơn giá

#Max: giá trị lớn nhất


#PHAN TICH BIEN UNIT
summary(df$Units)

