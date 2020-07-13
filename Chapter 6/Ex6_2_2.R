# Page no 168

n <- 15
xbar <- 84.3
variance <- 144
alpha <- 0.01

relaibility.coeff = qnorm (1- alpha/2 ,0 ,1)
relaibility.coeff = round (relaibility.coeff ,3)
relaibility.coeff

confidence.interval <- c(xbar- relaibility.coeff *(sqrt(variance/n)) ,
                         xbar+ relaibility.coeff *(sqrt(variance/n))  ) 
confidence.interval