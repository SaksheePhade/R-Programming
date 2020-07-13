# Page no 169

activity <- c(.360, 1.189, .614, .788, .273, 2.464, .571,
              1.827, .537, .374, .449, .262, .448, .971,
              .372, .898, .411, .348, 1.925, .550, .622,
              .610, .319, .406, .413, .767, .385, .674,
              .521, .603, .533, .662, 1.177, .307, 1.499)

n <- 35
xbar <- mean(activity)
xbar <- round(xbar, 3)
variance <- var(activity)
sd <- sqrt(variance)
sd <- round(sd, 3)
assumed.sd <- 0.6
alpha <- 0.05

relaibility.coeff = qnorm (1- alpha/2 ,0 ,1)
relaibility.coeff

confidence.interval <- c(xbar- relaibility.coeff *(assumed.sd/sqrt(n)) ,
                         xbar+ relaibility.coeff *(assumed.sd/sqrt(n))  ) 
round(confidence.interval, 3)