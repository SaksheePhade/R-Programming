# Page no 178

n1 <- 328
x1bar <- 4.3
n2 <- 64
x2bar <- 13
sd1 <- 5.22
sd2 <- 8.97
variance1 <- sd1^2
variance2 <- sd2^2
alpha <- 0.01

relaibility.coeff <- qnorm(1- alpha /2 ,0 ,1)
relaibility.coeff
std.error <- sqrt(variance1/n1 + variance2/n2)
std.error
diff.xbar <- x1bar - x2bar

confidence.interval <- c(diff.xbar- relaibility.coeff *std.error ,
                         diff.xbar+ relaibility.coeff *std.error  ) 
round(confidence.interval, 3)