#doc du lieu tu file excel
#b1. cai dat package xlsx
install.packages("xlsx")
#b2. import thu vien
library("xlsx")

df <- read.xlsx("/Users/IntelTri/WorkPlace/Aptech/R/R/sales.xlsx", sheetIndex = 1, RowIndex = 1:10, ColIndex = 1:4)


dfhocsinh <- data.frame(
  Name=c("Peter", "Herry", "Simon", "Jack", "Linda"),
  Age = c(22, 32, 21, 45, 26),
  Score=c(7,8,9,3,10)
)
dfhocsinh

write.xlsx(dfhocsinh, "/Users/IntelTri/WorkPlace/Aptech/R/R/hocsinh.xlsx", sheetName="student sheet")
