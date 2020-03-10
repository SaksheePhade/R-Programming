# Page no 121

prob1 <- pnorm(-2.74)
prob2 <- pnorm(1.53)
desired.prob <- prob2 - prob1
desired.prob

x = seq (-4,4, length = 10000)
y = dnorm (x,0,1)
plot (x,y, type  ="l")
x = seq (-2.74,1.53, length = 10000)
y = dnorm (x,0,1)
polygon (c(-2.74,x ,1.53) ,c(0,y ,0) ,col =" gray ")