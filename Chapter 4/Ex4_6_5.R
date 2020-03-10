# Page no 122

prob1 <- pnorm(0.84)
prob1
prob2 <- pnorm(2.45)
prob2
desired.prob <- round(prob2, digits=4) - round(prob1, digits = 4)
desired.prob

x = seq (-4,4, length = 10000)
y = dnorm (x,0,1)
plot (x,y, type  ="l")
x = seq (0.84,2.45, length = 10000)
y = dnorm (x,0,1)
polygon (c(0.84,x ,2.45) ,c(0,y ,0) ,col =" gray ")