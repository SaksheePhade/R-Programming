# Page no 192

alpha <- 0.05
p <- 0.35
d <- 0.05
z <- qnorm(1-alpha/2, 0, 1)
z <- round(z,2)

sample.size <- z^2 * p * (1-p) / d^2
sample.size <- round(sample.size, 2)
sample.size