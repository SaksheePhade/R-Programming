# Page no 168

n <- 35
xbar <- 17.2
sd <- 8
variance <- sd^2
alpha <- 0.1

relaibility.coeff = qnorm (1- alpha/2 ,0 ,1)
relaibility.coeff = round (relaibility.coeff ,3)
relaibility.coeff

confidence.interval <- c(xbar- relaibility.coeff *(sqrt(variance/n)) ,
                         xbar+ relaibility.coeff *(sqrt(variance/n))  ) 
round(confidence.interval, 1)