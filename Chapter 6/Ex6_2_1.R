# Page no 166

n <- 10
xbar <- 22
variance <- 45
alpha <- 0.05

relaibility.coeff = qnorm (1- alpha/2 ,0 ,1)
relaibility.coeff = round (relaibility.coeff,1)
relaibility.coeff

confidence.interval <- c(xbar- relaibility.coeff *(sqrt(variance/n)) ,
                         xbar+ relaibility.coeff *(sqrt(variance/n))  ) 
confidence.interval