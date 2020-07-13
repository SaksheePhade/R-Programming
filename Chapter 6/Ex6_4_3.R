# Page no 180

n1 <- 18
x1bar <- 4.7
n2 <- 10
x2bar <- 8.8
sd1 <- 9.3
sd2 <- 11.5
variance1 <- sd1^2
variance2 <- sd2^2
alpha <- 0.05

relaibility.coeff <- qt(1-alpha/2, n1+n2-2)
relaibility.coeff

num <- ((n1-1)*variance1 + (n2-1)*variance2)/(n1+n2-2)
num
sp <- sqrt(num/n1 + num/n2)

diff.xbar <- x1bar - x2bar

confidence.interval <- c(diff.xbar- relaibility.coeff *sp ,
                         diff.xbar+ relaibility.coeff *sp  ) 
round(confidence.interval, 3)