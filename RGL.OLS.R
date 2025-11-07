# regresi OLS berganda data = kemiskinan
attach(Data_Faktor_Kemiskinan)

reg1 <- lm(Kemiskinan ~ Pengangguran+Pertumbuhan)
summary(reg1)
plot (Pengangguran,Kemiskinan)
plot (Pertumbuhan,Kemiskinan)

#uji asumsi
library(lmtest)
library(car)

#uji normalitas residual
shapiro.test(reg1$residuals)

#uji autokorelasi
dwtest(reg1)

#uji homogenitas 
bptest(reg1, studentize = FALSE)

# Multikolinearitas
vif(reg1)
