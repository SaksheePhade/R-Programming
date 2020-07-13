# Page no 143

mean <- 120
sd <- 15
n <- 50
sd.xbar <- sd/sqrt(n)
prob1 <- pnorm(115, mean, sd.xbar)
prob2 <- pnorm(125, mean, sd.xbar)
prob <- round(prob2, digits = 4) - round(prob1, digits = 4)
prob