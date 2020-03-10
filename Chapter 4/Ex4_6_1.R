# Page no 119

prob <- pnorm(2)
prob

x = seq (-4,4, length = 10000)
y = dnorm (x,0,1)
plot (x,y, type ="l")
x = seq (-4,2, length = 10000)
y = dnorm (x,0,1)
polygon (c(-4,x ,2) ,c(0,y ,0) ,col =" gray ")