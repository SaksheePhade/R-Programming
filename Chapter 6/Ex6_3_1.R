# Page no 173

n <- 19
xbar <- 250.8
sd <- 130.9
alpha <- 0.05

relaibility.coeff <- qt(1-alpha/2, n -1)
relaibility.coeff

confidence.interval <- c(xbar- relaibility.coeff *(sd/sqrt(n)) ,
                         xbar+ relaibility.coeff *(sd/sqrt(n))  ) 
round(confidence.interval, 3)