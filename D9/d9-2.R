#kruskal-Wallis-Test
# giống như anova nhưng không cần giả định phân phối chuẩn
# Dùng cho biến định lượng
#H0: các biến số không có mối quan hệ

airquality

test = kruskal.test(Ozone ~ Month, data=airquality)
test