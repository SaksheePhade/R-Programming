# Page no 177

n1 <- 12
x1bar <- 4.5
n2 <- 15
x2bar <- 3.4
variance1 <- 1
variance2 <- 1.5
alpha <- 0.05

relaibility.coeff <- qnorm(1- alpha /2 ,0 ,1)
relaibility.coeff
std.error <- sqrt(variance1/n1 + variance2/n2)
diff.xbar <- x1bar - x2bar

confidence.interval <- c(diff.xbar- relaibility.coeff *std.error ,
                         diff.xbar+ relaibility.coeff *std.error  ) 
round(confidence.interval, 3)