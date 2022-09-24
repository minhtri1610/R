#level R Trung cấp
#các đối tượng chứa nhiều phần tử trong R
#ôn tập
#1. string: chuỗi là dãy các kí tự
#2> R vector chứa các phần tử có cùng kiểu dữ liệu
#3. R matrix chứa các phần tử theo dạng 2 chiều (row, col)
#4. R list chứa các phần tử có thể khác kiểu dữ liệu

danhsach <- list(12,12,2,12, TRUE, "hi")
danhsach
danhsach[1]

#5. R arrays: là cấu trúc có khả năng chứa các phần tử, dưới dạng nhiều hơn hai chiều
#dim bộ số nhân lại sẽ ra 12 số, tương đương với số phần tử trong mảng
arr <- array(c(1:12), dim = c(2, 3, 2))
arr
#kiểm tra 20 có trong mảng ko
20 %in% arr


#6.R data frame: Lưu trữ dữ liệu dạng bảng (giông python)
df <- data.frame(Name = c("NAM", "Hung", "Mai"), 
                 Age = c("32", "25", "27"),
                 Salary = c(1000,2000,3000),
                 Vote = c(TRUE, FALSE, TRUE))
print(df)

# truy xuất dữ liệu qua cột
df[["Name"]]

df[1]

df$Name

# Truy xuất dữ liệu qua dòng
df[2,3]
df[2,]

#ghép thêm dòng
df2 <- data.frame(
  Name = c("long", "lan"),
  Age = c(33,22),
  Salary = c(2333,3333),
  Vote = c(TRUE, FALSE)
)

df3 <- rbind(df, df2)

df3

#ghép thêm cột
df4 <- data.frame(Hobby = c("Tennis", "football", "swimming", "Badminton", "Golf"))
df5 <- cbind(df3, df4)
df5

#7. R factor: Lưu trữ các dư liệu dạng phân loại(định tính)
# các thao tác, truy xuất giống như vector, list,...

fa <- factor(c("single", "married", "divorced", "separated"))
fa

