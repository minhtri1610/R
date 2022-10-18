#Khai phá luật kết hợp và ứng dụng
#association-rule
install.packages("arules")
install.packages("arulesViz")

library(arules)
library(arulesViz)

#đọc dữ liệu từ file dưới dạng transaction
dataset = read.transactions("D:/R/R/D13/Market_Basket_Optimisation.csv", sep = ',', rm.duplicates = TRUE)
#dataset <- as("D:/R/R/D13/Market_Basket_Optimisation.csv", "transaction")
#xem số chiều của dữ liệu
dim(dataset)

#xem có bao nhiêu món hàng trong tập dữ liệu
itemLabels(dataset)

#kiễm tra xem cấu trúc của tập dữ liệu
str(dataset)

#tóm tắt dữ liệu
summary(dataset)

#trực quan top 10 món hàng được mua 
itemFrequencyPlot(dataset,topN=10, cex.names=1)

#trực quan giao dịch bán hàng
#image(dataset)

#Trucwjc quan hoá 250 giao dịch đầu tiên
image(dataset[1:250,])


#chạy luật kết hợp
set.seed = 200

#supp-> mức ghỗ trợ
#conf -> mức tin cậy

association_rules <- apriori(data= dataset, parameter = list(supp=0.004, conf=0.2, maxlen=6, minlen=4, target="rules"))

#inspect(association_rules)

summary(association_rules)

#xem kết quả các luật
inspect(association_rules)

#xây dựng luật kết hợp tuỳ chọn bắt đầu từ eggs thì người ta mua gì
egg_rules_rhs <- apriori(data = dataset, parameter = list(supp=0.004, conf=0.2, maxlen=6, minlen=4), appearance = list(default="lhs", rhs="eggs"))

summary(egg_rules_rhs)
inspect(egg_rules_rhs)

#sau khi mua trứng thì mua gì
egg_rules_lhs <- apriori(data = dataset, parameter = list(supp=0.004, conf=0.2, maxlen=6, minlen=2), appearance = list(default="rhs", lhs="eggs"))

summary(egg_rules_lhs)
inspect(egg_rules_lhs)
