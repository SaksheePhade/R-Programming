# Page no 181

n1 <- 18
x1bar <- 4.7
n2 <- 10
x2bar <- 8.8
sd1 <- 9.3
sd2 <- 11.5
variance1 <- sd1^2
variance2 <- sd2^2
alpha <- 0.05

t1 = qt (1- alpha/2,n1 -1)
t2 = qt (1- alpha/2,n2 -1)
t = ((t1*variance1/n1)+(t2*variance2/n2))/((variance1/n1)+(variance2/n2))
t
sp <- sqrt(variance1/n1 + variance2/n2)

diff.xbar <- x1bar - x2bar

confidence.interval <- c(diff.xbar- t *sp ,
                         diff.xbar+ t *sp  ) 
round(confidence.interval, 3)