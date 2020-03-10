# Page no 125

mean = 491
sd = 119
prob1 <- pnorm(292, mean, sd)
prob1
prob2 <- pnorm(649, mean, sd)
prob2 
desired.prob <- round(prob2, digits = 4) - round(prob1, digits = 4)
desired.prob

x = seq (200,700, length = 10000)
y = dnorm (x,mean,sd)
plot (x,y, type  ="l")
x = seq (292,649, length = 10000)
y = dnorm (x,mean,sd)
polygon (c(292,x ,649) ,c(0,y ,0) ,col =" gray ")