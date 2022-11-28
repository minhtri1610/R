#Phân loại với mô hình
#logictic Regression

mtcars

#hãy phân loại am dựa trên hp và wt
#phân loại nhị phân
#do am chỉ có 2 giá trị phân loại 0 hoặc 1 nên ta gọi đây là phân loại nhị phân
#kỹ thuật máy học cơ bản nhất để giải quyết bài toán phân loại nhị phân là dùng logictic regression

mymodel = glm(formula = am ~ hp+wt, data =  mtcars, family = binomial)
summary(mymodel)

newdata = data.frame(hp = 120, wt = 2.8)
  
predict(mymodel, newdata, type = "response")