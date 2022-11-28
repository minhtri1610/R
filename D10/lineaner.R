#Y = f(x1, x2,... ,Xn)
#Mục đích đánh giá tác động của Xi đến Y
#Multiple Linear Regression

#Y = A0 + A1.X1 + A2*X2 + ... + An*Xn
#Tìm A0, A1, ... , An

stackloss
#bộ dữ liệu phân tích về lãng phí nhiên liệu
#Bài toán: đánh giá tác động của tiêu hao về  Air.Flow Water.Temp Acid.Conc. đến stack.loss

stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc., data = stackloss)

#khám phá mô hình
summary(stackloss.lm)$r.squared
#91% ->  3 biến giải thích đc 91% cho biến stack.loss

summary(stackloss.lm)
#mô hình có mối quan hệ hồi quy


newdata <- data.frame(Air.Flow = 72,
                      Water.Temp = ,
                      Acid.Conc. =
                      )

