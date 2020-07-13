# Page no 273

sd <- 3.6
n <- 100
alpha <- 0.05
H0.mu <- 17.5

z <- qnorm(1-alpha/2,0,1)
z
xbar_upper <- H0.mu + z*sd/sqrt(n)
xbar_upper
xbar_lower <- H0.mu - z*sd/sqrt(n)
xbar_lower

power <- function(mu,sd,n,xbar_lower,xbar_upper) {
  prob1 <- pnorm((xbar_lower), mu, sd/sqrt(n))
  prob2 <- pnorm((xbar_upper), mu, sd/sqrt(n))
  prob <- prob2 - prob1
  prob
  return(prob)
}

mu.possible <- c(16,16.5,17,18,18.5,19)
i=1
for (x in mu.possible) {
  beta[i] <- power(x, sd, n, xbar_lower, xbar_upper)
  i = i+1
}

power.curve <- data.frame(mu.possible,beta,1-beta)
power.curve

plot(mu.possible,1-beta,type = "l")