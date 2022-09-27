#Đọc file csv
df <- read.csv("/Users/IntelTri/WorkPlace/Aptech/R/R/airtravel.csv")
print(df)

#in ra so cot trong df
cat("total columns:", ncol(df))
#in ra so dong
cat(nrow(df))

#in ra so luong nguoi di du lich it nhat nam 1960
min_1960s <- min(df$X1960)
min_1960s

#in ra so luong nguoi di du lich nhieu nhat nam 1960
max_1960s <- max(df$X1960)
max_1960s

# lay nhung dong du lieu ma so nguoi du lich lon hon 400 o nam 1960 
gtt_400_1960s <- subset(df, X1960 > 400)
gtt_400_1960s

#part2
#ghi file trong R

#tao dataframe

dfhocsinh <- data.frame(
  Name=c("Peter", "Herry", "Simon", "Jack", "Linda"),
  Age = c(22, 32, 21, 45, 26),
  Score=c(7,8,9,3,10)
)
dfhocsinh

write.csv(dfhocsinh, "/Users/IntelTri/WorkPlace/Aptech/R/R/hocsinh.csv")