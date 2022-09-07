data1 <- read.csv("C:/Users/loyal/Desktop/pr3.csv")
model2<-lm(log(Profit)~Advertisement+Sales,data=data1)
model2
summary(model2)
anova(model2)
residuals(model2)
predict(model2)
#for residuals plot
install.packages("ggplot2")
library(ggplot2)
profit.res=resid(model2)
plot(data1$Advertisement,profit.res,
     ylab="Residuals", xlab="Advertisement",
     main="residulas advertisement plot") 
abline(0,0)                
#for sales residual plot
 plot(data1$Sales,profit.res,
      ylab="Residuals",xlab="Sales",
      main="Sales residual plot")
abline(0,0) 
# for multicollinearity
library(olsrr)
ols_vif_tol(model2)
