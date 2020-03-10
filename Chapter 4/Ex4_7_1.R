# Page no 123

mean = 5.4
sd = 1.3
prob1 <- pnorm(3, mean, sd)
prob1

x = seq (0,10, length = 10000)
y = dnorm (x,mean,sd)
plot (x,y, type  ="l")
x = seq (0,3, length = 10000)
y = dnorm (x,mean,sd)
polygon (c(-4,x ,3) ,c(0,y ,0) ,col =" gray ")