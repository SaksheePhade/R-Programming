# Page no 121

prob1 <- pnorm(2.71)
prob1
desired.prob <- 1 - prob1
desired.prob

x = seq (-4,4, length = 10000)
y = dnorm (x,0,1)
plot (x,y, type  ="l")
x = seq (2.71,4, length = 10000)
y = dnorm (x,0,1)
polygon (c(2.71,x ,4) ,c(0,y ,0) ,col =" gray ")