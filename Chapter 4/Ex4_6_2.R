# Page no 120

prob1 <- pnorm(-2.55)
prob2 <- pnorm(2.55)
desired.prob <- prob2 - prob1
desired.prob

x = seq (-4,4, length = 10000)
y = dnorm (x,0,1)
plot (x,y, type  ="l")
x = seq (-2.55,2.55, length = 10000)
y = dnorm (x,0,1)
polygon (c(-2.55,x ,2.55) ,c(0,y ,0) ,col =" gray ")