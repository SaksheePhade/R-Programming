# Page no 190

interval <- 10
alpha <- 0.05
sd <- 20
d <- interval/2
z <- qnorm(1-alpha/2, 0, 1)
z <- round(z,2)

sample.size <- z^2 * sd^2 / d^2
sample.size <- round(sample.size, 2)
sample.size