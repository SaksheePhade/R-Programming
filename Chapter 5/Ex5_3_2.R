# Page 142

mean <- 185.6
sd <- 12.7
xbar <- 190
n <- 10
sd2 <- sd/sqrt(n)
std.norm.dist <- function(xbar,mean,sd,n) {
  den <- sd/sqrt(n)
  z <- (xbar - mean)/den
  return(z)
}

prob <- std.norm.dist(xbar, mean, sd, n)
prob


x = seq (140 ,220 , length =10000)
y = dnorm (x,mean ,sd2)
plot (x,y,type = "l")

x = seq (190 ,220 , length =10000)
y = dnorm (x,mean ,sd2)
polygon (c(190 ,x ,220) ,c(0,y ,0) ,col=" gray ")