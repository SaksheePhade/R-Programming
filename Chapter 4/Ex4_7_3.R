# Page no 125

mean = 5.4
sd = 1.3
prob1 <- pnorm(8.5, mean, sd)
prob1
desired.prob <- 1 - round(prob1, digits = 4)
desired.prob

x = seq (0,10, length = 10000)
y = dnorm (x,mean,sd)
plot (x,y, type  ="l")
x = seq (8.5,10, length = 10000)
y = dnorm (x,mean,sd)
polygon (c(8.5,x ,10) ,c(0,y ,0) ,col =" gray ")