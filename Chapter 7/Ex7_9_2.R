# Page no 276

sd <- 15
n <- 20
alpha <- 0.01
H0.mu <- 65

z <- qnorm(1-alpha,0,1)
z

xbar_lower <- H0.mu - z*sd/sqrt(n)
xbar_lower
xbar_upper <- H0.mu + z*sd/sqrt(n)
xbar_upper

power <- function(mu,sd,n,xbar_lower,xbar_upper) {
  prob1 <- pnorm((xbar_lower), mu, sd/sqrt(n))
  prob2 <- pnorm((xbar_upper), mu, sd/sqrt(n))
  prob <- prob2 - prob1
  prob
  return(1-prob1)
}

mu.possible <- c(51,53,55,57,59,61,63,65)
i=1
for (x in mu.possible) {
  beta[i] <- power(x, sd, n, xbar_lower, xbar_upper)
  i = i+1
}

power.curve <- data.frame(mu.possible,beta,1-beta)

plot(mu.possible,1-beta,type = "l")