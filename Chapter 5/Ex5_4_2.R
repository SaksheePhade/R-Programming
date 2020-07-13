#Page no 148

mean1 <- 45
sd1 <- 15
mean2 <- 30
sd2 <- 20
n1 <- 35
n2 <- 40

diff.xbar <- 20
diff.mean <- mean1 - mean2
diff.mean
variance <- (sd1^2/n1) + (sd2^2/n2) 
sqrt(variance)

sdn <- function(diff.xbar, diff.mean, den) {
  z <- ( diff.xbar - diff.mean )/den
  return(z)
}

z <- sdn(diff.xbar, diff.mean, sqrt(variance))
z

x = seq (0 ,30 , length =10000)
y = dnorm (x,diff.mean, sqrt(variance))
plot (x,y,type = "l")

x = seq (20 ,30 , length =10000)
y = dnorm (x,diff.mean,sqrt(variance))
polygon (c(20,x ,30) ,c(0,y ,0) ,col=" gray ")